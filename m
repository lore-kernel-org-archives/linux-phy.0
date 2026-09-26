Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61607C9831E
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 05:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iM3UADVdojJ8S9E/uNCOXQBmlKY6tkDC6csf3P10wG4=; b=NSJ9P4xZZgcEij
	sPchVhuc0NsFl7MdDGRMEOG8OwhAevBbZO6QemFJsLyiyxzQYnjIKqw/HTUlQej8qnW7C9MCKXh7J
	cu6DjC79Y+654jimafpQBDeXQ5Mov2a20j0M/OO3W1lzRZOmKq6YeCHrjtnlliSCzLgwSohmqGdxA
	W8SHgdDC76M7L9fBKla7rpFHLTjDJZyZEi27lBPzL1SMLAFOdNWLvSzVeI0Pw+5CryHu+dCd3xeFP
	mmfbDSdLGvgeGYRJoMPYwhgVVMroOJ+ygosrhH90nR3WC6JLv9o3kDCAf7x0Xd6yImDq4TbwE5P5L
	BuGkQ9lYAY6eoChb/KGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKmf-0000000F0gh-3zJe;
	Sat, 26 Sep 2026 05:17:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKme-0000000F0g8-0A8K;
	Sat, 26 Sep 2026 05:17:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9804E60136;
	Sat, 26 Sep 2026 05:17:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 753381F000FF;
	Sat, 26 Sep 2026 05:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399830;
	bh=dmbsubwsJv6grfemhX1Zv6FjAqGw9tQVhCke8CNIAq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YoAA97ZjK1QOxsWw63FzE5sARM6ZMj8DWFBc+7bzzT1Djt2Rez+xGc+w/GMo9xSf5
	 HcEDCUZlv9IPocsHFMOFaYjt81l9F1tincOwDWr5gS5uzoXS9DMaSrx5hHslvabVLw
	 GNS3UULju4WMGNWPRGwc7FuR1iA1XFHekg5EA2U0kA1ZLcInzYEfhAnDcAvobBplZl
	 bqqwHKz6k3PaUo+jhIoxjBb5XDXS54nY15BZUEZeXjOiaqGKzOcNxTsYnSyQJpajM1
	 q9GD6fg3Vsrf01cjqUIfD3AGMb9jyiJu/ZWh4pTgQgwyMuJHf1zpmZu22ZMdE2p3Ff
	 NFTMyL+kP5QLw==
Date: Sat, 26 Sep 2026 07:16:52 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 08/11] phy: rockchip: usbdp: Add some extra debug
 messages
Message-ID: <wqvcii3xylpu6e4kfvvundtj2v6x5nhe7hhxdlw6j7njtv7gm3@pdhlgezhpcem>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-8-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-8-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MTFQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSXQncyB1c2VmdWwgdG8gbG9nIFBIWSByZWluaXQgdG8gZWFzZSBkZWJ1Z2dp
bmcgaXNzdWVzIGFyb3VuZAo+IFVTQi1DIGhvdHBsdWdnaW5nLgo+IAo+IFRlc3RlZC1ieTogSWdv
ciBQYXVub3ZpYyA8cm95YWxuZXQwMjZAZ21haWwuY29tPiAjIE9yYW5nZSBQaSA1IFBsdXMKPiBT
aWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFi
b3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
