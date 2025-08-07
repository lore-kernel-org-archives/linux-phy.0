Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1119C87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 07:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmSd/kuuYbwaOuPDdXXO32Vwjoo/IUuNChzv+kb7Odo=; b=yys6IdWw7menpx
	0QZZLrLj80/WwRIjLCAJL6CaIJCYyWGek4f3bhk4ZKfZIRNgD+tGErizABvhScVMzG681U84yH1bH
	U0TrJEtcDJ9KzZuhrO3cNu9X86dUAe6BvCcZl632h9IPnB7Cw20lA1Y82Wkb3U16Y3MovlkKhPJgx
	FYhUUKqDKjkXN8bcXGjyfzUomaOyobr7UucUAbTQMa+KivWHE9XIijF5Ajl62wEgzfW2ggi22mEKP
	fnpVYXQmS3R4DVucHZdyvVOXC3plp1AlAYZ8qsZNgZ0PeBbNoLPJV4AKBUOrQ4d9IdqI1ARjLPadh
	pqfcPpnIsRsDKq78VDRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujudc-0000000HPtf-1b2z;
	Thu, 07 Aug 2025 07:02:08 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujucG-0000000HPgo-3Xh2;
	Thu, 07 Aug 2025 07:00:46 +0000
Received: from localhost.localdomain (unknown [119.122.212.7])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1e99a9ce4;
	Thu, 7 Aug 2025 15:00:41 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	vkoul@kernel.org,
	ziyao@disroot.org
Subject: Re: [PATCH 07/11] arm64: dts: rockchip: Add USB nodes for RK3528
Date: Thu,  7 Aug 2025 15:00:35 +0800
Message-Id: <20250807070035.486388-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <94357eb2-d8aa-4928-8816-9f6529530170@kwiboo.se>
References: <94357eb2-d8aa-4928-8816-9f6529530170@kwiboo.se>
MIME-Version: 1.0
X-HM-Tid: 0a988354f95403a2kunmaaa1b00034bd94
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTEpNVkhDTU5MSUNCS0MaHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVMWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_000045_048297_F3CACD7D 
X-CRM114-Status: GOOD (  16.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

> That is what I did for ROCK 2A testing I added the usb3-phy to the board
> dts. Mostly for two reasons, first because I did not want to make this
> series fully depend on the naneng-combphy series. And secondly because
> the ROCK 2A also have some sort of GPIO controlled mux for USB3 and PCIe
> signals that may affect how usb3 support is described in the device tree.

I tested this on a rk3528 board (usb3 only) with a usb hub:

~# lsusb -t
/:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
    |__ Port 001: Dev 002, If 0, Class=[unknown], Driver=hub/4p, 480M
/:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    |__ Port 001: Dev 002, If 0, Class=[unknown], Driver=hub/4p, 5000M
        |__ Port 002: Dev 003, If 0, Class=[unknown], Driver=usb-storage, 5000M
/:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
/:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M

> I am open to ideas on how or what default phys to include in soc dtsi.

I have no problem with this, either is fine.

> > Maybe "snps,dis_u2_susphy_quirk" is needed?
>
> Maybe, it did not seem to be needed when I tested USB2.0 only or USB3.0,
> will run some more tests on my boards.
>
> Any issues you know that snps,dis_u2_susphy_quirk would help fix?

This appears to be to allow the DWC3 core to reliably detect the Vbus
status of the connected PHY. Not sure if this is really needed.

> From what I could see these nodes are named u2phy for 8 other Rockchip
> SoCs and only named usb2phy for 3. So I went with what the majority seem
> to be calling them.

The name u2phy comes from the downstream BSP, and I think it doesn't hurt
to call it usb2phy.

Thanks,
Chukun

--
2.25.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
