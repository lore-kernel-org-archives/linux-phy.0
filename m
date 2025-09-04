Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D954CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zh0x9ID/mfFjugkZt35JXjos75NpnWkXOU+9PikPyRk=; b=wR21Fv0eBTr7Ui
	m9BqgJt0eiDOW8OQA1IXscBWytACdtb7g5+Q8Omrx5XnNzDwFoa/TxkGvhKUXu3gy/LLZJrRojdsd
	g6W/ZRC5RxSU7XeAocV5CEeHpF0xCkKQ482Qvrzae0cezIw9RxPOuA/7Z3MKIKejfO7cP3xCN+gdO
	7IEcYv2DZ7/p16jajDZHRa0DPLI9+geRsjqQD3kfP8xM6IvfQPBIiLAREbV9OhtGZzK8Zoz+r7RwR
	0H04rzjiVN5MM3WRktsulYYMiooRr9DmQTZTwOr/GV6lJtperTvCOTKihZaI1+3Bx1iYPXRB2Dz/9
	p2jacC7SIxrzpSvhDwCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3tT-00000009gJF-4437;
	Thu, 04 Sep 2025 06:56:27 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3tR-00000009gGm-3UaH
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:56:26 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-45b7d485173so4776255e9.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968984; x=1757573784; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/G87kyp/pfaxxUGK2NUKqpezATDG2ia4UyLkERw3KmM=;
        b=Z5Qqrj45EMG80zwIitU8Bk+d2RB5rvgicRZ+63+CrkVN5oKwiXFq1FTDvtRNeNA8FC
         KDtMRNQJtbMe8DH5Tr9rKTj80GesZQ2GZEa0JL7Qwwh1+78/wWwqLs3GBgrv4k8/DtFl
         WqV65GsqnuKrBDYfzJHCwQqHj3py5rFwbJDhrafDoFjPvDqyXZMStR9Tx7nDYq9xsiaN
         TWBKZ4xA/VgxnSWhYXtZlCFV4BGTna3+t4NjbCtTUQTaZmj4T5b7RkGQwviqDgOp7zDk
         MHKVuEt7DBRaWo14jkNcYctKre7GJDJGLrQS5XClte8yO3E4N0AmPlK+vfgo/t9gnf0N
         jrxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968984; x=1757573784;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/G87kyp/pfaxxUGK2NUKqpezATDG2ia4UyLkERw3KmM=;
        b=cg/+Lxaq0rm7tnrMkTaf3+M8Ves0C07oC8gtaZJjDnRtNEh5yW8oj+OXkizC/jfBFv
         13tkgbrlNEUD+jnjFp42Hj82EvX1+/laSYhcNXFT+D4p9YrYUjPM1p4WrgQPfGCX1DDg
         UZJX6u2xpjRAYD7btxqerohzPruNoG/uHaY/0D98VuOtVJKLaxWso4UPcCEGywuYNXjF
         Dh5LJKd7H8PPTZ3VCFeOyFlYv5B8shL24rCSmjlugyydH0pHckipAZIEBIhEj11DgvTP
         194RH7CvSiG319og3qbfPNh5VECm4dGjGJSyy27ONpu3ujYpwErf5Gvr7fdEmiy0MUl8
         u/jA==
X-Forwarded-Encrypted: i=1; AJvYcCWqLhdpVXzdDLPe+rTojgmCMrRfUltjR/2hYNMUvR7HQdKMoFXPlRnRGM+50nD34VLRkO++drcUY/4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8b9Zwi8QepaBeW0K2p+3onKhiqAgl3CIN4juSWhl/cV5HMfSy
	0hGGJKrctvzxzS/45bLOxCWYsycTB4wC9oX9fbFC5v6h+kPMEjffWN/TypHteT4SqMk=
X-Gm-Gg: ASbGnctcH5JPcj131kQIXaV6Jqm5SOJ3Ekk71P4qXpEHVyz8RW0dMV8HNOb1xOJjYT3
	OqBOSU85/VdiI+hN/lAgTg0fDvXKiDPc415Po0Lh39pSiJhzWj0M7lgA5mLOSapTb7eDw/GCNIy
	O0P0Ehi+GWPL30qORMQ8fcydNgIclRcgFZe3tg3/cINlsQWYTE1AuydgsN9tGKH6d8UgIy5Ipla
	llxPi0uf1BAIqn4e7PqxrGRveFV0gYqMUshNvehQMPQD4mEs6Pzfvb6zdY+Ub1eUTFU0PCpxLC9
	jd9bt+gyPzy/nzvO8HgMbgg354+Psa5ZPN40r1Rz8QKbHDOD6Wy0JOf6QShYdeO7xm1RvtXoblx
	H0vHHYax2B8uv0L+q9rvfN6k=
