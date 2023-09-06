Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1231DEB8FAD
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 07:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBRmB6RqiuOWvmBp8cCNI7SYPetZsmMx7OhekT7xSpA=; b=FWVeNhNjvklZzZ
	fRQrLzWwciIjWPwdZKhQXeZdCiv5h+pjV4oQM+zkCKsRPIgAoOnFD3CDdt0idhdShUnVcm9cBgzbi
	3dewEO+vROOzZ+Qlm0TpKz/N6VhsMiMMALEQgjvD4JoeMZbX75uoz2zhoxF4BbJemdFdEqFaElyFz
	ktRsJMZYGWRrRejZP6bRYDD7WGXQoiphfgPQLnoWX1b3N9HGFaugLENps9d9M7FPZQPbgpjPoxV0o
	AC5TXUBCqs8Flyulb6FmA45rJKgwQpdhPRmuXJNkKJV7GINhAejyoTsMKPFVdMb3FVl9Ouzo2sVxu
	WKDmWKS2KwQKSctPqHPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQm-007bSf-0t;
	Wed, 06 Sep 2023 07:58:32 +0000
Received: from mail-lj1-f180.google.com ([209.85.208.180])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQj-007bR1-1K
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 07:58:30 +0000
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2bcc187e0b5so53337641fa.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 00:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693987107; x=1694591907; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1WFoCDHQcZPwZJQSbyTUB9Jk4X6fahGU3WH6smo7VI4=;
        b=LYvEMzDxRfn/KFt3L4SLG4xKz05FA0vHs7uxch3aBU4Y40v1Cd/ex8JjHrQHXdJZ4A
         wUdVAQ6XF1O3PB1p6TfSnpxuZez2uspEawJg6o1/8fh7NXK4w1lOGJR/CCUvDGCSYg3I
         a9WFlaVWMXq8cortzblNEj8PM5JBm/YkHhkAxscrJVfdr0r640ucXMoDbGmRBItKNL+e
         VXDcmZY8/U8K+OhjSex883SO++gjYj7QpWt4rJmTU2+etKt0b0SVTtz1HfU3wyPMcv9L
         XLBSQSutrE267n/K/4MYmE1bdj1bNjLLDVdzReo7E8uKEwsSWGWf6rRFitSmOWXFR+hk
         jHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693987107; x=1694591907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1WFoCDHQcZPwZJQSbyTUB9Jk4X6fahGU3WH6smo7VI4=;
        b=K9KlcnYKCx+1iQAOMzjLtleB+iNvZLWclA6jk8YhcERtdRdqMU+SYBBJBBBcEPCWHF
         D5LfmlmL2Hbeixttl3l8KH8wIKsrYn6gz0h9fz7BUpZXE84E+C6uCxhJreFo2MCYhYBP
         PojXW7yGede6ZQ9W0pVr4uxsSW4fAE7ITNvqse/h63ZaHxIDkJh4pYaRQO9B/RHsQIvf
         ySQ+9TcUtBL+2BuL7OTyGn9ITVwfW+BLD4hOoRJC44ItNUbmHZS1nk60WtdC4rOC7rH/
         ArUe3Peoqh+je1Pui2b+eDW4BP/+/VLa/YFVVKOCXO3RAEcM/ABqckKx/2yd0KoELhnt
         007w==
X-Gm-Message-State: AOJu0YxBdeqArwpF4v/C4nkInfl1wiPdZkWM7tUqPxd2vzu7jsCF3oGT
	PctkPIyyv5tydUtmCZ+FgzOvSw==
X-Google-Smtp-Source: AGHT+IEMl8lnqRYkPl1R/oMJzHcJPuViCYtk0DbOVDNkuOPYrjXPOXu0cqH+CU/Q3TU6YkxJCcZ1VA==
X-Received: by 2002:a05:651c:c2:b0:2bd:ddf:8aa9 with SMTP id 2-20020a05651c00c200b002bd0ddf8aa9mr1603122ljr.24.1693987107059;
        Wed, 06 Sep 2023 00:58:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z10-20020a2e7e0a000000b002b9ec22d9fasm3268324ljc.29.2023.09.06.00.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 00:58:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 3/4] phy: qcom-qmp-usb: move PCS v6 register to the proper header
Date: Wed,  6 Sep 2023 10:58:22 +0300
Message-Id: <20230906075823.7957-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
References: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_005829_500562_87D3AAD5 
X-CRM114-Status: UNSURE (   8.69  )
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

The commit 39bbf82d8c2b ("phy: qcom-qmp: pcs-usb: Add v6 register
offsets") incorrectly added plain PCS registers to the PCS_USB header.
Move them to a proper location.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 15 ---------------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h     | 15 +++++++++++++--
 2 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index 4fbef4eea7b5..7c16af0b1cc3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -7,21 +7,6 @@
 #define QCOM_PHY_QMP_PCS_USB_V6_H_
 
 /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
-#define QPHY_V6_PCS_LOCK_DETECT_CONFIG1			0xc4
-#define QPHY_V6_PCS_LOCK_DETECT_CONFIG2			0xc8
-#define QPHY_V6_PCS_LOCK_DETECT_CONFIG3			0xcc
-#define QPHY_V6_PCS_LOCK_DETECT_CONFIG6			0xd8
-#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1			0xdc
-#define QPHY_V6_PCS_RX_SIGDET_LVL			0x188
-#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
-#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
-#define QPHY_V6_PCS_CDR_RESET_TIME			0x1b0
-#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
-#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
-#define QPHY_V6_PCS_PCS_TX_RX_CONFIG			0x1d0
-#define QPHY_V6_PCS_EQ_CONFIG1				0x1dc
-#define QPHY_V6_PCS_EQ_CONFIG5				0x1ec
-
 #define QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1		0x00
 #define QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
 #define QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
index 18c4a3abe590..c95d3fabd108 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -7,10 +7,21 @@
 #define QCOM_PHY_QMP_PCS_V6_H_
 
 /* Only for QMP V6 PHY - USB/PCIe PCS registers */
-#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG1		0x0c4
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG2		0x0c8
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG3		0x0cc
+#define QPHY_V6_PCS_LOCK_DETECT_CONFIG6		0x0d8
+#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0x0dc
 #define QPHY_V6_PCS_RX_SIGDET_LVL		0x188
+#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L	0x190
+#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H	0x194
 #define QPHY_V6_PCS_RATE_SLEW_CNTRL1		0x198
-#define QPHY_V6_PCS_EQ_CONFIG2			0x1e0
+#define QPHY_V6_PCS_CDR_RESET_TIME		0x1b0
+#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG1	0x1c0
+#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG2	0x1c4
 #define QPHY_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+#define QPHY_V6_PCS_EQ_CONFIG1			0x1dc
+#define QPHY_V6_PCS_EQ_CONFIG2			0x1e0
+#define QPHY_V6_PCS_EQ_CONFIG5			0x1ec
 
 #endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
