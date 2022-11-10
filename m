Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A39BCC4321E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERi8u4dDgpyTcZxwCw7/6aAPdix4coXA+l0B9skCVYA=; b=q9ULVqNEOO3qRB
	I5KUCsj9EDtpg4CT7TRk0z3EFUWRKJpxCQo7QPxOo782JU429FtwnNZPtf9Taud4Qb8EA5rQE3maR
	whZkLVmMn1TUsCYiLjFlJrF9R97D/L4FnmTC00bdl7aANd1ULEDlPM7rjTRDonO2hcLEDJ0inkb3f
	4mh5VwTxSzILiLn1zz7yyQ44lMK76OO8vv0mkbVBUwNCK8yHYAxdDooS5k1wYpb4a/H8dUS9U9HJ2
	I3hxlyRccKEeX0QzX/SL9db4T7n5ofrb+dv7319HTwvciQDGJHnJTIZ11cEID5zO/4YIi8ybdpAHR
	hO++Ep4k02PhkSjB220g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDHy-008mGR-Rp; Thu, 10 Nov 2022 19:32:38 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8b-008fe9-2L
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:23:00 +0000
Received: by mail-lj1-x22c.google.com with SMTP id a15so2059720ljb.7
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2KRFeywLNNuDZJ4Mp7G6ZbG2RCFU6+hEVO/xb+Ggmz0=;
        b=dwGyBubg3dcIbysbm/xDcf1nJpMb/uR7ZJc+xoBF0Z9KtbmCSEMNF0G2p3Ozg8gbUg
         weyutlW+ZJ/R0jGuAbfSAius9E0xr4ePaRUfG138jE24UJOVcgud5lhvEDVJdzPDu3JM
         LCr3CyDljtWJENVpR0rAK3NRKX+uRBpXahPf0XPiwLVTh1ShGu9ZxyiNrjf1Vd8CNXJH
         NKAktzV61sA2PUQ7gL8o9VOiFOfesb50Qy+U/MFP4CTWgkjFmAxEybgv2wY8QbXMpfFx
         WyPG5JVDsqOX78g0bkpBnFqPJ0NKSgEqFBVFr6pTwkcezariF54XamfiJ7flPnTpGy2w
         rrSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2KRFeywLNNuDZJ4Mp7G6ZbG2RCFU6+hEVO/xb+Ggmz0=;
        b=QqoWdflW5eGb9PF043+5BcgeaoRPDAKKvMISB3ZoHXHwyYRJ2JlTuQgEKsO9+r9S0q
         JqXqfnWoVrgs9INaVS3EQGtCR7FJ38RAARUex0fb+zlOo6Dd+AJBHNQ84CBXsq/h3jr0
         ePuJZsjjhCdyNUOXx0CHp2sO66NA1zYc5WgMg0doAZbAp/x7n0IUY6zXsyeSBF/wFjBh
         AikuC0vaggEwr68wcupF2I/3iu+6Va3vFL1atlnx1mNTAEt1WSJ1sXR2kZBDkn+X/fdR
         XmsDsfaz8NMqS4o6s6K7ZAbygJIYCKOh68WQ9iYhTUYdRnPYZq+b8uSOjgfwrykradLm
         9vww==
X-Gm-Message-State: ACrzQf3d0NAnGTL56UQlO9j3rFX0WpvumEiBVKV09fZHyeYsPQ0D+m+5
	8iH0XYpa4AMtU3xhU/P7aOZ1wg==
X-Google-Smtp-Source: AMsMyM52darwT8rBGdk3D0L4t2ehD4UcRxM6I63PTdK9Q+n16FbH+2roDD8uU9QFvQDWEtvL5jTlog==
X-Received: by 2002:a2e:956:0:b0:277:35ca:5f01 with SMTP id 83-20020a2e0956000000b0027735ca5f01mr9335644ljj.214.1668108174107;
        Thu, 10 Nov 2022 11:22:54 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 07/13] phy: qcom-qmp-ufs: rework regs layout arrays
Date: Thu, 10 Nov 2022 22:22:42 +0300
Message-Id: <20221110192248.873973-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112257_166819_AADF6F03 
X-CRM114-Status: GOOD (  10.03  )
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
index 9a425be05ac2..8a7a3bfbd8d3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -72,21 +72,21 @@ enum qphy_reg_layout {
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
