Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E102C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlKPPDf90I/jpUW7efAcSwKjIM7pEPobTHGG8FIhhsI=; b=RGchRm8oGn61ib
	E1xMzLCHrxL0F6ILcs/QDzANrxs8avIgptDyFzZ059YoJXA3RPl0d4u6x0G35jf73Lyh50PLadb6C
	2R3YbK1jBI/iTNVc/mZhN5XJleVQVzvfrCLF0nsDnnR3PdAv2liMVwVsbzcwLVs7eN5Nt6ZtJMaM5
	AY6IP/HfLicvXUcxYIIQj97+nGTWMnfv0E65khtsMBzVo0PTUbioOoNjnmaNH0jD+cHiTvfwMV7r5
	9jZ38mSlUIyBfRI2N3X8gCwoD0ILnSx1nO8joym6sfKVl9p0BePPU+oZxREcYbO/lX8y37T7A0Xhg
	SSU75j76eK5TktmuZ2hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1R-009V4w-Uu; Fri, 10 Jun 2022 19:10:17 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk1O-009V23-E2
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:10:16 +0000
Received: by mail-lj1-x234.google.com with SMTP id d18so141832ljc.4
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MUejcEUBOlGy0+QEeY0SWSm0DJwBNAice3z2nR2K0iQ=;
        b=xMsL7t1PafQsJrvk7ePusx+RWVDKRd1/pNR8rYc7fx+OzthY0xWdH6sBjMHtyoW/Bw
         YB0ifpyA3prZxg0mGFNnE12boDNzgluUDuRf3Cow71c+sKlTPNaXqehX2Fx1gpFHuQbb
         mHmEDpXiTrP2ghgZAF+/26E6478sq6/bAsif/NGiQny9Sm5oJAJdd0w4HE2GYLrCVeNW
         gOyMu7fdig2jEOBhw1th5hMU3lDTOTkDUHGAkheBrUXtW7QfJ3HJ88DmgkfllarnYWq4
         tMrDfrbta6PKZdfN4vLiAGsKXXvbw3lBNuvqWxpE9snWg5J1t5fO5CQLn+njID69L7Ep
         wkJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MUejcEUBOlGy0+QEeY0SWSm0DJwBNAice3z2nR2K0iQ=;
        b=EUDZEmbJN2W+FQkf3jCx2KTZN+wqWgeuug1ST6PhHtkZrRFwISVyCyjkMKFwqmWQcL
         mhdrfsqM+vKiIJodHR1KXfFQJuVty6ewsc4bLc3AVKkl+L8L56+3Nw4XqAw5tFeQcr6v
         i/6I7QjNwsaK8XyOQf4Zp8Ir3IsyJkiMtEnq5cYiwRJrGoxVt+kgjgRpBhX6GQMXX7QH
         DhqTpsEbBwTBzfWAn4crUP9k/r7zAjiuqSvNTWQLf9rwSGKJyq3/zlun4Kgb1O6I2Sy4
         /ydNz7ypK5aFHp5Z0Af/5jFoLI24lcyo9JcK5wF2j3IjfoOOhY89IJXLo9PleWKSGi5E
         6brQ==
X-Gm-Message-State: AOAM5300H+qT0/ywMi3z8phEoWl24pJJX748oS6NGWOgKe4oLuju8Iv3
	FC67v1AaQ1ga/RgVaxXFt2deog==
X-Google-Smtp-Source: ABdhPJygjKFTxDyKxnOzhsykwtb0KxMxOAZ9q6BnbTQeskIFS42cZQRBr7u7izFbY9F5SL003HDDuA==
X-Received: by 2002:a05:651c:1a13:b0:256:39d4:f630 with SMTP id by19-20020a05651c1a1300b0025639d4f630mr7056286ljb.84.1654888211385;
        Fri, 10 Jun 2022 12:10:11 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:10:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 26/28] phy: qcom-qmp: pcs-pcie-v4: add missing registers
Date: Fri, 10 Jun 2022 22:09:23 +0300
Message-Id: <20220610190925.3670081-27-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_121014_489065_3A49DDCB 
X-CRM114-Status: UNSURE (   7.39  )
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
