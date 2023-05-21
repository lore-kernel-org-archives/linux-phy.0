Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5527C7EE2E
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVJkuADXr34ytcYLUOCJovReI5Et1aLkNYJ21cgHWEg=; b=mC1LXtFKZAh9bP
	K6V1m016bNUqRAf3ehVGPq/AtXFoO9R/UAJmZLFz0+xFAjwgIlSRbTfnqcLdUy5DVltRNy7RT6TJw
	JdJgE2GQfKPqJqLtA5GMnrjUy1DbN9HC35WeoEwK1scfPIwXinwj1wHCwxAVHEekXWAkaIy0jLMYP
	mqEuTtjRzJrjYR64t6TrB3+f8B1grLqiU393J9nX3FgdDGGk17DCk77dfZ1JVswKB5zLCPIhVGazm
	piTx0zwhVxe15H3qfcKPz18JiMIxZ9DY92p2tm3w3gUj3BngndKa9QuWrkcAuCH88YzfdAQeWLc5b
	XV6lwaLpgMvvPIQEq37w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qd1-004hni-1P;
	Sun, 21 May 2023 21:30:11 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0paR-004b83-0E
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:23:28 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2af177f12a5so44680621fa.2
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684700605; x=1687292605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQ0L2Drqwzx0DozTpn4Pnj3avfqnV9RfvJ4lEc7SCvI=;
        b=aJ9FMgl4d12w7DeeIbmgNA7McuDxO/mZg1TYiSdQRvjl6MIPvjQ6rTyakszRdjQdgu
         8fP3fBpbVP0zD6ALLZHxiU373eFLPVrR4g89+yjqzmZPnuGduWOlnsQSqzBUE8uZjvwo
         ZUYIWBLNB+w5OJbhkHC3x3TWQQOn14a/MbjjOxSQ2h397+ogOKRxovkuSYPslvg4NbGV
         eB1qBix/+q4dmWsO1ZF8eMKWs+lNd9N4iiM8XLxFYY6t61gMxULiMLWDWmkVss9qs+yw
         WISp1PNLzy8QeylVpZPo7RD4O42c5eGDs15pocdT6K0w6AJbJSUZOeiTU/yCv/8br7UB
         an8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684700605; x=1687292605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FQ0L2Drqwzx0DozTpn4Pnj3avfqnV9RfvJ4lEc7SCvI=;
        b=UhJGbCTyNfR0kJMeEvvsHqZRs3tKBZZa4i2Yc0XmRXZzpdxpmt2Z0/6A5X3d7eMk7m
         cvQ8lW93esYuNuIK8NSSkglSDOTnTAxqtpVezOigv6hpzoaenpPMFFznhkQGdA8Ky1in
         xEVMEKo8xSK4G7Ni3rOut9PVO9ts9LideKuqIJ6KCaCJbR0Xs7zfHP2oFBfKU7VauceO
         Q4OCaerhTMAj46aPqvqBzY92aW9f4tCsuyAydHwr0x2a/vwjzbsKUtPVBNakReuADa+3
         y1FFxdZCP4Wikp91YSBJjyNPOpyofc/5f9qpZDBJOmndeBWfqsdMElsYxwxL5wyKjxBf
         Rfdg==
X-Gm-Message-State: AC+VfDwzrl7BSZBh/RrOOTQdfHOwSRZayj1lrW/YvShC0iqJ19maGlno
	2tWNUoEI8Jm7vKJ2qFBsHUaMDg==
X-Google-Smtp-Source: ACHHUZ6XH5LTWS5Ff18xxtxYiAM1ZDFjwO0mEqTYkjkA7CjOSLziXqhMhrwTf7MnL/kd/FI9THyRAw==
X-Received: by 2002:a2e:9215:0:b0:2b0:22d9:155e with SMTP id k21-20020a2e9215000000b002b022d9155emr301165ljg.41.1684700605448;
        Sun, 21 May 2023 13:23:25 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e91d7000000b002adb566dc10sm835589ljg.129.2023.05.21.13.23.24
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
Subject: [PATCH v3 04/10] phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
Date: Sun, 21 May 2023 23:23:15 +0300
Message-Id: <20230521202321.19778-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
References: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_132327_110986_8F487DC3 
X-CRM114-Status: UNSURE (   9.00  )
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

Add separate device entry for Combo USB+DP QMP PHY on sc7280 platform.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 8dd635d02982..c81b46403622 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3585,6 +3585,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		.data = &sc7180_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sc7280-qmp-usb3-dp-phy",
+		.data = &sm8250_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
 		.data = &sc8180x_usb3dpphy_cfg,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
