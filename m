Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82003C77B7C
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 18:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36EK52csi6I+3CpvbSQ/0mSYmsjkSCz9xRdtcjZJH3o=; b=mbfbq3Bj2WV/IR
	XklYCPCYC1FF6prYg0XH35+1Y5l8KT1P8rNiIJcHJK+2GYsEwXAQHQUC+pH87gUv88YeChEspOVl1
	P8q23MihhgrHMUtCXDbpqdouNudw4EeYGo49r1lKfB1Cp3gOZ68A6wkdjO/IxRyRZPxf1qgUezXTx
	7v+YoOl8oR/hnf4zKSCeirEhOuT6qL7T+9tWBRIXezMtN0mzKEaVk79G/I+4b69TBCzeOlYDt90P2
	eQUu60FQPtDDvONm4tivuhYbm4SPHJKPpU2wV9KzuB9xz167CPym4G+KsXSjkCT3I3Ip99FFWZHM2
	yJCrVth+M2YRnuLAV6nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCv-00HG2e-0V;
	Mon, 17 Apr 2023 18:04:05 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCr-00HFzw-2V;
	Mon, 17 Apr 2023 18:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681754641; x=1713290641;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KoHza1vejrzAkyGsjA2yudMh/oMxUYOS4fEMrrvFgz8=;
  b=A6q4VTTJh0+4wGh1DAkccObPKqIE9xqNxiTX1tnThzLpCTmfY410wQi9
   QxGPaKFlC7rka1dw4p84CiwyZHeyZs4dRs492EFSsPvoP4HkMsU3qedf7
   +G3iIxVTJwmr7zBLdoLLd0Yo1m/hYur0PL8s12DToiTDaQhTuzTXJdpX5
   ZjPkNNzROYdarpB1PacaoRvfjGaGjf33tbR1gjmFIdZbpLZlNDnkW0dzo
   cDCwCyx9jcuE6lXKSuxxWNcc0cnx17kKFaR6J4nYzqb2uwlskBWQg9IG6
   wf8QFi3xToNctnyrAQHxjGWxJYDiSAJVm1FC1gYb/RbRzOQ6wkmxOJJLv
   A==;
X-IronPort-AV: E=Sophos;i="5.99,204,1677567600"; 
   d="scan'208";a="147469774"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Apr 2023 11:03:57 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 17 Apr 2023 11:03:50 -0700
Received: from DEN-LT-70577.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Mon, 17 Apr 2023 11:03:48 -0700
From: Daniel Machon <daniel.machon@microchip.com>
To: <vkoul@kernel.org>
CC: <kishon@kernel.org>, <Steen.Hegelund@microchip.com>,
	<daniel.machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<joe@perches.com>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 4/7] phy: sparx5-serdes: power down all CMUs by default
Date: Mon, 17 Apr 2023 20:03:32 +0200
Message-ID: <20230417180335.2787494-5-daniel.machon@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230417180335.2787494-1-daniel.machon@microchip.com>
References: <20230417180335.2787494-1-daniel.machon@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_110401_875277_32F5D6DF 
X-CRM114-Status: UNSURE (   9.08  )
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

All CMUs are powered up initially. This uses needless power. This patch
makes sure all CMUs are powered down by default. This involves
configuring a number reference clock and power-down registers of the
CMU.

Individual CMUs are later powered up, when the serdes lanes are
configured.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 51 +++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index d8620e0fae7b..0e9db7b36b60 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -1078,6 +1078,54 @@ static int sparx5_serdes_cmu_enable(struct sparx5_serdes_private *priv)
 	return err;
 }
 
+static void sparx5_serdes_cmu_power_off(struct sparx5_serdes_private *priv)
+{
+	void __iomem *cmu_inst, *cmu_cfg_inst;
+	int i;
+
+	/* Power down each CMU */
+	for (i = 0; i < SPX5_CMU_MAX; i++) {
+		cmu_inst = sdx5_inst_get(priv, TARGET_SD_CMU, i);
+		cmu_cfg_inst = sdx5_inst_get(priv, TARGET_SD_CMU_CFG, i);
+
+		sdx5_inst_rmw(SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST_SET(0),
+			      SD_CMU_CFG_SD_CMU_CFG_EXT_CFG_RST, cmu_cfg_inst,
+			      SD_CMU_CFG_SD_CMU_CFG(0));
+
+		sdx5_inst_rmw(SD_CMU_CMU_05_CFG_REFCK_TERM_EN_SET(0),
+			      SD_CMU_CMU_05_CFG_REFCK_TERM_EN, cmu_inst,
+			      SD_CMU_CMU_05(0));
+
+		sdx5_inst_rmw(SD_CMU_CMU_09_CFG_EN_TX_CK_DN_SET(0),
+			      SD_CMU_CMU_09_CFG_EN_TX_CK_DN, cmu_inst,
+			      SD_CMU_CMU_09(0));
+
+		sdx5_inst_rmw(SD_CMU_CMU_06_CFG_VCO_PD_SET(1),
+			      SD_CMU_CMU_06_CFG_VCO_PD, cmu_inst,
+			      SD_CMU_CMU_06(0));
+
+		sdx5_inst_rmw(SD_CMU_CMU_09_CFG_EN_TX_CK_UP_SET(0),
+			      SD_CMU_CMU_09_CFG_EN_TX_CK_UP, cmu_inst,
+			      SD_CMU_CMU_09(0));
+
+		sdx5_inst_rmw(SD_CMU_CMU_08_CFG_CK_TREE_PD_SET(1),
+			      SD_CMU_CMU_08_CFG_CK_TREE_PD, cmu_inst,
+			      SD_CMU_CMU_08(0));
+
+		sdx5_inst_rmw(SD_CMU_CMU_0D_CFG_REFCK_PD_SET(1) |
+			      SD_CMU_CMU_0D_CFG_PD_DIV64_SET(1) |
+			      SD_CMU_CMU_0D_CFG_PD_DIV66_SET(1),
+			      SD_CMU_CMU_0D_CFG_REFCK_PD |
+			      SD_CMU_CMU_0D_CFG_PD_DIV64 |
+			      SD_CMU_CMU_0D_CFG_PD_DIV66, cmu_inst,
+			      SD_CMU_CMU_0D(0));
+
+		sdx5_inst_rmw(SD_CMU_CMU_06_CFG_CTRL_LOGIC_PD_SET(1),
+			      SD_CMU_CMU_06_CFG_CTRL_LOGIC_PD, cmu_inst,
+			      SD_CMU_CMU_06(0));
+	}
+}
+
 static void sparx5_sd25g28_reset(void __iomem *regs[],
 				 struct sparx5_sd25g28_params *params,
 				 u32 sd_index)
@@ -2521,6 +2569,9 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 			return err;
 	}
 
+	/* Power down all CMUs by default */
+	sparx5_serdes_cmu_power_off(priv);
+
 	provider = devm_of_phy_provider_register(priv->dev, sparx5_serdes_xlate);
 
 	return PTR_ERR_OR_ZERO(provider);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
