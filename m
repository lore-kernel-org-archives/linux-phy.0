Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0427C369AB
	for <linux-phy@archiver.kernel.org>; Fri, 25 Apr 2025 02:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5UU2EB8qDm/UhgvyuUUzuEvB6Bo3oaJHiVfglNFiYQE=; b=PjkkF/IZt5gqa4
	0Ba6IZwk1c8twMrm2QR8JfOJ5NiLD+iHzzzg3xseMVSdy0XrkoroI9v9bqor9gzAULqTWPzFGGMqw
	Gdmj8aLeVYdunBeBn1tdMpCy3hcIvvy7jKMxWCbRrMwQSC+ymcLEMsCwpTCcdZTXGLnm448sXwB/S
	vh5Q29tcvq/igFeq/yQ+P6E1ujpzPtXkQeHSBCUj92L0amvo0tAl4pNeF44ZUjFfXqegV94IRihC0
	Uq6lG7aiqtTh1iQgtBvtaR17HqDiHhy4a7+rGiiBSbW2m4oOjtMxY4V7qeILnIJrNEH8cDKNNN7eL
	he4HqEurExeGPMtzDEfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u88wg-0000000Fnbu-1mc0;
	Fri, 25 Apr 2025 02:37:42 +0000
Received: from mail-m15588.qiye.163.com ([101.71.155.88])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u88wd-0000000FnYD-38jL;
	Fri, 25 Apr 2025 02:37:41 +0000
Received: from crj-HP.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 13112a5bc;
	Fri, 25 Apr 2025 10:37:23 +0800 (GMT+08:00)
From: Algea Cao <algea.cao@rock-chips.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	heiko@sntech.de,
	cristian.ciocaltea@collabora.com,
	andy.yan@rock-chips.com
Cc: linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output 50.25MHz error
Date: Fri, 25 Apr 2025 10:37:20 +0800
Message-ID: <20250425023720.3296069-1-algea.cao@rock-chips.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhhCHlYaSR4ZSU9CTRkeS0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJMTU
	xVSktLVUtZBg++
X-HM-Tid: 0a966ace8e4b09dakunm13112a5bc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pz46Ogw5GDJPNzg6DQIOIU8O
	Hg4wCUJVSlVKTE9OTk9DTU9OS0pLVTMWGhIXVRoXHB4aVRgaFDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlLQ0w3Bg++
DKIM-Signature: a=rsa-sha256;
	b=ZxTdw2oQjErLaB1LCUnnvx8Jv0MePVT41slrasjLOGTRSxGTerajB/sjbSw4aSAVC7zICXzLYwfwAubMuGKcQymGqBh0XQj1hszkBbLK+snKHsV3VoDWF5eBfYK2cBHhnmgZOd748GaKMTzGMOFdi3rt1MEsbGO9/PTxl6Upt3c=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wzcaSWol41pI08NDxtqKY2YqU38iBEqEtGi1EuR4uKI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_193740_246214_BFEE2A66 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
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

When using HDMI PLL frequency division coefficient at 50.25MHz
that calculated by rk_hdptx_phy_clk_pll_calc(), it is failed to
get PHY LANE lock. Although the calculated values are within the
allowable range of PHY PLL configuration.

So we manually calculated PHY PLL frequency division coefficient
at 50.25Mhz and added it to ropll_tmds_cfg. Manually calculated
value  can make PHY LANE lock normally and output 50.25MHz normally.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index fe7c05748356..77236f012a1f 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -476,6 +476,8 @@ static const struct ropll_config ropll_tmds_cfg[] = {
 	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 650000, 162, 162, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 54, 0, 16, 4, 1,
 	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
+	{ 502500, 84, 84, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 11, 1, 4, 5,
+	  4, 11, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 337500, 0x70, 0x70, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 0x2, 0, 0x01, 5,
 	  1, 1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 400000, 100, 100, 1, 1, 11, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
