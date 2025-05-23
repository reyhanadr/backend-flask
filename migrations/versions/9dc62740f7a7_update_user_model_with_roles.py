"""Update user model with roles

Revision ID: 9dc62740f7a7
Revises: d5e8991e4675
Create Date: 2025-03-08 10:44:52.105015

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '9dc62740f7a7'
down_revision = 'd5e8991e4675'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('calon_ibu_prediction', schema=None) as batch_op:
        batch_op.create_foreign_key(None, 'user', ['nik'], ['nik'], ondelete='CASCADE')

    with op.batch_alter_table('stunting_prediction', schema=None) as batch_op:
        batch_op.add_column(sa.Column('nik', sa.String(length=16), nullable=False))
        batch_op.drop_index('nik')
        batch_op.drop_constraint('stunting_prediction_ibfk_1', type_='foreignkey')
        batch_op.create_foreign_key(None, 'user', ['nik'], ['nik'], ondelete='CASCADE')
        batch_op.drop_column('nama_anak')

    with op.batch_alter_table('user', schema=None) as batch_op:
        batch_op.add_column(sa.Column('email', sa.String(length=120), nullable=False))
        batch_op.create_unique_constraint(None, ['email'])

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('user', schema=None) as batch_op:
        batch_op.drop_constraint(None, type_='unique')
        batch_op.drop_column('email')

    with op.batch_alter_table('stunting_prediction', schema=None) as batch_op:
        batch_op.add_column(sa.Column('nama_anak', mysql.VARCHAR(charset='utf8mb4', collation='utf8mb4_0900_ai_ci', length=16), nullable=False))
        batch_op.drop_constraint(None, type_='foreignkey')
        batch_op.create_foreign_key('stunting_prediction_ibfk_1', 'user', ['nama_anak'], ['nik'], ondelete='CASCADE')
        batch_op.create_index('nik', ['nama_anak'], unique=False)
        batch_op.drop_column('nik')

    with op.batch_alter_table('calon_ibu_prediction', schema=None) as batch_op:
        batch_op.drop_constraint(None, type_='foreignkey')

    # ### end Alembic commands ###
