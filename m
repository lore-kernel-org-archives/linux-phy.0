Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BB82C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUrf7niIw2jJ8IOSmfStmKtNQuuftV1+vS8r+gWRHrE=; b=Y3HLBn5ehySN55
	tkilmyKHy9BB2+HsqT/Kdm6O8h0amwyMiml5F+HK0lbWerCVDscIm4dbAsXrhO1iIra3aONuybl/r
	+XUhLKr0a3OIoeDvb/tOC75yXcVuWQcyt6nZacQYS+5qDkNU7z9FIxsoC/5xrbcOD9esKy6Q7Zf37
	sg1Emp7mcQ+l8LqomLJzrQaQ0G0oavF0z3LSBwyOvWUmfUhoOAFptsNV6qKxhYkV3blbG816OC0X8
	yfXzWWndQAJ/3DakbjT6iqr6bQOybvCa/lAEtz6whG2ucQXw4j10jJmfwJjIQBJ+5kjXEm78g+pdx
	/Gc9Egpz3snkqByNQylw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJP-000D2Q-Mr; Mon, 14 Nov 2022 11:07:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ4-000Cmk-Ry
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4BB8460FE5;
	Mon, 14 Nov 2022 11:07:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B30E2C433D6;
	Mon, 14 Nov 2022 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424033;
	bh=OreeBz+Kd7/2CeeAnBA+XN0OZC5YUsciJCJdvvga4ew=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HuFOjISToWVijQI+U7+2whHiH8Jx/FUbqitfwU/+F7vW5xJ8Xnvm85NwziSjdiWg7
	 F5W6L4JJffsgEzeIVGjst34X/qZQUTVtX/oxWidSNE6T3tG/BTm/bh9DLq2+vPWzrp
	 bFVljR4b/lSPoEtdf93g3M6RFgIilA+qBGBO7ELiicEvVz9BqBWf7JJraEgoalr4zF
	 ix51//tHMxUUysTagFCwmYldh5uYfWC8Cr8Km1s5JLwsz7VLsPACSZdiYFt4JWuXII
	 /yX3eSuFzuoFJHwnZTv8ElV3bhRkm2oe6I1PQEbcnC4HygmO5TacWZp0XKyIC9cJjz
	 OCR1Kot/n+72A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIX-0001ER-RZ; Mon, 14 Nov 2022 12:06:41 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 01/22] phy: qcom-qmp-combo: sort device-id table
Date: Mon, 14 Nov 2022 12:06:00 +0100
Message-Id: <20221114110621.4639-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030714_971218_6BD19237 
X-CRM114-Status: GOOD (  11.81  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c7a926d548d8..d6a031bcfc30 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2651,14 +2651,6 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		.data = &sc7180_usb3dpphy_cfg,
 	},
-	{
-		.compatible = "qcom,sdm845-qmp-usb3-dp-phy",
-		.data = &sdm845_usb3dpphy_cfg,
-	},
-	{
-		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
-		.data = &sm8250_usb3dpphy_cfg,
-	},
 	{
 		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
 		.data = &sc8180x_usb3dpphy_cfg,
@@ -2667,6 +2659,14 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sc8280xp-qmp-usb43dp-phy",
 		.data = &sc8280xp_usb43dpphy_combo_cfg,
 	},
+	{
+		.compatible = "qcom,sdm845-qmp-usb3-dp-phy",
+		.data = &sdm845_usb3dpphy_cfg,
+	},
+	{
+		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
+		.data = &sm8250_usb3dpphy_cfg,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qmp_combo_of_match_table);
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
