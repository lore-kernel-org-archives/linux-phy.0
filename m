Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B27E606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 21:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ztigV+QL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=AvhaAtXO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JZijcRZ9+Rw4gFSBbFsxmQZDFKqpcfoHZS8IkTyfTFw=; b=ztigV+QLGMv5Aa+nbrgfGc+efF
	WqPayx8px/2cwlxLAK4C/OcCUFgpBWvBg1lOAvWinM75OuaK5c7FFyGxELzTUVU4zdhSI5yBQbbhp
	EmM4s717G11LhtU01L35eD9YqYl2w9Ib86T/8Q1sKIZO+HySkZjGnTlzGAFTyEu4bFuT0eLVhCTOc
	Fa1vmWOjJbn3/MMJ8B5nFGNAd3978x2GBNePVKZiS37qiCiowF6ay0KbVMWqD58icUqvG6/RNlut3
	zcz4lxQOqB/qx6+hH5D1rqegUMRBzQDXxuXrvlNGPt3EevCxN1gUayDda5qZiO7fGaXWFKKIInTlq
	sbBCPLuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWKAG-0000000BL3x-1Jgj;
	Wed, 25 Nov 2026 21:04:28 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWKAD-0000000BL2Z-24tD
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 21:04:27 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-6b8815693e2so7224444a12.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 13:04:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795640664; cv=none;
        d=google.com; s=arc-20260327;
        b=SzL8nJSa+2Z/DiJq5OZKec679br+DVoSo2iZ4x9TShNpRnZYiH0Uf4J5EwlcAHnrSh
         ehX6PjLYty6GMewiIkdoRnfMLD7HqrnYS/aBvesjpnnhQEsTKpoRWd0qAHIw9R/Q2+0C
         d2hSelSKBr4Y54h/oi120PKHmGHT/BVoRgCg4jZVGqtHEr2jwbtVciA2CKe9InMelEwH
         NsjghtzmhZRveT9G9SrLE/UreFDUepIn6VYaXRz55Ws8Eft18PN6b402F3kAtfZVRxZL
         MVjq8trCoLN+GqpKp6NxdwhxDTXrsmMJl/GpwDbSn4pHocIsZBmpup/Mv3lugv63/1y9
         LNxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jAVSepPFXDVnDs0KIr6D847y94ZRdB5eQ9a+FnzieW4=;
        fh=ZWO9igs8pP/YZUq6fl8Br3LrNnJ5/eZsicT84gty3pY=;
        b=Lg6gfRj+HKnzQbTEG0Bwb5vXeaUWbMtG6RDNz57+obPJTPkRTBRG4PgbOpOzmmQ+dc
         CNeMLGlpBpBTaG2z2eVZDTXk5WrhoniX3rjP0eR/V+gJFWWIeJNt/9Ggt2t4id/2LbVJ
         xvS/JTuYApQ3RCVxfzetHdTmy0AZQQO+vEK8LOjaQAhqC8muG7Z0gisdMggj8I9kav/Q
         zXOoFY9WK3JYuwXH6eZ5wbdHp1D6nTNPn0LjVXQHX2Ompnu0sddMxvmMSkYiBKHd4TIq
         w1A47eV7EIL485VUdVSc9ZkASDY4+S88FcXb8cBc30YHWqzZOEr+AWHsziT/+GnI5LME
         CEjw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795640664; x=1796245464; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jAVSepPFXDVnDs0KIr6D847y94ZRdB5eQ9a+FnzieW4=;
        b=AvhaAtXO4fw5yTCw0f3Gh+1Wq8LLNCabA/7uigZbUlpa/htiROR09IezxEPFlPamg8
         T0A7Qk5DsjAsz4nsJG71oVkIUhuWQo3ub2QMDVgz5uWFLXTPraC5f1fokNFUMrWknBXe
         nCZ8JOQ7f5vHoiN6jnFM1RDzLtA7CpaQtCX1eEKm89nlksoZzpQQdqj+5Pi8j1qoJp07
         C7BtB99lJGJjOmP95jaILV5j1vUcILjPtlZm9yKNZYt3iokcO0Is7/ElZ/sJIEweX0ee
         TsFkQOqj1VOZWCubzgciKsTO2+MfzDoZ5W96W4rSUTyTot4g0RQzBac3pkmbZfcD9cpe
         WElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795640664; x=1796245464;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jAVSepPFXDVnDs0KIr6D847y94ZRdB5eQ9a+FnzieW4=;
        b=gGI9BxCwI80sj36sBqaP7rL4xP/FP5wo5DZlLNu2C0WGiSzsZhWICPS2PklkAfYwoF
         5xi7fbKgA8yM0byjuZAOmrPKbHREAaEqEyr0Zgg7GCgqIixJXw5/uTD0oMhZqGuPmw1d
         yYn7bt4JXs7b/DqGzCgDrqOjy5M/sKNDSlvu6Fr+HAncrmSMeFsHbapHW3eBge/gHYfQ
         GWUnWySnYf0YBjM42FFrbbS3Ah4ZWFObFCtnXLIW5h8twoeo384h8vyhz6DTWIcuc1d8
         Zjs2/gJhKqwUGavMWEACBR1jc1NsgSpeyDqcRt+0WkQwYlf89fxNah9FmaMj3KygvGkG
         WYcQ==
