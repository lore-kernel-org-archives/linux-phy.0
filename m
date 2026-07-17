Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554F0C44514
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 08:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAbdD//bp69xXC4Q7HVr0k/lFVErwa6En1epPEGG1oc=; b=V9VviDRxvOl1Om
	33nSW5uMcfTFx9CVs3LkGfaEhu3VfT9sVFngHAQr7zkoxM6bi/NcY8zzXHuDx2TJ10lIL8jqAWzDZ
	Bu9lGAOpYRjWZEiqQVYW+kURIAzYCFC4PRqpbU3aAGP/Y5K1v83xHnlyFm2O4dwH3qN9nvisSdTD0
	CPxB4GRgrRE/J2ZTCOLfnEbjNUG0jaaxjXroR5fTbO+UDskLs9rekT6/VqbrVj4gqzKdCzHkxJ/av
	lH3F47UVaICsgtVxcvNgugoZ0f3drcynCzdfoxH0voxw4GEi8ydstA1pu/gu+k607LA61Q/3kp0fh
	wKO69majpKPpdaGl4P9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdju-00000001bEi-09IQ;
	Fri, 17 Jul 2026 08:16:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdjq-00000001bD2-17eS;
	Fri, 17 Jul 2026 08:16:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C881D42AA3;
	Fri, 17 Jul 2026 08:16:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76CCE1F000E9;
	Fri, 17 Jul 2026 08:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784276165;
	bh=+7Nd67iiHmSuvw06r7sfnoXomVEtuqgSBnJLlAkF+OM=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To;
	b=YdjTJtqqKbr0M2+vL9qCSGhbjH5UJGKkh1WBT/5dtMdEX5la1sEkalWpBl4F9Q4dI
	 Xqo128VG+Cp+P91gLl9NyVGJk+IEd1nqGKJHgKJdP5/9Cg/a1IzWXUYLZVQVDKh5NP
	 frYVaKMm3l5ARDYdSIACu2mISee2U622Do1WU3Mh0VhxGdfb4iIlvXEJ6qko01T2kt
	 JpZxTnKSP3+Vq4Ix7x5DsLkEs3hYcb2v0MRqRR66H8ThTG3Wlaikq6IwCYKvU6FQNv
	 fQ6A8boXWOvo+mnKec/SUPgEQXTIWjxzHMM2/y6qG2Zyb66er1siBQP6sRw/Jf2X9k
	 afPD33eS2DctQ==
Message-ID: <06d11879-b305-422c-bef1-982c968ce899@kernel.org>
Date: Fri, 17 Jul 2026 10:15:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 02/13] dt-bindings: clk: zte: Add zx297520v3 top clock
 and reset controller
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?UTF-8?Q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-2-408411cfcf36@gmail.com>
 <20260717-berserk-faithful-cat-a34ad8@quoll>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <20260717-berserk-faithful-cat-a34ad8@quoll>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTcvMDcvMjAyNiAwODozNiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiBGcmks
IEp1bCAxNywgMjAyNiBhdCAxMjozNTozOEFNICswMzAwLCBTdGVmYW4gRMO2c2luZ2VyIHdyb3Rl
Ogo+PiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+PiBpbmRleCBjYjUw
YzJlM2I0ZWEuLjVmOTYyYjk5NDdhYiAxMDA2NDQKPj4gLS0tIGEvTUFJTlRBSU5FUlMKPj4gKysr
IGIvTUFJTlRBSU5FUlMKPj4gQEAgLTM4NzgsMTAgKzM4NzgsMTMgQEAgTDoJbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgZm9yIG5vbi1zdWJzY3JpYmVycykK
Pj4gIFM6CU9kZCBmaXhlcwo+PiAgRjoJRG9jdW1lbnRhdGlvbi9hcmNoL2FybS96dGUvCj4+ICBG
OglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3p0ZS55YW1sCj4+ICtGOglE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svenRlLHp4Mjk3NTIwdjMtdG9w
Y3JtLnlhbWwKPj4gIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvenRl
LHp4Mjk3NTIwdjMtdXNiLXBoeS55YW1sCj4+ICBGOglhcmNoL2FybS9ib290L2R0cy96dGUvCj4+
ICBGOglhcmNoL2FybS9tYWNoLXp0ZS8KPj4gK0Y6CWluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2sv
enRlLHp4Mjk3NTIwdjMtY2xrLmgKPj4gIEY6CWluY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS16
dGUtengyOTc1MjB2My11c2IuaAo+PiArRjoJaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC96dGUs
engyOTc1MjB2My1yZXNldC5oCj4+ICAKPj4gIEFSTS9aWU5RIEFSQ0hJVEVDVFVSRQo+PiAgTToJ
TWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAYW1kLmNvbT4KPj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvZHQtYmluZGluZ3MvY2xvY2svenRlLHp4Mjk3NTIwdjMtY2xrLmggYi9pbmNsdWRlL2R0LWJp
bmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLWNsay5oCj4gCj4gU2FtZSBtaXN0YWtlLiBGaWxl
bmFtZSBNVVNUIG1hdGNoIHRoZSBjb21wYXRpYmxlLgoKSSBkaWQgbm90IG5vdGljZSB0aGF0IHlv
dSBjb21iaW5lIGhlcmUgYWxsIHRoZSBjbG9jayBJRHMgZnJvbSBvdGhlcgpjbG9jayBjb250cm9s
bGVycy4gVGhlIGhlYWRlciBmaWxlbmFtZSBpcyB0aGVyZWZvcmUgZmluZSAoYWxzbyByZXNldCBm
aW5lKS4KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
