
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { ColoradoInformationMarketplaceSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await ColoradoInformationMarketplaceSDK.test()
    equal(null !== testsdk, true)
  })

})
