Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E377C10DCE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJ7g9WMySkKIJu4bzFMTOczYBzI87V+wLJlhQTGUbn0=; b=xg4XmOYzfYv7GJ
	esHSoQaj79kD8vfsV5kZbGc2CaNyseQUU+yt1UpB0GhoXIh1GWu9ud8brQE53gEeegakzsayvYjCR
	HUScNrSluxSr62skdOCk34R9ML2r7iVkrCSa1l3oNegFosZVG4nQfIRxsY9O6661GnK1tRfh3dz4R
	350Bzabt06a2XLHbLIlk1i+GBXgqFyg554XX1cox9zmdunWWHHkqPTQKIFLH6JPXE+os7qo8hT/zx
	355HGUmTbo72YbqbFaFSjjDdmA9Vrg68YPAnGC4+eKPa8z3+AtDWGCps4A32vF4jAMXOipB+R1goK
	t5HwFbzZHAYcQHxJYvOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDM5-00Clfg-2W;
	Thu, 07 Dec 2023 12:19:49 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDM3-00ClbO-1B
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:19:48 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a1ceae92ab6so107450366b.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951582; x=1702556382; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V8/wN9bVDO/fT20ixO2JSLBwr82UnvTKWcapBaXM3F4=;
        b=fsQcOBau80kUxZQjhpXXTZ8WS2PVSonmf2b6HHMGPJLRD8kYXJFOsyD8qjP9bnRwXS
         k3nyO6tmvUcTbM+3wB5tUQ2NPTIod+KY67tIMfgk9LsQ/qTt2O8NbxtdJwZ1W++6x6vz
         HejZzYDZaqPImCm30pQ7v8oUt/AF3kg3T9qS10dRFmbmkuIkFZ6cG8Iln2toJiXSN4Xz
         FJUsrK4Em/x+P2WNgESdSBIi3KOhsWeapQx94JRdlwu1VfXbl/uEaFTqG/AEcGr+JaF+
         k6In1zQTkziah7boNFqLAf+Xfd3N2Fc6YuoZ7me7+mYp7SsSLfDSV/y++S0XF/OYjh8g
         9P0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951582; x=1702556382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V8/wN9bVDO/fT20ixO2JSLBwr82UnvTKWcapBaXM3F4=;
        b=jkuMk0g17tsef5ENo/KtfAasGKGCsogpJuEdm2aifde+3zefkCNLZsBj+KeBoDhizz
         qoEwmv7BDTqU7n/d/gadDRvIw47CriImvlkoSJoT3jSyWNFJycKI9GaeE1Z+y6nrX5mL
         nygz4vm4e4QSyewWpyInXu/YmSSkkbLld3efbLHtfJ1JznTdeUkg6v25FjKRrRpbLRX1
         a3FvhWQz68tk9CRA+svXQVO+6mgzyGlPzVWEWtUqrGuNKzkb7d+NyLnkmsAtBR/jnvil
         z2NvE2iPa+HeeftD5rWT3TSmGjryZoP6pqqFSaiHg6VV8J5zqgz7T0nzW1ZSW64B+sx5
         mzfg==
X-Gm-Message-State: AOJu0Yw5q0At8cV8rk3F7UCAbEFKMpR3/mDZL349gFyPobY/CVNUO4V8
	qmqtKKTK8NY0MhoZh8E4iXIedA==
X-Google-Smtp-Source: AGHT+IFM4jfhmjYf4Mr1kYFBvBAD+grQ/qtplvT+cAK0RXakzXW3dxwq4ULR/FPsbKFcz8j/n20www==
X-Received: by 2002:a17:906:73d2:b0:9d3:f436:61e5 with SMTP id n18-20020a17090673d200b009d3f43661e5mr1841709ejl.29.1701951581963;
        Thu, 07 Dec 2023 04:19:41 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm761394ejz.62.2023.12.07.04.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:19:41 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:19:15 +0200
