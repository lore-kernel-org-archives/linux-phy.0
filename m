Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3A9DC25B7E
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1ytuQQBxcTzEG+hu3ZbSlmKNDvKcYlJ65NJEVWEe5k=; b=n0+8b0XMsemJ+f
	psg8G8HQSgKVscow85C0W+qrcSY2XF9XLLJ9vbJ3Y7iRSnAI3SVjyqdVcD0lnTg62mXnzg0oEp++c
	UQm9d3/o9+E3WxS46bIk/yQygcRNlhT6Aim6UEYRdLBgPQ5HNmBOIC6i2Iqr6qF0x564Rh+sT1YqX
	L4nDlnBSfP8Ssa9WJ4O3DMwmvzmgcrr8a+P0dBhEc2OTnwRGdElBkoVi73yu1inGcQBdzAXcFVD4l
	Ih+mfs8IX8nbHunqK+zpT8mdzVqpV/TBwvSTHwbrKdrpRiom3tqKHxtdgj3/bwlMTNMMzS8VEnwD0
	+EsKg36fiIopeIe7PBlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwT-0000000EHLG-276I;
	Mon, 27 May 2024 08:42:53 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwQ-0000000EHHA-0mb5
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:42:51 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-354c5b7fafaso5205794f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799367; x=1717404167; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5fM2JQC49aLohuvAOQ03vLAtXJ7DuKlglKcrOA/6ES0=;
        b=X5zSelyfmxqgjdHSPwCCK3UIoImsEJhwS9gm/yHdqsy7ImdJSptwRW3CMJof1EZnXO
         HbUnmWZYId98wCjou+N1hHzs/OxsvaEfqvac/24N4dvA+84OdvmI/NWSzT2l9Y3pGbT7
         1hueZ/df41y4mwEIFAFLeWyfa106GpRjpEQjj4NGLKuwR/mSiw5RICEb68ftqGcnjdOj
         4m7PCwbbD3HNVHOcjWVgD+sCTWOoYi/Hb/qtS2b2RagoV6YD3kL5VktHApIGnQYy5ner
         IwZmw8cqbDlOespoa2cDWftcQRq7utB9PMwpvlxXaFtpPCy04JnKYlvMktjC1bz9V+cf
         PtQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799367; x=1717404167;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5fM2JQC49aLohuvAOQ03vLAtXJ7DuKlglKcrOA/6ES0=;
        b=Du3nBkiy2U2GoP7JR2QW7yr5lRwOxw8qkvZNtrFPM6j7Ho7AVZIeWPqy/XwTz/hmx8
         3bYrZ1uOAgEbiCba2zf/m6EL6CpaTuegI5wdSg6wnSec5XVa+sVg+2W2zKfXMAGHlsTT
         zgOkVlJ5BiknHRFRGdfO8yqs5mHzuhCkzQszZXxf5XAWY5qBDS9ldPGZyqKtaQ3iBdeY
         d4ZQnIhs+kstK5iu9X51oRduORPyHISaYYIC3G6ekwbFUmfDP/zcTYfRptmLZa9FtdVl
         +iW0OtAL1zez6izSGWkW0k7wxXXlJk6j7kfOfbaVy78hPRM9GMuvPsJjZG09U/At4Ikb
         YHWg==
X-Forwarded-Encrypted: i=1; AJvYcCWkdtraNoWaBYB7f5gs6xuJ5l7x8gO3m4GthSQ6cNz2Wsy4/niN3gFUtca9ZlO49D++DgO4zTR9yBsJBMiRk4A8ZAjChCu2n/w9xBGpRA==
X-Gm-Message-State: AOJu0YyxnLaO31xMYQQSmp9wPzU7cgMsd6KOiM4LdV7+BLTjdkpA+fMi
	7P1xM7BSPQP/jYhCfluh6r1C/kAZY7EeQJLRIiohIB2gA8c8a7DKwxthJ0O8NBdILfGtNLpGKb5
	QTb8=