X-Google-Smtp-Source: AGHT+IGLpTHusCG88E6aPMx5XgydXW/TqsLoxaZrUvpMn95f0fLXzfbFIT7BrF9m0X4BdLAf7NE9/Q==
X-Received: by 2002:a05:600c:3546:b0:459:dc99:51bf with SMTP id 5b1f17b1804b1-45b8557b680mr134917665e9.25.1756968984254;
        Wed, 03 Sep 2025 23:56:24 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm15256075f8f.58.2025.09.03.23.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:56:23 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 04 Sep 2025 09:55:52 +0300
Subject: [PATCH 2/3] phy: qcom-qmp: qserdes-com: Add some more v8 register
 offsets
MIME-Version: 1.0
Message-Id: <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2613; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=jfzN/ldSxbD//tqugQGgHnEZ1hcjELAxuOulbu9UKOg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouTgOvDY/6mTpV6oXDGupvZt038nd7Su5EthEU
 afAzIQ6deGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLk4DgAKCRAbX0TJAJUV
 VqBkD/wJINCKAk++NiefvogMxEuq8c5BErQWHuAff0xOb2ncynGXwTa7lJlzFleG8HALLvmvQrY
 4EpsYSanHdOCAwqXFr2/tMw9gieUmFs6MfwqmLq0wKfb4uuGZN4175Nw1E0LatK4QjQ8UpSWU3P
 fO+z9H1z0bxMY+hahGQyF7Y4GQAEloAuopJ6Vx0p7UoKfY84lO8YnDmnZGkQUjlbWthg/PvT4EX
 bhrl/9opLDWgzxvIbvXFT/SYBXrMXVmYSxK9z2ZHNP58/8dZW7uKgyBfO49EXw06XHfHHwvsYI/
 BPSOD/qz+lpY8LH0YuCUNQylLFE5iNO/Kky7Uq8k0biBZaQU3eFUelZ2oKUDtguiqJPuXsxn/C1
 /bjA1dYaCldR65ukku9ynO4WpCIymYg6iyFPgNmqIcfbbgBx1pyo4hob9hRBUspJ6OtKCeNjIcW
 Bxi/qe3ExDH+lo7a43ygLaYWWr/jg39TtpmJk2fjsaKQTeiT6XX8tGkCLKqz3P+KrHNxkyL2YEL
 2sEZUJyAHe214CggoG7ZF2+MumhU16kVYDeHI5z86Jzzol7yv9Tpashb0s2KlgquCHE1cfQjsIq
 3nBGQ51BNSZlQ6WWjcS0ov54OcwMtKfcfV2q0XbbHY6jwZQcvKxWhVVMlSLO92FEY15B6XJpjRb
 wcU2c9MXLVpVJiw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235625_872850_49712DFA 
X-CRM114-Status: UNSURE (   7.05  )
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

Add the missing v8 register offsets needed by the eDP/DP PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
index d3b2292257bc521cb66562a5b6bfae8dc8c92cc1..7143925fbeecd9586d27ffef98ed3e8a232f39e7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
@@ -33,6 +33,7 @@
 #define QSERDES_V8_COM_CP_CTRL_MODE0			0x070
 #define QSERDES_V8_COM_PLL_RCTRL_MODE0			0x074
 #define QSERDES_V8_COM_PLL_CCTRL_MODE0			0x078
+#define QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
 #define QSERDES_V8_COM_LOCK_CMP1_MODE0			0x080
 #define QSERDES_V8_COM_LOCK_CMP2_MODE0			0x084
 #define QSERDES_V8_COM_DEC_START_MODE0			0x088
@@ -40,25 +41,36 @@
 #define QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
 #define QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
 #define QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
 #define QSERDES_V8_COM_VCO_TUNE1_MODE0			0x0a8
+#define QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
 #define QSERDES_V8_COM_VCO_TUNE2_MODE0			0x0ac
 #define QSERDES_V8_COM_BG_TIMER				0x0bc
 #define QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
 #define QSERDES_V8_COM_SSC_PER1				0x0cc
 #define QSERDES_V8_COM_SSC_PER2				0x0d0
 #define QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
 #define QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define QSERDES_V8_COM_PLL_IVCO				0x0f4
 #define QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
 #define QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define QSERDES_V8_COM_LOCK_CMP_EN			0x120
 #define QSERDES_V8_COM_LOCK_CMP_CFG			0x124
+#define QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
 #define QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V8_COM_CLK_SELECT			0x164
 #define QSERDES_V8_COM_CORE_CLK_EN			0x170
 #define QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V8_COM_SVS_MODE_CLK_SEL			0x180
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_1		0x1a4
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_2		0x1a8
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_3		0x1ac
 #define QSERDES_V8_COM_ADDITIONAL_MISC			0x1b4
 #define QSERDES_V8_COM_CMN_STATUS			0x2c8
 #define QSERDES_V8_COM_C_READY_STATUS			0x2f0
+#define QSERDES_V8_COM_CLK_FWD_CONFIG_1			0x2f4
 
 #endif

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
