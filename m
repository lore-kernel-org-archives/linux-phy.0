Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3AE606B6EB
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 08:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W9Gcxv5v;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=IeyDigUw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kgHORkuj95Nj0IRGoXcQZumTKOT2eKmbUShzGuPudnU=; b=W9Gcxv5vlNmN1ll4S6rvWdQh68
	O9CFLPQsS8qhHB8tpemAibRcM8USYwoU5ZQYJ5mQ/P0us+8DsSOww0U/KR3uJeC3UuJSF6OCmFscr
	/TZ+qAYUh6ObzoRGlp14hkqHLRv/M9deIQeW/Q/dWCoe2A1NXNj0R935R+97JaZsVS9pbGBDfhD4Q
	2RjfmYNgJx/s+zyRbELhOkYB3j4sm/eHnrk5vO1ZO58RwlK3GTLe/syfujWAt4fFWUfSvmAcCCKWU
	7pFJJ692utbC+Jvyc9+vYu2y7xrJrgz4CJAceyL90XntSgRxynRGuBbjKsPb69bY4fSPKVfaiX7zZ
	EhyMg7dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOA8Z-00000001cYS-3YXT;
	Tue, 03 Nov 2026 08:44:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOA8T-00000001cX7-12r4;
	Tue, 03 Nov 2026 08:44:57 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 66535200B28;
	Tue, 03 Nov 2026 09:44:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793695491;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H52bp3lerhcgmKry5JkDwar65iC1VQWKyNAm6iD1jYM=;
	b=IeyDigUw+OpEeGuVX9BAYSzDf0nsf4CKe+Uzm4kQFKJdY/FRuNVY4lkeGZ7SqtZkcZDWMk
	KpvsB1xCLnWskb8e1izG/fzXkTQbxMKXKFbpeit0HjL+4+d9jjFWO4haXsZ7DifpH8K0f/
	0iio1wp+T0txV6YJXb0Iktlf6NdFOhc64KExJrBIKBf9H7ildaNGJnn6SGzdqYiRr6khrX
	CQFV8z/XOy0bnxBpv40PhMhuCicBq50NQI59jxqKi8GM6IPIweejJR2xSwygnfZWwNtFP7
	zLkWxRqd8nGGDezYOBeXkXIPwA+lb+aaMPfqJO2zme611gq4rRs9LoYZg5Pgzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793695491;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H52bp3lerhcgmKry5JkDwar65iC1VQWKyNAm6iD1jYM=;
	b=gPlTYWalJABj2uWFLM6kpbtwrkuKl3Wo5ySrON2oPuqNqEDxBS36qNvXjaZDdLajwfkYEY
	FcThQ/LbiI6Ma2uZuMgx4xbrkRrRjXXUsD+FiGyE2C2wkHj8p0ubuvzQNlRldVeHMABNqM
	WDwl4usYl4276taDuXEyMjvtIN7/Ox7Vh1fASZ0gB4+8LEWL9e2l4FKzlWctNk2kTTLezo
	xwdhOcYUV6RALiGQXWS5Qib5XK674nEhUPQRm9OSzVCH2XNDZylXBwusCO0f6BvwAxPYvn
	RLXuX0bpS6oqEuCNP/oCI6Oztx3jHv/Qx/mf9eq58pdTtShlpNzt3+CPy2JwjA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=pza@pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793695491; a=rsa-sha256;
	cv=none;
	b=PrgKr2unShSy60Wj6xn3w8Y4aMsywKH7l8tBosj4ihtl3H8o6Kfhdw/x/N3durWcSUa9L/
	ePVQQYP/fsa+eC0gHefhfYJdUjgm22P00NdVqnmi9U4Loh7JUXUIsNLeX2axbJBREP0SCA
	GQxVriFIvplCOTGeMW9B0m9K/izd3KfrC2dPBoaLCN/4gpD/cosAOjIny+HJ49cmfrfXoi
	hva6X55xraS3aBuM1QCF4v+skuNf9cOIQJdAvea14ZC7ID6ZH3k5BpvTF0iRVKJ79mhcKA
	GMzTOKAaeca6nobQn3Q9xHBCoaD0EUIfobwB7IkmbU1nSMNMOaJOTblMKF49hw==
Message-ID: <b717872c0f75e16980675d17a5fbbca91b9c8a3a.camel@pengutronix.de>
Subject: Re: [PATCH v5 2/3] phy: cix: Add CIX Sky1 USB3 PHY driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Hongliang Yang =?UTF-8?Q?=28=E6=9D=A8=E5=AE=8F=E4=BA=AE=29?=	
 <hongliang.yang@cixtech.com>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
	 <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Gary Yang
 =?UTF-8?Q?=28=E6=9D=A8=E6=96=B0=E4=BC=9F=29?=	 <Gary.Yang@cixtech.com>,
 Fugang Duan =?UTF-8?Q?=28=E6=AE=B5=E5=AF=8C=E5=88=9A=29?=	
 <fugang.duan@cixtech.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 "linux-arm-kernel@lists.infradead.org"
	 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
	 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>, cix-kernel-upstream
	 <cix-kernel-upstream@cixtech.com>, Conor Dooley <conor@kernel.org>
Date: Tue, 03 Nov 2026 09:44:51 +0100
In-Reply-To: <20261103074913.1971025-3-hongliang.yang@cixtech.com>
References: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
	 <20261103074913.1971025-3-hongliang.yang@cixtech.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_004455_305139_36799594 
X-CRM114-Status: GOOD (  17.04  )
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

