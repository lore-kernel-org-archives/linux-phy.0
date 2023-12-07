Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C776CC10DC3
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cn1O+0STApaD2ojqoJ0++lVaOFDa/Aj3A1+qnW4m06M=; b=M43iuTnnjaxUZL
	/OIsMYUzWsAbJkkAw/4/rIVaoqXq6zGKpJcx2MBXLH+H/Tn9/zkst1Jl927TEjEeFhjpOCLNVFMW6
	leTuEmQolocFNRiXy0fAjSFuHFg/g3Sc/91WKSad/W04Nlki0H48POynLpS2NVKOz6QN90osYscks
	h+9lYb/ZrAKSED/+9tl5jnsHRR3SdsWM4wEGCQBKDl3yqPeXACDoJpuNVwVofUKDd2evc/TGsrWgo
	oEFRNtS1/ZnA3BNhl01IsOB0IdHVqokQ6zauwNhfllBOC4XqGrbIC1+k+K7SB82Z29euatE6GrFog
	zgWkb7qejESHMY2e/XUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDM1-00Cld3-1f;
	Thu, 07 Dec 2023 12:19:45 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDLx-00ClZd-1i
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:19:43 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a1e2f34467aso78341266b.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951576; x=1702556376; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EsQY5wdtf2BXxOhs26sA3XI/MGPOIVweT0ZY3rFx6EE=;
        b=iQ4f71R7gBWRXfrHeMabB07nCQgWEqK19yz0nFFkO7ez5ZRWpWGdMkwv5H6DP8GCoq
         1y1kBC1N8JIGxIsCrYZXLt9IGrBLmQ7VCi8ggpcxjb2p5VCIfj+i3qej0D8UFypvXKcq
         lbqchrF7KZtFj/r5QWRl+qKb3sS2PdDj3g4U9Hsa4dxHm592KA3BSKGPGczkdndOZa6M
         uFJINsvcSUrJooDgol1QV6HnMVZQSJDi3JKX8p6O2UKyitP2NuEKXhpY+j+zLwfQ5uuc
         BB2d5yvNMwzAlMhAauZUbAWwKDkF5lLYyC3f7fWtw/ssI+54PISUGS9rd2R3wwkFFJ9B
         jl3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951576; x=1702556376;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EsQY5wdtf2BXxOhs26sA3XI/MGPOIVweT0ZY3rFx6EE=;
        b=DXTqpD+Ahk5xnxDPivg4Shrx0Ucimx1tVxKfoVh/ZDVQYWf6SapzHZdfaTivGBp3pM
         pSl8RiVh1Pm82DEh3xrBf2HJKYTo+Ip127vesTeDPh9CMWdahz6gFkDNbF3jtCE3yVBb
         T4zZDIkcoKcvMA2igZXFPVkpTmYXHFJjFVVgMuVHMpK95K+AiC/eWZ1sqQE5BpsNqPMx
         p6zHvmFhkTR838OspZ9gcAipBbwdZqZp6SOH3MFUGi1zkt0sqxaay/cXt7lZVpIwiqu1
         4bktZ0qBm9NA0oD4wO5VrU/0Tiqz9izPZp7Cn01AB7cRmTyw1+7jMgLwCnY5irtUBmMY
         LU4w==
X-Gm-Message-State: AOJu0Yw3W+O4Y8V+1nlDK/T6Cg/ZWb5+R9QCaqyB1L/D29aOxJ2N4O9D
	ZJ36SRbtIqQGIMrH7q9ad1Jl7Q==
X-Google-Smtp-Source: AGHT+IEJh+HNNCNW6mga6raHMrGIrb/9Y+5aKaSMdFVj9Bs4AgM45TqY+hEdQivTRCcaNo5UacOMmQ==
X-Received: by 2002:a17:906:4b55:b0:a04:bc39:c1c7 with SMTP id j21-20020a1709064b5500b00a04bc39c1c7mr1806037ejv.36.1701951576296;
        Thu, 07 Dec 2023 04:19:36 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm761394ejz.62.2023.12.07.04.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:19:35 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:19:10 +0200
