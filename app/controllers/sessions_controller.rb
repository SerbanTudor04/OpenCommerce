class SessionsController < ApplicationController
    def validateSession
        if session[:user_id]

            @session = OcomSession.find_by(session_id: session[:user_id])
            if @session
                if @session.expire_at > Time.now
                    @session.expire_at = Time.now + 1.hour
                    @session.save
                    render json: {
                        status: 'success',
                        user_id: @session.user_id,
                        user_name: @session.user_name,
                        user_type: @session.user_type
                    }
                else
                    render json: {
                        status: 'error',
                        message: 'Session expired',
                        user_id: nil,
                        user_name: nil,
                        user_type: nil
                        
                    }
                end
        else
            render json: {
                status: 'ERROR',
                message: 'Session not found',
                user_id: nil,
                user_name: nil,
                user_type: nil
            }
        end
    end

    def createAnonimusSession
        # create in database
        session_id=SecureRandom.uuid

        @session = OcomSession.new(
            session_id: session_id,
            user_id: session[:user_id],
            user_name: session[:user_name],
            user_type: session[:user_type],
            expire_at: Time.now + 1.hour
        )
        @session.save
        
        session[:user_id] = session_id
        session[:user_name] = 'OCOM_Anonimus'
        session[:user_type] = 'OCOM_Anonimus'

        render json: {status: 'OK'}
    end


end
