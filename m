Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD1ECCAC58E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eT28NE9K4YcX3U3AMw6XOAX9Hy7u4TNSYJ85A1EuqO8=; b=Wvu54TLJXet9++
	0AXcsQC5NH6+CdEYOALEYXztA8RAXdISu/fPFNht3F6T+QrZIQm0uvDZSROnG2cdtgB5bHTqQgM7i
	HONK247vnCKNnyfMPISCSyy4TlVZbgWWMPJ33pyW16eSTTgWHnB1ko0HHYl7BGiPNcwjKEC2RJduG
	Q+gOXwURS7BB2pFrXC6Anv5pfm2k3D+vIXWAULXUECwnYp81U0yrNpid+LF7lSlhOrK0/qJIyLXl9
	SXm5xKT8ml90pRlpQA/mnnr0H6uVOFDsS+11QgPQ4vCiy1jicJbv3ezcPPa7lWROiF/mUFr7wF8wq
	JZrm4im67C5kvBjUTg1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYc-00000003eFC-1zbR;
	Thu, 11 Sep 2025 14:45:54 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYZ-00000003eDU-1Sry
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:45:52 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b0787fdb137so120227766b.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757601947; x=1758206747; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xj8+ODxk5TPgmrm1epN9Zg+MtdZ3FT1uQ44Z3bdR4/c=;
        b=S27KfM25dgKnJ30s0ndNv6G5wtK0ZDiISm0qNe+ndjLazf03IdXxJSxaTUzh6YpvEs
         tE7GH78nQYOZ/4wES8bSqO+xfNZGw1FUghUgYWtbzslQvPt+Q4S0vRA2z6E1mnVcqYUM
         j64LO94iUflJq1nyeB2BAfiL1g5jR694bNgkDJbp1elZ28VVsXeksXHur1D6Hv/kqwiI
         YQF9ZoOH3o1LD94UI76H1qQZwtAPS7fVBmwDQeMfdCxnsC/WsKFz/uQ6U93wZa8wsQXQ
         rYXNATDAUm+kDKuUF/lvNwN320mlIY8Upoa5SfGiVRrC6tktqdP5hk3jhShW73aPfOz2
         0Iyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601947; x=1758206747;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xj8+ODxk5TPgmrm1epN9Zg+MtdZ3FT1uQ44Z3bdR4/c=;
        b=ciNRzgB1Och90DjWA9cdMscusxzltfEEKS1ybyXGJtfBgUeNOULVwXCjjrwDYEHi9Y
         vB9Howz8aSjnfdMvC6kHYEI7SS2AL03sK6zwIurVQ5boDpQvgS+4XoS7Gp2WjzjN5Zix
         EfDm+JXoRLaRZlmI9jnZ4QK7cx5YQ1cLDYLNzCn6D/iR0peGsRXgpb4+TuRzR6uEOW3Q
         Bkp2j1Giu3VAlOwkkCsymuw/w1B8E4ne4ArA2gN+hzBxi7Eajj+DmKoamkNo+s29EplX
         BYTYroHrzAnekqPlzwZMMmhZvaEwBsQgRk9FrmkrFdMFmQr9Ja8pGjg6xDENyMOJ+k1G
         eBrg==
X-Forwarded-Encrypted: i=1; AJvYcCUTw666M4lTqu4n3FQpj+Ptlm7a5zJiz5xgPPhjN7yIjPsVMAVyR4gSVezPgCVENtv1OY4sFTHMSDw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy11d5Z+HxHd1He7rmhMgN763SZKnObrOEr0K+bHBaSCUUuXiC/
	3TsTZP0XPPr7589jsK3xCbC/6teyBgCCkM6hFaqLDRZfXbz075vBQpFVaBNizRIAoQZXXk8rzkI
	BWr4D
X-Gm-Gg: ASbGnctE7FIxsDDDby2S7cXZg9WzExwzmbyB7RptR4mIhPV7chdMBX4bLmxeZzQAUPS
	s7rukKBGi9Lk2YHn8njF191riHsZoYzmiVupUPFeKA60vDO1i/caiO0OlFVf6lJAFdeeHMnjezS
	6RjztTvW/GEuGY6ofnJZ9ISr1HPmggEmRrK9enUbgM+SG1dq/momG9FzCxk3OMPvSe8VwnuiHoB
	OnAMQ3gKSYY252boeaWHYqiu7ckuFgYNujKImbJ6X0/spF1sjS3wAatbDSdblxteUOfDm7KOeJA
	GcSJ8c4GRhJjAnQcw6vLzhTYJuXzPaFi/u1U7oxYW2Us973MFOjfOYeEivA0rOMCtqySv69HsQj
	DTWoKDTGvimCg7LoA6bG3ZxLNE2boKfop3Q==
X-Google-Smtp-Source: AGHT+IGkALLpWTe3A8RNhgP0uFdtVHraWmoT4jDSLkYh5kEm44UzmREGpHh3iFHLZsyP0xNJwzIkSA==
X-Received: by 2002:a17:906:4910:b0:b07:880c:145a with SMTP id a640c23a62f3a-b07880c14c2mr560536066b.55.1757601947220;
        Thu, 11 Sep 2025 07:45:47 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31282e7sm147196266b.23.2025.09.11.07.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:45:46 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 11 Sep 2025 17:45:24 +0300
Subject: [PATCH v3 3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
MIME-Version: 1.0
Message-Id: <20250911-phy-qcom-edp-add-glymur-support-v3-3-1c8514313a16@linaro.org>
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3130; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=hHQLYPrS95HhfGu/5yJz6rF+PZQQgVsSP41YzrqnMf4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowuCRH6z1M9ZM9ZaMTneqmIBMUwkkH/Rm3J46W
 VSbWcYEXWqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLgkQAKCRAbX0TJAJUV
 Vky8D/4xUcAwz/9INS6hx17pBLcIJ27QhH/9ni3u7g+9jubACJ4SDt8qnk124AGe/aEcSs14e7J
 DQtD+FMHsCRv7vRKKbbSaWTHhfULnVIRQDszqSE13G0nj44oVe+oTG3289fhcxjQxNEiVzR/bCX
 z4tEbsGo7Q3kNCkVfo4HSo249GFwuY1Vew0w8DyD0gKMm8v1JcN3/VyFy92cQ5pl+LqupWnMXN5
 pbuAAcqlrI+5OLeONR5jpdif/xGwG5kk6ttATn/isPlleo7p5fk6taCOQxWDRH0WNoMX2dEtQIw
 vBnSWlQw2iNC1gHu6kt9e1zcgUjkTxj3QV01asDJ2JwxdRz8xirzZ0iICJG4NIuI7+j/7EAYjnj
 GJ1XYlL7FtsKNy7OJrt0ne6ZHB8vXdCy62Q4qTyXnBfAmBMK+l2P+T930whYQipniv0XbB6C4Zm
 h1Z6ltjSplscLuw2h4AQ63TVvW0CEEu2JErQhoyMqzZm7XCe3NtLz2IsowgeHfKVe6+w7OF6/y3
 +KJZqQVzd6l4V5EYSSyYCF/in4pwXTm3hdazcYKiVqPXqmJ6+4gHG26W6QXzCDkwi+qCsLT2S6m
 e4O3r0KFYq9oyd8TDgmKmCd5gvoYvY4QWc9gfjHSXpuM1Jldc2M4iy272pYqw+0s5pmbfAyAr38
 IU4E8k9DdkFAGrg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_074551_434982_72D7A8EF 
X-CRM114-Status: UNSURE (   9.33  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
