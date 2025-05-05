from flask import Blueprint, jsonify

main_bp = Blueprint('main', __name__)

@main_bp.route('/', methods=['GET'])
def home():
    return jsonify({"message": "API is running!"}), 200
