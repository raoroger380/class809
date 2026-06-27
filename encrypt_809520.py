import hashlib, base64

pwd = b'809520'

results = {
    'MD5':      hashlib.md5(pwd).hexdigest(),
    'SHA-1':    hashlib.sha1(pwd).hexdigest(),
    'SHA-256':  hashlib.sha256(pwd).hexdigest(),
    'SHA-512':  hashlib.sha512(pwd).hexdigest(),
    'BLAKE2b':  hashlib.blake2b(pwd).hexdigest(),
    'Base64':   base64.b64encode(pwd).decode(),
}

print('密码: 809520')
print('=' * 50)
for name, value in results.items():
    print(f'{name:8s}: {value}')

# Save to file
with open(r'D:\class809\809520_hash.txt', 'w') as f:
    f.write('密码: 809520\n')
    f.write('=' * 50 + '\n')
    for name, value in results.items():
        f.write(f'{name:8s}: {value}\n')

print('\n已保存到 D:\\class809\\809520_hash.txt')
