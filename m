Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C650C44501
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 06:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+cmzPXGvZ0UMOI312oWFZ5pxUkdY38t/GhclnQ+ymM=; b=hPwT/tccoSydrp
	S4oZkRKL3pU9BZIZUffJwSymY6t2OIfJGOKLSGtj82+6uHvytq0FPSf8Vg+HENZ2LBupC9m0YLskC
	nyJcX1Sml5CcXOaGnEmmOF52jfkYEZPfxycQLd8L5EulhjhIUs+tl6fpdsJV8CzjyU4en7Oi52dyh
	B0IzIdlYvFt/nKuCcLm4qmUwtmSjtGaNx8cca4BBDLJsUOTEtL/VCxYjIJrSrnz3+8H1erz5ZUYHn
	mWI+76TCnrumd7oknxyEVqYxOlwMF2jfkG7bHQ0qh++8ZBoCs31gUzu/HJso2zpK00STtfMUSE0sS
	YpVn0y25tXADr/Aa5B3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWvF-0000000B5Sp-3RFS;
	Tue, 14 Jul 2026 06:47:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjWvE-0000000B5Se-3wAM
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 06:47:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4C16560120;
	Tue, 14 Jul 2026 06:47:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86D1D1F000E9;
	Tue, 14 Jul 2026 06:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784011636;
	bh=/oWllenJ81z2ENJXlwEPtSJS3tEEKMGHeAIg1TKiHUY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gx+/E1A8V8jHL4Ocw99AhUONvIQcRDSvG+LuUvtDAvkxTO8NwSbIA5uHK3nXVm0iD
	 IXUV657KpbFj/fprcC1VkH7HQJYddneoCmwO/u1lA1FcMEmh4udciZGP0l8IAwclkc
	 d7lkgvAI2JgXHntXU52DwyQfjuCDlbGqS/WaZfU/8yUFNPRe7gUK7Ip0jK8DIhAGSA
	 gEsSIpSayKVjsr//nZQD0G/3FMi6kqoq/IF1GZANDLz1aFv2cNkTgUupYNz4i+fAdD
	 157V8TSxIRuanVS8nO7iP0xb2saexIZXLTpsZ5JyU9+9ZW48+8cluriTHfQ3fi4ldl
	 IbfF5XJyiALvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/6] phy: qcom: qmp-combo: Add SM8475 support
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260714-sm8475-bup-v1-6-b2871be2b4ec@proton.me>
References: <20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me>
 <20260714-sm8475-bup-v1-6-b2871be2b4ec@proton.me>
