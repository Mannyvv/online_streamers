"""create awards

Revision ID: 1488fbb99a00
Revises: 
Create Date: 2022-03-12 16:54:01.239603

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '1488fbb99a00'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
     op.execute(
        """
        CREATE TABLE awards(
            id SERIAL PRIMARY KEY,
            name TEXT NOT NULL,
            year INT NOT NULL
        );
        """
    )


def downgrade():
      op.execute(
        """
        DROP TABLE awards;
        """
    )