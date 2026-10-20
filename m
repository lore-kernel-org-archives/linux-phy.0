Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A86606A31A
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 08:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3vUteBIE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ky9w8apS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfVs7T+gkyVnctakiO3Fy2WMQtwfImnfwb20f+yNqU8=; b=3vUteBIEWkb7xl
	9Ct/7RHy2+mHBL+I5JiDyXGybkkuhbDaekFU0hyL0BTe+g7YAVqIw3h38ylAGb82RlmEqSe9izswI
	aKgQZRefmjmK4722TrKrJMmGbuUDVpcwIZcNkCioLhBnyc8Jr/GLy4E7k9KANnwLy8DCnVw3LUe+t
	E0TeKEgEebqT2UJAIGiQRagi9YpKyVjFm/nFEEuCPa0PZmoX8G8TcAge9bzbWHkX1WqVcnYAxWlYh
	lhK8C/aWW8aWgQPH8l3eEXUo96BrOpTPm89GLUZhDwMfin5PWel6TrveIicBrfsejS49PfjOab738
	U3nCYpkyXFdCGBxPEcMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5SL-00000009Dpz-1FxH;
	Tue, 20 Oct 2026 08:44:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5SK-00000009Dpq-1MHW
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 08:44:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C07F8418F1;
	Tue, 20 Oct 2026 08:44:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42EEB1F000C6;
	Tue, 20 Oct 2026 08:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792485863;
	bh=mc6RRGX7gYyCjJfiAy6dDp+mQsnToMDdgMCPXd3lI3U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ky9w8apSzr4M+3oAGvcpPErFMxxrcKqrFpjNcNBK6A+U0yjbd8FP+aQqglUBRqwTu
	 3zta5ryqgtXlGcPk3PsO6eZY0wEM9VChgoJiFWTNBil1Mi9Q4SsxBmID00dJyYEPmo
	 bSke/Az0+yQzXs7JioAhrW1RZ/RVueQ5tjx01L4V6uGFzegiixHDJ2kyvgOR5ReqAH
	 qboC7p2jzZTqaISvFe0CWNOwfupZgqSv6Mgq24ArWKTgSZQd2ZO9/dMvhhAwnhPe3R
	 H8KKZrHPLuT4cjrRYQe4jQH/AFsc856nP/oRSbCevuzppKANq+UjsulA+IgjQ6ZybT
	 TXSkfr87ifzMg==
Message-ID: <sashiko-outbox-178604@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 5/7] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261020072816.180-6-kernel@airkyi.com>
References: <20261020072816.180-1-kernel@airkyi.com>
 <20261020072816.180-6-kernel@airkyi.com>
