Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32538C77B6D
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 00:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vK9MVrMHJ351wIar9zFUZJfLyHWlX5yN6QUhs0F8DSw=; b=fd9kkuOsTSQyEZ
	oUJYgIB9TvDBuSggWD9L5novau8O+SbV8MYD6rgS1ug+TIPsNjKDKZDY/mOQMQW98N+WmOPwPrugw
	RnGU6MlYaAXnpXMn+eMrskCL9nacSshozwzlyxn5ZB2jG3uSjXC3eZ7Msw2pGt2WFFo9NL3ELFouK
	OSDX6WQSz/iG7ob8vSk93Mqpj/Tp97qJCkfudf/ayY+mrQPNWlIob2MtIUa6koz0JHdApLAkafOTS
	YkU9Wu3fHU1t7zQ1ZnahqZXEzqxz75Q4bHuUnmhYV3PAtbbUvOtThJPM99q8YgfUCiC9kGYk5i4dM
	v0xM7gOpPG1yW1fdRmSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhZ-007jsx-2E;
	Sun, 26 Mar 2023 00:57:41 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhX-007jpm-0S
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 00:57:40 +0000
Received: by mail-lf1-x12f.google.com with SMTP id k37so6991185lfv.0
        for <linux-phy@lists.infradead.org>; Sat, 25 Mar 2023 17:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1cviUGkrb0ncjbVEvBlggYrFLKN/luXhn7XONBztpvU=;
        b=qvpf6tljN5y0PTflN4ZQCX9S+YOEguJ3rbx3jCIhihHFXbpkHFciUIPisVLcxxsk7n
         Dznc1qvIFeitl5w2DNwMqv49aTyEbXD/9JE3nL5t4SJV52ncktIu5nXlqwpR7ifCW9zV
         BekLgSNAqdYgYkl92VizXcRLBr3XfHjcTkvhaIdfpQ7z8jqxgZlSeNToBnmIpilwniGy
         YqLtcq4qsLiEQCPNlOQ9v1DGcepGk6XbkA1R+zCjUxk5hYXepPepuG0i6Q5PXPklDzlt
         1rbS108BzXr5jxrhDe3IA9s7ovlyQNbA2qPSXaTQulQQiTApAkyoTOd6OTmc2wMHWy1/
         tFcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1cviUGkrb0ncjbVEvBlggYrFLKN/luXhn7XONBztpvU=;
        b=6uM+2KVJB86XSO7A0VNuv7Y/jTSEU3pAEBiItVYCvR58DWdsfC9fJU27Bokfn+2fU0
         KBTnyn0cfpkkV3e37N7kqZqjYfkIwOcQ1N0qpWt06a0tLO55SoqtQJZTgSKymsh8FVNO
         dRUcRbEijtcw1RNzsenuOQ/+Oc6e6WPKMYD2PEnvqo1z1ulxqDdEo2ZlIbNq4FCTwc6n
         VjRHHrn8EscMeWiM07GK6da0h/bshYZYsJqVTbZsTbefx/jKcJgYdSjsSgDUFUx9/G3Q
         yuWkz3g4gKvlWlkzy9zHYpG1bcBGI+ekkvj6IjPtDvZSyGjlaP1AgPsL1HxYy2dhHgG5
         /mTQ==
X-Gm-Message-State: AO0yUKWd2O8DOuVvBV3AsxX4wYR1Yox7Cra7hdEW/L95k6xCDv1okFji
	K23C8tEpaRG0S1fDBW0q3P3KiA==
X-Google-Smtp-Source: AK7set94A+4cm1/sHNxs0qdPCnF6youNs1/OhwBvzTBNVM7jWrCMXn7C4XBJtK8M7Ca+34Xkvn05VA==
X-Received: by 2002:a05:6512:33c2:b0:4e8:3d0:84b4 with SMTP id d2-20020a05651233c200b004e803d084b4mr4573092lfg.24.1679792256323;
        Sat, 25 Mar 2023 17:57:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n13-20020ac242cd000000b004e7fa99f3f4sm3996858lfl.265.2023.03.25.17.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:57:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/9] phy: qcom-qmp-combo: populate offsets for all combo PHYs
Date: Sun, 26 Mar 2023 03:57:27 +0300
Message-Id: <20230326005733.2166354-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_175739_181398_94BEE8CC 
X-CRM114-Status: UNSURE (   7.98  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index d35d80f2a4f4..5ce68d211998 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1407,6 +1407,8 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 };
 
 static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -1450,6 +1452,8 @@ static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -1493,6 +1497,8 @@ static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8150_usb3_tx_tbl,
@@ -1625,6 +1631,8 @@ static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8250_usb3_tx_tbl,
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