Date: Tue, 14 Jul 2026 06:47:15 +0000
Message-Id: <20260714064715.86D1D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyAuY2Fs
aWJyYXRlX2RwX3BoeSBjYWxsYmFjayBpbiBzbTg0NzVfdXNiM2RwcGh5X2NmZyBicmVha3MgQVVY
IGNoYW5uZWwgdHVuaW5nCi0tCgotLS0gUGF0Y2ggWzZdOiBbUEFUQ0ggNi82XSBwaHk6IHFjb206
IHFtcC1jb21ibzogQWRkIFNNODQ3NSBzdXBwb3J0IC0tLQpjb21taXQgZTc4ZGZiM2VlNWMwZWRi
OWY2ZTI2OTAwMTY5NDcyYzk1OGUwMzZjMApBdXRob3I6IEVzdGViYW4gVXJydXRpYSA8ZXN0ZXV3
dUBwcm90b24ubWU+CgpwaHk6IHFjb206IHFtcC1jb21ibzogQWRkIFNNODQ3NSBzdXBwb3J0CgpU
aGlzIGNvbW1pdCBhZGRzIFFNUCBjb21ibyBQSFkgc3VwcG9ydCBmb3IgdGhlIFF1YWxjb21tIFNN
ODQ3NSBTb0MuIEl0CmludHJvZHVjZXMgUlggYW5kIFBDUyBVU0IgdGFibGVzIHdoaWxlIHJldXNp
bmcgU0VSREVTLCBUWCwgYW5kIFBDUyB0YWJsZXMKZnJvbSBvdGhlciBTb0NzIHRvIHN1cHBvcnQg
VVNCIFR5cGUtQyBhbmQgRFAgQWx0IE1vZGUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1jb21iby5jCj4gaW5kZXggOGMwOWQ0YzE1OTRkMC4uMmE1OGExYzNjYjY0MCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwo+ICsr
KyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCgpbIC4uLiBdCgo+
IEBAIC0yOTE2LDYgKzI5NjUsNTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBz
bTgzNTBfdXNiM2RwcGh5X2NmZyA9IHsKPiAgCS5oYXNfcHdyZG5fZGVsYXkJPSB0cnVlLAo+ICB9
Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBzbTg0NzVfdXNiM2RwcGh5
X2NmZyA9IHsKPiArCS5vZmZzZXRzCQk9ICZxbXBfY29tYm9fb2Zmc2V0c192MywKPiArCj4gKwku
c2VyZGVzX3RibAkJPSBzYXIyMTMwcF91c2IzX3NlcmRlc190YmwsCgpbIC4uLiBdCgo+ICsJLmRw
X2F1eF9pbml0CQk9IHFtcF92NF9kcF9hdXhfaW5pdCwKPiArCS5jb25maWd1cmVfZHBfdHgJPSBx
bXBfdjRfY29uZmlndXJlX2RwX3R4LAo+ICsJLmNvbmZpZ3VyZV9kcF9jbG9ja3MJPSBxbXBfdjNf
Y29uZmlndXJlX2RwX2Nsb2NrcywKPiArCS5jb25maWd1cmVfZHBfcGh5CT0gcW1wX3Y0X2NvbmZp
Z3VyZV9kcF9waHksCgpbU2V2ZXJpdHk6IE1lZGl1bV0KSXMgdGhlIGNhbGlicmF0ZV9kcF9waHkg
Y2FsbGJhY2sgaW50ZW50aW9uYWxseSBvbWl0dGVkIGZyb20gdGhpcwpjb25maWd1cmF0aW9uPwoK
TG9va2luZyBhdCB0aGUgb3RoZXIgUU1QIGNvbWJvIFBIWSBjb25maWd1cmF0aW9ucyBpbiB0aGlz
IGRyaXZlciwgc3VjaCBhcwpzbTgzNTBfdXNiM2RwcGh5X2NmZyBhbmQgc204NTUwX3VzYjNkcHBo
eV9jZmcsIHRoZXkgYWxsIGluY2x1ZGUgdGhpcwpjYWxsYmFjaywgdHlwaWNhbGx5IHNldCB0byBx
bXBfdjRfY2FsaWJyYXRlX2RwX3BoeS4KCklmIGl0IGlzIG1pc3NpbmcsIHdoZW4gYW4gZXh0ZXJu
YWwgRFAgbW9uaXRvciByZXF1aXJlcyBub24tZGVmYXVsdCBBVVggc3dpbmcKdmFsdWVzLCB0aGUg
RFJNIERQIGRyaXZlcidzIGxpbmsgdHJhaW5pbmcgcmV0cnkgbG9vcCB3aWxsIGNhbGwKcGh5X2Nh
bGlicmF0ZSgpLiBCZWNhdXNlIGNhbGlicmF0ZV9kcF9waHkgaXMgTlVMTCwgdGhpcyB3aWxsIHNp
bGVudGx5IHJldHVybgowIHdpdGhvdXQgd3JpdGluZyB0aGUgbmV3IHNldHRpbmdzLCBjYXVzaW5n
IHRoZSBEUCByZXRyeSBsb29wIHRvIGdldCBzdHVjawp1c2luZyB0aGUgc2FtZSBmYWlsaW5nIGlu
aXRpYWwgaGFyZHdhcmUgcGFyYW1ldGVycy4KCj4gKwo+ICsJLnJlZ3MJCQk9IHFtcF92Nl91c2Iz
cGh5X3JlZ3NfbGF5b3V0LAo+ICsJLnJlc2V0X2xpc3QJCT0gbXNtODk5Nl91c2IzcGh5X3Jlc2V0
X2wsCj4gKwkubnVtX3Jlc2V0cwkJPSBBUlJBWV9TSVpFKG1zbTg5OTZfdXNiM3BoeV9yZXNldF9s
KSwKPiArCS52cmVnX2xpc3QJCT0gcW1wX3BoeV92cmVnX2wsCj4gKwkubnVtX3ZyZWdzCQk9IEFS
UkFZX1NJWkUocW1wX3BoeV92cmVnX2wpLAo+ICt9OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNC1zbTg0NzUtYnVwLXYxLTAt
YjI4NzFiZTJiNGVjQHByb3Rvbi5tZT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
