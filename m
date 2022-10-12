Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 248F2C38A2C
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CllIMilmlbrlR4QMqdSUlk+M5mHm4Mj6Qlxw9rI8hY8=; b=U0Ws4PLFK178id
	c3HcIr0eimMnUknF7bVoPdqLaPq23vmdpI1hw+hEJaEOH0wh7CGgwOr/vXhAE63+TG7AmAfb3HqoH
	XJrVVCVg/li5143fUHz5OCmctQXlf0oBCbCaUpNbUUwq0p3WSiI+6hru9vCq61PW5ZneCFIsAfuiI
	KfB3JdDMP0mfFubwvSV84wVDZZD4qou30iBSDSelEjCL1ZF8iQOgmguAzBYGZPL0txe01cXNuOpKb
	fCuOKV/1LbzC0kCVoTL9CqVvbAqLcgPiu+aDvesC96kQOf06JXVhjsEUwTLNZyln9kVNquscs1vwy
	w2/inuTHeKDr+hEQ1Nzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuS-007Idq-EE; Wed, 12 Oct 2022 08:16:12 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuM-007IXn-NL
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 35916B819D8;
	Wed, 12 Oct 2022 08:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E978C43153;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=9Th7Nfz2ReBgz20Zfc3/OmI33Ci/30X8tixms18O93k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oXJlhSvTzz7ku0QlxGCX0gYt5fXkP5JJGVLnBF1n7Iv+IWfsl4uHiWQ5hFo6lG1Zf
	 lFik3wK4t1+jj5tsqqGlpvrB3VEQS27WHNz54A6/kjnSiKeo8LWm1jkGDgnzX1GpVg
	 YgkM1tgaVEwT10XQZYFMlfhKzEISl4eRDinhn5SSKA3fWhD23BtPrd6ZhmyK+dTGnV
	 Ta117eVBwJcAwf0UuL65v99U8/SUWXfg9HmyO9P3+QZesjBVBaiecuUNSSNQKlMJCm
	 7cwwl8oBE/Ta4yaTPNYu/BfS5Gd/32KZksMYMVJsUtIAT2Fen7j+xADIDOmAwDm9AT
	 tDm/rnfoTjFEQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu2-0004oc-NS; Wed, 12 Oct 2022 10:15:46 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 07/14] phy: qcom-qmp-usb: drop unused in-layout configuration
Date: Wed, 12 Oct 2022 10:12:34 +0200
Message-Id: <20221012081241.18273-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011607_068231_739C5C83 
X-CRM114-Status: GOOD (  15.14  )
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

The QMP USB PHY driver does not use the "in-layout" configuration macro
to configure registers that are typically accessed using "regs_layout"
arrays (e.g. QPHY_START_CTRL) so drop this unused feature.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 42 ++++++-------------------
 1 file changed, 10 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 2c5e4041bcf9..3aab9ea90078 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -69,11 +69,6 @@
 struct qmp_phy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
-	/*
-	 * register part of layout ?
-	 * if yes, then offset gives index in the reg-layout
-	 */
-	bool in_layout;
 	/*
 	 * mask of lanes for which this register is written
 	 * for cases when second lane needs different values
@@ -88,14 +83,6 @@ struct qmp_phy_init_tbl {
 		.lane_mask = 0xff,	\
 	}
 
-#define QMP_PHY_INIT_CFG_L(o, v)	\
-	{				\
-		.offset = o,		\
-		.val = v,		\
-		.in_layout = true,	\
-		.lane_mask = 0xff,	\
-	}
-
 #define QMP_PHY_INIT_CFG_LANE(o, v, l)	\
 	{				\
 		.offset = o,		\
@@ -2069,7 +2056,6 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 };
 
 static void qmp_usb_configure_lane(void __iomem *base,
-					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
 					u8 lane_mask)
@@ -2084,19 +2070,15 @@ static void qmp_usb_configure_lane(void __iomem *base,
 		if (!(t->lane_mask & lane_mask))
 			continue;
 
-		if (t->in_layout)
-			writel(t->val, base + regs[t->offset]);
-		else
-			writel(t->val, base + t->offset);
+		writel(t->val, base + t->offset);
 	}
 }
 
 static void qmp_usb_configure(void __iomem *base,
-				   const unsigned int *regs,
 				   const struct qmp_phy_init_tbl tbl[],
 				   int num)
 {
-	qmp_usb_configure_lane(base, regs, tbl, num, 0xff);
+	qmp_usb_configure_lane(base, tbl, num, 0xff);
 }
 
 static int qmp_usb_serdes_init(struct qmp_phy *qphy)
@@ -2106,7 +2088,7 @@ static int qmp_usb_serdes_init(struct qmp_phy *qphy)
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qmp_usb_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
+	qmp_usb_configure(serdes, serdes_tbl, serdes_tbl_num);
 
 	return 0;
 }
@@ -2214,21 +2196,17 @@ static int qmp_usb_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_usb_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_usb_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_usb_configure_lane(qphy->tx2, cfg->regs,
-					cfg->tx_tbl, cfg->tx_tbl_num, 2);
-	}
+	if (cfg->lanes >= 2)
+		qmp_usb_configure_lane(qphy->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 
-	qmp_usb_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_usb_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_usb_configure_lane(qphy->rx2, cfg->regs,
-					cfg->rx_tbl, cfg->rx_tbl_num, 2);
-	}
+	if (cfg->lanes >= 2)
+		qmp_usb_configure_lane(qphy->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
-	qmp_usb_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
