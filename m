Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 519A6C7EE23
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v49iEghqWMNTaRnHXScaYYNC3gq8wUhNemN8uzgKwp0=; b=I6DieFpO0y9eQ1
	qsRGUmUL7af9F07ZYvKttpMgZxa2h/J9/XbILmamp8AqRygt/OzbTpdOJXYs3OaIWCO0OHIaxW0mt
	kh+eJJQihcT0OQ1MKF83QEsRsg5gk61Bahqo8GxbD4bV9I22RgdXTUg7BDMTYsDTYpHFiHcy60lwA
	+zRq9QbwAS+qwLMQfvBIL6kyWFlazOcxldIHf6liyHJMm3MYhCSIiWzU8vI7/cbOSmPsDN4S7qoVr
	qOsNBWIYlgs56AXNh4Cs4UuEEAfrQyxwrELa42C6IqTDho406mngYoCNDcywuKJnhqE7Q5gx8ttul
	FYXFdg3UgpoRv3yHxp1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qd0-004hnQ-2y;
	Sun, 21 May 2023 21:30:10 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0paQ-004b7a-02
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:23:27 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2af1822b710so45220431fa.1
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684700604; x=1687292604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M00N+3lfhDX9ffeYU+1BBaHluNQGUr4bDH80GUz1c5E=;
        b=KgcclX1wWb/XQkVtjVGFy26iFnes8vn3hhqeSyld7ezuuhA8wEL4KmTfruLoswKWEp
         GdFD0PRIjmYEWjFS8GSs7ZkefVnMvNooHQy5IdMWyj26SZevRyPpinBuqGFGPWNGEnys
         w3P8xDMj8JyK++xWm4AXIjsUPTlzSB5tsp6SeLuUQfboxUUrF1cCJb1HweM8dPfM/TTf
         5FOFPlkfXHo44qBqlNoSUqBVJ+v1Uk5QR+/LMyUDcjtRduWlVTGLCxIEE1CxAHaiQR7w
         KD/xNHJw0Fxuw/XYTrljZ6irPR/nL7QXjHT7RLu/xxuaQVeOMx+x7FeFidZN4fxzaJYt
         u01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684700604; x=1687292604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M00N+3lfhDX9ffeYU+1BBaHluNQGUr4bDH80GUz1c5E=;
        b=LeW/wv5dFoQPnciYyYuqFQW/LQ6nTko35KtMhmMubyFFZsSQegRpexu6Pbmj5u5jeB
         mIGPngRSY5pd4PzPRQ130rzd2AQ6a48NcUfr5WAvWGeWm4yxfX2yyb6xU5qVtLWeW9zW
         xfw2dI5FIstkqy0agYwon2Bs/sEnT6VR7RTB89cBA6NeWYXMY8yBepusvp4UVW8QyZot
         6D/DP9KLIUBNSlSlscz2nHjEUiff5qp3oeY/iwGNUHI8R3gvQD8qUpNeKDwKOt+BuZk2
         ujviVp//y5/2Drps82SR8hukymzvxbbNJ+Hqflry4c8KrJ9xlRNMvN5heBFHNklgOPKe
         sorw==
X-Gm-Message-State: AC+VfDxVn29J5qeBxvUzxGkMJMRb8GkENyFiIdVCHc2S7exCsBSGfAOJ
	7URaLR65/BxPwrCWaRbzDqiqvA==
X-Google-Smtp-Source: ACHHUZ4zu9AK23JEe7D3Qm8xyPk6riWmq/xYskTooNyGA+oh5FenpL0bquxiFMs/zgKkBifQN1ckGQ==
X-Received: by 2002:a2e:9916:0:b0:2a7:77c1:87e2 with SMTP id v22-20020a2e9916000000b002a777c187e2mr2980293lji.34.1684700604669;
        Sun, 21 May 2023 13:23:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e91d7000000b002adb566dc10sm835589ljg.129.2023.05.21.13.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:23:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 03/10] phy: qcom-qmp-combo: populate offsets for all combo PHYs
Date: Sun, 21 May 2023 23:23:14 +0300
Message-Id: <20230521202321.19778-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
References: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_132326_049121_D7DEDC0E 
X-CRM114-Status: UNSURE (   8.27  )
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

In order to support newer style bindings for combo PHYs, populate
offsets for all Combo QMP PHY configurations.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b04392be2e3f..8dd635d02982 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1422,6 +1422,8 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 };
 
 static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -1465,6 +1467,8 @@ static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -1508,6 +1512,8 @@ static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8150_usb3_tx_tbl,
@@ -1640,6 +1646,8 @@ static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8250_usb3_tx_tbl,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
