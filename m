Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 614B8C4321E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYb2Y/tAcuu0KxvwZTGh9ijQP3cbLnkITwCBS73gUNE=; b=f3MEnv01IpcLgD
	rOvhFlk2F1ngWunvt25vOlKSHpIIFDKesK+UpjbyV3PGTtTA+11Ebme5MG6TUizu3mMKL//yHBh4X
	vTgXqlTG2Hwo2u89Y4DK7+es8jPPj1dWRPxL51y0NX9lLHW3QukXhTjKvUGpZ5JsSfwA+7eM3KKKB
	kjdUd5WYFbne32RkYIsZlPPjj84vHTAe6K23VaUHLPUBeKXIhZnxmCb2DYD5SLHowe1yDARcsEHt4
	y77R73cFPTq5z7BYpjlpgg1diYiru0e20oNT7PWNTBxyUkzHSUmpNiIsgHgcFI+nGqtSQ7OPFXh4U
	Q8xdj4K5BD3y0W6lmwIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPr5-00EPnl-5C; Fri, 11 Nov 2022 08:57:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqo-00EPX3-5e
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A5DA261F17;
	Fri, 11 Nov 2022 08:57:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABB01C4FEBF;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=tyyEAO0MeHCFRKb2QNccz6P5Y4KnbzNicaaQkfoQ46g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GfW1aFP1R1g3LCvT2RI1JB9QW3vq52CqH9XOXUBis7ga9Uur1DZKBREpiQ7giFkIc
	 +bgSRzs5ldoccUzehcV6mbhSphBlnbhpvt985/mVO1DL7IscKusPBO7bAa5eujwuqY
	 aUeh6qITMJFFIJUcnoSOro47/PzZeRTD8gCKhYxgY5wve3Yj71h75D/QS6Zzlo1hC4
	 CSGXgbZMtLluvhKfGn/4lCaExR19vwZ9ouZJkyHba6KztdBY+5+O/9vNRAyRXWZLTC
	 ITPusvTf5SEzGkdfAfAVH0EfrLVXe7ulfim0NP6a1IiiQoJkvduGke60vsvuez/ZEb
	 195sUgRNzPaJg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqK-0002UR-10; Fri, 11 Nov 2022 09:56:56 +0100
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
Subject: [PATCH 14/22] phy: qcom-qmp-combo: clean up DP configurations
Date: Fri, 11 Nov 2022 09:56:35 +0100
Message-Id: <20221111085643.9478-15-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005726_329699_A4D998FA 
X-CRM114-Status: GOOD (  10.12  )
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

In preparation for merging the USB and DP configurations, align the
initialisations of the DP function pointers.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 40 +++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bd7b6f72e866..c01cedda221c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1049,10 +1049,10 @@ static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
-	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
-	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
-	.calibrate_dp_phy = qcom_qmp_v3_dp_phy_calibrate,
+	.dp_aux_init		= qcom_qmp_v3_phy_dp_aux_init,
+	.configure_dp_tx	= qcom_qmp_v3_phy_configure_dp_tx,
+	.configure_dp_phy	= qcom_qmp_v3_phy_configure_dp_phy,
+	.calibrate_dp_phy	= qcom_qmp_v3_dp_phy_calibrate,
 };
 
 static const struct qmp_phy_combo_cfg sc7180_usb3dpphy_cfg = {
@@ -1106,10 +1106,10 @@ static const struct qmp_phy_cfg sdm845_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
-	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
-	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
-	.calibrate_dp_phy = qcom_qmp_v3_dp_phy_calibrate,
+	.dp_aux_init		= qcom_qmp_v3_phy_dp_aux_init,
+	.configure_dp_tx	= qcom_qmp_v3_phy_configure_dp_tx,
+	.configure_dp_phy	= qcom_qmp_v3_phy_configure_dp_phy,
+	.calibrate_dp_phy	= qcom_qmp_v3_dp_phy_calibrate,
 };
 
 static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
@@ -1166,10 +1166,10 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
-	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
-	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
-	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
+	.dp_aux_init		= qcom_qmp_v4_phy_dp_aux_init,
+	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
+	.configure_dp_phy	= qcom_qmp_v4_phy_configure_dp_phy,
+	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
 };
 
 static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
@@ -1222,10 +1222,10 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
-	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
-	.configure_dp_phy = qcom_qmp_v5_phy_configure_dp_phy,
-	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
+	.dp_aux_init		= qcom_qmp_v4_phy_dp_aux_init,
+	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
+	.configure_dp_phy	= qcom_qmp_v5_phy_configure_dp_phy,
+	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
 };
 
 static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_combo_cfg = {
@@ -1282,10 +1282,10 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
-	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
-	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
-	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
+	.dp_aux_init		= qcom_qmp_v4_phy_dp_aux_init,
+	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
+	.configure_dp_phy	= qcom_qmp_v4_phy_configure_dp_phy,
+	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
 };
 
 static const struct qmp_phy_combo_cfg sm8250_usb3dpphy_cfg = {
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
