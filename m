Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82472C9830E
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 03:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDXU9Q3P0Nqhl18KsdzDapPfn9cx7A6Y18e7k7c/X2U=; b=Icuq46sTDXXSRb
	EdjeTWFl1fhw6W/MZhrl17x2keqVYkbr/woKEmn5PcNwDInI1H/0PTgy09wkOJFmnAuDZXGVzGGVg
	EnZfMOsJH/s1Vh/QzspLsx2saKz4XGgAteA3t8ZlKECTcU/oIDgfeFw5UmAt6ZRBM8L9Z48crOGCg
	qsPx/eyVrWZF4TCqq3HPr73UdvByIOiRlcQi5ap75YdunOaUoZ4cE2JJ+rf1mHPq3WIuCgk86w91X
	B/9sUdbH1yuCq+bCkIPsgxqMdBShwpcQ+j3b6byTzuxGsot8ClrRWj5Dk97FxtL00yTYOYO/tAq8O
	i1rwHL3S4H6IeBdVbScQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJ5Z-0000000EtwV-0oVp;
	Sat, 26 Sep 2026 03:28:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJ5X-0000000EtwC-154Y;
	Sat, 26 Sep 2026 03:28:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B6FE4429B;
	Sat, 26 Sep 2026 03:28:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98F851F000FF;
	Sat, 26 Sep 2026 03:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790393314;
	bh=wiIuEcxJHxHcC9qQ4G2FrJQ6QHq9Q5CgIOwL5I1TyD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CDw4uRxsgwF6gEQnfAe/EPbjMXGNFyCujdlTCYvYSZo6bF6iJTsr3KTLRm4X5QLtu
	 4YY/gwk1uBiSHECVcWJAdHbENyN7OLh+3/wamTzLJy9Clsfi35StQbrBM5zxtS/J59
	 nyBaePuHyAJkhslRtnoSrF88aGZXZszpiMZGCntuerIAtGTRk1E3ntJfwv3oIRTVj3
	 ad0ORYDu4S54XwnGKajN4nJXe0Mk2WGKONjTjeXvTRwq/ECEcE5WSxtZ9Nbc65ZHKl
	 CQ14xNWBbZnI/DfOyTqw5tk9ojxOGrrc4y/YFW+Qr0aQtEzsj9sl2WjlL7JU7RFXXz
	 9ysjv96UtnmjA==
Date: Sat, 26 Sep 2026 05:28:18 +0200
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
Subject: Re: [PATCH v15 03/16] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
Message-ID: <yriwlzd7fiolepmi2rkdgdis5bk634biomttmdwdxiqcdgv5g4@ps3efdu6q5pe>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-3-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-3-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTBQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gQnkgZGVmYXVsdCAoaS5lLiB3aXRob3V0IG1hbnVhbGx5IGVuYWJsaW5nIHJ1
bnRpbWUgUE0pIERXQzMgcmVxdWVzdHMgdGhlCj4gVVNCMyBQSFkgb25jZSBhbmQga2VlcHMgaXQg
ZW5hYmxlZCBhbGwgdGhlIHRpbWUuIFdoZW4gRGlzcGxheVBvcnQgaXMKPiBiZWluZyByZXF1ZXN0
ZWQgbGF0ZXIgb24sIGEgbW9kZSBjaGFuZ2UgaXMgbmVlZGVkLiBUaGlzIHJlLWluaXRpYWxpemVz
Cj4gdGhlIFBIWS4gRHVyaW5nIHJlLWluaXRpYWxpemF0aW9uIHRoZSBzdGF0dXMgdmFyaWFibGUg
aGFzIGluY29ycmVjdGx5Cj4gYmVlbiBjbGVhcmVkLCB3aGljaCBtZWFucyB0aGUgdHJhY2tpbmcg
aW5mb3JtYXRpb24gZm9yIFVTQjMgaXMgbG9zdC4KPiAKPiBUaGlzIGlzIG5vdCBhbiBpbW1lZGlh
dGUgcHJvYmxlbSwgc2luY2UgdGhlIERQIHNpZGUga2VlcHMgdGhlIFBIWQo+IGVuYWJsZWQuIEJ1
dCBvbmNlIERQIGlzIHRvZ2dsZWQgb2ZmLCB0aGUgd2hvbGUgUEhZIHdpbGwgYmUgZGlzYWJsZWQu
Cj4gVGhpcyBpcyBhIHByb2JsZW0sIGJlY2F1c2UgdGhlIFVTQiBzaWRlIHN0aWxsIG5lZWRzIGl0
IHBvd2VyZWQuCj4gCj4gRml4IHRoaW5ncyBieSBub3QgY2xlYXJpbmcgdGhlIHN0YXR1cyBmbGFn
cy4KPiAKPiBGaXhlczogMmY3MGJiZGRlYjQ1ICgicGh5OiByb2NrY2hpcDogYWRkIHVzYmRwIGNv
bWJvIHBoeSBkcml2ZXIiKQo+IFRlc3RlZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZA
Z21haWwuY29tPiAjIE9yYW5nZSBQaSA1IFBsdXMKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4g
UmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBN
YW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0u
Y29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
