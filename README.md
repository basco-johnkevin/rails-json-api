Leagues Resource

To create a user:

`POST /users`

```
{
  "data": {
    "type": "users",
    "attributes": {
      "name": "john",
      "email": "test@gmail.com",
      "password": "admin"
    }
  }
}
```

To create a league:

`POST /leagues`

```
{
  "data": {
    "type": "leagues",
    "attributes": {
      "name": "Ember Hamster"
    },
    "relationships": {
      "sport": {
        "data": {
          "type": "sports",
          "id": "1"
        }
      }
    }
  }
}
```

Teams Resource

To create a team:

`POST /teams`

```
{
  "data": {
    "type": "teams",
    "attributes": {
      "name": "Team #1"
    },
    "relationships": {
      "league": {
        "data": {
          "type": "leagues",
          "id": "1"
        }
      }
    }
  }
}
```

Sport Resource

To create a sport:

`POST /sports`

```
Authorization: Bearer 66e4f48a1bce64f8544d77f7b6f495d89e0f19e8d38bc115ca43257fb90ed8a2

{
  "data": {
    "type": "sports",
    "attributes": {
      "name": "basketball"
    }
  }
}
```

Logging in:

https://github.com/doorkeeper-gem/doorkeeper/wiki/API-endpoint-descriptions-and-examples#curl-command-password-grant
https://github.com/doorkeeper-gem/doorkeeper/wiki/Using-Resource-Owner-Password-Credentials-flow

```
curl -F grant_type=password \
-F username=mhartl@example.com \
-F password=foobar \
-X POST http://localhost:3000/oauth/token
```
