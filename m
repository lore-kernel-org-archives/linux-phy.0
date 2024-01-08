Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5374CC3DA6E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jan 2024 20:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Evc0Sjdul956Q9dBWsFHB0+dRbS8EPGLeRVo2XCqmc=; b=ONHG4DOTPXhgb4
	VWgS4Le0I7w39zN2FmeSZQcLip9lN6gssuft07UMR37TXyH0z1GTrNmmBulpI6dGl2tESjf0+u9Ac
	tzG2T5NT7jcUSEZmVf1PkIGlwgey4i9wypBx1qjBmffzhuXvFq2msRxMWNift0fzRoFOHIme91RX8
	iHgN3/pKGR55DmZR/wPZl8NBN1ji3xcLH11ZBOawbchmvpuIY5W2A0ZNhRBV+KeWnZcSrHY7GlwOz
	Tb0QQiKbjBM7pBCDOK9v5X92L29s7WPYCCtwU9OY2Vtw2ZDUvrMdRfW5A6Nkg07dg+yCZRxDs6QX3
	blXXWSMrgVi9lGSECgGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMwbS-006Cnj-04;
	Mon, 08 Jan 2024 20:52:10 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMwbP-006Cn2-0c
	for linux-phy@lists.infradead.org;
	Mon, 08 Jan 2024 20:52:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1704747127; x=1736283127;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=R13qs6Drr+vE44nRwLO0hKg3RFvsSJlh1LucsPdn9Z4=;
  b=GXd39wRy/612dRx5l08Rn4WhHnmG57M0rYww3j9Y9P53m7e0SoTofIjB
   xj6fGl7G8wz5ds0EetfA0iXXfw4hEaRH9IYgnHGanWjirBe0FJJBnlpVU
   0CjT8b5kwnDWUw51TVwlVxAtbCzGjrUwIcSlwgmHlz2ayM4uFHey49R6Y
   CFtnlSpE+lE/Nqn9hoFByL2hnTLN42b2L0FNcX97grT41zWpQ0jz33RYJ
   /XAYqYIFMzu+gKyVGLiuFznObYtwFo/Ts75i3BySWbICc8evaMLLPOiYQ
   sm4kKcoKcaFdZbRVOFgBbVKAjwEpyPXQzMhtprSeXeWIjav1IlEeBoBd5
   g==;
X-CSE-ConnectionGUID: RzH0H5YRR+uPLie5NZz9dg==
X-CSE-MsgGUID: aVc+rbS9QiS6xFtRCwB8LA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; 
   d="scan'208";a="14409064"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 08 Jan 2024 13:52:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 13:51:50 -0700
Received: from DEN-DL-M31836.microsemi.net (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 13:51:49 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>, "Horatiu
 Vultur" <horatiu.vultur@microchip.com>
Subject: [PATCH] phy: lan966x: Add missing serdes mux entry
Date: Mon, 8 Jan 2024 21:51:40 +0100
Message-ID: <20240108205140.1701770-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_125207_426019_742D71A8 
X-CRM114-Status: GOOD (  10.82  )
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

According to the datasheet(Table 3-2: Port configuration) the serdes 2
(SD2) can be configured to run QSGMII or SGMII mode. Already the QSGMII
mode is supported in the serdes_muxes list  but was missing the SGMII mode.
In this mode the serdes is connected to the port 4.
Therefore add this entry in the list.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/phy/microchip/lan966x_serdes.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/microchip/lan966x_serdes.c b/drivers/phy/microchip/lan966x_serdes.c
index c1a41b6cd29b1..b5ac2b7995e71 100644
--- a/drivers/phy/microchip/lan966x_serdes.c
+++ b/drivers/phy/microchip/lan966x_serdes.c
@@ -96,6 +96,8 @@ static const struct serdes_mux lan966x_serdes_muxes[] = {
 	SERDES_MUX_SGMII(SERDES6G(1), 3, HSIO_HW_CFG_SD6G_1_CFG,
 			 HSIO_HW_CFG_SD6G_1_CFG_SET(1)),
 
+	SERDES_MUX_SGMII(SERDES6G(2), 4, 0, 0),
+
 	SERDES_MUX_RGMII(RGMII(0), 2, HSIO_HW_CFG_RGMII_0_CFG |
 			 HSIO_HW_CFG_RGMII_ENA |
 			 HSIO_HW_CFG_GMII_ENA,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
