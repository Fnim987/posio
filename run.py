from app import socketio, app
from flask.logging import create_logger

LOG = create_logger(app)


HOST = app.config.get('HOST', '127.0.0.1')
PORT = app.config.get('PORT', 5000)

LOG.info('Starting server on {host}:{port}'.format(host=HOST, port=PORT))

socketio.run(app, host=HOST, port=PORT)
