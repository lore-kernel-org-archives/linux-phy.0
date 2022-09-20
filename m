Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83FE3C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDRj/SfH/B4gR6jMg63yUkss+hC5CifJku0Tkl7xrWk=; b=Orl3HnG1tbZSxN
	WcqS9EAZ+/h9K6yp8XvZYcWRm/8Tdza1WNF5s5e25ztYwW5F6wpmwtpUGA2efGS6EcurhE6HeNdJD
	Fdpe4JzPZUcsMAWfHJdsHvRYqv7FQNWwsF6J5vZCBF2f5Q2GBFI710twNvpNgleceAFy+9Z32KrnS
	Jvuf0oSLLKasbn8rCUnoaOsLyH/6fMJWjGhUKSjJWN03JodWzkXzHx11nFxjY7fVIdX6oj/b8uzH0
	DnNjePMSjxXFMB6xtMJA8sHF7dMQ7oiT1tu/jfSisN1tY1LXNxaPW5PAZ09PPa/9ckbzQYBgMmx6/
	0oQuX8niOOdPXXp4IJhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqQ-001QUh-P9; Tue, 20 Sep 2022 07:39:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqO-001QT9-49
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A0DD061B23;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BEF8C433D6;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=GUQi0pjcrMiS6kKwnUDr09X9djEbtgJ/7ZFFevWa+p4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XVI8KfZ4RUvN34CoW8H/xWWKzXIf93HmhgmHkzhPlcUyH6CjX4j3doDloM0+/7v3l
	 DEQGGstD4cQsit0k8x3gJ7qlc+HdYIAnF6Tu/Zz04duRuYUplQtQPEbaUNo5/1jj2u
	 kpUBictUsVBbLwgydt0va9wrgFfmZkECkd3oxeuu799+8nrXHxiLo2s7ERn7L44NfB
	 gHtMtCLs+Sv059u9Wn1Rhu24KBr88FxMMpUg0pLTc4LtRsF6GOEP0OCPkzD58CMdmJ
	 GIMTy/+6I5wmH4Dx3cTTK+xnqKsljRiOxRH5TJG0slRlRXJkRkQ+cd0ocg8WMj0I/p
	 YTgrr3Hgc4yAA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqP-0005Qu-SA; Tue, 20 Sep 2022 09:39:01 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 07/17] phy: qcom-qmp: drop unused forward declarations
Date: Tue, 20 Sep 2022 09:38:16 +0200
Message-Id: <20220920073826.20811-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003900_260876_D455CBA9 
X-CRM114-Status: GOOD (  10.78  )
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

Only the combo QMP driver needs a forward declaration of struct qmp_phy.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 --
 4 files changed, 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 20a76b1b23a2..7e755213e9c5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -184,8 +184,6 @@ static const struct qmp_phy_init_tbl msm8996_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0, 0x0e),
 };
 
-struct qmp_phy;
-
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
 	/* number of lanes provided by phy */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 525097e3b041..666109a11329 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1300,8 +1300,6 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
 };
 
-struct qmp_phy;
-
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
 	/* number of lanes provided by phy */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index e5c8d3a4fdaa..cc49dec46df4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -531,8 +531,6 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
 };
 
-struct qmp_phy;
-
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
 	/* number of lanes provided by phy */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index a42e13905c15..820062a95211 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1427,8 +1427,6 @@ static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x21),
 };
 
-struct qmp_phy;
-
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
 	/* number of lanes provided by phy */
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
