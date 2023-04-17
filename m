Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043E8C77B7D
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 18:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Cab8RSZB0SyJRjZ2IT1sy+kuwnd1xzoWCFUreq0qtk=; b=DWLsp+xttJor9p
	vmIUoVFQvtgPkv6TkWP4aagUBXlOOZ9xg+j5Z+9Xs4c6QfmdMx3klcaZgh4+ZmZ2BRZWkesRSi+0R
	6bhhYb0Dqe2Pb2BuWPk/exTF4jgjetnbQy+jGjbGMPY71l0G7MXpE+vSgW5eCmxduXJZO9zLpaHAl
	p+oBm+/7jguJcDqDqahmVS4ejBJnkNqiRRt8sLjLjYRnRNHKnuZGRuNENM1A85FnYqdyrsqa/r7Gn
	wJvPYflkYkTx/RnVJV5eHM/peigbiJ3TPKfrqqud7PwVh4wzRPm3ulYLll1sT94S1SEKgf+5Qhej1
	nuPZ5Yc4F3GseLsbtmXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCv-00HG3A-1p;
	Mon, 17 Apr 2023 18:04:05 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poTCr-00HFzY-2V;
	Mon, 17 Apr 2023 18:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1681754642; x=1713290642;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OzrZ7Z7YiYIaFp4WsXi8lfyg6YwsVetQDS6QQOYXX/4=;
  b=rMhNAVyGJof+A5gO0Ac2jG85TO6Zmgxvfme+J2jJrM8FpbMeHS6cei+b
   jBDoRwEIxGg//JuneTiIFIrMUkn1c0CqpNXncHtaeGf6acCe39bfT+eyJ
   OQqv9a4hIrqBwgn4JqjRrax+88rv+Vi7iRsR6dPwFUBUzor41wiij+MGZ
   7uEQhhe91lcHyYFUF0w0GH7SA/CuJ8FoTuV3aNzc87tF5psn75N4eAQjt
   m89hGgLUmkTp5Lk226jPEOg6n9dWPQEbvEONiDggUaiEK9kEUntHs7xhC
   s3XhvTDayGOehNtD/dmVO73JAl7Mqk4j15mwxJd+WpaJGVkw5uA87l9EH
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,204,1677567600"; 
   d="scan'208";a="206900840"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 17 Apr 2023 11:03:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 17 Apr 2023 11:03:44 -0700
Received: from DEN-LT-70577.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.21 via Frontend Transport; Mon, 17 Apr 2023 11:03:42 -0700
From: Daniel Machon <daniel.machon@microchip.com>
To: <vkoul@kernel.org>
CC: <kishon@kernel.org>, <Steen.Hegelund@microchip.com>,
	<daniel.machon@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<joe@perches.com>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/7] phy: sparx5-serdes: add registers required for SD/CMU power down
Date: Mon, 17 Apr 2023 20:03:29 +0200
Message-ID: <20230417180335.2787494-2-daniel.machon@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230417180335.2787494-1-daniel.machon@microchip.com>
References: <20230417180335.2787494-1-daniel.machon@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_110401_875275_33991B40 
X-CRM114-Status: UNSURE (   7.27  )
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

Add registers required to configure serdeses and CMUs for initial power
down.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes_regs.h | 106 +++++++++++++++++++++
 1 file changed, 106 insertions(+)

