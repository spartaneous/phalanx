module.exports = {
    attributes: {
        firstName: 'string',
        lastName: 'string',
        email: {
            type: 'string',
            unique: true
        },
        password: 'string'
    }
};