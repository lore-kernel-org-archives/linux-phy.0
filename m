Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F219DC3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 06:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INTcsoNvxVaw3tWm3+7wNNZrV8TC5pRV4seIPAC9dYA=; b=UaKS12n3QdIckq
	nPMpa/PGdtIP0XiH93BVxj3Dbj8s9q0r1Hb1v/EM+w+EAaJVMDIp1VnL5xeUB2TLKPU6DriX7AzkR
	Vj68BANqbk8RPJf09/PHmrA8euYnlbsxXGUGHplq/JM8IhYcYsD154K2opLL0ApABcUIDDw2xnrKf
	ZaR+NRzBrc8vJsrAMmbPjVPxOrzvv6/Bm0OIEDtUSZdGtqnr+NZSxZdWilQ6U8SIaiGN7TJe/0B4t
	R8FgKrk67/a9M+xJKrk84xGi8VvSw1+VA0HqjbsNVJkjG2QAiWMb+RzshsgyB1auOvXS/BVYWJv2X
	5EDDO6cPEkxGCRkJ0VUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9hMb-002OjL-E6; Mon, 26 Dec 2022 06:53:33 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9hMW-002Ofy-6p
	for linux-phy@lists.infradead.org; Mon, 26 Dec 2022 06:53:29 +0000
X-IronPort-AV: E=Sophos;i="5.96,274,1665414000"; 
   d="scan'208";a="147422895"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 26 Dec 2022 15:53:24 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 464A541B3551;
	Mon, 26 Dec 2022 15:53:24 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH 2/2] phy: renesas: r8a779f0-eth-serdes: Remove retry code in .init()
Date: Mon, 26 Dec 2022 15:53:16 +0900
Message-Id: <20221226065316.3895480-3-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221226065316.3895480-1-yoshihiro.shimoda.uh@renesas.com>
References: <20221226065316.3895480-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_225328_392281_472EB15B 
X-CRM114-Status: UNSURE (   9.69  )
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

Remove retry code in r8a779f0_eth_serdes_init() because
r8a779f0_eth_serdes_chan_setting() was fixed so that no timeout
happened in the initializing procedure.

Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
---
 drivers/phy/renesas/r8a779f0-ether-serdes.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/renesas/r8a779f0-ether-serdes.c b/drivers/phy/renesas/r8a779f0-ether-serdes.c
index 9f55a08e6da1..c5206ef9195b 100644
--- a/drivers/phy/renesas/r8a779f0-ether-serdes.c
+++ b/drivers/phy/renesas/r8a779f0-ether-serdes.c
@@ -18,7 +18,6 @@
 #define R8A779F0_ETH_SERDES_BANK_SELECT		0x03fc
 #define R8A779F0_ETH_SERDES_TIMEOUT_US		100000
 #define R8A779F0_ETH_SERDES_NUM_RETRY_LINKUP	3
-#define R8A779F0_ETH_SERDES_NUM_RETRY_INIT	3
 
 struct r8a779f0_eth_serdes_drv_data;
 struct r8a779f0_eth_serdes_channel {
@@ -248,16 +247,11 @@ static int r8a779f0_eth_serdes_hw_init(struct r8a779f0_eth_serdes_channel *chann
 static int r8a779f0_eth_serdes_init(struct phy *p)
 {
 	struct r8a779f0_eth_serdes_channel *channel = phy_get_drvdata(p);
-	int i, ret;
+	int ret;
 
-	for (i = 0; i < R8A779F0_ETH_SERDES_NUM_RETRY_INIT; i++) {
-		ret = r8a779f0_eth_serdes_hw_init(channel);
-		if (!ret) {
-			channel->dd->initialized = true;
-			break;
-		}
-		usleep_range(1000, 2000);
-	}
+	ret = r8a779f0_eth_serdes_hw_init(channel);
+	if (!ret)
+		channel->dd->initialized = true;
 
 	return ret;
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
