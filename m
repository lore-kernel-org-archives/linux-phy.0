Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C58C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 06:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0u5QElg1jQMTq/SLejNVFy6goISHb63wbsPlKERsUms=; b=WKDKPPzYOvLvUY
	K1aFmRS2gLp2Bdn7e+feqAadhd7PFwsfXKZ6al958dH6y6Y1u1YiCQbE1rob5eS+x5qUNA9pvU9OD
	we76833bNkjj+lbg8l/OCT7mhpRb2XINeq8cuGtxGVmV2gEDCmgc999Q2FI+fM9NKPrUiwBBCw0jh
	DZsG0ZQfk/zxBkssdMOhyWzNcLwFzZzWa1rPcexag5+qPMnULSd24gD0I6xCX4jNUjpN+MZUQqajq
	Cn66j6/s8/EX1yszk8NI1+TmkstmVLLXc3ITMTKo4VeX4ozju0wmq+6vmoFDBWvEkjnGmY+oO7c8O
	0lEMmfOYNsI2ZSKn2wIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9hBw-002LI4-1K; Mon, 26 Dec 2022 06:42:32 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9hBs-002LE3-0x
	for linux-phy@lists.infradead.org; Mon, 26 Dec 2022 06:42:29 +0000
X-IronPort-AV: E=Sophos;i="5.96,274,1665414000"; 
   d="scan'208";a="144512141"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 26 Dec 2022 15:42:22 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 88E0041AADCA;
	Mon, 26 Dec 2022 15:42:22 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH] phy: renesas: r8a779f0-eth-serdes: Fix register setting
Date: Mon, 26 Dec 2022 15:42:16 +0900
Message-Id: <20221226064216.3895421-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_224228_232120_9FA06577 
X-CRM114-Status: UNSURE (   7.33  )
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

Fix register setting which is typo in r8a779f0_eth_serdes_chan_setting().

Fixes: 742859441d44 ("phy: renesas: Add Renesas Ethernet SERDES driver for R-Car S4-8")
Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 drivers/phy/renesas/r8a779f0-ether-serdes.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/r8a779f0-ether-serdes.c b/drivers/phy/renesas/r8a779f0-ether-serdes.c
index ec6594e6dc27..e7588a940d69 100644
--- a/drivers/phy/renesas/r8a779f0-ether-serdes.c
+++ b/drivers/phy/renesas/r8a779f0-ether-serdes.c
@@ -126,7 +126,7 @@ r8a779f0_eth_serdes_chan_setting(struct r8a779f0_eth_serdes_channel *channel)
 		r8a779f0_eth_serdes_write32(channel->addr, 0x0160, 0x180, 0x0007);
 		r8a779f0_eth_serdes_write32(channel->addr, 0x01ac, 0x180, 0x0000);
 		r8a779f0_eth_serdes_write32(channel->addr, 0x00c4, 0x180, 0x0310);
-		r8a779f0_eth_serdes_write32(channel->addr, 0x00c8, 0x380, 0x0101);
+		r8a779f0_eth_serdes_write32(channel->addr, 0x00c8, 0x180, 0x0101);
 		ret = r8a779f0_eth_serdes_reg_wait(channel, 0x00c8, 0x0180, BIT(0), 0);
 		if (ret)
 			return ret;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
