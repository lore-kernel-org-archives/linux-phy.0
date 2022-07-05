Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED6A8C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 16:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlKPPDf90I/jpUW7efAcSwKjIM7pEPobTHGG8FIhhsI=; b=N1llUtRcsD2o5z
	CNkeDijfOZ4eQInDKLjXBNSRX9K2LHa0H0IgOPlyJwHZsrppuI8wkke/DAGjoAK/UaWG6ZyvhrQme
	wRd4tWOaN+CgUk2FbWIdd2WzNLvhm3RaUYT6vcIUqRFPzBSKlhrN19iZ+yRfXsB/5R9oC89XwENhC
	1cc0huSq8fczipzHbMcUX5pEGmUQ5fextRiO0QXY2F3WGfZ3+TAiC8dgTTXPR+F768WOqj1L1R6zD
	VcJ4EeKlxDITr7v2pi5NJ6SYRuPQtu8ReKlbyDfc5S7qOOliteN0Ljidh4ckrTNs1vQgP9izuz/Yf
	4tOHJumqoqE402ybhLDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8lj1-001aUc-5q; Tue, 05 Jul 2022 16:48:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOX-00H219-9f
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=MUejcEUBOlGy0+QEeY0SWSm0DJwBNAice3z2nR2K0iQ=; b=NV8OqHas41JqVEE+luULqPy9Dl
	V8tDl1xk1zMxz4trBUIEoQLyG8P6F8tTQPnnLgH3Y2yCrwt4nxlDFWPpIPSNeDFTpgtfisPzLhEFp
	ylYSMVCHHrM2i3/v6Ulf1eH0pVvEm25JiMjHKU75+YgkyaCPCtyPrGkTso21Jb7oBJcPvUAlOTlkG
	Tr1dxtDrafX/RaSEAYgwJ9cmDwpUWZFkwStlPWQuBPbxY+qAg2Mv+5NwFpAxuyHxhK9SdBC4AT0sj
	AqH0hPA6HQEz47a8LydwyNN/R078bUiGG77b9+YNT4oK1hYNP+rP3srU788mytr88dRexZYzl4Np2
	QznMfccA==;
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5t-00HUyT-Hk
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:44:07 +0000
Received: by mail-lj1-x236.google.com with SMTP id j13so620112ljo.7
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MUejcEUBOlGy0+QEeY0SWSm0DJwBNAice3z2nR2K0iQ=;
        b=y9Ffw2V7fTW3OArwYj7dZbyMXE/nzfYsz8V1+vQNB6cXHNUc2rRoMjbRgZz53wfOty
         WoS101BUGGKiMJjJsfbNWj2fWKVA1aCKu3zFgPRcmSxV/As5y++kDwKUjLzd86ahhQ1Q
         od/scxspAhRUKDIFVGZ2F6HM/1joR+KOj8zlE3jO4wP6oyy5YG5B5Fi7HEPp64Xu83hg
         k78m8dhzDrDfdc+m8FSFHHz8N09vKtzbQsuz46Ts5pvEDe6ycgNOnu1FDSfgxdLIFytV
         yQjOc/zSGHOWds9uBxNXP+iG/CNHOmS+knSD/yfEsNMoeReVbusWSB9eMsT7l/4orrEO
         us7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MUejcEUBOlGy0+QEeY0SWSm0DJwBNAice3z2nR2K0iQ=;
        b=Nt4gT2p+f+GEcbsoAO3/BaBt3N1t8ol85/RjarJgup5V/WB8BL8YVM0gOusRO3TIVc
         Q4mxl/fydC7gwlzNkwd5DFY+LB/CJKhA+q8ZniY6+rM8fh6tpay4X3DoEOo/y5Ak1yXF
         dzjzVskE4QSxa/xXTHIw6ZNPq+AzIi2psAtsypEyOGJbbd+omg4KXRl7HaCzYdbg0sb8
         C6plXRHyx2cswhg2VQv2qyTgPHdypAefT+3wZxFZpLyfNDL+CCCnvqI9thW2Z9E7d89k
         6PboNXi9uLdBXjGsploycFsvrMSpP/xa8WQaoN6B9/Y+Q2YFuyaC9/nc+Dh30xRmYeUw
         4Izg==
X-Gm-Message-State: AJIora9vAEY5Zhocn/DF7k3FYBR/xHx8p1G1RNaoR/TGgNvL1vP4cytG
	3KTcsIZs/xjzLEKb+W8UFj6gTQ==
X-Google-Smtp-Source: AGRyM1tD1BR5vHB1UcIsIoMHtm/yqmy50qXzO/CbESzFC1/63+M3qM6tRqB78RUwpcmqNLShgyCVKg==
X-Received: by 2002:a2e:bc18:0:b0:25d:3049:4d69 with SMTP id b24-20020a2ebc18000000b0025d30494d69mr2144750ljf.362.1657014223097;
        Tue, 05 Jul 2022 02:43:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 26/28] phy: qcom-qmp: pcs-pcie-v4: add missing registers
Date: Tue,  5 Jul 2022 12:43:18 +0300
Message-Id: <20220705094320.1313312-27-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104406_225094_72E5D41C 
X-CRM114-Status: UNSURE (   7.24  )
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