Subject: [PATCH v3 6/7] phy: qcom-qmp: qserdes-txrx: Add V6 N4 register
 offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-6-dfd1c375ef61@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3441; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=mP9L6SpjvbccTHuSpfnLLqvU2TjJIjDbq/c6nbRWGbY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbhT6HtWXSLcyCrc1rPAIG5k0A7Aqpz1UiuVn
 stZx52K9lOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG4UwAKCRAbX0TJAJUV
 VkWaD/4oTYB78IX2ull9QOh/gUlChoWzOkm8FSM57hA++T1WkbykJlyP64dzTB5vtnOAnTQrLCs
 MNGmGZZ1FkO43Gk1RtkDdltfOGFQrnF58TAeHmATijghVFssRU7HoQOlkoUQ+fIuUzKfqnLzkgx
 ewiSR1jG0cAZMjUFEpektIvdYHlFWXytRzB8b9LzWghly5XvCr42Z6SZTLt8owDt/VNFy6f15S0
 MfbzzFVbAMPtBeaJEhunGE65GEjyrFagCizYt+upuHJFtfx5x1Fi9aj0KiGA9fsrkYpbaWWik7T
 veDOjOIGGNytCwrPe9gVf9tZBDMbckRswl3LLlxoAt6yeoQi+9pD9OCjZjEcBfU2Kbqg8LWD7A0
 k1PHtoNGehmnTP3/mZn1i7Ihx3FC+/3A+PRvPer75wcOvKoORLa6EKKMaTiOQCxW90wJAzu03KC
 eli3jlZoU1DPCjwPQ9I43oWGcr7+0iYOiqnXK1sETyIeH7cOBBuluyK/Ie4jUOSLn9TKun3ZWPM
 npobcNTMEmtLoLNWPMi5SvHg29Sxj5dtoSTBrS/JYiZ3OwBiP63rOxf306v/q5+ppXo0eU+M0aS
 7XREsSEcWghj4klSEbmgUVYFJPIfkYdxND+1btWuNJL0ugXUJ+64kLq7FJn0OciP+q7saf2ojUY
 q6xG6fA/HGXFjRA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_041947_400724_5C8F75EE 
X-CRM114-Status: GOOD (  11.07  )
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

There is a variant of V6 offsets that are different, the QMP PHY N4,
and it is found on the X1E80100 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 51 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 2 files changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
new file mode 100644
index 000000000000..a814ad11af07
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V6_N4_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V6_N4_H_
+
+#define QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_TX	0x30
+#define QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_RX	0x34
+#define QSERDES_V6_N4_TX_LANE_MODE_1			0x78
+#define QSERDES_V6_N4_TX_LANE_MODE_2			0x7c
+#define QSERDES_V6_N4_TX_LANE_MODE_3			0x80
+
+#define QSERDES_V6_N4_RX_UCDR_FO_GAIN_RATE2		0x8
+#define QSERDES_V6_N4_RX_UCDR_SO_GAIN_RATE2		0x18
+#define QSERDES_V6_N4_RX_UCDR_PI_CONTROLS		0x20
+#define QSERDES_V6_N4_RX_IVCM_CAL_CODE_OVERRIDE		0x94
+#define QSERDES_V6_N4_RX_RX_IVCM_CAL_CTRL2		0x9c
+#define QSERDES_V6_N4_RX_RX_IVCM_POSTCAL_OFFSET		0xa0
+#define QSERDES_V6_N4_RX_DFE_3				0xb4
+#define QSERDES_V6_N4_RX_VGA_CAL_CNTRL1			0xe0
+#define QSERDES_V6_N4_RX_VGA_CAL_MAN_VAL		0xe8
+#define QSERDES_V6_N4_RX_GM_CAL				0x10c
+#define QSERDES_V6_N4_RX_SIGDET_ENABLES			0x148
+#define QSERDES_V6_N4_RX_SIGDET_CNTRL			0x14c
+#define QSERDES_V6_N4_RX_SIGDET_DEGLITCH_CNTRL		0x154
+#define QSERDES_V6_N4_RX_DFE_CTLE_POST_CAL_OFFSET	0x194
+#define QSERDES_V6_N4_RX_Q_PI_INTRINSIC_BIAS_RATE32	0x1dc
+#define QSERDES_V6_N4_RX_UCDR_PI_CTRL1			0x23c
+#define QSERDES_V6_N4_RX_UCDR_PI_CTRL2			0x240
+#define QSERDES_V6_N4_RX_UCDR_SB2_GAIN2_RATE2		0x27c
+#define QSERDES_V6_N4_RX_DFE_DAC_ENABLE1		0x298
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B0		0x2b8
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B1		0x2bc
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B2		0x2c0
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B3		0x2c4
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B4		0x2c8
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B5		0x2cc
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B6		0x2d0
+#define QSERDES_V6_N4_RX_MODE_RATE2_B0			0x2d4
+#define QSERDES_V6_N4_RX_MODE_RATE2_B1			0x2d8
+#define QSERDES_V6_N4_RX_MODE_RATE2_B2			0x2dc
+#define QSERDES_V6_N4_RX_MODE_RATE2_B3			0x2e0
+#define QSERDES_V6_N4_RX_MODE_RATE2_B4			0x2e4
+#define QSERDES_V6_N4_RX_MODE_RATE2_B5			0x2e8
+#define QSERDES_V6_N4_RX_MODE_RATE2_B6			0x2ec
+#define QSERDES_V6_N4_RX_RX_SUMMER_CAL_SPD_MODE		0x30c
+#define QSERDES_V6_N4_RX_RX_BKUP_CTRL1			0x310
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 3a0512c3e07a..63b3cbfcb50f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,6 +24,7 @@
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
+#include "phy-qcom-qmp-qserdes-txrx-v6_n4.h"
 #include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
 #include "phy-qcom-qmp-qserdes-com-v7.h"

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
