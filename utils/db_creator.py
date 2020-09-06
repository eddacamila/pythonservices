import pymysql

conn = pymysql.connect(host = 'localhost',user = 'root',passwd = '123456')
SQL_PATH=r'data\scriptSQL_hospitales_localidades_Datos.sql'

def parse_sql(filename):
    data = open(filename, 'r').readlines()
    stmts = []
    DELIMITER = ';'
    stmt = ''

    for lineno, line in enumerate(data):
        if not line.strip():
            continue

        if line.startswith('--'):
            continue

        if 'DELIMITER' in line:
            DELIMITER = line.split()[1]
            continue

        if (DELIMITER not in line):
            stmt += line.replace(DELIMITER, ';')
            continue

        if stmt:
            stmt += line
            stmts.append(stmt.strip())
            stmt = ''
        else:
            stmts.append(line.strip())
    return stmts


stmts = parse_sql(SQL_PATH)

with conn.cursor() as cursor:
    for stmt in stmts:
        cursor.execute(stmt)
    conn.commit()
