Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 026D9CAC58C
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 16:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJ14M1ZHuFxdFeo7ZFrmu4ENc6uLTgJGZXVtd6mHXHE=; b=ewFqUTTQBEII+m
	V1H1V0ONgKG3KexbYx4nnvASzDqeepEAJEzaBrLYSUvVqbjcRH9aaczeUtEwWLuvocFzVaa909bo1
	QB3puck/e6gCjd64cHgfaG8ukPdFXFJalggfCqWXmsuO2XRYDdBmn0XSSiXAF7KmgxgVFGvzM5uaG
	/GNbAaOm5rTD2c5lIPn8+l3g6qarEtd/9aQ/CA2J/xuFbVmIPXLL+ve/5hlOjcrWVhWoxl+h1DZTh
	rCiKFuXpb1L4aG5lytnNuDil+1EsVMxRyJRkNp7yDukP6/Vy4oJf8maWOHyDDww2G8Hd99qUqoP5Y
	TJzK/8A3i2Z6tYKUqq5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1QK-00000008b6o-2usW;
	Tue, 09 Sep 2025 16:42:28 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvGn-00000006FsO-0vKU
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 10:08:14 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6188b7550c0so7014858a12.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 03:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757412492; x=1758017292; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0sIRaBk6vLQ8eD3uXidohEVpaoFfNVP9QHYmf2WgbQY=;
        b=UGB15nx8KQQ1HfK+Ybho/IlbiER/dq97U5P4caekc/lVL1QtCYy31YddFmfnMHG8M6
         BDP0OpoycZO7ZNnzFIfe5VLG2LQDrH7LrKxcrbcii7HpeQQZ62AZPf33bQBWy3kompXw
         9YSmvY17ZmpqHGlMd1JKfwu9K9EqpY6JGIIS9fnzoKX//6bzjeXVhKbxfhrz0c2Aa2yW
         2LHEXeCK3TQQBWpJX++QKPAv3xlUnRtJSgFh2FP7w2jfSvDAYQxBQ7vdCbei9YwbME48
         eEsq0+8cmDrmnHM1Hr4UnGBF+y592lWEE3L9q7TSq/pyXJ48glRDDGUWnmNkYNXdI0vB
         0bpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757412492; x=1758017292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0sIRaBk6vLQ8eD3uXidohEVpaoFfNVP9QHYmf2WgbQY=;
        b=kV5or5bEhPBz+rspbg2p6TyzP1XAWPct7e/4qMC0yNuWSvxJ/aG9AzBKnuNDxItvIn
         10pjJ3quyTILVKtIZa0v0zke0GSssNEllvcILcCy+A2+pFSP+wTOtfOHuXF3Kl4hP/CL
         HCZPyfNf+wvCZVvzg3ADR80t7Gp5EdHQtBbjA63A23Jn+dZSG0eiEnyxfQU3uIC3h/B3
         NmyR31/o6AJsg6zV0ptZqZcSnc/QrjHi21CaTR0/7gppIL/NSYHLk3igQdInLDaUohyh
         WKaYg9KdAswwj+zi7vKYHBK3E/jRPgGN8NsioJIvCpo+PXXRkh1RGK2EoZpRxhuo1YTP
         nIDA==
X-Forwarded-Encrypted: i=1; AJvYcCW0YAqmMWkEx/9f2d4OCHR1bIABuLFApfABDU/GX6OgkFcMwla4vV8gjbj3J/5nKOKIVkxWHWqxqYI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUUx/JEaUBbciZXrj4X5lpG2bCs1OdVEH2Ce0VSBVtl/YfmsIF
	jvO4ULpUFPrp9NbYtscQtwFWt9RTPD4urq+6nGASEUzYIAsYhWsjFgjpuYm4vHJXsPg=
