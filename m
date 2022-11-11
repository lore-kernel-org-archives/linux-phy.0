Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59BE0C4167E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=us+kppf6KqZre8g5ZDUEmJyIOgYIaenInApdGDmt64I=; b=XGBE2Q4W6xKnTB
	diptFG9st2nSgNPw5uGIx8gx2EhlnCcr8//Jurcx0e8BSEbgZvjzoDMNB0RDPgFfS+SCO6YWD0gXI
	9ZrmqG4LivHVgMTSG7tiktRBM/PguKbb6I/SeN8pYSCz0/s2IB0FvGHXTrMwkvypw+4hoqbFE1pct
	t3OaHUxelyVSzDRfYgzQqwiLzJzbMkyqa9QbG06vKUtUtO7rBq9Db/Qu9/Kb9rI+WbZAnhvPmmpse
	PmytBuMwY7joAYJ11H4eIuSLICgcjtBqHXZJQ75z+SMno2fmc3VcDVDgK8GrPpUPP2PTJ9fgJQ2k/
	hzLcbrm6suvMnsJhTULQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPr5-00EPoh-Ug; Fri, 11 Nov 2022 08:57:43 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqo-00EPVC-DR
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BA49AB82475;
	Fri, 11 Nov 2022 08:57:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFABBC43144;
	Fri, 11 Nov 2022 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157042;
	bh=PuggCD58nq+PhXPokd4Y/KT/cjFel9nb2sJGZeDZkwk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F1zJPWUpLTLdcFrTX3JaiReORdH5riWRG6qnj8hrE3arCZi3lL29O3I7QRZVKk0Ce
	 MZKs6zSxLYAXvHeji8pa9bYRfZCnvrkNXjteR3FIXZpR6USEUhgkIovIYRggMP5u9q
	 JvbsmnCc2o3OnnHz76UwgnxDQCG5ZYRlfYRB+iLEQSH8NBY3em6bi0er/tBttnKUxQ
	 kJfdcXyCQHELV2EOmZNQW88MCEML09ZiVrQmRaJ9JNY1rB0lqJ/hCjQ8OcOegMRvJC
	 zLLl+jzfnL/dFLiOfNvJY2vjtLsozwVgnVy43dOUg3WGqiWt4AwllsntpBeJfWEQbT
	 556p3bvv7rf3Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqI-0002Tp-U6; Fri, 11 Nov 2022 09:56:54 +0100
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
Subject: [PATCH 01/22] phy: qcom-qmp-combo: sort device-id table
Date: Fri, 11 Nov 2022 09:56:22 +0100
Message-Id: <20221111085643.9478-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005726_724531_813EDA76 
X-CRM114-Status: GOOD (  11.52  )
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
