Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB751C4321E
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 04:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUmVZfpmwOJKvzUWIyrf8urNcvalPmWUoD8nJHLU5JI=; b=EOb1EvTP6JqRT7
	zGx/DjlYWjTA++DPj54sHv+VbCd+/W4+2iTDeIXs21CHaPDzk5d7Wb0Cp6z/jG3CIZv74yprqgxwU
	c3sMC9tqR528pvA68CXtAS7PmT1uEP3a+fyUan7V+NW0N0fs6PC1vYw+U23l3RjPsRTyk7VQEYys5
	drvWpVe1bWVuFlQsyhcRkSR24l7U5Pth0R4rgSX0OYIUSewbhobqMYiEzO8tut3M+5ZfBG6ob02dw
	jBXqiFBePvj/CmVSNb/vPUg4OuvqDiherpmT2FzmYGzQXATEpYyRa5nby5rG2PJLeUdmZMYNBr4vp
	nsu97qzVlOT+PCzKTPQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMjRr-00CnYG-6O; Wed, 23 Feb 2022 04:40:19 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMjRm-00CnXI-Sa
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 04:40:16 +0000
Received: by mail-oi1-x234.google.com with SMTP id i5so17005237oih.1
 for <linux-phy@lists.infradead.org>; Tue, 22 Feb 2022 20:40:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XiUxUsXWoDSPBkoDa65L0Qpfkg0qt8UeOBJM//CPRsE=;
 b=aa5BbAbSu6x3X7MiDWb43zozBEWAazuwiR4F8BBZXQmIukJ6AevjJlCHIPuka3PYQM
 ZjfdlnGcr3KRavbRRoi6DwUOlP6DYVN7RJ2bRYbsGuPYxdg4IEgP2bvjdGGzJ8Q0oumu
 I069ctxgJ8QR2a+CMyuuNn70Q1FA4CqxKGpS7GbkF5yQC+oaCouTU+s0zCzrHPn3O9kK
 O2bmo4J3LyWfvBw1m7HrCQOsN8+hDNz1by90EO/FGKCMvuAs2mG1O8vNRS9gE3PvJ/YK
 lFr8khCBl4ST6jesWOm+nipXt9ZTC9XBCjoWzNnB89eE2yoO2jLSwJ1mtC9StHdBmkxh
 WqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XiUxUsXWoDSPBkoDa65L0Qpfkg0qt8UeOBJM//CPRsE=;
 b=aeCB2J5DZJuj0wciMOtxEtxRd9W9hgeAFhHHxu92nkXfcAe1y3XoUPMAkPaki/xUHC
 njHErKdRcSgIJJ4zrExskYYo1LiiduGJ+LKxF3ogznNnNeh+RyRmbD+Ayyg7lk0M6ddh
 Pd6Ya6BI5Q1ZNv3FUvRr3Ztxpq3aTdK9/5vnE/NOvAXU47xodLbZmA9TThDWEjSc4W3V
 xjWBz0PrJGUcdB8i+8GkGDSb6HPYCaZ2PrNAl454glAMvSck08XPp/qJ6Z9EVXU2GdmR
 mEkEcNKppllQJibfzWxpWBxUyMEdxFMg4vh/T9xd8Hw3iWMHrRGZisEeAjsYA41OGAef
 XvyA==
X-Gm-Message-State: AOAM532fe6U5ewqg5R6MzZU9HirqsfsisnVJo71LOEqh5tsU8FdMO1ep
 K1d3S8oK3VMSGjOyQmlk7cSgkXvqBIPo3g==
X-Google-Smtp-Source: ABdhPJyP0nyPUXhj10ErDAzhFQarkRTaVsanvEHsiXxxdAeCMKTQZHa0SlawcezkX1m/UMXsKQfx2w==
X-Received: by 2002:a05:6808:178a:b0:2d4:eef:144f with SMTP id
 bg10-20020a056808178a00b002d40eef144fmr3748077oib.225.1645591214001; 
 Tue, 22 Feb 2022 20:40:14 -0800 (PST)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id x22sm6250033ooo.20.2022.02.22.20.40.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 20:40:13 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] phy: qcom-qmp: add sc8280xp UFS PHY
Date: Tue, 22 Feb 2022 20:42:13 -0800
Message-Id: <20220223044213.3776600-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220223044213.3776600-1-bjorn.andersson@linaro.org>
References: <20220223044213.3776600-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_204014_942594_9A390D91 
X-CRM114-Status: GOOD (  10.25  )
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

Reuse the SM8350 UFS PHY initialization sequence to add support for the
same found in the Qualcomm SC8280XP platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 8ea87c69f463..b144ae1f729a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -5977,6 +5977,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sc8180x-qmp-ufs-phy",
 		.data = &sm8150_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sc8280xp-qmp-ufs-phy",
+		.data = &sm8350_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sc8180x-qmp-usb3-phy",
 		.data = &sm8150_usb3phy_cfg,
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
