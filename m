Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14342C98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 05:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2qYY/0q2lAxqFAuYMQJXgDiacMl2yFvs/lFjXfKAOM=; b=cF5v/i4/9zF9DO
	8Y9qgqkNXGMmD/DIZ5uEd6blpqGnBkhAZj8a8muMvs7mRKlIov2zTHS+qV7/cK7/c1XuyYqGf2nOg
	6ahQfDkmYAZkLQQrLx1O3/Z+kPTQcjn3f7pd857Ki3lw9sATHBEUm7ICbEdtoTmjMwjtSg/V+SaUh
	bN8egdZMR3p5D/7PLpf0j56qj2aqozFkgGNsSadJsznHwNJnfeXRPeMJ/OxAhUXl5c8QEDHxklzv5
	eC71dWQN0XSY6y+tuYuLyhK1FBagomBvSOsZN+unrQuW+nSZWghQYdYrTNkNVHlxmHDeym6IENovT
	Q/aj3Y6R358fYTBV+X2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKht-0000000F0Bh-34O7;
	Sat, 26 Sep 2026 05:12:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKhr-0000000F0B8-3PaN;
	Sat, 26 Sep 2026 05:12:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D0AFE6022B;
	Sat, 26 Sep 2026 05:12:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBFE81F00893;
	Sat, 26 Sep 2026 05:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399534;
	bh=XLu4w3tZoE/U6Lmgmazw/7zuFC7EGlznuS3/yeMf4oQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hw8ZU1D6Yml8tToKjBbk2tq8mT0UgHz/H945Zovmg6ktDWcfJBuV5X9yITN4Gh4tQ
	 HcxSEH1SoEwftLJZjyKTibqObyvPEdUmtXbuRLlvOr05XK8FNnVi1jU4et0yOYsX26
	 n2YnwFgQMu8aq46p4lbRDppXEUFsdAMGVhic2BqoTSXUWoQkKy34wuIukcvoKjBy58
	 7DkvVWIp3Hmp3eZwA7fyh9hWkGPniae2e3cFLLVB1z/yZd9aXMSnQZDtKTdt42h6Sj
	 Ot903xI8WqUwmXo4GHXm92Z456W+5P+WIWgZWYW2vIbW4dybqcJMnBLASxT0KTKjAS
	 VhgvNDFY5aDnw==
Date: Sat, 26 Sep 2026 07:11:54 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 05/11] phy: rockchip: usbdp: Properly handle
 TYPEC_STATE_SAFE and TYPEC_STATE_USB
Message-ID: <jly6x4dqrd4gr24oo5d37b3nx6xizuu35bd4thh7vjcprqomjv@lf7mc5dpmeyc>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-5-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-5-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MDhQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSGFuZGxlIFRZUEVDX1NUQVRFX1NBRkUgYW5kIFRZUEVDX1NUQVRFX1VTQiBU
eXBlLUMgc3RhdGUgZXZlbnRzLAo+IHNvIHRoYXQgdGhlIG11eGluZyBpcyBwcm9wZXJseSB1cGRh
dGVkIHdoZW4gZXhpdGluZyBEUCBBbHRNb2RlLgo+IAo+IEZpeGVzOiAyZjcwYmJkZGViNDUgKCJw
aHk6IHJvY2tjaGlwOiBhZGQgdXNiZHAgY29tYm8gcGh5IGRyaXZlciIpCj4gUmVwb3J0ZWQtYnk6
IFNhc2hpa28gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+Cj4gQ2xvc2VzOiBodHRwczovL3Nhc2hp
a28uZGV2LyMvbWVzc2FnZS8yMDI2MDYxOTE1NTAyMC5DQzczNjFGMDAwRTklNDBzbXRwLmtlcm5l
bC5vcmcKPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4g
IyBPcmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNl
YmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFu
aQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
