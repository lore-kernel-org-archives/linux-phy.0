Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD1F606A324
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 07:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EfzYIfcn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Ov6qPki4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ru4Flxm87/iLXC/4BVr/+5DEKJM5VQDkiIfNQQ6i2XE=; b=EfzYIfcnYFoba7e4UtgWL4YMwp
	X7E3LiPqsZr8Oed87xTkOiSfcVOo/2YVan5c7aHqX2S95D/z4jM1TLafgBngHtdZnjyEAC0BGTza5
	VJu7YssjsYQvNYmEhF3BwMuDQrhstO+dXJU4bk2hPSPqzWeC5U1ifqoTvBvAQPUY2QZE9z3bOvmlo
	aCxY9Kx2DT3ugd945BXk5OZQasE8FSrirsG1VtamjKv7u8XXQPa7/VnZHTJ68aP/vR0+wS0Fb1VdV
	dCTCMYWEN98myd/RecsS8MDcPCqufYVZJ3ku4LSCDo24c15bM7wF/VhaPdJ3VN3UgLC9MOKBBBD1e
	XAsGXJCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9Ps-00000001Sn0-1yIi;
	Tue, 03 Nov 2026 07:58:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO9Pr-00000001Sms-2dTJ
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 07:58:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D6EDB40854;
	Tue,  3 Nov 2026 07:58:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 558701F000C1;
	Tue,  3 Nov 2026 07:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793692726;
	bh=o1BJ/Y2TNEexfoxI4/HZbpkaa7m/VA6soorGM6Dw74k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ov6qPki46u9Qd7dwBPTtG6I8/kgcLxHj98b5odjWvXZfLHwNaPnQ8l+i7bjFXu8ur
	 aBEWP/YwmVCOaVXHB2vGNx3Z3gNI32PAqtjMk4YCLEwEM01TnRbAAY95LQU8FejkVg
	 t3bGt1oYaElKRrkS7bG7z89jnDzpvTqhGL69crx0YCFHJ9iamRoYuVwgsa4+h36yuz
	 DsZ0t79+IlNDZru0Nxq0JwVA1Xs9dptzA+SdcH++QmySOR5Pnk8ZG/zcna0rF0Am57
	 TE+OZ4AyNFQuHomae8zkOHbw24W4GB98EAM8prSLCulEF2HK9GnGaEtXY9/G0ki5so
	 DF6LnJTLL0fqA==
Message-ID: <sashiko-outbox-194780@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/3] phy: cix: Add CIX Sky1 USB3 PHY driver
To: =?utf-8?b?SG9uZ2xpYW5nIFlhbmcgKOadqOWuj+S6rik=?= <hongliang.yang@cixtech.com>
Cc: =?utf-8?b?bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmc=?= <linux-phy@lists.infradead.org>,
 =?utf-8?b?ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc=?= <devicetree@vger.kernel.org>, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261103074913.1971025-3-hongliang.yang@cixtech.com>
References: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
 <20261103074913.1971025-3-hongliang.yang@cixtech.com>
