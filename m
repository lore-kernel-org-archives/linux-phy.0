Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 449D6C6FA95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTwl5fea5li/UFL49pCbuV9FxGblbWuExPZpe2RhMSQ=; b=nu0m6N00Vf2hk5
	lJ+6kg+c2IvQOYWxJWp40S5K/OwQPeScIRL1ylxQ73qBhp1M4/fXrLz7JssoY51xSCwmwfbDmfwIv
	E7N5T4m3nW9pfEa4xcusv1hjr/nHlxA5jwsOSkTeNbAguwkuBFKy8Mbjy2tNPtKKobgfv1DWy4vC9
	S5V/blIVw9Tl8cA6pGcVKi8qkYObvt455AqHOnyCLrU3brR3iJHMX+Lg1KKxby7Xed2hWT4o+w4x9
	J63F3CrQ1RKplihdfm5AU7Jf5ZnWFRQ7P3TQBO+qdavCWYlkQo6BcEzvcOBx72NtCycX6Yt5iIlWE
	NC4ErXJB9kUJlLSdoIbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCD-000cI2-M8; Wed, 28 Sep 2022 23:10:29 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC8-000cEX-Vc
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:26 +0000
Received: by mail-lf1-x131.google.com with SMTP id s6so22527547lfo.7
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=XDcCF1vrlBnm4gVS8t+NWQ6J4+E2G+Ecc89KIMSAhA0=;
        b=gt2KILkcEcRcINZ/FaK4j+vJnyyAZ859UHbzVd0NoqYzJhmUIRpE/F/U9AhJvC48A0
         r2rcobBAQ49Ne/H6KpL8azRZXupuJijgQnTbJ1bgaDXdMcd5qyhYojVjM4OJQGTiBPKM
         c9baxPTY34cHmBwY9ggwgNufspSlDG7GtHzr2q+/BWeQq4oy8ti4Y+3KjOlNbQRaMmQu
         NowIqowZ0oARD8icHI7lieH2jJi3ueFFyjhzuToBtVgvwbq5jYAN2qM6vGdWBdX3r61P
         pB3m58TQZHwaA6J2zvJViLsZa0d4ltkb4nkNixKgjUfqwqG6ceV9UxlqYu7CMAIPU5nk
         L3MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=XDcCF1vrlBnm4gVS8t+NWQ6J4+E2G+Ecc89KIMSAhA0=;
        b=S/pKgRHrv5pTec3Wvaa0cVz2CBG+q62Fi69SyVNrt0WLJ/nUajOjpUuiL9w/PL+pbN
         EGlM5gGNhMCyKnXSWOQcWAp7l4Npsx7JNUwvbf9njwIpVM4VqmxJG0WWThLMXybOjjBa
         TQkwuCPIXoQ9sHsbY6lXJAOmroUWT+LXK+aHDwAX8N7I7ipZHQRmxUDPuusMd7V/J3Co
         021smAhJ6+ycgY/v1Nqsc0aA2xBCIbbYV7G4jI/xHKSkXBIIjULVrA2L9no5W3uie9z4
         Z1dPOeBubU5gJ3YyI4DrmdM3XWxoxlZaA3q3zfd1AlRxTs++xHc5k9Wd+f7D45P/YmJ2
         LR5Q==
X-Gm-Message-State: ACrzQf0tMfnHANpAshS7w2j0z5H574wMc+JJDeXOR+LQC2OCf1pMhc5S
	n28nEaNh7uIIe22FH1dtgyl9gw==
X-Google-Smtp-Source: AMsMyM5HAKuCjX4+5veSvat/rc9xwACD6O5QzNCoJ225l4mKWRF3fycDoanN4lSpL274SjWlN8BXAA==
X-Received: by 2002:a05:6512:33c6:b0:497:9df1:a25a with SMTP id d6-20020a05651233c600b004979df1a25amr109821lfg.562.1664406623684;
        Wed, 28 Sep 2022 16:10:23 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:23 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 10/18] phy: qcom-qmp-ufs: rework regs layout arrays