Add missing registers, verified against:
- msm-4.19's qcom,kona-qmp-usb3.h

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4.h   | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4.h
index 5a97867c5ba6..4cc02288d418 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4.h
@@ -7,17 +7,66 @@
 #define QCOM_PHY_QMP_PCS_PCIE_V4_H_
 
 /* Only for QMP V4 PHY - PCS_PCIE registers (same as PCS_MISC?) */
+#define QPHY_V4_PCS_PCIE_INT_AUX_CLK_STATUS		0x00
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_STATUS		0x04
+#define QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG1		0x08
 #define QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG2		0x0c
+#define QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG3		0x10
 #define QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG4		0x14
+#define QPHY_V4_PCS_PCIE_PCS_TX_RX_CONFIG		0x18
 #define QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE		0x1c
+#define QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL		0x20
+#define QPHY_V4_PCS_PCIE_EPCLK_PRE_PLL_LOCK_DLY_AUXCLK	0x24
+#define QPHY_V4_PCS_PCIE_EPCLK_DLY_COUNT_VAL_L		0x28
+#define QPHY_V4_PCS_PCIE_EPCLK_DLY_COUNT_VAL_H		0x2c
+#define QPHY_V4_PCS_PCIE_RX_IDLE_DTCT_CNTRL1		0x30
+#define QPHY_V4_PCS_PCIE_RX_IDLE_DTCT_CNTRL2		0x34
+#define QPHY_V4_PCS_PCIE_SIGDET_CNTRL			0x38
+#define QPHY_V4_PCS_PCIE_SIGDET_LOW_2_IDLE_TIME		0x3c
 #define QPHY_V4_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_L	0x40
+#define QPHY_V4_PCS_PCIE_L1P1_WAKEUP_DLY_TIME_AUXCLK_H	0x44
 #define QPHY_V4_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_L	0x48
+#define QPHY_V4_PCS_PCIE_L1P2_WAKEUP_DLY_TIME_AUXCLK_H	0x4c
 #define QPHY_V4_PCS_PCIE_INT_AUX_CLK_CONFIG1		0x50
+#define QPHY_V4_PCS_PCIE_INT_AUX_CLK_CONFIG2		0x54
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG1		0x58
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG2		0x5c
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG3		0x60
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG4		0x64
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG5		0x68
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG6		0x6c
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_CONFIG7		0x70
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG1		0x74
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG2		0x78
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG3		0x7c
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG4		0x80
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5		0x84
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG6		0x88
+#define QPHY_V4_PCS_PCIE_OSC_DTCT_MODE2_CONFIG7		0x8c
 #define QPHY_V4_PCS_PCIE_OSC_DTCT_ACTIONS		0x90
+#define QPHY_V4_PCS_PCIE_LOCAL_FS			0x94
+#define QPHY_V4_PCS_PCIE_LOCAL_LF			0x98
+#define QPHY_V4_PCS_PCIE_LOCAL_FS_RS			0x9c
 #define QPHY_V4_PCS_PCIE_EQ_CONFIG1			0xa0
 #define QPHY_V4_PCS_PCIE_EQ_CONFIG2			0xa4
+#define QPHY_V4_PCS_PCIE_PRESET_P0_P1_PRE		0xa8
+#define QPHY_V4_PCS_PCIE_PRESET_P2_P3_PRE		0xac
+#define QPHY_V4_PCS_PCIE_PRESET_P4_P5_PRE		0xb0
 #define QPHY_V4_PCS_PCIE_PRESET_P6_P7_PRE		0xb4
+#define QPHY_V4_PCS_PCIE_PRESET_P8_P9_PRE		0xb8
 #define QPHY_V4_PCS_PCIE_PRESET_P10_PRE			0xbc
+#define QPHY_V4_PCS_PCIE_PRESET_P1_P3_PRE_RS		0xc0
+#define QPHY_V4_PCS_PCIE_PRESET_P4_P5_PRE_RS		0xc4
+#define QPHY_V4_PCS_PCIE_PRESET_P6_P9_PRE_RS		0xc8
+#define QPHY_V4_PCS_PCIE_PRESET_P0_P1_POST		0xcc
+#define QPHY_V4_PCS_PCIE_PRESET_P2_P3_POST		0xd0
+#define QPHY_V4_PCS_PCIE_PRESET_P4_P5_POST		0xd4
+#define QPHY_V4_PCS_PCIE_PRESET_P6_P7_POST		0xd8
+#define QPHY_V4_PCS_PCIE_PRESET_P8_P9_POST		0xdc
 #define QPHY_V4_PCS_PCIE_PRESET_P10_POST		0xe0
+#define QPHY_V4_PCS_PCIE_PRESET_P1_P3_POST_RS		0xe4
+#define QPHY_V4_PCS_PCIE_PRESET_P4_P5_POST_RS		0xe8
+#define QPHY_V4_PCS_PCIE_PRESET_P6_P9_POST_RS		0xec
+#define QPHY_V4_PCS_PCIE_RXEQEVAL_TIME			0xf0
 
 #endif
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
