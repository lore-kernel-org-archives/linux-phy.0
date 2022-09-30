Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94332C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8bo86/EXBJO+xtPZR+D7kSTYjrEYjizlqo5femJPy0=; b=coyywj/LvEMH8a
	F29NTH+NvPhUi3375Sp+Rz0/B9lBoEl9eLTywgxtB7h8h1j1F0ShXhQPZq2je3HagV+TUkISed22/
	QbeBd/KzYlHOK7NnrxHTRMuUqr/4WOBSrx8iMIwuHQpJIG1ivxBJVBlWo6uVQ6RCsyIZnvQ0qNkr4
	qIesiboE4Tjt+Uz/is8LFd91wT8FWhvx0S17Kb6k8krLpKsJC48uPQivgS1khFzoFJx0Kxs3SaaNK
	LgTrOyO8RKWrJGJZAdNJ9aiGegKn4nC8jac5z9oJuE16unqkTA+1VR7Ap6LpiMCt7BSfUZO3RnE3q
	5sBIzePqeE8uVtVQheXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED2-008sUK-U1; Fri, 30 Sep 2022 11:29:36 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeECz-008sQN-3q
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:34 +0000
Received: by mail-lf1-x12e.google.com with SMTP id a8so6375453lff.13
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Fl+OB3BJ1OwGKf7ra0TcmmEsiQmoxQ9BqCowZjl/PYg=;
        b=ENNf/e3nnALxx9LQLuvRBKuZ5NmRMJ5Rd15Z4X2TY//zJqeCuaqG0qFLZtV7wc/X5A
         nY8+A4gihHLaRmAhoiv+X3PNck52QwPIljk2u8V3sS/LS6SfQqdErVvNpB+cOqOIjjLR
         G3eZw82x/1hujKAjhSe5yn6Gn1HU4MU5zm6M95W3fJ1xeSr8g425MgRi1oS/CV5xMvta
         RHXEv2iFYotdDc+uWPGyWtaNgYLYTCl3PmxnwoiKgYjouRcPUwI//Jq4GkYZidG/gn12
         +c9chh8YIVzrxQPWLJAn+YA6WRmvWtN/c8Sipkibux6kCfGqj0bL4QbRozIV0kDTVg91
         A9NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Fl+OB3BJ1OwGKf7ra0TcmmEsiQmoxQ9BqCowZjl/PYg=;
        b=rjyVhyD7N0lw+3jshCNUOR86sCH0w/X5c3kIWWiq1nyfISn2mejmh83Fk3OY7CfguD
         N6fCACnT2ylq6EfB7UF8nnKFEpZfow0BZPq1Y7YID1HUOEjN94RRca0tY7lCPLWBzgh7
         JH+9+I6LoSXZezp2g68PUlQA+C2OenOtuluI2iptRotKdlSQOTg9QYlvBN/n6yNCLfxS
         8fcc5iXifrwXr2OgIzy+dKSFdGnvoj9sr9wvVZUb50cARO1gNUYNj6MtwsV99bm8wcei
         jgcwuDebfgnDIiOvzHhHffY71/Jz+62feGPWqRt9JTCmUVE5S2RMDQo3f1gJ2HwcwRlo
         qi3w==
X-Gm-Message-State: ACrzQf3xnF2LXCAt2fdn4m++GqHPpJBnF29ismKjfs8pVISqjJh/kN64
	HrbJDlE5jzGiBDP3xiNRjryzm0UeJjJjbQ==
X-Google-Smtp-Source: AMsMyM4uW4BONFD2uZksSOlAqAfKP2Eto9HIh14TXbQj6aePSX5X9mLsW53uwQDkBg+3MSB+7vHL6A==
X-Received: by 2002:a05:6512:ac2:b0:49a:2fec:aa4a with SMTP id n2-20020a0565120ac200b0049a2fecaa4amr3092156lfu.348.1664537371810;
        Fri, 30 Sep 2022 04:29:31 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 05/12] phy: qcom-qmp-ufs: rework regs layout arrays
Date: Fri, 30 Sep 2022 14:29:19 +0300
Message-Id: <20220930112926.638543-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042933_177849_CEF5BBD5 
X-CRM114-Status: GOOD (  10.40  )
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
index d447d68ea817..c4d0bc9e6e83 100644
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
