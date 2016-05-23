import hello from './'
import assert from 'assert'

export default () => {
	assert.strictEqual(typeof hello, 'function')
	assert.strictEqual(hello(), 'Hello World!')
}
