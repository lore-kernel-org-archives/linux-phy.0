Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E76C43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uy55of9/YCPVJ+UDkpTa3D/oAO4J54CMS5O7eDtDt90=; b=oIY3Zhw+xDVjEQ
	CPySAgtmRGQ2REMZ+X2THw0yqNnaWNXHa78VDl/m+lej1UaQZYGAVboWSugtOBZG1BJoif/5Ze0Zc
	pG8i+U5h05i5YynLzhTUvD/tyx5CyrGuU2KSF+tdvhN9Lv4GkbL0k9Y2WgSgmIImZ5rcBZan121Rn
	1PGoc+TpPvZyqM2nhedMSvC5t2eMSU03hOS45VluI/hpehRdnIOsWVPTA1Pl2NEy8j0/B1DTBVOwS
	Pj0R7jUf1qnHb4/By8P6Gal35TG2jajObJJ8lSF2PTJjkJBnxfIjrsSxghFwJ2huHjs53gM/CSZ+u
	wquaqX6nFU3rIpkK1ToQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJT-000D7e-OQ; Mon, 14 Nov 2022 11:07:39 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ8-000Con-8o
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id AE53AB80DE1;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D820C4FF13;
	Mon, 14 Nov 2022 11:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424034;
	bh=xt745uTqHatKVJPFGtD2kfbW2fvcSdzeqVyp5Wsb3G4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=THLWs57FKaZFiMBncC6FQ973xoTZ2ac5vM/mUvQpFJYTAw5lNkRO+6w1UVcGDREYU
	 eap8L8fKnIc+AeccTBjfpnE7smxigbCpq+stiThGoXrHVcY3tYvuA6ARHzBdo0kEp/
	 LuiUloDVaVuRyUAI5HwVLv/b2gAOs0vhhQJe/9RuBzG+v6R/94igOepvOERY5OYuvk
	 sCuPcS3w/wfhdQbV/HZN8vk8EGp9HJtPygFcIzENDw/gYdUL+8KAdj6A7dwVpc1FFf
	 86uoMjD9nO2CUgIbasCvZGiV2P0DY7QySfEuAKqoazKD9UluALN1RhufVSnlaXdLD6
	 PMKFJW8G09/EQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001F3-Ub; Mon, 14 Nov 2022 12:06:42 +0100
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
Subject: [PATCH v2 14/22] phy: qcom-qmp-combo: clean up DP configurations
Date: Mon, 14 Nov 2022 12:06:13 +0100
Message-Id: <20221114110621.4639-15-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030718_698262_3BAB3AFB 
X-CRM114-Status: GOOD (  10.40  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 40 +++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 43193bfe6e11..50c011d23a9e 100644
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
