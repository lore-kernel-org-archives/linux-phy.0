Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2AE1CD98FF
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 08:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRxJWErexSAgltd6NI1xoif2X2Exa9FLCVD5vtYAuyo=; b=FyOqrbhGNCvH7p
	gCQ7F0+3TJVepBW6nbE2aYmgAZpVwBmAEUwYp1CJjAkk9/eWxyz9d1PKyJeDl90B2vrT8DIr75RDP
	ssa1KvfBg5klkymaMzdIY8a+ZN0zJOZBcu0pgyR10T7F7i32dF0kg6Py0diF4UONBD65SZG2HZenK
	GbdGrtGUdIpMXDmLTt+AwVL8uo7VHmKOQZYUv3grL6uyikpL32k8+3PaI/AJoXzTMU371U/inVAcK
	TB5XcbwBDGlrnbXX3I8PTAIGx2r88ouWa6HucnbHXDaXwqDJC9MJ00kV1/0K4VmRCta/pUGxeXyDm
	Mlj/s2q8Ypr9fleu6qFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUQO-00FDJz-1p;
	Wed, 11 Oct 2023 08:18:36 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqUQL-00FDIE-08
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 08:18:35 +0000
X-IronPort-AV: E=Sophos;i="6.03,214,1694703600"; 
   d="scan'208";a="178887281"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 11 Oct 2023 17:18:24 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 9EFFB400C9ED;
	Wed, 11 Oct 2023 17:18:24 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH 1/2] phy: renesas: r8a779f0-ether-serdes: Reset in .init()
Date: Wed, 11 Oct 2023 17:18:16 +0900
Message-Id: <20231011081817.257113-2-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231011081817.257113-1-yoshihiro.shimoda.uh@renesas.com>
References: <20231011081817.257113-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_011833_186192_1B0A0E00 
X-CRM114-Status: GOOD (  10.18  )
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

Reset this PHY in .init() instead of probe() for re-initializing
this PHY after probed correctly.

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 drivers/phy/renesas/r8a779f0-ether-serdes.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/renesas/r8a779f0-ether-serdes.c b/drivers/phy/renesas/r8a779f0-ether-serdes.c
index 683b19bc411a..ba1109d6bdd9 100644
--- a/drivers/phy/renesas/r8a779f0-ether-serdes.c
+++ b/drivers/phy/renesas/r8a779f0-ether-serdes.c
@@ -214,6 +214,10 @@ static int r8a779f0_eth_serdes_hw_init(struct r8a779f0_eth_serdes_channel *chann
 	if (dd->initialized)
 		return 0;
 
+	reset_control_reset(dd->reset);
+
+	usleep_range(1000, 2000);
+
 	ret = r8a779f0_eth_serdes_common_init_ram(dd);
 	if (ret)
 		return ret;
@@ -356,8 +360,6 @@ static int r8a779f0_eth_serdes_probe(struct platform_device *pdev)
 	if (IS_ERR(dd->reset))
 		return PTR_ERR(dd->reset);
 
-	reset_control_reset(dd->reset);
-
 	for (i = 0; i < R8A779F0_ETH_SERDES_NUM; i++) {
 		struct r8a779f0_eth_serdes_channel *channel = &dd->channel[i];
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
