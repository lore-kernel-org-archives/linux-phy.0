Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DDFC25B0C
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 04:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2qPkc5MeUxFdYvoppRl8XCiRS8LDKrVo43cgVFrK3s=; b=laPkAhMcpv5AxX
	BagjBltoWS0VnyBl59T9cXLe6O/UCLAOrFaVIB6WMbV9dB4xZmVjbzoh/UuDUCq5rDHEqRc/6thJH
	av+ukb+DWkpeUrzoWjGx8YQTCKC6obeufte0rsVP4cY23BwF5yOFW/4fmUj1WpxDJRqXbgf6aJsHD
	atUvvWjWQePH+CynMzrakR1EPuC1bdmHDE2+QjO6zaM1xhiQAJDVkZlGjcewxxEmNwGvEqGtG5XKe
	z6bcIf7yL2GfwkTj+RThOmIAi19yDq0UKtcimPKfkjZS9D8QcmGLz+XDmvC/5Wqct+zwsOC5Ted7K
	ZR7njd5uKFNtR1jYnANg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy3-0090V0-Pn; Wed, 10 Aug 2022 04:05:15 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy0-0090RG-Cz
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 04:05:14 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-116c7286aaaso545392fac.11
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 21:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=cH3gEx8fSSVvttzCeah2rBVrmjrn0CZnJ9l69q/KYmY=;
        b=NGQOnE3UkKSNmdlloSP6/pskV7F60rjNepp4GAstvay9+NQ7eYpEi6HgRaf1dbOEW5
         sRM6H78LrFfMKuPQQ+kx67Wfu/ZPeoRcnsjjESolzEdPGGMCiYspMtHEWtWwHRJgZq0b
         CRSWEKuKc6OtJOEFslLDbl1caYV5rwSRjIwYXCc7nOZCbOALE43rAV3RtZFgBgo4pY5H
         3p+uT5hht5KlPtCw14hqylZKyAbBVVAEWn1htr8XdOs0ebwYe9Szu89rDOGjHmr6bXpJ
         4CP/2x5ob1XGTWykZRg4oG1z56IOCO/uL16cvv4xzIaick+Hb9Jh1j3Eve2ApeKeLFGQ
         +eFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=cH3gEx8fSSVvttzCeah2rBVrmjrn0CZnJ9l69q/KYmY=;
        b=G/WDn1YGZ4u4d4dluU/PJOBpHy7CHNHYzwjnwQb0+taW3RUpL5Bp+W4S5WJFcm0QkA
         ZdY8yXqC2GcvdbYFiKBMJh4z16bNx7tnpsBmuZLqsRyJ3JQ4NwxlPyioDU/3D9w32rQx
         0VlMPQrl9ARComi+iEB6ul5d2K2AY2b6SM/AZXvNeAV0miWxWlu2ZzKk0CMb5lzkQoOM
         Sh3npWec+5mK5O3x6mmuq+bS6PPJ5hp0O8nPwdNH+FSW77/xZ9V9+FDiM0RxjIxYropy
         7+B/A7lOffvzC64Pfagpwx299Qo4eAVZyE28DPhX6sWDEI8WFTJatIg12/qSq7POlWEZ
         UDEw==
X-Gm-Message-State: ACgBeo2nfC6Udy5yFqZuYs8HVk07hWDb6mvFgrV0cKch3Avv5LgmT5D3
	blyOb+wKWLNdFBTI/B8ZeCYdZQ==
X-Google-Smtp-Source: AA6agR6o2ARcIuuuo86XC0au9dC67ExmDYqSy3iCxd08Q8BeQdcm35NOsnIDmRNUKCYcLUn4xlkntg==
X-Received: by 2002:a05:6870:310e:b0:113:a9bf:57e7 with SMTP id v14-20020a056870310e00b00113a9bf57e7mr668647oaa.219.1660104311205;
        Tue, 09 Aug 2022 21:05:11 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:10 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] phy: qcom: edp: Perform lane configuration
Date: Tue,  9 Aug 2022 21:07:43 -0700
Message-Id: <20220810040745.3582985-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_210512_474680_7BB5FC16 
X-CRM114-Status: GOOD (  11.11  )
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

The TRANSCIEVER_BIAS_EN, HIGHZ_DRVR_EN and PHY_CFG_1 registers are used
for lane configuration, with the currently hard coded configuration
being a mix of 2 and 4 lane (effectively 2-lane).

Properly implement lane configuration for 1, 2 and 4 lanes.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 32 ++++++++++++++++++++++++-----
 1 file changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 41aa28291cea..32614fb838b5 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -315,9 +315,11 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp)
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
+	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
 	int timeout;
 	int ret;
 	u32 val;
+	u8 cfg1;
 
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
@@ -398,11 +400,31 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(0x1f, edp->tx0 + TXn_TX_DRV_LVL);
 	writel(0x1f, edp->tx1 + TXn_TX_DRV_LVL);
 
-	writel(0x4, edp->tx0 + TXn_HIGHZ_DRVR_EN);
-	writel(0x3, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
-	writel(0x4, edp->tx1 + TXn_HIGHZ_DRVR_EN);
-	writel(0x0, edp->tx1 + TXn_TRANSCEIVER_BIAS_EN);
-	writel(0x3, edp->edp + DP_PHY_CFG_1);
+	if (edp->dp_opts.lanes == 1) {
+		bias0_en = 0x01;
+		bias1_en = 0x00;
+		drvr0_en = 0x06;
+		drvr1_en = 0x07;
+		cfg1 = 0x1;
+	} else if (edp->dp_opts.lanes == 2) {
+		bias0_en = 0x03;
+		bias1_en = 0x00;
+		drvr0_en = 0x04;
+		drvr1_en = 0x07;
+		cfg1 = 0x3;
+	} else {
+		bias0_en = 0x03;
+		bias1_en = 0x03;
+		drvr0_en = 0x04;
+		drvr1_en = 0x04;
+		cfg1 = 0xf;
+	}
+
+	writel(drvr0_en, edp->tx0 + TXn_HIGHZ_DRVR_EN);
+	writel(bias0_en, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
+	writel(drvr1_en, edp->tx1 + TXn_HIGHZ_DRVR_EN);
+	writel(bias1_en, edp->tx1 + TXn_TRANSCEIVER_BIAS_EN);
+	writel(cfg1, edp->edp + DP_PHY_CFG_1);
 
 	writel(0x18, edp->edp + DP_PHY_CFG);
 	usleep_range(100, 1000);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