X-Forwarded-Encrypted: i=1; AL+hErHDjEEhZkfCAVakgIPsFTkUt7YhUrWCBQ5QVTsqwuZMupKIbjXVhqkDhX4ZnJC5XFCfz6arWrcTdio=@lists.infradead.org
X-Gm-Message-State: APuU4Z8Mjt4UiD56ftJUAz7DXP2HuZO6qJqJEuPIGFAly+ycG+npjmXB
	LXD0P2hg+VxoAhRRMPqewtf3iwkFWfJ4Nd6rsJV6goDuuE3sCV0mriX3xU1xkWWuWhPKmxDPYos
	spP6cNZjZZ1xj+Onv6ju/e8mvXgGG9nphfYBfMGEYfw==
X-Gm-Gg: AZFdTZcvMXx+OXBD2J7yNZPwLLcNIicB4SERWj67wIwIJW80vgRhAWjfbU/aXEcr4m5
	0fA5iZCRu5luk+nXVcHcQMRFmBq1btppg9ex0FunRQy6KYF72kzrIlu3D/JnwaRzPZ0BTYbR8e3
	41U6KkCq8coMx8NLm/Z2ui/M6BjrBOWMXQJf0F46WN0n/3b+40/1UbcsyiwH5ZlKsehJG2SYNJ6
	KZB9hnCU+USkkA/qANpp19ZyxwdRW+tSHpVuac578Tj2N9ie2R94CYbI51/Hc7dcWhhQWITjG0A
	L+63vnojpQRRk9YsoZ7e4hDcDhd0LykZOq5bP/wO2Z0YnE4NrR4xHA73MqwHZTRO+8Umbgk3tBr
	MNzrupWn14kzHyNVAIUaiF8yfUhRe7sx4tz95Dt4lO4vuPdLyTwo9lOm+2GZTsKf6tLOapnU=
X-Received: by 2002:aa7:c0d0:0:b0:6ba:144f:ae43 with SMTP id
 4fb4d7f45d1cf-6ba37c7b138mr10360793a12.6.1795640663702; Wed, 25 Nov 2026
 13:04:23 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org> <20261123-gs101-usb-phy-orientation-v2-2-3361fa5f7543@linaro.org>
