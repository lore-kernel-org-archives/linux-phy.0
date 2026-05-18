Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8652CD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 04:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCCGzZOCCRawCu58gO9vu2fU2jkjk5UFyIr5BleUG0I=; b=zEWQNVhIiUkKDt
	5PHsFoxDTP7+U7oAqsgIXMV8ox3InP/3Eo+7kO2Zd3KBjcLMI0PiMz7tY48mmYKSfzfWFsjd07SDW
	xj60qM4yxaUKm1t5wgylshxYM9XSK81Tr/Z1ffryKVcQYde/J77WZ+ZxdrQKtNSTuJ9glVPC47X2S
	bocFM2DtQD4oxV1y9v25v80NgSq34dBtyZ+UuEv0S0cIK1jLBfA9tlVEwObrI1nIFC5Ue7SmlTSRx
	HZLxyKcXrvZRoTjmaGT7g3pWLCd5XSDIDfo3LCcHwect4/u0AeQRI68SlF5ci8n+t9aBMh4qBi1Rm
	warAQulzHaWRogJcPE6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOpLG-0000000E8FP-3scc;
	Mon, 18 May 2026 04:12:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOpLE-0000000E8F6-43if
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 04:12:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CC9066001A;
	Mon, 18 May 2026 04:12:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 527ECC2BCB7;
	Mon, 18 May 2026 04:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779077551;
	bh=KxfWq18pVRGq8zUp37mUp56kC7LwQP5LQNXGDtirqsg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=E9PaAea8F4AVX4aF3CaNEMeTAOt225TQAqLXiIw8/aC59V+XvlJFe/giilLcX6R7L
	 oNJSuLoHES9erlr8SlAoWur15tAUQ1H+H0pkggu2NoSQ3kK+7AYMV6ex2kxqY49dZQ
	 R53Xbr/Dt5eYQj2NgpXBF0XSnKzoEB5WgAM2c9bNincVx1kZjTY6Edl6LJ1b9isEi9
	 TTEttCRP2jGVOb0eyhJ5X8gK2gcJkcHtHPBJk+owQNri2uNyaMRBBMv7NIPjr2WTPT
	 5KRsbruHfJqyiB3GlsajsQKz9YQMks+Js/n/L4xpYCadL5oZIPcjv6I2ViIWS41f+O
	 MIqVsllW/2aHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: ti-pipe3: Fix clock leak in init error path
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260518035105.26607-1-zenghongling@kylinos.cn>
References: <20260518035105.26607-1-zenghongling@kylinos.cn>
Date: Mon, 18 May 2026 04:12:30 +0000
Message-Id: <20260518041231.527ECC2BCB7@smtp.kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHRpX3BpcGUzX2luaXQo
KSBjb21wbGV0ZWx5IGlnbm9yZXMgdGhlIHJldHVybiB2YWx1ZSBvZiB0aV9waXBlM19lbmFibGVf
Y2xvY2tzKCksIGxlYWRpbmcgdG8gdW5jbG9ja2VkIGhhcmR3YXJlIGFjY2VzcyBhbmQgdW5iYWxh
bmNlZCBjbG9jayBkaXNhYmxlcy4KLS0KCmNvbW1pdCA2ZTNiNTNiNWVhOWFmNTA0ZjJhNjJmOWFi
ZmM5MzNiYmJiNjcxZTI1CkF1dGhvcjogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlu
b3MuY24+CgpwaHk6IHRpLXBpcGUzOiBGaXggY2xvY2sgbGVhayBpbiBpbml0IGVycm9yIHBhdGgK
ClRoaXMgY29tbWl0IGFkZHMgYSBjbG9jayBjbGVhbnVwIGluIHRoZSBQQ0llIGVycm9yIHBhdGgg
b2YgdGlfcGlwZTNfaW5pdCgpCnRvIHByZXZlbnQgY2xvY2tzIGZyb20gYmVpbmcgcGVybWFuZW50
bHkgZW5hYmxlZCB3aGVuIHJlZ21hcF91cGRhdGVfYml0cygpCmZhaWxzLgoKQ2xvc2VzOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA1MTgwMjM2NTcuNDE4NTJDMkJDQjBAc210cC5r
ZXJuZWwub3JnLwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMg
Yi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IGluZGV4IGI1NTQzYjVjNjc0YzguLmI1
ZWUwYWY3N2M5ZjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMK
PiArKysgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IEBAIC01MTUsNiArNTE1LDgg
QEAgc3RhdGljIGludCB0aV9waXBlM19pbml0KHN0cnVjdCBwaHkgKngpCj4gIAkJdmFsID0gMHg5
NiA8PCBPTUFQX0NUUkxfUENJRV9QQ1NfREVMQVlfQ09VTlRfU0hJRlQ7Cj4gIAkJcmV0ID0gcmVn
bWFwX3VwZGF0ZV9iaXRzKHBoeS0+cGNzX3N5c2NvbiwgcGh5LT5wY2llX3Bjc19yZWcsCj4gIAkJ
CQkJIFBDSUVfUENTX01BU0ssIHZhbCk7Cj4gKwkJaWYgKHJldCkKPiArCQkJdGlfcGlwZTNfZGlz
YWJsZV9jbG9ja3MocGh5KTsKCkNvdWxkIHRoaXMgZXJyb3IgcGF0aCB0cmlnZ2VyIGFuIHVuYmFs
YW5jZWQgY2xvY2sgZGlzYWJsZSB3YXJuaW5nIGlmIHRoZSBjbG9ja3MKd2VyZSBuZXZlciBzdWNj
ZXNzZnVsbHkgZW5hYmxlZD8KCkVhcmxpZXIgaW4gdGlfcGlwZTNfaW5pdCgpLCB0aGUgcmV0dXJu
IHZhbHVlIG9mIHRpX3BpcGUzX2VuYWJsZV9jbG9ja3MoKSBpcwppZ25vcmVkOgoKZHJpdmVycy9w
aHkvdGkvcGh5LXRpLXBpcGUzLmM6dGlfcGlwZTNfaW5pdCgpIHsKICAgICAgICAuLi4KICAgICAg
ICBpbnQgcmV0ID0gMDsKCiAgICAgICAgdGlfcGlwZTNfZW5hYmxlX2Nsb2NrcyhwaHkpOwogICAg
ICAgIC8qCiAgICAgICAgICogU2V0IHBjaWVfcGNzIHJlZ2lzdGVyIHRvIDB4OTYgZm9yIHByb3Bl
ciBmdW5jdGlvbmluZyBvZiBwaHkKICAgICAgICAuLi4KfQoKSWYgdGlfcGlwZTNfZW5hYmxlX2Ns
b2NrcygpIGZhaWxzLCBpdCByb2xscyBiYWNrIGFuZCBjbGVhbmx5IGRpc2FibGVzIGFueQpwYXJ0
aWFsbHkgZW5hYmxlZCBjbG9ja3MuCgpUaGUgaW5pdGlhbGl6YXRpb24gdGhlbiBjb250aW51ZXMg
YW55d2F5LCBpbnRlcmFjdGluZyB3aXRoIHVuY2xvY2tlZCBoYXJkd2FyZSwKd2hpY2ggbWlnaHQg
Y2F1c2UgYSBidXMgZXJyb3IuCgpJZiBpdCByZWFjaGVzIHRoaXMgbmV3IGVycm9yIHBhdGggYmVj
YXVzZSByZWdtYXBfdXBkYXRlX2JpdHMoKSBmYWlscywKdGlfcGlwZTNfZGlzYWJsZV9jbG9ja3Mo
KSB3aWxsIGJlIGNhbGxlZCB1bmNvbmRpdGlvbmFsbHkgb24gYWxyZWFkeS1kaXNhYmxlZApjbG9j
a3MuCgo+ICAJCXJldHVybiByZXQ7Cj4gIAl9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTE4MDM1MTA1LjI2NjA3LTEtemVuZ2hv
bmdsaW5nQGt5bGlub3MuY24/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