Date: Tue, 20 Oct 2026 08:44:22 +0000
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcm9ja2NoaXA6
IHR5cGVjOiB1bmJhbGFuY2VkIG9mX25vZGVfcHV0KCkgaW4gcm9ja2NoaXBfdHlwZWNfcGh5X3By
b2JlKCkKLS0KCmNvbW1pdCA1ZGQyYTg5NDg2Y2NlNmU4MWE3ZTBiZmEzZjM5YjQ5NWQ3MjU0NTQx
CkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgoKcGh5OiBy
b2NrY2hpcDogcGh5LXJvY2tjaGlwLXR5cGVjOiBBZGQgRFJNIEFVWCBicmlkZ2UKClRoaXMgY29t
bWl0IHJlZ2lzdGVycyBhIHRyYW5zcGFyZW50IERSTSBBVVggYnJpZGdlIGRldmljZSBmb3IgdGhl
IGRwLXBvcnQKY2hpbGQgbm9kZSBpbiB0aGUgUm9ja2NoaXAgVHlwZS1DIFBIWSBkcml2ZXIgdXNp
bmcKZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYyBiL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCj4gaW5kZXggZDk3MDFiNjEwNmQ1NS4uNDgwNzBi
NTA0MTZlNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dHlwZWMuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5j
ClsgLi4uIF0KPiBAQCAtMTE2MiwxNiArMTE2MywyNCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3R5
cGVjX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAKPiAgCWZvcl9l
YWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKG5wLCBjaGlsZF9ucCkgewo+ICAJCXN0cnVjdCBw
aHkgKnBoeTsKPiArCQlyZXQgPSAwOwo+ICAKPiAtCQlpZiAob2Zfbm9kZV9uYW1lX2VxKGNoaWxk
X25wLCAiZHAtcG9ydCIpKQo+ICsJCWlmIChvZl9ub2RlX25hbWVfZXEoY2hpbGRfbnAsICJkcC1w
b3J0IikpIHsKPiAgCQkJcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgY2hpbGRfbnAsCj4gIAkJ
CQkJICAgICAgJnJvY2tjaGlwX2RwX3BoeV9vcHMpOwo+IC0JCWVsc2UgaWYgKG9mX25vZGVfbmFt
ZV9lcShjaGlsZF9ucCwgInVzYjMtcG9ydCIpKQo+ICsJCQlyZXQgPSBkcm1fYXV4X2JyaWRnZV9y
ZWdpc3Rlcl9mcm9tX25vZGUoZGV2LCBjaGlsZF9ucCk7Cj4gKwkJfSBlbHNlIGlmIChvZl9ub2Rl
X25hbWVfZXEoY2hpbGRfbnAsICJ1c2IzLXBvcnQiKSkKPiAgCQkJcGh5ID0gZGV2bV9waHlfY3Jl
YXRlKGRldiwgY2hpbGRfbnAsCj4gIAkJCQkJICAgICAgJnJvY2tjaGlwX3VzYjNfcGh5X29wcyk7
Cj4gIAkJZWxzZQo+ICAJCQljb250aW51ZTsKPiAgCj4gKwkJaWYgKHJldCkgewo+ICsJCQlwbV9y
dW50aW1lX2Rpc2FibGUoZGV2KTsKPiArCQkJb2Zfbm9kZV9wdXQoY2hpbGRfbnApOwo+ICsJCQly
ZXR1cm4gcmV0Owo+ICsJCX0KCltTZXZlcml0eTogSGlnaF0KRG9lcyBwYXNzaW5nIGNoaWxkX25w
IGRpcmVjdGx5IHRvIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpIGhlcmUKY2F1
c2UgYW4gT0Ygbm9kZSByZWZlcmVuY2UgY291bnQgdW5kZXJmbG93IG9uIGNoaWxkX25wPwoKSW4g
cm9ja2NoaXBfdHlwZWNfcGh5X3Byb2JlKCksIGZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9u
b2RlKCkgaG9sZHMgYQpyZWZlcmVuY2Ugb24gY2hpbGRfbnAgb25seSBmb3IgdGhlIGN1cnJlbnQg
bG9vcCBpdGVyYXRpb24gYW5kIGRyb3BzIGl0IHdoZW4KYWR2YW5jaW5nIHRvIHRoZSBuZXh0IGNo
aWxkIChvciB2aWEgb2Zfbm9kZV9wdXQoY2hpbGRfbnApIG9uIGVhcmx5IHJldHVybikuCgpIb3dl
dmVyLCBpbiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2F1eC1icmlkZ2UuYywKZHJtX2F1eF9icmlk
Z2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkgYXNzaWducyBhZGV2LT5kZXYub2Zfbm9kZSB2aWEKZGV2
aWNlX3NldF9ub2RlKCkgd2l0aG91dCB0YWtpbmcgYSByZWZlcmVuY2Ugd2l0aCBvZl9ub2RlX2dl
dCgpLCB3aGlsZSBib3RoCml0cyBlcnJvciBwYXRoIGFuZCBkcm1fYXV4X2JyaWRnZV9yZWxlYXNl
KCkgZHJvcCBhIHJlZmVyZW5jZToKCmRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5j
OmRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpIHsKCWlmIChucCkKCQlkZXZpY2Vf
c2V0X25vZGUoJmFkZXYtPmRldiwgb2ZfZndub2RlX2hhbmRsZShucCkpOwoJZWxzZQoJCWRldmlj
ZV9zZXRfb2Zfbm9kZV9mcm9tX2RldigmYWRldi0+ZGV2LCBwYXJlbnQpOwoKCXJldCA9IGF1eGls
aWFyeV9kZXZpY2VfaW5pdChhZGV2KTsKCWlmIChyZXQpIHsKCQlvZl9ub2RlX3B1dChhZGV2LT5k
ZXYub2Zfbm9kZSk7CgkJaWRhX2ZyZWUoJmRybV9hdXhfYnJpZGdlX2lkYSwgYWRldi0+aWQpOwoJ
CWtmcmVlKGFkZXYpOwoJCXJldHVybiByZXQ7Cgl9Cn0KCmRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
YXV4LWJyaWRnZS5jOmRybV9hdXhfYnJpZGdlX3JlbGVhc2UoKSB7CglzdHJ1Y3QgYXV4aWxpYXJ5
X2RldmljZSAqYWRldiA9IHRvX2F1eGlsaWFyeV9kZXYoZGV2KTsKCglvZl9ub2RlX3B1dChkZXYt
Pm9mX25vZGUpOwoJaWRhX2ZyZWUoJmRybV9hdXhfYnJpZGdlX2lkYSwgYWRldi0+aWQpOwoKCWtm
cmVlKGFkZXYpOwp9CgpJZiBkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKSBmYWls
cyBhdCBvciBhZnRlcgphdXhpbGlhcnlfZGV2aWNlX2luaXQoKSwgaXQgY2FsbHMgb2Zfbm9kZV9w
dXQoY2hpbGRfbnApIGludGVybmFsbHksIGFuZCB0aGVuCnRoZSBlcnJvciBwYXRoIGluIHJvY2tj
aGlwX3R5cGVjX3BoeV9wcm9iZSgpIGNhbGxzIG9mX25vZGVfcHV0KGNoaWxkX25wKSBhCnNlY29u
ZCB0aW1lLgoKU2ltaWxhcmx5LCBpZiBkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUo
KSBzdWNjZWVkcywgdGhlIGxvb3AgZHJvcHMKaXRzIHJlZmVyZW5jZSBvbiBjaGlsZF9ucCB3aGVu
IGFkdmFuY2luZyB0byB0aGUgbmV4dCBjaGlsZCBub2RlLCBhbmQKZHJtX2F1eF9icmlkZ2VfcmVs
ZWFzZSgpIHdpbGwgbGF0ZXIgY2FsbCBvZl9ub2RlX3B1dChkZXYtPm9mX25vZGUpIHdoZW4gdGhl
CmF1eGlsaWFyeSBkZXZpY2UgaXMgcmVsZWFzZWQgd2l0aG91dCBvd25pbmcgYSByZWZlcmVuY2Uu
Cgo+ICAJCWlmIChJU19FUlIocGh5KSkgewo+ICAJCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBj
cmVhdGUgcGh5OiAlcE9GblxuIiwKPiAgCQkJCWNoaWxkX25wKTsKClsgLi4uIF0KCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMjAw
NzI4MTYuMTgwLTEta2VybmVsQGFpcmt5aS5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
