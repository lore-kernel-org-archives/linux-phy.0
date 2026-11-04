Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83362606A32D
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 10:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z4CENTHg;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=i/Ilhiu8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=g9mbWJbofk7TNgE/sQD980m0g/P16QfEO8CJXs2O+84=; b=Z4CENTHgblK9ummYuvR3UG+DoI
	7Hp9Y3ZtU9LTOBBFoG5y5ughprML/rrj3PwFXXgUuVaLKdYIfh3QcNxgQW2/cozh+y9SUSZ5cDEUm
	0GIqBVc0nDH2G89h641RYtIUujIdyevd38oEq204l9dCpF3E4gbH7zMkkF9MPzaMDUnpbk8R6rsU5
	1uqavEoa0Ie9qLeNpW7Gy5om53Hodt18aIu62zTVLcRY9c3fUV6A25R+Xc43sr7tvziGZL+MK2p2e
	yec6R8oU6YE1bHkgjSwDz7lrEDLlDkR7RhW5DSVEN9j+Rsqd5Y0iKaIA2lwCOHZR5MyYTSPcOEW1j
	8zZrn79w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYIx-000000050cy-0Plb;
	Wed, 04 Nov 2026 10:33:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOYIv-000000050cD-3VWX;
	Wed, 04 Nov 2026 10:33:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D4C1403B0;
	Wed,  4 Nov 2026 10:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2FB41F000C1;
	Wed,  4 Nov 2026 10:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793788397;
	bh=u/eDtZS4wjn/U8MG+7DwL0ZWK1x555IP9HVQv9HwObk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=i/Ilhiu8gSErW8FsASyqWzyY0c3ig2W+mB2luw9OtSy5tq+qToMpYsWzLxP4f7IsD
	 HolPhDqS/pwnVDrQAeSfwbJ1bzZ+thF15O+7uP3exotVOTQ523IacKlx6zwxvtBcJc
	 pDKaIGByIbr8IN1x9Xw03+euuyAvLJWrqrSkOOdvdiUTwVx9xfNhgpAvmNcqRcxLMK
	 o7GO4HqYbErZg6infRCme3H4ZteFZUAcqkCAM4ZBs5WDWmUTOfxTJDpzvFhKLL7uZT
	 vzbIP3AHJVj0o005andcJU+1uHHMEcVrRL80WKUL6WUvYN1cXhbm6r3m8kVofes/bC
	 IGkSfYE8qKQEg==
Date: Wed, 4 Nov 2026 11:33:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hongliang Yang =?utf-8?B?KOadqOWuj+S6rik=?= <hongliang.yang@cixtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Gary Yang =?utf-8?B?KOadqOaWsOS8nyk=?= <Gary.Yang@cixtech.com>, 
	Fugang Duan =?utf-8?B?KOauteWvjOWImik=?= <fugang.duan@cixtech.com>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: Add CIX Sky1 USB3 PHY
Message-ID: <20261104-grateful-chivalrous-cougar-ebe4ff@quoll>
References: <20261103074913.1971025-1-hongliang.yang@cixtech.com>
 <20261103074913.1971025-2-hongliang.yang@cixtech.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261103074913.1971025-2-hongliang.yang@cixtech.com>
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCBOb3YgMDMsIDIwMjYgYXQgMDc6NDk6MjBBTSArMDAwMCwgSG9uZ2xpYW5nIFlhbmcg
KOadqOWuj+S6rikgd3JvdGU6Cj4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+ICsgICJedXNiLXBvcnRA
WzAtOWEtZl0rJCI6Cj4gKyAgICB0eXBlOiBvYmplY3QKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsg
ICAgICBBIHNpbmdsZSBVU0IzIFBIWSBwb3J0L2xhbmUuCj4gKwo+ICsgICAgcHJvcGVydGllczoK
PiArICAgICAgcmVnOgo+ICsgICAgICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgICAgICAiI3BoeS1j
ZWxscyI6Cj4gKyAgICAgICAgY29uc3Q6IDAKPiArCj4gKyAgICByZXF1aXJlZDoKPiArICAgICAg
LSByZWcKPiArICAgICAgLSAiI3BoeS1jZWxscyIKCldoeSBkbyB5b3UgbmVlZCB0aGlzIG5vZGUg
aW4gdGhlIGZpcnN0IHBsYWNlPyBQYXJlbnQgaXMgdGhlIHBoeSBwcm92aWRlciwgbm8/Cgo+ICsK
PiArICAgIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArcmVxdWlyZWQ6Cj4gKyAg
LSBjb21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMK
PiArICAtIHJlc2V0cwo+ICsgIC0gcmVzZXQtbmFtZXMKPiArICAtICIjYWRkcmVzcy1jZWxscyIK
PiArICAtICIjc2l6ZS1jZWxscyIKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