Date: Thu, 29 Sep 2022 02:10:06 +0300
Message-Id: <20220928231014.455201-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161025_057164_C8962B25 
X-CRM114-Status: GOOD (  10.26  )
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

Use symbolic names for the values inside reg layout arrays. New register
names are added following the PCS register layout that is used by the
particular PHY.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h |  5 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h |  3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c        | 18 +++++++++---------
 3 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h
index af870669a904..a0803a8783d2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h
@@ -6,6 +6,9 @@
 #ifndef QCOM_PHY_QMP_PCS_UFS_V2_H_
 #define QCOM_PHY_QMP_PCS_UFS_V2_H_
 
+#define QPHY_V2_PCS_UFS_PHY_START			0x000
+#define QPHY_V2_PCS_UFS_POWER_DOWN_CONTROL		0x004
+
 #define QPHY_V2_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x034
 #define QPHY_V2_PCS_UFS_TX_LARGE_AMP_POST_EMP_LVL	0x038
 #define QPHY_V2_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x03c
@@ -17,4 +20,6 @@
 #define QPHY_V2_PCS_UFS_RX_SIGDET_CTRL2			0x148
 #define QPHY_V2_PCS_UFS_RX_PWM_GEAR_BAND			0x154
 
+#define QPHY_V2_PCS_UFS_READY_STATUS			0x168
+
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h
index ba1ea29d2884..adea13c3a9e6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h
@@ -6,12 +6,15 @@
 #ifndef QCOM_PHY_QMP_PCS_UFS_V3_H_
 #define QCOM_PHY_QMP_PCS_UFS_V3_H_
 
+#define QPHY_V3_PCS_UFS_PHY_START			0x000
+#define QPHY_V3_PCS_UFS_POWER_DOWN_CONTROL		0x004
 #define QPHY_V3_PCS_UFS_TX_LARGE_AMP_DRV_LVL		0x02c
 #define QPHY_V3_PCS_UFS_TX_SMALL_AMP_DRV_LVL		0x034
 #define QPHY_V3_PCS_UFS_RX_SYM_RESYNC_CTRL		0x134
 #define QPHY_V3_PCS_UFS_RX_MIN_HIBERN8_TIME		0x138
 #define QPHY_V3_PCS_UFS_RX_SIGDET_CTRL1			0x13c
 #define QPHY_V3_PCS_UFS_RX_SIGDET_CTRL2			0x140
+#define QPHY_V3_PCS_UFS_READY_STATUS			0x160
 #define QPHY_V3_PCS_UFS_TX_MID_TERM_CTRL1		0x1bc
 #define QPHY_V3_PCS_UFS_MULTI_LANE_CTRL1		0x1c4
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index e9c04b88f541..72cae70d0507 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -87,21 +87,21 @@ enum qphy_reg_layout {
 };
 
 static const unsigned int msm8996_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_START_CTRL]		= 0x00,
-	[QPHY_PCS_READY_STATUS]		= 0x168,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_START_CTRL]		= QPHY_V2_PCS_UFS_PHY_START,
+	[QPHY_PCS_READY_STATUS]		= QPHY_V2_PCS_UFS_READY_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V2_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int sdm845_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_START_CTRL]		= 0x00,
-	[QPHY_PCS_READY_STATUS]		= 0x160,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_UFS_PHY_START,
+	[QPHY_PCS_READY_STATUS]		= QPHY_V3_PCS_UFS_READY_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int sm6115_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_START_CTRL]		= 0x00,
-	[QPHY_PCS_READY_STATUS]		= 0x168,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
+	[QPHY_START_CTRL]		= QPHY_V2_PCS_UFS_PHY_START,
+	[QPHY_PCS_READY_STATUS]		= QPHY_V2_PCS_UFS_READY_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V2_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