diff --git a/drivers/phy/microchip/sparx5_serdes_regs.h b/drivers/phy/microchip/sparx5_serdes_regs.h
index b96386a4df5a..d0543fd3dc94 100644
--- a/drivers/phy/microchip/sparx5_serdes_regs.h
+++ b/drivers/phy/microchip/sparx5_serdes_regs.h
@@ -2149,6 +2149,92 @@ enum sparx5_serdes_target {
 #define SD_CMU_CMU_05_CFG_BIAS_TP_SEL_1_0_GET(x)\
 	FIELD_GET(SD_CMU_CMU_05_CFG_BIAS_TP_SEL_1_0, x)
 
+/*      SD10G_CMU_TARGET:CMU_GRP_1:CMU_06 */
+#define SD_CMU_CMU_06(t) \
+	__REG(TARGET_SD_CMU, t, 14, 20, 0, 1, 72, 4, 0, 1, 4)
+
+#define SD_CMU_CMU_06_CFG_DISLOS                 BIT(0)
+#define SD_CMU_CMU_06_CFG_DISLOS_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_06_CFG_DISLOS, x)
+#define SD_CMU_CMU_06_CFG_DISLOS_GET(x)\
+	FIELD_GET(SD_CMU_CMU_06_CFG_DISLOS, x)
+
+#define SD_CMU_CMU_06_CFG_DISLOL                 BIT(1)
+#define SD_CMU_CMU_06_CFG_DISLOL_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_06_CFG_DISLOL, x)
+#define SD_CMU_CMU_06_CFG_DISLOL_GET(x)\
+	FIELD_GET(SD_CMU_CMU_06_CFG_DISLOL, x)
+
+#define SD_CMU_CMU_06_CFG_DCLOL                  BIT(2)
+#define SD_CMU_CMU_06_CFG_DCLOL_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_06_CFG_DCLOL, x)
+#define SD_CMU_CMU_06_CFG_DCLOL_GET(x)\
+	FIELD_GET(SD_CMU_CMU_06_CFG_DCLOL, x)
+
+#define SD_CMU_CMU_06_CFG_FORCE_RX_FILT          BIT(3)
+#define SD_CMU_CMU_06_CFG_FORCE_RX_FILT_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_06_CFG_FORCE_RX_FILT, x)
+#define SD_CMU_CMU_06_CFG_FORCE_RX_FILT_GET(x)\
+	FIELD_GET(SD_CMU_CMU_06_CFG_FORCE_RX_FILT, x)
+
+#define SD_CMU_CMU_06_CFG_CTRL_LOGIC_PD          BIT(4)
+#define SD_CMU_CMU_06_CFG_CTRL_LOGIC_PD_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_06_CFG_CTRL_LOGIC_PD, x)
+#define SD_CMU_CMU_06_CFG_CTRL_LOGIC_PD_GET(x)\
+	FIELD_GET(SD_CMU_CMU_06_CFG_CTRL_LOGIC_PD, x)
+
+#define SD_CMU_CMU_06_CFG_VCO_PD                 BIT(5)
+#define SD_CMU_CMU_06_CFG_VCO_PD_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_06_CFG_VCO_PD, x)
+#define SD_CMU_CMU_06_CFG_VCO_PD_GET(x)\
+	FIELD_GET(SD_CMU_CMU_06_CFG_VCO_PD, x)
+
+#define SD_CMU_CMU_06_CFG_VCO_CAL_RESETN         BIT(6)
+#define SD_CMU_CMU_06_CFG_VCO_CAL_RESETN_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_06_CFG_VCO_CAL_RESETN, x)
+#define SD_CMU_CMU_06_CFG_VCO_CAL_RESETN_GET(x)\
+	FIELD_GET(SD_CMU_CMU_06_CFG_VCO_CAL_RESETN, x)
+
+#define SD_CMU_CMU_06_CFG_VCO_CAL_BYP            BIT(7)
+#define SD_CMU_CMU_06_CFG_VCO_CAL_BYP_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_06_CFG_VCO_CAL_BYP, x)
+#define SD_CMU_CMU_06_CFG_VCO_CAL_BYP_GET(x)\
+	FIELD_GET(SD_CMU_CMU_06_CFG_VCO_CAL_BYP, x)
+
+/*      SD10G_CMU_TARGET:CMU_GRP_1:CMU_08 */
+#define SD_CMU_CMU_08(t) \
+	__REG(TARGET_SD_CMU, t, 14, 20, 0, 1, 72, 12, 0, 1, 4)
+
+#define SD_CMU_CMU_08_CFG_VFILT2PAD              BIT(0)
+#define SD_CMU_CMU_08_CFG_VFILT2PAD_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_08_CFG_VFILT2PAD, x)
+#define SD_CMU_CMU_08_CFG_VFILT2PAD_GET(x)\
+	FIELD_GET(SD_CMU_CMU_08_CFG_VFILT2PAD, x)
+
+#define SD_CMU_CMU_08_CFG_EN_DUMMY               BIT(1)
+#define SD_CMU_CMU_08_CFG_EN_DUMMY_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_08_CFG_EN_DUMMY, x)
+#define SD_CMU_CMU_08_CFG_EN_DUMMY_GET(x)\
+	FIELD_GET(SD_CMU_CMU_08_CFG_EN_DUMMY, x)
+
+#define SD_CMU_CMU_08_CFG_CK_TREE_PD             BIT(2)
+#define SD_CMU_CMU_08_CFG_CK_TREE_PD_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_08_CFG_CK_TREE_PD, x)
+#define SD_CMU_CMU_08_CFG_CK_TREE_PD_GET(x)\
+	FIELD_GET(SD_CMU_CMU_08_CFG_CK_TREE_PD, x)
+
+#define SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN        BIT(3)
+#define SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN, x)
+#define SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_GET(x)\
+	FIELD_GET(SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN, x)
+
+#define SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_EN     BIT(4)
+#define SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_EN_SET(x)\
+	FIELD_PREP(SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_EN, x)
+#define SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_EN_GET(x)\
+	FIELD_GET(SD_CMU_CMU_08_CFG_RST_TREE_PD_MAN_EN, x)
+
 /*      SD10G_CMU_TARGET:CMU_GRP_1:CMU_09 */
 #define SD_CMU_CMU_09(t)          __REG(TARGET_SD_CMU, t, 14, 20, 0, 1, 72, 16, 0, 1, 4)
 
@@ -2443,6 +2529,16 @@ enum sparx5_serdes_target {
 #define SD_LANE_SD_LANE_STAT_DBG_OBS_GET(x)\
 	FIELD_GET(SD_LANE_SD_LANE_STAT_DBG_OBS, x)
 
+/*      SD_LANE_TARGET:SD_PWR_CFG:QUIET_MODE_6G */
+#define SD_LANE_QUIET_MODE_6G(t) \
+	__REG(TARGET_SD_LANE, t, 25, 24, 0, 1, 8, 4, 0, 1, 4)
+
+#define SD_LANE_QUIET_MODE_6G_QUIET_MODE         GENMASK(24, 0)
+#define SD_LANE_QUIET_MODE_6G_QUIET_MODE_SET(x)\
+	FIELD_PREP(SD_LANE_QUIET_MODE_6G_QUIET_MODE, x)
+#define SD_LANE_QUIET_MODE_6G_QUIET_MODE_GET(x)\
+	FIELD_GET(SD_LANE_QUIET_MODE_6G_QUIET_MODE, x)
+
 /*      SD_LANE_TARGET:CFG_STAT_FX100:MISC */
 #define SD_LANE_MISC(t)           __REG(TARGET_SD_LANE, t, 25, 56, 0, 1, 56, 0, 0, 1, 4)
 
@@ -2692,4 +2788,14 @@ enum sparx5_serdes_target {
 #define SD_LANE_25G_SD_LANE_STAT_DBG_OBS_GET(x)\
 	FIELD_GET(SD_LANE_25G_SD_LANE_STAT_DBG_OBS, x)
 
+/*      SD25G_CFG_TARGET:SD_PWR_CFG:QUIET_MODE_6G */
+#define SD_LANE_25G_QUIET_MODE_6G(t) \
+	__REG(TARGET_SD_LANE_25G, t, 8, 28, 0, 1, 8, 4, 0, 1, 4)
+
+#define SD_LANE_25G_QUIET_MODE_6G_QUIET_MODE     GENMASK(24, 0)
+#define SD_LANE_25G_QUIET_MODE_6G_QUIET_MODE_SET(x)\
+	FIELD_PREP(SD_LANE_25G_QUIET_MODE_6G_QUIET_MODE, x)
+#define SD_LANE_25G_QUIET_MODE_6G_QUIET_MODE_GET(x)\
+	FIELD_GET(SD_LANE_25G_QUIET_MODE_6G_QUIET_MODE, x)
+
 #endif /* _SPARX5_SERDES_REGS_H_ */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
