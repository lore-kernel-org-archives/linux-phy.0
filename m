Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DECD1CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 10:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7kwZ9M2zCzoo8qO0ZjVjb0YfcHIHMGKtPAIpp2Eizg=; b=cZfId/ZEgyzhhQ
	Zp8+VGCljJClFnSRqqXVO+5Wb0vYJ5QXcyiIeupD0cK5ssCTAXY88YQH8o3PIR7qPVnJihxRTcQOe
	170EU1J36hUhJQyIrk/mUVaQXg4kwBmzEjen4P2xNEBxTh/XN1aKv2/R4GhRyzJ7t1I/4i0QBhlkE
	L62LdYLrwd9rQL3o81Sd50Cbsw4gLrP8CBNfno9cNzwmGs2z2DbAqKaRrPF35S4iwrQ6N8oOv1J2r
	6XYna88YxJuN8+/pvKOhVWb0JCRxuYcI9aXUSMLbclmA8EeaMw0Owpn8qJtMs8yV2PSADAqctRkln
	7009KPB1LFL7KHD8DBcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bs0-0000000Frsx-2oJA;
	Tue, 14 Oct 2025 10:03:04 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8brx-0000000FrqD-2deL
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 10:03:02 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-46e52279279so36481355e9.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 03:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760436180; x=1761040980; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oe1S5QdAgZ6PQC+SmWz8IK3Ii5YFBwtBoAcJ3b2LeJA=;
        b=nX4tJdfKDIS/dL6p6DVwa+MBQ6hHmWfTPgqrBgBtrzzu1TpkTrK5/e1+7JL/B+JIM+
         i+CZ3XThCtU757OdhZwW+nQyviqDbcYrvPNP5XbrVVNvQyCbDm18LlSXfm/Edb0SU7R0
         2FZUw2HU04DkrGI2Q/yIuUawKiOgztIP5pDnMpyfrGIW6Y2YJUq5daj0aaQuzC3HBR3a
         fbSEp7CFjTWZ11IY7G9Uo5yfNrDavOzP5KtRbDBKHIRsO93WCKkuL/ZzZd9zCLTWTZjB
         o3Iu/18JklsPjBF+f6MyFi4eguWNmpzb4vHT8hdDMPX2SApqOT3FCTnI2kVNPGgatop7
         +nGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436180; x=1761040980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oe1S5QdAgZ6PQC+SmWz8IK3Ii5YFBwtBoAcJ3b2LeJA=;
        b=E+Ts4SSfZYnlGdDKgQcxaXFWUn1RQr+8y5/XXiEFyJpOgP3fA1OK8qIPMJc7ncT8N0
         W3ex3uFEKdNVspMLuCoA2ewY496h1wmpCjKZzkgoZnbqv52HvnKzKcRWISNkEwkp1Lfc
         LCG/RPz+gbytA52kcCzBEs6EA0kkiSHdd/iFGAwLtu4CFEXLOQxx7hXCCHgdCA3YzByU
         HG7mmhdoa/MDJwk6FuipS7RnDm+b9LUeagd9hvAbnOYZFxHgAkmU+XYn/NEJ//TCI7XJ
         z2oOTSJUSS/+GpjWmUK6oz94L0oikumCIMDuKUz4J+p5WBTURBUzywh/P+L8ErghAdL1
         4Bnw==
X-Forwarded-Encrypted: i=1; AJvYcCVeXxmOjeILpeUayrv0fo8MRj7eNNMLsU/0Nbasd59q1REYUC07klEAk/gxOXgJdRnCq3sMY6BIYBc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9lGpXBXq0jKmnSjH2pNeEhYTNq7GCG0MtHkBEsN3awT4ZPO7y
	EJAMePQQN4BZXTNDfDNJkUNIlQeRjcBiajmihd1LOPino38BGsNr8xOIo9xCAQ9UFRQ=