Subject: [PATCH v3 1/7] phy: qcom-qmp: qserdes-com: Add some more v6
 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-1-dfd1c375ef61@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2774; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=tCAG5xQlxlUAJwFjT/XmANZmT3YOrqILBnsoD1MYGiU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbhMn3n8hOVtt/nVR4qTH6yHdvi+vFAu6hL+b
 3Zd7S1yA/uJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG4TAAKCRAbX0TJAJUV
 VoUREACS1VbRFuBKoqaNg7LioCZuD+Rt7ozvg+Nru7b5dHH9uxBIE317hv3GB3JtWIYpM/9y8ku
 L6pTqF8XhFK1a+a33/QuBLArjmZv+gGeehZfbMgGgsPo5xtUVH3+ROPlJE1PRmtDfa5NuN9fTZ+
 Y/e59nnaQD14EfrDP8+llIvmwrZdpNthlDmvZipFQ3er/dCU7FxctIrU4Tup1rg6k2X5IpZF6YI
 8kIVrnvXlkRIKwTi/dhW3XM5qRbMhAtalNBcnIFCrA6n7E8wfQRe1txa5WryTGc6kNNmImbRAFT
 8VLjEOvMhQdBfB7lylXPxiksy7ole8zQZw0dA3P8nCk8vQa7jH2kcxmaDBqDpbZSeky3osKzDiv
 B5NAiGMdJWUx+7mYdjas52hvDulLNV8ovCwSQjnS1VaAoVkX3o0WvVg3D6vVx13A/xPoAMha7jG
 cIfPJhXdBPiAneNgTCp90XwsmOpLfhKs/0LXvsTsEs+rAqBDvKSLnkhsruDteuKI2l42ToKkCmD
 1GzOodkLKeNaaxbNGIFR4RBnjxCGyrYC2kvjQ9ieereZTckCwIzlLwLfTZvFsRsAisrY7Yc8NIE
 RT4guFZdHY45g19ILveh/1p7x7tnRIqST3RueopTzRQ5kfZy8uQfwuO5kqs2mqN6S/QDA01hJJ+
 bdViTlaNFYyXO2g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_041941_570770_8CF93CD5 
X-CRM114-Status: UNSURE (   8.19  )
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

Add some missing V6 registers offsets that are needed by the new
Snapdragon X Elite (X1E80100) platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h  | 5 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
index f420f8faf16a..ec7291424dd1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
@@ -22,6 +22,8 @@
 #define QSERDES_V6_COM_DIV_FRAC_START2_MODE1			0x34
 #define QSERDES_V6_COM_DIV_FRAC_START3_MODE1			0x38
 #define QSERDES_V6_COM_HSCLK_SEL_1				0x3c
+#define QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE1			0x40
+#define QSERDES_V6_COM_INTEGLOOP_GAIN1_MODE1			0x44
 #define QSERDES_V6_COM_VCO_TUNE1_MODE1				0x48
 #define QSERDES_V6_COM_VCO_TUNE2_MODE1				0x4c
 #define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1		0x50
@@ -48,6 +50,7 @@
 #define QSERDES_V6_COM_VCO_TUNE2_MODE0				0xac
 #define QSERDES_V6_COM_BG_TIMER					0xbc
 #define QSERDES_V6_COM_SSC_EN_CENTER				0xc0
+#define QSERDES_V6_COM_SSC_ADJ_PER1				0xc4
 #define QSERDES_V6_COM_SSC_PER1					0xcc
 #define QSERDES_V6_COM_SSC_PER2					0xd0
 #define QSERDES_V6_COM_PLL_POST_DIV_MUX				0xd8
@@ -56,6 +59,7 @@
 #define QSERDES_V6_COM_SYS_CLK_CTRL				0xe4
 #define QSERDES_V6_COM_SYSCLK_BUF_ENABLE			0xe8
 #define QSERDES_V6_COM_PLL_IVCO					0xf4
+#define QSERDES_V6_COM_PLL_IVCO_MODE1				0xf8
 #define QSERDES_V6_COM_SYSCLK_EN_SEL				0x110
 #define QSERDES_V6_COM_RESETSM_CNTRL				0x118
 #define QSERDES_V6_COM_LOCK_CMP_EN				0x120
@@ -63,6 +67,7 @@
 #define QSERDES_V6_COM_VCO_TUNE_CTRL				0x13c
 #define QSERDES_V6_COM_VCO_TUNE_MAP				0x140
 #define QSERDES_V6_COM_VCO_TUNE_INITVAL2			0x148
+#define QSERDES_V6_COM_VCO_TUNE_MAXVAL2				0x158
 #define QSERDES_V6_COM_CLK_SELECT				0x164
 #define QSERDES_V6_COM_CORE_CLK_EN				0x170
 #define QSERDES_V6_COM_CMN_CONFIG_1				0x174
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
index 8883e1de730e..23ffcfae9efa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h
@@ -23,6 +23,7 @@
 #define QSERDES_V6_TX_PARRATE_REC_DETECT_IDLE_EN		0x60
 #define QSERDES_V6_TX_BIST_PATTERN7				0x7c
 #define QSERDES_V6_TX_LANE_MODE_1				0x84
+#define QSERDES_V6_TX_LANE_MODE_2				0x88
 #define QSERDES_V6_TX_LANE_MODE_3				0x8c
 #define QSERDES_V6_TX_LANE_MODE_4				0x90
 #define QSERDES_V6_TX_LANE_MODE_5				0x94

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
