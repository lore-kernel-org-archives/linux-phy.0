Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62604C3A5A3
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHI8t7Ac3lGbRmECnni8qqrmGaWc4R363o1uhw0jk+s=; b=AGx/GA78f++Dg7
	ZEo7bXpuxhfsZDmqFoR3zFTyRjKPSQlYuRi4IkStxExsx20GhW5/GZgOGisw7vODSpSI5HwOp7r76
	4392h79fxPjItYwlkAL4NMk0eWwaXoCRkXxUKQUa05aR5ZF3iCgY/jx5690KnR3L/EDXpUZv1VqVv
	ojI1Z1CG+WMwgB1daAznbZ2i59sWpjRpvVcpYXe9nxJlcsWE6N0gWAqaspVoF85LprcrVBWJ4qIm6
	xclg5XSU9/jIrK9JkpS2mtYtFYRwVTUtGoJiLYIyqvp/lMhGYD2u8QnRgHK1/xvDYBGNkiAh5Y40T
	A/6HQjq9gsoF14oYJheg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJS-000D5y-Em; Mon, 14 Nov 2022 11:07:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ8-000Cqi-PM
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9732361033;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1017C4FF15;
	Mon, 14 Nov 2022 11:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424034;
	bh=kJP38ZwmxY+SSFCvUPkMeWW5gEsGGyjDPb8h9yV4MwM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sQOKC8dVPTg2lM+avo5ZTFLkH4JKOPfbQ4OVzmh19AfMoNWCYbcQ939wb+3Un8QdL
	 cNlObyxgSCbhywTqKZfWYPajGyA4PoFS3rJ5gFGZc7LVYvZ6aKhz4H8+kV0ixc0uqv
	 HGmEnwrVRoobWE68xaMJXN+L97nbsEcG3jW8gjGtIR2AAs/asfeMMpQYWd69FfH+T5
	 c4GOciXieH1EVeoMB+0iFrxCZ6XuSkYyyCzYpEAoBa+k6/FD7TE1tyetjE3fTAb6Xo
	 9DGH2XgyK/ORWK84hg1ObEP/LwSPjQmEbFYg/qIXqy8geXayxx1kNNffsD6WUiyi5T
	 MA8XaTmvd/fHw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIZ-0001F6-0z; Mon, 14 Nov 2022 12:06:43 +0100
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
Subject: [PATCH v2 15/22] phy: qcom-qmp-combo: rename sc8280xp config
Date: Mon, 14 Nov 2022 12:06:14 +0100
Message-Id: <20221114110621.4639-16-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030718_948938_2D6F3F90 
X-CRM114-Status: GOOD (  12.29  )
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

In preparation for merging the USB and DP configurations, drop the
"combo" infix from the SC8280XP combined configuration for consistency
with the other platforms.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 50c011d23a9e..d3fd6bde4af5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1228,7 +1228,7 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
 	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
 };
 
-static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_combo_cfg = {
+static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_cfg = {
 	.usb_cfg		= &sc8280xp_usb43dp_usb_cfg,
 	.dp_cfg			= &sc8280xp_usb43dp_dp_cfg,
 };
@@ -2857,7 +2857,7 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 	},
 	{
 		.compatible = "qcom,sc8280xp-qmp-usb43dp-phy",
-		.data = &sc8280xp_usb43dpphy_combo_cfg,
+		.data = &sc8280xp_usb43dpphy_cfg,
 	},
 	{
 		.compatible = "qcom,sdm845-qmp-usb3-dp-phy",
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