X-Gm-Gg: ASbGnct9RVELspajEQKxbn4yrGHNW4z4EbC6gs32kQUVRKBUIhuo84DBsIJNjrb5ycL
	N8SBG9DA/vFWqXBoMaPSDzbtHDBAGNhQFSAb8i7J8mQCmg7vPl7HCpiGBf0gjFUM8+ELwHgQmz9
	OwGNSEL5bwey4xGKvqDt5xDTfLqirdLDgoFQ83QlVfaXEAd6gQyx1xzh3+119OvcLBW5yCxLyrP
	zf1mE/0hVSHc8YC8Bf0GkUw3TV6m53NXglBfmymgz+w35yGa7NwV1uy3nXK6eSs309el7zQRQ/d
	T+ELziVm3Savlt6niYozyC7/w39pyNLnFhI6Rz2f5/CfOUsLveKSplp8dMjf3F/YRS4lRH9r5LE
	9gHPBlKK70RcIDduBTp6E7FA1ZIK1X+knvrpXZgmRhn2q
X-Google-Smtp-Source: AGHT+IG7P3FlTuDA+XmbsLkCjJ6D49ial374EyPCI74HQC/n+6HFLuSoKA47dmacX/A7pwMohgLIIg==
X-Received: by 2002:a05:6402:42c5:b0:61c:29e:db04 with SMTP id 4fb4d7f45d1cf-623725eda00mr11673342a12.6.1757412491857;
        Tue, 09 Sep 2025 03:08:11 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c018f65afsm965379a12.41.2025.09.09.03.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 03:08:10 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 09 Sep 2025 13:07:27 +0300
Subject: [PATCH v2 2/3] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
MIME-Version: 1.0
Message-Id: <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
In-Reply-To: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3063; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=gd1/rQkOQZirFl18UzwZn/2cQtSjOyfCl1f0XILU2M8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBov/yC3QqdbF6klANBZsX+CL1kBvV8fZ9czoaLo
 8esOnAp3+SJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaL/8ggAKCRAbX0TJAJUV
 Vui9D/9WVfDQazxzor8ykuyAa8Ck9zuEDfFCAwSGCfz/kWIKl2NOkAczaNvidpm3IUSBmQo6xD/
 pONPPtlVMlqWUYDhcOi3Ch2x1hSsa5roCxfCqLGRCkAzp7KSklCGsE4tICymSN2KxHCRTswLkXS
 QdzZSLG7gqZioIfnxnGI04QasWGHiyID6z6+99UAkPF8FSvB8BxX7Cd+5hN436Vzc8GvlVrXE3f
 6ki/4RpOZk3z6yw9y4nPbZFI+RgjvbCdnvdaodmRXomhaYordCP+NlWJ+GEWrMADgLNiya+OWA1
 7q8C/GIrDpXiaQXeJlMUFsNuh0gf0fwDVaFxh4kM8nF+52nSy6++IXXlnoHyOcw2uui3DMlHFeR
 6uxcoJVYRZvICEGqTxp66HAAGolJrohH6kYFtO3sSypoSECDufpdqaf6fzX1Woq5x9nGni33FX0
 WfhzOcNYccZNte1dcGF1rHSyvsRm3TsmUNVjUn29TPHdVU4qkLu5RH0sHp7HhyvvXHkspE25Sj1
 HHimCuHcRWXv4tw3edqI8GCSAZvyqdWYAe73mUzj+Yb5GaXZfkfJVanU/L4NoBsrj0BK5R3oN1/
 a8Cf55dbHWRXFSI3OKZshAWOAe8D/bmIS3lQgYUzinFPomhZbMrSqyKm09qhYhZh2svaAh8ZYo5
 g6LDF1wW2PZ4NYg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_030813_266954_F669B276 
X-CRM114-Status: UNSURE (   9.73  )
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

Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
for the same version number. So in order to be able to differentiate
between them, add these ones with DP prefix.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2025 Linaro Ltd.
+ */
+
+#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
+#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
+
+/* Only for DP QMP V8 PHY - QSERDES COM registers */
+#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
+#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
+#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
+#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
+#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
+#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
+#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
+#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
+#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
+#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
+#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
+#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
+#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
+#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
+#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
+#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
+#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
+#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
+#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
+#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
+#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
+#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
+#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
+#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
+#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
+#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
+#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
+#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+
+#endif

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
