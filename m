Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE13C98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 03:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0z+rh9uLrIcVfR48rxUtDa3jxGuGCQUQjPrCijfVe0=; b=Jpbh2PjRWi2m3d
	O1dKZOSp6W5o2LBgErcYtUZE62uJT3Cby4dKDWVeq7jJT7SSl7gZTUGIzzvRGKh9g4ryzlZtnLZL5
	UWSHueDgaHYm/9pk9VX3qrV6/SBEgAIgBF0pAlf66eRoFnwWowAS52yZ47N2nBGGZd3GdZ4yjyz3F
	KF3FTSWQPXD3kl7ykKTsZkT+fxaLYOqifD7LHGyMT73EknMzv2geR5IDXLn59xhMcR/tTUdnHaZ5Q
	jFLFLWPGXe8g3qrvTWHIzxZ3cW0GGOTDISn9JTfkI31cplt+3RlrATrFFeQCf4+qlkfp/2FngZvW5
	/tVSOXa/ILMcgAupWNVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJZd-0000000EvP0-3H07;
	Sat, 26 Sep 2026 03:59:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJZc-0000000EvOi-0QdH;
	Sat, 26 Sep 2026 03:59:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8BE6441662;
	Sat, 26 Sep 2026 03:59:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A97E1F000FF;
	Sat, 26 Sep 2026 03:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790395179;
	bh=E+/HZW4AA3+lIDQSaEdclnyFxECpeXstgqxYAcfIyeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Gj5JZL8dQ+wEO/rWjeBuJyOqI7jk0tWLdmCCiz8dr+2t1BWTG8xUT1XNzPL5K7Ev9
	 a5YYxWvHXOMisgFhoKouDLvv2Z/Jf8Da52yFy6pe2pek9UMcawRCrFuwzVyEeBGOhr
	 /6cvdWQ2v8LnmnAh/sGDINtHT9ympljNPzALwyRAfmIMsikLPVtaj27Ur111KgZpB4
	 UnsyZ4PJ2dCa1k2LUzsdUdYbIRpN/hXSq5ft3c8/x8ymnDWSlZH6ZLSBesn/f2WSsU
	 Vajc1xRUdNTiu57bSeyv1T+mJElaEE/9mcgzFwzh/dDSx6c/iQQNhEkXsQ+r3ihuSJ
	 1PUE3xssxw8cA==
Date: Sat, 26 Sep 2026 05:59:24 +0200
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
	devicetree@vger.kernel.org
Subject: Re: [PATCH v15 08/16] phy: rockchip: usbdp: Amend SSC modulation
 deviation
Message-ID: <xueefi6x3e552eaj4fsrcq4q5apyfx5wxmbpn747qck655qrtd@qsftv6cr3kpz>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-8-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-8-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTVQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gRnJvbTogRnJhbmsgV2FuZyA8ZnJhbmsud2FuZ0Byb2NrLWNoaXBzLmNvbT4K
PiAKPiBNb3ZlIFNTQyBtb2R1bGF0aW9uIGRldmlhdGlvbiBpbnRvIHByaXZhdGUgY29uZmlnIG9m
IGNsb2NrCj4gCj4gIC0gMjRNOiAweDAwZDRbNTowXSA9IDB4MzAKPiAgLSAyNk06IDB4MDBkNFs1
OjBdID0gMHgzMwo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdAcm9j
ay1jaGlwcy5jb20+Cj4gW1Rha2VuIG92ZXIgZnJvbSByb2NrY2hpcCdzIGtlcm5lbCB0cmVlOyBy
ZWdpc3RlciAweDAwZDQgaXMgbm90Cj4gZGVzY3JpYmVkIGluIHRoZSBUUk1dCj4gUmV2aWV3ZWQt
Ynk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+IFRlc3RlZC1i
eTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIE9yYW5nZSBQaSA1IFBs
dXMKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxA
Y29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2
YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
