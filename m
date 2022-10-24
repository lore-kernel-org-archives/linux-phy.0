Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0514CFA3742
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 10:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUvArtgFQGP8P//Iow2IfMEDWbTwuO2Gr1X4MbiUqDA=; b=qoT9HfNY0f5e9x
	n0wfV81bIdhncYmDgJLyaUNctmdYTb1s8vFWnuabwQ4zClC/zoDEAQjA9a+Ia1677qgXiVhMwaYoH
	pqrXV9y5P+jqJEfiPVqdqQGj+hUs+BDIlGeiqjA1nlx0JWZdbN/+wNAoYmD8G2+NjjYlRrusZaSA2
	TTsaxiNl46H39yPg/1YX8u/Y4XqozDRBEOFqZw7SqgdeuslbKyRH8sWXDgWKIoJYPT0EvctKpEVzi
	sUuSxfH7Ako/Q19VUoYA52pnagcsq4pqfYpr1i3wF1p/K1JbKPu05e/+gJaMUmAckhwS5hCc+YpmX
	qA/BOmkze4zaiO8CeQHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMR-000cBP-2s; Mon, 24 Oct 2022 10:07:11 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuML-000c5c-R9
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 10:07:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7F1F8B810B5;
	Mon, 24 Oct 2022 10:07:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 369D3C433C1;
	Mon, 24 Oct 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606023;
	bh=+eicq563sf78FfC0LYPYXOJGdE04LCFvaivbb6IWJvE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=In6a8DMtpy0CcgBzWqRRH6u57ckKOHV0BMtNxLYpyAH/5t3vvljW/XO6ZogicdFKw
	 bG9cp6xuVHxwyC+VPQkpLtyJvRt6VJ2kWKCG1NJdTsA2ecwfewfO8LQAbiDnSQDlJv
	 66MaX0PCADuCPJHFKzYc+/RlnNwGPUPSUmt2HmSZk/N1goMLJyoc8zBKaWNI6R8MsH
	 Vwu84sQt3+3wxcBEt5KCFNtxvJi+07Jc9Wfio2r+UCbyVScEWuEQ5XUhbci84UnFhq
	 Vrl04+uZYx/t+1eFPaxhEf1pKZ0jYunftVV0dz8cxAAV6850AQzxwWISle6cr//0Fl
	 DBFVWfS8skSQQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omuM2-0005M8-RK; Mon, 24 Oct 2022 12:06:46 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 02/13] phy: qcom-qmp-usb: sort device-id table
Date: Mon, 24 Oct 2022 12:06:21 +0200
Message-Id: <20221024100632.20549-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024100632.20549-1-johan+linaro@kernel.org>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_030706_197363_82AF1B07 
X-CRM114-Status: GOOD (  10.73  )
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

Sort the device-id table by compatible string to make it easier to find
and add new entries.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 26 ++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 82af28f4a91b..41a4548f3f99 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2503,14 +2503,20 @@ int qmp_usb_create(struct device *dev, struct device_node *np, int id,
 
 static const struct of_device_id qmp_usb_of_match_table[] = {
 	{
+		.compatible = "qcom,ipq6018-qmp-usb3-phy",
+		.data = &ipq8074_usb3phy_cfg,
+	}, {
 		.compatible = "qcom,ipq8074-qmp-usb3-phy",
 		.data = &ipq8074_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,msm8996-qmp-usb3-phy",
 		.data = &msm8996_usb3phy_cfg,
 	}, {
-		.compatible = "qcom,ipq6018-qmp-usb3-phy",
-		.data = &ipq8074_usb3phy_cfg,
+		.compatible = "qcom,msm8998-qmp-usb3-phy",
+		.data = &msm8998_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,qcm2290-qmp-usb3-phy",
+		.data = &qcm2290_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sc7180-qmp-usb3-phy",
 		.data = &sc7180_usb3phy_cfg,
@@ -2527,8 +2533,11 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 		.compatible = "qcom,sdm845-qmp-usb3-uni-phy",
 		.data = &qmp_v3_usb3_uniphy_cfg,
 	}, {
-		.compatible = "qcom,msm8998-qmp-usb3-phy",
-		.data = &msm8998_usb3phy_cfg,
+		.compatible = "qcom,sdx55-qmp-usb3-uni-phy",
+		.data = &sdx55_usb3_uniphy_cfg,
+	}, {
+		.compatible = "qcom,sdx65-qmp-usb3-uni-phy",
+		.data = &sdx65_usb3_uniphy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-usb3-phy",
 		.data = &sm8150_usb3phy_cfg,
@@ -2541,12 +2550,6 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8250-qmp-usb3-uni-phy",
 		.data = &sm8250_usb3_uniphy_cfg,
-	}, {
-		.compatible = "qcom,sdx55-qmp-usb3-uni-phy",
-		.data = &sdx55_usb3_uniphy_cfg,
-	}, {
-		.compatible = "qcom,sdx65-qmp-usb3-uni-phy",
-		.data = &sdx65_usb3_uniphy_cfg,
 	}, {
 		.compatible = "qcom,sm8350-qmp-usb3-phy",
 		.data = &sm8350_usb3phy_cfg,
@@ -2556,9 +2559,6 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8450-qmp-usb3-phy",
 		.data = &sm8350_usb3phy_cfg,
-	}, {
-		.compatible = "qcom,qcm2290-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
 	},
 	{ },
 };
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
