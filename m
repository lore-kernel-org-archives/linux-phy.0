Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0677DCE7B1D
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 10:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8c+S2rXxQL7AnnXS9uPwJsCDMbJOcV143EErV96k3qU=; b=hVAK/MkEq6Cbly
	TLvfB67GqkU7J5eVbOogd1Sz0tFa9d7B1ZNgF47rlIhsjoU9qIDeMkD5bOMD3oBdXVx8eLTcTtOuz
	ZzRE8ypkMjkLieUdkIHx6HqQ1hAO/MD1iOzsiALNfA81ycRrPppnBb9FD0XHbV2Mr57urGpoYi0mi
	WkYdR2QhZ7d83wmkcr1Sq6RNuOTW6H0pZd4tZ5ub2BesjmbC3Elqh/M83xHBvxQtBI+loq9MJ6AON
	1r3D4gOZI7OeakhWOu5L5RV1c5HUNZKap16M2BV6SbspBFqMwOQ2/ayPbAhkAf38U2NuITdeUu5cK
	C9zUgpHvA3opgwAu9ebg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlofY-002yl7-1y;
	Thu, 28 Sep 2023 10:54:56 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlofU-002yge-0b
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 10:54:54 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c1854bebf5so44615301fa.1
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 03:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695898488; x=1696503288; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=94VHlZVsf6bXdjIfoogRbhmFUuCTuzhRqvR0EtjE+eY=;
        b=uJly9HE+4eabo7GeNjPUVKhbhCgmjoupWsHvAZ7T+shLIouhh3fwQ9Ocb/NWfNyX9Z
         K/VCgy34UieQJAs2A9rZbCgeWHhNpd2UyKJhf4fLipXZX8+4hAQUb16fkhfH0Uu1ippq
         tEH98dSTnC+4Ed3qqNBLSKWDCECVLSFA5M4qcfTONaNjqAB4FNbSHN18Qmbb7nNdWlf3
         KPkaIz8YIc+RyGUAy8970KW5Rk+5qvft1hrpUHCaSogViZG9WnQwnObQ1LzeKS5vWZEd
         wJhjanvsxy3WMq2GKnXWwBs8zIH6tmU3cWkVfrujd0PKgtUTVfLBQV23emCL6sGycKqi
         iqjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695898488; x=1696503288;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=94VHlZVsf6bXdjIfoogRbhmFUuCTuzhRqvR0EtjE+eY=;
        b=cnllDdKsIKAFT7JYHH964q6nW+czqgEExoDRPq2FlYrKqwxxsg+Z6uS+19Y5kKGvg0
         sdujjTU3t5qsnv+aRSmTIegsv9N+uUC7hJ7C9N0r6BuKH5l9xp4/jd9WtTd5kdF0/edb
         4KlKZm9O7BkxGqKtKCgeEKfTq2pGTbTzzAnWytRODahtKl1VF9lUstjH3oXjCL2uJcMF
         U4YJkTb00eAwGIdPn/0iQbBD/yczfBGikrDF5ODSjKpLIS7RUEboYUfOfboU9DWx/h6c
         Xszd3RUwU/ctjVj8E+/r7ghZU/JxCKMtY1ZGz62LL9vamsgnATfdqtx89/X/tEQjwzPr
         xMBw==
X-Gm-Message-State: AOJu0Yzs5BTahM1lv26ieGrsajQQa+VXi87TplV8l4xdLDf7uYlgDNDQ
	GU2od0mtlhSCEQPPuiqCBUKQHQ==
X-Google-Smtp-Source: AGHT+IGdePFOtUBL5hIpIiNS1i8PagrhLzfXQarBvR6qslkMvha7/O9Bbpqng3QVL4pnGiccUZX1QQ==
X-Received: by 2002:a2e:7a19:0:b0:2bf:f32a:1f70 with SMTP id v25-20020a2e7a19000000b002bff32a1f70mr822992ljc.11.1695898488213;
        Thu, 28 Sep 2023 03:54:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y24-20020a2e9d58000000b002b47a15a2eesm3551455ljj.45.2023.09.28.03.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 03:54:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 2/3] phy: qcom-qmp-usb: move PCS v6 register to the proper header
Date: Thu, 28 Sep 2023 13:54:44 +0300
Message-Id: <20230928105445.1210861-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
References: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035452_242615_2016C653 
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

The commit 39bbf82d8c2b ("phy: qcom-qmp: pcs-usb: Add v6 register
offsets") incorrectly added plain PCS registers to the PCS_USB header.
Move them to a proper location.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h | 16 ----------------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h     | 16 ++++++++++++++--
 2 files changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index cf4464849006..7c16af0b1cc3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -7,22 +7,6 @@
 #define QCOM_PHY_QMP_PCS_USB_V6_H_
 
 /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
-#define QPHY_V6_PCS_LOCK_DETECT_CONFIG1		0xc4
-#define QPHY_V6_PCS_LOCK_DETECT_CONFIG2		0xc8
-#define QPHY_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
-#define QPHY_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
-#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
-#define QPHY_V6_PCS_POWER_STATE_CONFIG1		0x90
-#define QPHY_V6_PCS_RX_SIGDET_LVL			0x188
-#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
-#define QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
-#define QPHY_V6_PCS_CDR_RESET_TIME			0x1b0
-#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
-#define QPHY_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
-#define QPHY_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
-#define QPHY_V6_PCS_EQ_CONFIG1			0x1dc
-#define QPHY_V6_PCS_EQ_CONFIG5			0x1ec
-
 #define QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1		0x00
 #define QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
 #define QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
index 18c4a3abe590..47cedb860fef 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -7,10 +7,22 @@
 #define QCOM_PHY_QMP_PCS_V6_H_
 
 /* Only for QMP V6 PHY - USB/PCIe PCS registers */
-#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_V6_PCS_POWER_STATE_CONFIG1		0x090
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
