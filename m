Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C86C4EEB580
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8c+S2rXxQL7AnnXS9uPwJsCDMbJOcV143EErV96k3qU=; b=y4ykP3uB+rL5mx
	WqcWSs0rlzfFr5Zvy7gTofKTkSdaoXvw805Sci1ORvagmyXMMVeh60dM50BHlkekkFbxkBcMEOiTh
	soSQ4vo+2N9OuPKfyi7LUT0gPxIoVjhZe6lsAv4k5vwoestA6HLH6mqSEn+fbB1t/xHKC3hH13q7b
	8d24FfcQlirNxqmocE2zqfWdO8IL7AvuwHPwnclLTwO4Cn6MOPblqg6dZmWa7WV7eC3fAKlWY4WxK
	BDQE9dfnksemDRhO3VBGG6L3gEQyb/jFnQrFKf8kJITcpC57Z9sgveDc7r/K49bZ+8grv45sb5h1k
	O3xYthV2QQ6uJLinyRdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfngI-001IEo-1f;
	Mon, 11 Sep 2023 20:38:50 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfngF-001IDS-25
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:38:49 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-500c37d479aso7906799e87.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694464725; x=1695069525; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=94VHlZVsf6bXdjIfoogRbhmFUuCTuzhRqvR0EtjE+eY=;
        b=t4CZscUpJZqdaHx+zz9QJ/gV/Wrrr2o95E5X/xjOdcH8MWiKCovnWn0T2tY8XKpetT
         7Up6kdHSLrRMj6V+0Cg2V5Vs0Zx87TQiHhxxqEBSDMVjI1nUaTkOxgps/Anyj58nkHVh
         vrE/xRR7rXyBwXd8vpJAwXGvObbp6QAVBRUbhTHQr9VnH7c7qkve+cI4WC9l/mo5efxV
         5s5wnT0SCQNOAAq0BZbnu60OwNwzXLl3k8mwYRUkJDt/AUk+jSph39OVnGKpxi98xK/p
         VGHFaFCm5+hSxkhnVeNoGoSMA3A133wwpupd68hvPV4d4tpQ6BGO5WDos/TSal4me4I7
         /l/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694464725; x=1695069525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=94VHlZVsf6bXdjIfoogRbhmFUuCTuzhRqvR0EtjE+eY=;
        b=m9rajv6lWCF+sNP5lHea/vPxFEejPqu0p55Ap2B0dwGdgMD8EIao2237T4eqb/kgR5
         Pzf9lYlrsPLScKA+8X+RAevbNMCsXuoXi9R5er4mE4r8Fljfp1hMzSVhIwVAdqTwql0M
         jDEl8zH4iH9Russ+mMTAkDHzHftVybQBArd3uJ3e3uA/IdswBvawL3QlD4bEVHzAxcUH
         GZzXQLSbzPsFZKk8VJZ5r+nI98vz7uZORsG79ZpI1Ce0J3kVbCIqgLrnRQVTr/ev+x8f
         GbM3wJt0qe1HtAf1L1pTW/fSFFHgWhbMBinWAAHQ+F3MPRbEo63RJYo6gylzqfDPf+zx
         JJRQ==
X-Gm-Message-State: AOJu0YzUDc4SRDJnS7SyGkK56NivafJSYZynWAKLLaF3xbWSWu/gMror
	OFfixDfIrsHGZbDSVcDA+zyH8Q==
X-Google-Smtp-Source: AGHT+IGY/yB3nPn72e8seiL2VzAUiA0lIE6m0PoId/0JWMZOweBKK3le/7I+6/p29mN3EZvC+43p7w==
X-Received: by 2002:ac2:488f:0:b0:502:9253:c56f with SMTP id x15-20020ac2488f000000b005029253c56fmr7282219lfc.44.1694464724817;
        Mon, 11 Sep 2023 13:38:44 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l9-20020ac24309000000b00500b3157ec2sm1447753lfh.148.2023.09.11.13.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 13:38:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 2/3] phy: qcom-qmp-usb: move PCS v6 register to the proper header
Date: Mon, 11 Sep 2023 23:38:41 +0300
Message-Id: <20230911203842.778411-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_133847_684106_D9B89C88 
X-CRM114-Status: UNSURE (   9.09  )
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