T24gRGksIDIwMjYtMTEtMDMgYXQgMDc6NDkgKzAwMDAsIEhvbmdsaWFuZyBZYW5nICjmnajlro/k
uq4pIHdyb3RlOgo+IEFkZCBQSFkgZHJpdmVyIGZvciB0aGUgVVNCMyBQSFkgZm91bmQgb24gQ0lY
IFNreTEgU29Dcy4gVGhlIGRyaXZlcgo+IGhhbmRsZXMgaW5pdGlhbGl6YXRpb24sIHJlc2V0LCBh
bmQgY2xvY2sgbWFuYWdlbWVudCBmb3IgdGhlCj4gbXVsdGktcG9ydCBVU0IzIFBIWS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBIb25nbGlhbmcgWWFuZyA8aG9uZ2xpYW5nLnlhbmdAY2l4dGVjaC5jb20+
Cj4gUmV2aWV3ZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3JAa2VybmVsLm9yZz4KPiAtLS0KPiB2
NCAtPiB2NToKPiAtIERvY3VtZW50ZWQgdGhlIG9yaWdpbiBvZiB0aGUgUEhZIGluaXRpYWxpemF0
aW9uIHNlcXVlbmNlLgo+IC0gUmV0dXJuIC1FTk9ERVYgaW5zdGVhZCBvZiAtRUlOVkFMIHdoZW4g
dGhlIE9GIG1hdGNoIGRhdGEgaXMgbWlzc2luZy4KPiAtIFVzZSBkZXZfZXJyX3Byb2JlKCkgd2hl
biBjcmVhdGluZyB0aGUgY2hpbGQgUEhZcy4KPiAtIERyb3BwZWQgdGhlIHVudXNlZCBkZXZfc2V0
X2RydmRhdGEoKSBjYWxsLgo+IC0gR3VhcmRlZCBhZ2FpbnN0IHVuZGVyZmxvdyBpbiBza3kxX3Uz
cGh5X2V4aXQoKS4KPiAgZHJpdmVycy9waHkvS2NvbmZpZyAgICAgICAgICAgICB8ICAgMSArCj4g
IGRyaXZlcnMvcGh5L01ha2VmaWxlICAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3BoeS9j
aXgvS2NvbmZpZyAgICAgICAgIHwgIDIwICsrCj4gIGRyaXZlcnMvcGh5L2NpeC9NYWtlZmlsZSAg
ICAgICAgfCAgIDYgKwo+ICBkcml2ZXJzL3BoeS9jaXgvcGh5LWNpeC11c2IzLmMgIHwgNDE4ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvcGh5L2NpeC9waHktY2l4
LXVzYmRwLmggfCAyODkgKysrKysrKysrKysrKysrKysrKysrKwo+ICA2IGZpbGVzIGNoYW5nZWQs
IDczNSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9jaXgv
S2NvbmZpZwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvY2l4L01ha2VmaWxlCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9jaXgvcGh5LWNpeC11c2IzLmMKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L2NpeC9waHktY2l4LXVzYmRwLmgKPiAKWy4uLl0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvY2l4L3BoeS1jaXgtdXNiMy5jIGIvZHJpdmVycy9w
aHkvY2l4L3BoeS1jaXgtdXNiMy5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAw
MDAwMDAwMDAuLjQ0MTc1MDZkNGY2Ywo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL3Bo
eS9jaXgvcGh5LWNpeC11c2IzLmMKPiBAQCAtMCwwICsxLDQxOCBAQApbLi4uXQo+ICtzdGF0aWMg
aW50IGNpeF91M3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4g
KyAgICAgICBzdHJ1Y3QgY2l4X3UzcGh5ICp1M3BoeTsKPiArICAgICAgIHN0cnVjdCBkZXZpY2Ug
KmRldiA9ICZwZGV2LT5kZXY7Cj4gKyAgICAgICBzdHJ1Y3QgcGh5X3Byb3ZpZGVyICpwaHlfcHJv
dmlkZXI7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gZGV2LT5vZl9ub2RlOwo+
ICsgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpjaGlsZF9ucDsKPiArICAgICAgIHN0cnVjdCBw
aHkgKnBoeTsKPiArICAgICAgIGludCByZXQ7Cj4gKwo+ICsgICAgICAgdTNwaHkgPSBkZXZtX2t6
YWxsb2MoZGV2LCBzaXplb2YoKnUzcGh5KSwgR0ZQX0tFUk5FTCk7Cj4gKyAgICAgICBpZiAoIXUz
cGh5KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiArICAgICAgIHUzcGh5LT5k
ZXYgPSBkZXY7Cj4gKyAgICAgICB1M3BoeS0+Y2ZnID0gZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRl
dik7Cj4gKyAgICAgICBpZiAoIXUzcGh5LT5jZmcpIHsKPiArICAgICAgICAgICAgICAgZGV2X2Vy
cihkZXYsICJubyBPRiBkYXRhIGNhbiBiZSBtYXRjaGVkIHdpdGggJXBPRiBub2RlXG4iLCBucCk7
Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+ICsgICAgICAgfQo+ICsgICAgICAg
dTNwaHktPnJlc2V0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoZGV2LCAiY29y
ZSIpOwo+ICsgICAgICAgaWYgKElTX0VSUih1M3BoeS0+cmVzZXQpKSB7Cj4gKyAgICAgICAgICAg
ICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCByZXNldFxuIik7Cj4gKyAgICAgICAgICAg
ICAgIHJldHVybiBQVFJfRVJSKHUzcGh5LT5yZXNldCk7CgoJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KGRldiwgUFRSX0VSUih1M3BoeS0+cmVzZXQpLCAiLi4uIik7CgpyZWdhcmRzClBoaWxpcHAKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