X-Gm-Gg: ASbGncuBwGvrDVrINuBtEpB6q3N8g14sIGTY6soecYNHT913gU8OqZRYyXN4QJCcBg1
	DDgSw/Xuwvs35MImOmAQXxbfpb4cGhNz8PIh2YiunNSRvoR3V4+TTLmLsMw7g13NhX5vnCu4dPV
	E/0S/bvG91fWGmQW+PlcUUnsDacFqwV2DEgJB3Z60EkFU8nGxbULG99caWMEuDtsWDXHuCXwdAm
	qsWQCTrhwxEL6xEYh71jWajC8q72Tz6jYkUPquPoL7FUU8MMLpVKcdq1N60QEfyVdl60lT+8ooZ
	pBVS2jmiyJpJw5tmYfsAktGN4ynh8q2lxTBEI9MLY8Z8agErfDAHJDWW/Seq6fK2lODfnMEMIKp
	lLwZq/TM2mUioeXyKMUCYAiJFibfIv+ey2beW935denGYwpqzbM49KETwSL5Z139/
X-Google-Smtp-Source: AGHT+IFXQlAiZxUpsOyWjLYxCb+pvuSYy9txnYsOvvpPOnU09dHCFC7P0rFzgIwqYP2wrZy+bzd05Q==
X-Received: by 2002:a05:600c:4586:b0:46e:4883:27d with SMTP id 5b1f17b1804b1-46fa9b079a9mr175260475e9.30.1760436179564;
        Tue, 14 Oct 2025 03:02:59 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489197dsm239615305e9.10.2025.10.14.03.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:02:58 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 13:02:29 +0300
Subject: [PATCH v3 3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
MIME-Version: 1.0
Message-Id: <20251014-phy-qcom-edp-add-glymur-support-v3-3-2772837032ef@linaro.org>
References: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3130; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=BgmhdRMvLlgpN/7k6aQQi92mlj64RE1e5APUgFOVVyc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7h/GA0vAQpCOUSzu7GQbh+2HdAfu23u1UpDub
 WitMODqp7GJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4fxgAKCRAbX0TJAJUV
 VuN/D/9IfUrD89o1znhS/+WIZEUUX22u6tBBNtCfgoIn1xFZwEHQGZ4Y8rqqdj5oxvsUHw77llw
 iLVkZz30oOmeWU/L6ekYL5QKZtfaCLkj759plcykOir9hdj8ZorRWgqgYqk/wNNAeOGBJDjKoj3
 7b/bkrCnH6oxnKT/QSaBUT6BJXImE9hGNOau77blIPM9fxOaHMCJ0GuHZnqW49IWE0mQ71yKrCy
 ZrDu6nIdS5jAC8VfrjVITCHCSfEEyP/WqRhLHcuHxYB7fe38z2QO5F6SrQDdKFnaVF6dsqJT+p1
 dyzeuwZdM6VqZ/P51IatZdyGP0JN6sewENPGo183lagBs2GXx8jABFeqOhNNR2D1yZ3rcVFr+Fz
 MwcM/b+spsB2IfyhmyPbw7+Gl4ZlYjTDfFSjvPmMjY/kEGn/gachZbBqBispFHTRbXURxIsgp/5
 9ni3B1lhmd9BRj6kveErpT56wODedqJJUisCkXLkxgNW2mnvY874EjPFw8cpBu0DpxDfIk6qVNI
 X0I6tyyHO5wVPCCxb7M2JMtE+8X67oOUYSUZVPzPWSSCBew4r4OYcefC66fzwlAhCLUvRVR3msX
 /s9ys6tIFBvw4HhZsRBbmNvCy69iFvpYGCww6VynwmA6iOt0Frn1jXJ1sDJ+VHBJcDhkY2Zt/gg
 qaglYmirNyQHdPQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_030301_709691_F3093288 
X-CRM114-Status: UNSURE (   9.34  )
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
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