In-Reply-To: <20261123-gs101-usb-phy-orientation-v2-2-3361fa5f7543@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 25 Nov 2026 21:04:11 +0000
X-Gm-Features: Aa3M54oVBZq5tOYyeoj6arLLradCyxNln2xhQ16gdyoLzIDJohPkD6NVk6Xh8SE
Message-ID: <CADrjBPpE+2n1Y=02Ayz8i8guJ58XBzdG5zVdLJW5ZhQQKiNmNw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: exynos5-usbdrd: apply gs101 postlock tuning
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, RD Babiera <rdbabiera@google.com>, 
	Juan Yescas <jyescas@google.com>, kernel-team@android.com, phone-devel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_130425_563589_29B12BDB 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gTW9uLCAyMyBOb3YgMjAyNiBhdCAxNDoyNSwgQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6
aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBQaHkgdHVuaW5ncyB0byBiZSBhcHBsaWVkIGFmdGVy
IGxvY2sgYXJlIG5ldmVyIGFwcGxpZWQgb24gZ3MxMDEuCj4KPiBPbiBnczEwMSwgZ3MxMDFfdHVu
ZXNfcGlwZTNfcG9zdGxvY2tbXSBkaXNhYmxlcyB0aGUgaGlnaC1zcGVlZCBzcXVlbGNoCj4gZGV0
ZWN0b3Igd2hlbiBpbiBQMyAvIFUzIHRvIHNhdmUgc29tZSBwb3dlci4gSW4gVTMgKFVTQjMgc3Vz
cGVuZCkgdGhlcmUKPiBpcyBubyBTdXBlclNwZWVkIGRhdGEgdHJhZmZpYyB0byBkZXRlY3QsIGFu
ZCBsaW5rIHdha2V1cCB1c2VzIExGUFMKPiB0aHJvdWdoIGEgc2VwYXJhdGUgbG93LWZyZXF1ZW5j
eSBkZXRlY3Rvci4gRGlzYWJsaW5nIHRoZSBoaWdoLXNwZWVkIFJYCj4gc3F1ZWxjaCBkZXRlY3Rv
ciBpbiBVMyBhdm9pZHMga2VlcGluZyBpdCBwb3dlcmVkIHdoaWxlIHRoZSBsaW5rIGlzCj4gc3Vz
cGVuZGVkLgo+Cj4gQXBwbHkgUFRTX1BJUEUzX1BPU1RMT0NLIG9uY2UgdGhlIFBMTCBhbmQgdGhl
IENEUiBoYXZlIGxvY2tlZC4KPgo+IEZpeGVzOiAzMjI2N2MyOWJjN2QgKCJwaHk6IGV4eW5vczUt
dXNiZHJkOiBzdXBwb3J0IEV4eW5vcyBVU0JEUkQgMy4xIGNvbWJvIHBoeSAoSFMgJiBTUykiKQo+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6
aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KPiAtLS0KClJldmlld2VkLWJ5OiBQZXRlciBH
cmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+Cgo+ICBkcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiBpbmRl
eCBjY2FmMGYyN2M0YzguLmY2NDc2ODhjM2JmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4gKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9w
aHktZXh5bm9zNS11c2JkcmQuYwo+IEBAIC0xNzQ1LDYgKzE3NDUsOCBAQCBzdGF0aWMgaW50IGV4
eW5vczVfdXNiZHJkX2dzMTAxX3BpcGUzX2luaXQoc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAq
cGh5X2RyZCkKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7
Cj4KPiArICAgICAgIGV4eW5vczVfdXNiZHJkX2FwcGx5X3BoeV90dW5lcyhwaHlfZHJkLCBQVFNf
UElQRTNfUE9TVExPQ0spOwo+ICsKPiAgICAgICAgIC8qCj4gICAgICAgICAgKiBTZXQgdGhpcyB3
aGlsZSBzdGlsbCBob2xkaW5nIHBoeV9tdXRleCwgc28gdGhhdCB0aGUgb3JpZW50YXRpb24KPiAg
ICAgICAgICAqIHN3aXRjaCBjYWxsYmFjayBjYW4ndCBtaXNzIGFuIG9yaWVudGF0aW9uIGNoYW5n
ZS4KPgo+IC0tCj4gMi41Ni4xLjc1MC5nZjcwZGM2ODJjZi1nb29nCj4KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
