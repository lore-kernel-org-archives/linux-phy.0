Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28795C3DA6B
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4oFUXFOaX/B9Mse6zol4UEKdW5ExYge7j6pHWsxGx8=; b=S5U0AOBD4Q8ku6
	ayiuv4ii/7Bh8MsZ4XQtSTE5Wv/P6u7seFdL2UPn0by4bKLHr3Bo4zdtW5m4Hm/+za7liANx9BEAL
	gWF6Lo6+hUYRThpHzgcNiTIHbcI65rP6KPiFrbrmBtC/SRwZIYeazYnFMgbhktzwxk48T4nou9u5Q
	Se3RV6VlubbwqpDhNhnAexoY2A3IqL34CNKZ4Q78z2nm67dNVbn4m0NWinFSeZtikKfH0ln0NH+ZJ
	b9IHfTd7w2YHITSHUlXx+95+WVPPj38PZUv7Vr7DT8PO1OymOoRpcy9Ex2q7DeSSgrnrWyYd4uGZA
	/YTk3ElHU8WgHu/WFZaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRq-00GZmP-DW; Tue, 30 Aug 2022 11:30:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRd-00GZfl-Qy
	for linux-phy@bombadil.infradead.org; Tue, 30 Aug 2022 11:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OO0BsA2UNbpYafeR6xmNg7L2kXglyjQA4XrItaPbsM4=; b=VGE8hXbCbNQQ+fHEQ3w/GvpUvn
	ZJ6XQi80QtJQwuk7ZLsZv5HOg5qbKxkiOu4cWjieqHh/4f9zYqgbtcBcC3gOnKeHtPEOIStUF6tNU
	62O3WmS6zWQZax6MEAC15IBTGFak1XU++mnOebDV3D3zat5pgEInbhjyAzQ5OUvMxKeacDc5zxb+r
	TzveCp4T1tWZfuS3lyI4mGBJiQxm7NLEtVc2WNUjs+P3TVeojpz5F2rpfSO+He4acIxxc0uECf/EB
	mHAKxHHmLBu53of+LXxnuiEF1VLTyZswqgYpoYmDEhPoYoCtulRdTz/KXKi8dZcWz1IEGpC+hUIl0
	KNm/6EDA==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRa-007ozk-7b
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 72E75B81A70;
	Tue, 30 Aug 2022 11:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46865C433D6;
	Tue, 30 Aug 2022 11:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859001;
	bh=m3vo4Wy3KvBHqNTBUwXMlA32thjZH3ds1YjYiHW+ZUQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sKQRhltQWks0VKbANxQHWLQJV97gcHZ0C71PXoSto66IaNxlqRgC9z9MAa/rJv8od
	 20pxkTuie3QCCWBhd54cvWEF9wM3p58eYxH4lvafsSaYeNX8vQIR+gxm3Q1glBOk/0
	 MKs1K9L+Ebp6F/YUp5C7gDNbrciYGLg3cUoKmVNoizNWPLk7RbCss6DbZX8ZTAFTTx
	 yiQYXw4wmKc7BhCESdBeEtQ2zmSW9D/nX/PwMyCZqVoPtG3aYh7/zaJRO9Cfh82oTC
	 gYQ8zVoh/T7u+2UzRtQ58dh7Fu5vodSm6p7WfEDlNEreDA2ypgp7VjCFYLhEI2bn/E
	 z53vx1FqKvIKw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRP-000111-2m; Tue, 30 Aug 2022 13:29:59 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 25/30] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Date: Tue, 30 Aug 2022 13:29:18 +0200
Message-Id: <20220830112923.3725-26-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_123010_525012_4CCF09B3 
X-CRM114-Status: GOOD (  12.75  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 2d65e1f56bfc..3ddbb8e89f04 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2314,7 +2314,6 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
-	char prop_name[MAX_PROP_NAME];
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -2374,8 +2373,7 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
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