Date: Tue, 03 Nov 2026 07:58:45 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiBjaXg6IG1pc3Np
bmcgc2VsZWN0IFJFR01BUCBmb3IgUEhZX0NJWF9VU0IzIGluIEtjb25maWcKLS0KCmNvbW1pdCBk
OTY0Mjk4YWQ2MzUxYjNlNmU3YzQ4YjVkNjIyZDE0NDk5MzcwODBmCkF1dGhvcjogSG9uZ2xpYW5n
IFlhbmcgKOadqOWuj+S6rikgPGhvbmdsaWFuZy55YW5nQGNpeHRlY2guY29tPgoKcGh5OiBjaXg6
IEFkZCBDSVggU2t5MSBVU0IzIFBIWSBkcml2ZXIKClRoaXMgY29tbWl0IGFkZHMgYSBQSFkgZHJp
dmVyIGZvciB0aGUgbXVsdGktcG9ydCBDYWRlbmNlIFNEMDgwMyBVU0IzIFBIWSBmb3VuZApvbiBD
SVggU2t5MSBTb0NzLCBoYW5kbGluZyBpbml0aWFsaXphdGlvbiwgcmVzZXQsIGFuZCBjbG9jayBt
YW5hZ2VtZW50LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvY2l4L0tjb25maWcgYi9kcml2
ZXJzL3BoeS9jaXgvS2NvbmZpZwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAw
MDAwMDAwMC4uYWFhMmViOWQ0NTUyNwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3Bo
eS9jaXgvS2NvbmZpZwo+IEBAIC0wLDAgKzEsMjAgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5Cj4gKyMKPiArIyBQaHkgZHJpdmVycyBmb3IgQ2l4IFBIWXMKPiAr
Iwo+ICsKPiAraWYgQVJDSF9DSVggfHwgQ09NUElMRV9URVNUCj4gKwo+ICtjb25maWcgUEhZX0NJ
WF9VU0IzCj4gKwl0cmlzdGF0ZSAiQ2l4IFVTQjMgUEhZIERyaXZlciIKPiArCWRlcGVuZHMgb24g
T0YgJiYgSEFTX0lPTUVNCj4gKwlzZWxlY3QgR0VORVJJQ19QSFkKCltTZXZlcml0eTogTG93XQpE
b2VzIFBIWV9DSVhfVVNCMyBpbiBkcml2ZXJzL3BoeS9jaXgvS2NvbmZpZyBhbHNvIG5lZWQgdG8g
c2VsZWN0IFJFR01BUD8KCkluIGRyaXZlcnMvcGh5L2NpeC9waHktY2l4LXVzYjMuYywgdGhlIGRy
aXZlciBkZWZpbmVzIGNpeF91M3BoeV9yZWdtYXBfY2ZnIGFzCnN0cnVjdCByZWdtYXBfY29uZmln
LCBjYWxscyByZWdtYXBfbXVsdGlfcmVnX3dyaXRlKCkgaW4gc2t5MV91M3BoeV9pbml0KCksIGFu
ZApjYWxscyBkZXZtX3JlZ21hcF9pbml0KCkgaW4gY2l4X3UzcGh5X3Byb2JlKCk6Cgpkcml2ZXJz
L3BoeS9jaXgvcGh5LWNpeC11c2IzLmM6c2t5MV91M3BoeV9pbml0KCkgewoJLi4uCgkJcmV0ID0g
cmVnbWFwX211bHRpX3JlZ193cml0ZSh1M3BoeS0+cGh5X3JlZ21hcCwgc2t5MV91M3BoeV9jb25m
LAoJCQkJCSAgICAgQVJSQVlfU0laRShza3kxX3UzcGh5X2NvbmYpKTsKCS4uLgp9Cgpkcml2ZXJz
L3BoeS9jaXgvcGh5LWNpeC11c2IzLmM6Y2l4X3UzcGh5X3Byb2JlKCkgewoJLi4uCgl1M3BoeS0+
cGh5X3JlZ21hcCA9IGRldm1fcmVnbWFwX2luaXQoZGV2LCBOVUxMLCB1M3BoeSwgJmNpeF91M3Bo
eV9yZWdtYXBfY2ZnKTsKCS4uLgp9CgpJbiBpbmNsdWRlL2xpbnV4L3JlZ21hcC5oLCBzdHJ1Y3Qg
cmVnbWFwX2NvbmZpZywgZGV2bV9yZWdtYXBfaW5pdCgpLCBhbmQKcmVnbWFwX211bHRpX3JlZ193
cml0ZSgpIGFyZSBndWFyZGVkIGJ5IENPTkZJR19SRUdNQVAgd2l0aG91dCBmYWxsYmFjayBzdHVi
cwp3aGVuIENPTkZJR19SRUdNQVAgaXMgZGlzYWJsZWQuIElmIENPTkZJR19QSFlfQ0lYX1VTQjMg
aXMgZW5hYmxlZCBpbiBhCmNvbmZpZ3VyYXRpb24gd2hlcmUgbm8gb3RoZXIgb3B0aW9uIHNlbGVj
dHMgUkVHTUFQLCBidWlsZGluZyBwaHktY2l4LXVzYjMubwp3aWxsIGZhaWwgZHVlIHRvIGFuIGlu
Y29tcGxldGUgc3RydWN0IHJlZ21hcF9jb25maWcgdHlwZSBhbmQgaW1wbGljaXQgZnVuY3Rpb24K
ZGVjbGFyYXRpb25zLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MTEwMzA3NDkxMy4xOTcxMDI1LTEtaG9uZ2xpYW5nLnlhbmdAY2l4
dGVjaC5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
