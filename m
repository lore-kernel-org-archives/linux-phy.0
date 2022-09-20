Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A77B7C6FA92
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Der9FTJEK060GPiJxU1G2HQiIJSkEZG8wu6/6NMzGK4=; b=jOihq1WMXkehi1
	0g93TCYQAxUFj+saRk3Gp7d/GRH4uXlGZEyxlVGV67DorpDfthkNP4xrm3f3zqvMm8DFFsHdhXMec
	IakrKr9EzGN1vmKD/x5HmkZOhIRE4nTA4xbSDGBaYw08ltHhjYqyVryL9H8fC8gUrB0ybQI0D997L
	AdkgHvgzdlPX4TGskxTGy34VNkwwKw6qgKwIUNJ1VgMkKO1oytimIy9y+Grva5rT+pPGZNrCvNSOe
	PMJP3TgOkiLrSh1VXcZvOOYguhwtj160W9tEkJWCUml9YoRkvouL9mqyHH0zZC599QK5foVJG3Unh
	42vh9mNLhU7JEYXpjukg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqX-001QdZ-1p; Tue, 20 Sep 2022 07:39:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqQ-001QTn-IS
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E46DAB82555;
	Tue, 20 Sep 2022 07:39:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1191CC433C1;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=ZMg+DLlcdSNqveTVoiGMNLqinsWBf1qIoufFezsHv90=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=deUePSbjI1qt9UmHdaQMj3rR5fi8uXynqnSpclwKlorrntxIwYDNKY2m42uLA8qoq
	 cuvOsseLwP5kucB25dI5Wtlsh3NqiyuuUm3ET9Huh1psKdattEn1gRXF/kvPQpfgPj
	 9QGqa8ODqWetiq62ww9LQTLEB1UjPqeSeTUx41mmLDXwubw2lDObuCOlgp+ymbHOej
	 q0g5KEiEQyQMUqjrLEED6b5ooMoNOKWWKgiLgv+u12FLnZOzCvB7L2omYme5xG2xdp
	 wbyWsRZhUdfEdQywd/237/FPzDLz9ooD0aUnXdI4dViZbNtUtmTQwHfdPZafNM9Leb
	 qFG1tWHmtDCYg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqP-0005Qr-Pe; Tue, 20 Sep 2022 09:39:01 +0200
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
Subject: [PATCH 06/17] phy: qcom-qmp-usb: drop init and exit wrappers
Date: Tue, 20 Sep 2022 09:38:15 +0200
Message-Id: <20220920073826.20811-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003902_824541_3AA2BCA0 
X-CRM114-Status: GOOD (  11.38  )
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

Drop the unnecessary PHY init and exit callback wrappers.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 29 ++++---------------------
 1 file changed, 4 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 03481b6f1c35..a42e13905c15 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2125,8 +2125,9 @@ static int qmp_usb_serdes_init(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qmp_usb_com_init(struct qmp_phy *qphy)
+static int qmp_usb_init(struct phy *phy)
 {
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs = qphy->pcs;
@@ -2197,8 +2198,9 @@ static int qmp_usb_com_init(struct qmp_phy *qphy)
 	return ret;
 }
 
-static int qmp_usb_com_exit(struct qmp_phy *qphy)
+static int qmp_usb_exit(struct phy *phy)
 {
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 
@@ -2211,20 +2213,6 @@ static int qmp_usb_com_exit(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qmp_usb_init(struct phy *phy)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	struct qcom_qmp *qmp = qphy->qmp;
-	int ret;
-	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
-
-	ret = qmp_usb_com_init(qphy);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
 static int qmp_usb_power_on(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
@@ -2316,15 +2304,6 @@ static int qmp_usb_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qmp_usb_exit(struct phy *phy)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-
-	qmp_usb_com_exit(qphy);
-
-	return 0;
-}
-
 static int qmp_usb_enable(struct phy *phy)
 {
 	int ret;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
