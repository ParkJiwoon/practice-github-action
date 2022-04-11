package com.example.practicegithubaction

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test

class SampleTest {

    @Test
    fun testSuccess() {
        assertThat("hello").isEqualTo("hello")
    }

    @Test
    fun testFail() {
//        assertThat("hello").isEqualTo("hi")
    }
}
