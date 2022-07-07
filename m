Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F07CCA490
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DqcU5YN8d0APav+8GhhxFqNA2OSlNI6HlgldZa8cUc=; b=X7liTAHJRiIg/z
	/iQswCvPOepOvhH+GC6gwlQIdvRhG7vaQ9vI7NIijBQ/w3Se3bW6Hze76C3ATpwq5bwOGl3L8kn88
	w7WFJt2OEMNbGOgqikbYnvFhRbwgN+k2t+kDMDbLITyEJ62gOyxD9/NBV5OrSuqlxikywUiozULzX
	awoFcQiko3DEDgMMUHTYcO8GKUk2b49KmZBLb5kyBSBkVfJYF5GC7uNSwftnlqKU6l4fRRQgeDobg
	m9ENQaWgjTj+OF9H4zIGARlbZB+d1sgl+rB7eB3vOQRgnitc669ztbQTxtr0nWcGdqhFlSeGfgWa+
	cnhSC78lJdlfQVMKWDyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrQ-00GL09-Fd; Thu, 07 Jul 2022 13:48:04 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrB-00GKjb-Tr
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 31BF8B8221D;
	Thu,  7 Jul 2022 13:47:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9083DC341F2;
	Thu,  7 Jul 2022 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201661;
	bh=if7x9pUFUD8PopCzs/NYjEUQxvbby1hAw9eciZM4+V4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QzkzIeMzJKw1Rq2wRdJPGUbA+d4SWDDVM0DhtgUatxOhFm48arTnEr0hPMj8R51a0
	 WMdNYPk8iCuhAAY6/L/8m5f3IY8MPHbwMvKcP95GDY7rPQzs3+iAmDNRliYXyx9m4Y
	 WikmOWMg9+yVEe9T6MTzJ9eyjtvnAr9snwtk64TYodjDB1uIuNVvwd0dQFB/wqI1OF
	 mTIXK1gH99GD74yat9mI4TUF/xGL8RrG5Qb5c3DTBnwk1hPhjcW10gdeF+a+9DqoF4
	 HtKUbZ1yqAJTfPOKbCS42dICyDe410JMyFpb/zYw+pyVVsYNj3OD0Q4GJnpy4h64k1
	 acXB3B7he7MXw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr6-0000zK-86; Thu, 07 Jul 2022 15:47:44 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 30/30] phy: qcom-qmp-usb: drop pipe clock lane suffix
Date: Thu,  7 Jul 2022 15:47:25 +0200
Message-Id: <20220707134725.3512-31-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064750_158775_4F85F772 
X-CRM114-Status: GOOD (  13.17  )
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

The pipe clock is defined in the "lane" node so there's no need to keep
adding a redundant lane-number suffix to the clock name.

Update driver to support the new binding where the pipe clock name has
been deprecated by instead requesting the clock by index.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 994a8232be7b..2ed9b031bde4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2609,7 +2609,6 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
-	char prop_name[MAX_PROP_NAME];
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -2665,8 +2664,7 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 	if (!qphy->pcs_misc)
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
-	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
-	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(qphy->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
 				     "failed to get lane%d pipe clock\n", id);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
