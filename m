Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86243C44514
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 08:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1kwXzYSZJt4lAye9eZcizaw4JIafDIkUcmoGPz1LPE=; b=0GvTzOBvPrsEdJ
	MEP+P8OJe/QBJ32zI74LKK1CVpoPKasLx52GDRp4jA5bJLdksppv+7YXei9fn0An2c8gWzgFkvvvu
	FfejwBsx0L1Tax0CRjTt092FbS2u94oSPQpkpgzyokJ6QxHiZHRJLK/kWjq+8CPMjCXZUZuBwZchR
	j6fvnYBZpPtM2lEZBYvaxNIAnPAR9Lrp6Yw87N+3a42+GwcQWiR/fiTu8M/tROTY19TE82PyoY/5f
	5i/ZDBzWjjcWPoLWbMMDMHXiux7ugatp4glUj4BuoiVTxWVv34PcsZTHDJYajkit/Cvc7pJJUKm41
	PQSjdxPWKZ/PJMnhVwsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdqg-00000001cZS-0Qhz;
	Fri, 17 Jul 2026 08:23:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdqf-00000001cZ2-1UDP;
	Fri, 17 Jul 2026 08:23:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A95360A63;
	Fri, 17 Jul 2026 08:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05F9C1F000E9;
	Fri, 17 Jul 2026 08:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784276588;
	bh=L3q6Bs9DpMXvs1gF+DVcAOn4KatvsHwZbqhDUz12DHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nP7fqNS2qhdOU9S60jIgFGJvoVxsPKaDtrvVxzTE7vlxhfE9KUh9VwwObmEdoNfF6
	 CsPkdv5dRIEhfHWjZ3VZMwZyJd59O77Oe8Kzdtz54s85wGLmAQv2W06d85ajaxz3xp
	 Q47Yu+FwR3qTlHQkqBIrcB9qB517Q70oko8h9QSu0Jtq/O+WI0HpdXL+uwMmvw94wS
	 zNTgi9xlzY9bK3wfa9PCgASMXkjiy9n/BSfsJrZpQ9ikyu+EtMwQdpbS8a3O/AwsaY
	 2HDZ/A5iGpeyK8M2zr/nWjraSqqw+HAuWggNNznHaRChXaAmI4rzYbeabQOv9dR2t0
	 K0EmR1r6jogkQ==
Date: Fri, 17 Jul 2026 10:23:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefan =?utf-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 04/13] dt-bindings: clk: zte: Add zx297520v3 LSP clock
 and reset controller
Message-ID: <20260717-brawny-hyrax-of-essence-e5eed5@quoll>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-4-408411cfcf36@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260717-zx29clk-v7-4-408411cfcf36@gmail.com>
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

T24gRnJpLCBKdWwgMTcsIDIwMjYgYXQgMTI6MzU6NDBBTSArMDMwMCwgU3RlZmFuIETDtnNpbmdl
ciB3cm90ZToKPiBUaGUgY2xvY2sgY29udHJvbGxlciBvZiB0aGUgengyOTc1MjB2MyBMb3cgU3Bl
ZWQgUGVyaXBoZXJhbHMgaXMKPiByZWxhdGl2ZWx5IGNsZWFuLiBPbmUgcmVnaXN0ZXIgcGVyIGRl
dmljZSB3aXRoIGdhdGVzLCBtdXhlcyBhbmQgcmVzZXRzCj4gYW5kIGZvciBzb21lIGRldmljZXMg
YSBkaXZpZGVyLiBUaGVyZSBhcmUgZXZlbiBiaXRzIGluIHRoZSBtYXRyaXgKPiBjb250cm9sbGVy
IHRvIGNvbnRyb2wgcHJvcGFnYXRpb24gb2YgY2xvY2sgbGluZXMgZG93biB0byBMU1AuCj4gCj4g
VGhlIGNsb2NrcyBhcmUgc29ydGVkIGJ5IHJlZ2lzdGVyIGFkZHJlc3MgYW5kIEkgYW0gY29udmlu
Y2VkIHRoYXQgdGhlCj4gZGV2aWNlIGxpc3QgaXMgY29tcGxldGUuIFRoZXJlIGFyZSBob3dldmVy
IGEgZmV3IG1vcmUgcmVnaXN0ZXJzIHRoYXQgYXJlCj4gbGlrZWx5IGV4dHJhIGRpdmlkZXJzIGZv
ciBURE0gYW5kIEkyUyBkZXZpY2VzCj4gCj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdl
ciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KPiAKPiAtLS0KClJldmlld2VkLWJ5OiBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+CgpC
ZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
