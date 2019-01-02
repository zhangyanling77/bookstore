const baseUrl = 'http://192.168.1.4:5757/weapp';
// const baseUrl = 'http://192.168.0.101:5757/weapp';

const config = {
    baseUrl,
    loginUrl: `${baseUrl}/login`,
    userUrl: `${baseUrl}/user`
}
export default config