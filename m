Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1AEEFA3746
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 16:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EF8CDblj6tIIVtzAjizDgUwIuzaKURxL/ENzAdzYaMw=; b=YO5dYNX/0IwBLX
	jFMnsccv2/dNsOZFrgUhE+BlqMNgSsxLVLP72UgaUyjJc01A1/eEUkf1QuAYUiyY/hGV9sOspZpYL
	5YsXhLqbq7PxeVtdr0xD/7wtH9Gic4R5o+jbig8LY+d1lxyi3UXNvVj7QCcONdkn/IIn7O21cf6FO
	MqGdQ+GlK/CsK64ClQrVAdvKJDLCxclx5nC/hDr1inIJKylEWFfekpKz6Dh/fh+h7KCVIym5AlgSc
	Ib8puJZCgEmha6o7KS3JcRCymWgTqFPzn34Tjbm1r7Hh5KMbAXk8Pvz7IJqa3b3PzpuPkNXsToJsu
	ZfY21fxCTzjlsnSYKgCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRrE-000lhw-Ah; Fri, 28 Oct 2022 16:05:20 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRr9-000laE-4i
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 16:05:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1125CB82AEC;
	Fri, 28 Oct 2022 16:05:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FB78C43142;
	Fri, 28 Oct 2022 16:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666973109;
	bh=GVBev1jEona/JnPzuSX2/hO6w0D68gFMKEICg/YDpjY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HYX5R6Nadfp0ap5vzAuuFIUA516aciC6wPlUmubKMhxuOoTVwTXhMNwx0wb0EBupU
	 U3CDNCgxJkuqALHNfSTJ/yYFxG8uOLS57A4Zg9TTN1GU1poeEMIF5oACp9vq90nMmt
	 UjrvMqUkjHJLzEF73nvu11I76WU3mn71oyaSi0fqhiO7W4hNaMC5rc4s9wuDrbNOeR
	 AwR8ZJNhUqh5FndudtER6W+FSdRW+aC7UsAVW0BqA8wOSLIg9rc5KoqN1ga8BkpXyZ
	 p6Wp42BeZPamJdqyI46G5r/vX+LGJ+aOgA/RjCdECBgBgoKxqLjpLTYsjJ6g4h/eNp
	 DofaV7Sq1AlxA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooRqq-00071a-28; Fri, 28 Oct 2022 18:04:56 +0200
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
Subject: [PATCH RESEND v2 04/13] phy: qcom-qmp-usb: move pm ops
Date: Fri, 28 Oct 2022 18:04:26 +0200
Message-Id: <20221028160435.26948-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028160435.26948-1-johan+linaro@kernel.org>
References: <20221028160435.26948-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_090515_354625_5C83EA3F 
X-CRM114-Status: GOOD (  13.25  )
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

Move the PM ops structure next to the implementation to keep the driver
callbacks grouped.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 4591128743c7..f28883e0d21e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2280,6 +2280,11 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static const struct dev_pm_ops qmp_usb_pm_ops = {
+	SET_RUNTIME_PM_OPS(qmp_usb_runtime_suspend,
+			   qmp_usb_runtime_resume, NULL)
+};
+
 static int qmp_usb_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2501,11 +2506,6 @@ int qmp_usb_create(struct device *dev, struct device_node *np, int id,
 	return 0;
 }
 
-static const struct dev_pm_ops qmp_usb_pm_ops = {
-	SET_RUNTIME_PM_OPS(qmp_usb_runtime_suspend,
-			   qmp_usb_runtime_resume, NULL)
-};
-
 static int qmp_usb_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