X-Google-Smtp-Source: AGHT+IGa1M7vqlIE1C58dap0MUYea0CUqZITS59MDPsSM5pvcClAnYC6Q9OxDuJHFWpJZfB8rOdMgQ==
X-Received: by 2002:a5d:4382:0:b0:354:bde9:e286 with SMTP id ffacd0b85a97d-35526c18f20mr6513910f8f.10.1716799367174;
        Mon, 27 May 2024 01:42:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:46 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:35 +0200
Subject: [PATCH v2 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
MIME-Version: 1.0
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-3-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2828;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=64NV6QzxOvpeyMBuyWNXD513V021rtwBykr1hxoHJD4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEd+Iqk2CoBGSG/vvhX6fqwQ1IgBdRIZAOChhnvF
 X/Z5q7KJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHfgAKCRB33NvayMhJ0VVkD/
 91JOyMvWaIuisFv1fb/z+0SJSAlcj9xc65JF+wOjXsIhJ8j4mVlCyUcYfGOEN011OCzET/GZ8C8GjX
 Q8GVS1X2RTKmwXwNKsULIdwDnf5Mep/go2GLeUBhTG+MmwelkjWV8fkL6nubsBzsy+0CCVIdd1GIPm
 5COBZQEzS9RAqg2xEBGvFkwQ3SbQpfCGWG+DUXiQK/KV09U0ygYpTkP/udnODf5wdzNC8qmvqFtQ5v
 5mUzE/al55I+TlLnkoPEmWRCuYfx1p0S8tS7uODLI98mwOqCqcSBDtoLpBN8KxZFVcQDJBgC1ytoqB
 GxsyYZJUBkJd6ahagAOb1tQsh5aRtqzw+rPmorQmL3ngMR6A4z81ude3rjs968fYU9vT5CrpGxs5Wd
 68c/H4ycD8Zn20dQnnFatuLETOwX/qEdMonl3aiS0qMvBSkn4vXWTxooWBvsTN4KZTczwE6jhskaJp
 yTfnYkekv/8USAKiS/xT9zfRnn9bQRfv8zwdnIWYKJHzxlOatzCpZoe5bGqJwwUziDipdTr3ZoMhMV
 COkGCTRVZx3RWyd7sUceNCgsUg63DqF8D5/TBlv3EjC3EaOCkaSY2dBMk/GxUPFMi1qguU51YBpPow
 zxHNEsGQkQcimqSQfU7BhOsUGJdHVumRmYWXxOWx1Q1e+yt59QB5iNCMvFDA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014250_291335_FA27E799 
X-CRM114-Status: GOOD (  13.81  )
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

Introduce an enum for the QMP Combo PHY modes, use it in the
QMP commmon phy init function and default to COMBO mode.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 183cd9cd1884..788e4c05eaf2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -61,6 +61,12 @@
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
+enum qphy_mode {
+	QPHY_MODE_COMBO = 0,
+	QPHY_MODE_DP_ONLY,
+	QPHY_MODE_USB_ONLY,
+};
+
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
 	/* PCS registers */
@@ -1503,6 +1509,7 @@ struct qmp_combo {
 
 	struct mutex phy_mutex;
 	int init_count;
+	enum qphy_mode init_mode;
 
 	struct phy *usb_phy;
 	enum phy_mode mode;
@@ -2589,12 +2596,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
 		val |= SW_PORTSELECT_VAL;
 	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
-	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
 
-	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
-	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
-			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
-			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+	switch (qmp->init_mode) {
+	case QPHY_MODE_COMBO:
+		writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
+		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
+				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+		break;
+
+	case QPHY_MODE_DP_ONLY:
+		writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+		/* bring QMP DP PHY PCS block out of reset */
+		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
+		break;
+
+	case QPHY_MODE_USB_ONLY:
+		writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
+
+		/* bring QMP USB PHY PCS block out of reset */
+		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+		break;
+	}
 
 	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
 	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
@@ -3603,6 +3631,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/* Set PHY_MODE as combo by default */
+	qmp->init_mode = QPHY_MODE_COMBO;
+
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
