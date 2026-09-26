Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 086D5C98324
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 03:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPQNgxXeK4Zc5srUVNaJpWGutwFlvAxmlQXUCkxoZJs=; b=3C+dz5pbXFkLrP
	Xh4Gqp/GAUAJsB59SjZCMC9pIsf8b66AYRNyxO9ieTVqUnuFm3HBQIRx5dyhi/Q11/rmBdFvqpbNO
	Qm5g3WqJoCSqZba1iU1ngG1D4ucKdOkYmZABDRTfcg60WRp//RnZE3ZbZ982MIuRTWRZTN27RtQY4
	04pbrRz3oqJQxC8esjCtJrXfVdjCl6kdx392H+HCt/Z4Ozo+YEuMhyDI8Af4KSp5mRFOLcSLiI7DA
	YhBIRwY5+J68LiKvyRs7jx4RuF6puE+K68hBiHrOK2fWEmRa6sijQ8CBsP/MgKPOAi0RqRw6MAN1v
	JaovW4XllZY1rb+x/yIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAIw5-0000000EtdY-0xms;
	Sat, 26 Sep 2026 03:18:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAIw4-0000000Etd3-1IiN;
	Sat, 26 Sep 2026 03:18:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6480760136;
	Sat, 26 Sep 2026 03:18:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBD061F000FF;
	Sat, 26 Sep 2026 03:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790392727;
	bh=XqhtRYfHxTdA5AHEl7GWLWSSMjHoYIs2MLO3IJpi5zg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=G/ZLnxNmeGfBJ4493KlkmVG/cHmt47L9J+GZg+mUIHKpOsJR82n9FHniGutYgqhp/
	 ISs3jmqGb3MRo2fGMCZsXf2AThJkvEvu6E3vs8DUH0AlBvHelzyabWMn4fidvnJepX
	 TWbcsJ++Osv6pDo9m/Ii+BSZjV87/lRS1y4JccKKIrGa2RPYW/XkjzCT0d66eOPfQq
	 jBUUBqa1pJDW1AGsx3+ZuSmaAkOx1nMn+fKwk8lODDgVGxVHKI9YKCLlYpF3mz+Gfj
	 fmKLIPAJR89RQO7bLIO/anVxJEq+TAfBpqbVkhFQAcQ79mURimEPtJrjdThgpd+TND
	 1c7DTRz0FM4Tg==
Date: Sat, 26 Sep 2026 05:18:23 +0200
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
Subject: Re: [PATCH v15 02/16] phy: rockchip: usbdp: Update mode_change after
 error handling
Message-ID: <lywinqwwm2k7yycctngj7krt4e27dhi2pzzfcb5n4otgcj55rm@mk52fdcfq6yc>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-2-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-2-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NDlQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSWYgcmtfdWRwaHlfaW5pdCgpIG9yIHJrX3VkcGh5X3NldHVwKCkgZmFpbHMs
IHRoZSByZWluaXQgd2lsbCBub3QgYmUKPiB0cmllZCBhZ2Fpbi4gRml4IHRoaXMgYnkgb25seSB1
cGRhdGluZyB0aGUgdmFyaWFibGUgYWZ0ZXIgYWxsIHBvdGVudGlhbAo+IGVycm9ycyBoYXZlIGJl
ZW4gaGFuZGxlZC4KPiAKPiBOb3RlLCB0aGF0IG5vIGVycm9ycyBoYXZlIGJlZW4gc2VlbiBvbiBy
ZWFsIGhhcmR3YXJlIGFuZCBmYWlsdXJlcyB3b3VsZAo+IG1vc3QgbGlrZWx5IGJlIGZhdGFsIGFu
ZCByZXF1aXJlIGF0IGxlYXN0IGEgZnVsbCByZWJvb3QgYXMgdGhlIGZ1bmN0aW9uCj4gYWxyZWFk
eSBhc3NlcnRzIHRoZSBQSFkgcmVzZXQgbGluZXMuIFNvIHRoaXMgaXMgbW9yZSBvZiBhIHRoZW9y
ZXRpY2FsCj4gaXNzdWUuCj4gCj4gRml4ZXM6IDJmNzBiYmRkZWI0NSAoInBoeTogcm9ja2NoaXA6
IGFkZCB1c2JkcCBjb21ibyBwaHkgZHJpdmVyIikKPiBSZXBvcnRlZC1ieTogU2FzaGlrbyA8c2Fz
aGlrby1ib3RAa2VybmVsLm9yZz4KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LXBoeS8yMDI2MDYxMjE2MzgzNS44RDU0NzFGMDAwRTlAc210cC5rZXJuZWwub3JnLwo+IFRl
c3RlZC1ieTogSWdvciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIE9yYW5nZSBQ
aSA1IFBsdXMKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
PG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
