Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 793C2C98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 04:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZH6VmyiS9yphxvsbz498x84AwOO1GDoE9Wliw+CGwIE=; b=C3YPB9yF9JGZgl
	XDHtB568ZXRJLcQrUcg6s/5P+XhIv9IsnO4q/N+BixCAJN4W/nS7GVYMqOhO6wCxn0I0J50DNdzgW
	p3pVcX+79TiSkdu07hqEsab5LWBeT3/Xi2SqtCSZZI2UQ3rRZRcr6Rx9fFPOvaMETArec7BYqxcFM
	P/2c2prDU6nGt7sGEJHDd/14FNQDASCM6yziZ/U9EFxEYrDs3yTI3MVa61F25K8u2dPLlsows7u2e
	i5ZpBbyLZMRFebeX9jNdOV436Oa9mOgfTHnpCk1p0PMDHKw56bK7Eduj/fUqaoEcYgYSH/i5TJuAL
	xsArDNWFy0hMdkO8v3gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJeP-0000000EvyZ-0lAa;
	Sat, 26 Sep 2026 04:04:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJeO-0000000Evy3-1F3M;
	Sat, 26 Sep 2026 04:04:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F3F5943DB2;
	Sat, 26 Sep 2026 04:04:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED4BD1F000FF;
	Sat, 26 Sep 2026 04:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790395475;
	bh=xOUdZyaE4ZM74h/zxVnXNgegJ6IkaZJcYOAv1Dl9nzE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FpM5+rnVVdGtECbvQlEoMK/d8cozDmixctv/d+o5Q68UYuWWjUE5b3QM3bEtuna1v
	 xeAvjVWg9mOisCT6dkPzPHbD6I2b3WetxQMK2N35naNQINRGZ7AO0UwiuHKakbqOXY
	 f+3A0clTtptG0MApsK2tZ05Idw98vZLzGfzuKbxZbGxWmiVsBeH8TULsr+8VFkQ5Tb
	 UnruqkD+Xl8jI7dK3BpQcEl4Hv4oU1DEffFOO5FoqSa5cxCeJpfWRoGDc3jNJAOpsZ
	 +s/zbtOWFrkPHeh96WiHvs4R2iAt6OPLt32e+oc/RnkE8souTrvCbO6L1HLy6yDESb
	 mOqnK7avDNFEg==
Date: Sat, 26 Sep 2026 06:04:16 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v15 12/16] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
Message-ID: <rzxb3np7snoj52rn2cx2rfemelk3kyjpd2dr5v357td4vkrpma@cxun5v7lnojp>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-12-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-12-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTlQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSW4gdGhlb3J5IHRoZSBEUCBjb250cm9sbGVyIGNvdWxkIHJlcXVlc3QgNCBs
YW5lcyB3aGVuIHRoZSBQSFkgaXMKPiByZXN0cmljdGVkIHRvIDIgbGFuZXMgYXMgdGhlIG90aGVy
IGhhbGYgaXMgdXNlZCBieSBVU0IzLgo+IAo+IFdpdGggdGhlIGN1cnJlbnQgdXNlciAoRFctRFAp
IHRoaXMgY2Fubm90IGhhcHBlbiwgYnV0IGFzIHRoZSBjaGVjayBpcwo+IGNoZWFwIGFuZCB1c2Vy
cyBtaWdodCBjaGFuZ2UgaW4gdGhlIGZ1dHVyZSBwcm90ZWN0IHRoaW5ncyBhY2NvcmRpbmdseS4K
PiBOb3QgZG9pbmcgc28gd291bGQgY29ycnVwdCBVU0IzIHVzYWdlIGJ5IHRoZSBmb2xsb3dpbmcg
Y29kZSBjb25maWd1cmluZwo+IHRoZSB2b2x0YWdlcy4KPiAKPiBGaXhlczogMmY3MGJiZGRlYjQ1
ICgicGh5OiByb2NrY2hpcDogYWRkIHVzYmRwIGNvbWJvIHBoeSBkcml2ZXIiKQo+IFJlcG9ydGVk
LWJ5OiBTYXNoaWtvIDxzYXNoaWtvLWJvdEBrZXJuZWwub3JnPgo+IENsb3NlczogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtcGh5LzIwMjYwNjEyMTY1NTQ2Ljk4RTFGMUYwMDBFOUBzbXRw
Lmtlcm5lbC5vcmcvCj4gVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFp
bC5jb20+ICMgT3JhbmdlIFBpIDUgUGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWlj
aGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2
YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+
CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
