Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49AA2C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfY30vSS3PbN5H7RrHRxdtHCeERJ+DWyrk5bRCWLOrI=; b=YtUbMheSrxmdpw
	Jz06Kkj4+xypsiPyxa8hHuEDk0VqEC8dofR714UsGeNaGdP5+n4mukNI1v1r/P/msjE9VxRIs+ujC
	tla9Bqo+fkfHRyjYoy36y6vOOF4c5oB29RWo4wh0GHK1EwvYiPsdHbwIftmrEpvlRpvvF8AEfuPpt
	PRg+5pN5z52bROqLiG0BZQGuj0NJ4dSOKNqAME3+AWyjMmhqyEGbGe/6UhxLIMk1ZlxkMt9v1VLl7
	EpSHlGIhOY4MQfkevpoXCEdnieFIqmeeU62PaXtW+LdRJH2ucQLXpKVBsNjqR0ZyMiJCiBCOoUYUY
	LTPFFFNlShhJU813NKTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFN-00ENO0-K4; Thu, 14 Jul 2022 12:47:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCZ-00ELI1-8E
	for linux-phy@bombadil.infradead.org; Thu, 14 Jul 2022 12:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nU2ByUxl5+9m4LLhz+AVnBpivYuYsKxL9H2ry8cLWIc=; b=GJPRF9ViOITfNUPukCzLlpQAxe
	obVuM1962WsQdWjrrh5qoMx0+/y64zqO8k0qgSWTtsfZnXLJ9vvs+PhcPTg3i7FPcKVMhzEgrvL1a
	pec6nvSdiK/qH4k1xtnz2M+/N2nb7VQ6BAJk3GzMUU4NKjBpq4u4dmj6Ox2Ol4fssjJtB4m/6HGPT
	yyPLwb4ghJxGfL3zpdnkwIHFESgXPW1E/at7ZuhMsfWalVJXEsBCLSon8wwHAcrl26mC0jp1cy8wU
	StCwfzqfJosnVSaukfWzYWVgYF/9BObueIWxpPwNlpMm2qgjbYjSOK+d8yQHVqO5/99cHLY41iMwv
	brjsCDaA==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCV-003q78-91
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7648EB823DD;
	Thu, 14 Jul 2022 12:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFD25C36AF9;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802645;
	bh=Rjt84oz1GE8/XtxkoEJv9XH95bgR17zbVUZRhDI5L6g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=diMmJwvQiJKddPkmdb9hPc8CnmZ6J7L83xX/7KHk9FMd24/cNtbISTitqRE/e/fT4
	 UYN0emQ9z4Ee8QZ+XrbRNvI6yf5/U7m454IXnI2aHdymq9HIlqqWu0ORIq9WgHlsZM
	 7OUrTAfKIM1kavf1bnujq5ZSTA2yvU2mvfpgwwN5Q9p/1WAjsTM8uT/ntbig4OOWTY
	 uIEWQM4smtxsSRSp/yn+M1JDNJYG1kV9seIP4QewEjZQoWWRxgWLXzK3jCa5X+qoGo
	 msYBXVrpoqz7PC69JusU/UDRlPgBhN+kVmMh9Ud27w97TD33s9vxU7dlwzxNaT4P6D
	 nqGw/Y8/B1EWg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCR-0007ER-Am; Thu, 14 Jul 2022 14:44:11 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 29/30] phy: qcom-qmp-pcie-msm8996: drop reset lane suffix
Date: Thu, 14 Jul 2022 14:43:32 +0200
Message-Id: <20220714124333.27643-30-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_134415_645173_552B0373 
X-CRM114-Status: GOOD (  12.87  )
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

The lane reset is defined in the "lane" node so there's no need to keep
adding a redundant lane-number suffix to the reset name.

Update driver to support the new binding where the "lane" reset name has
been deprecated by instead requesting the reset by index.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 7b893c66cf75..a4ff15b289cd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -860,7 +860,6 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
-	char prop_name[MAX_PROP_NAME];
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -898,9 +897,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 				     "failed to get lane%d pipe clock\n", id);
 	}
 
-	/* Get lane reset, if any */
-	snprintf(prop_name, sizeof(prop_name), "lane%d", id);
-	qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);
+	qphy->lane_rst = of_reset_control_get_exclusive_by_index(np, 0);
 	if (IS_ERR(qphy->lane_rst)) {
 		dev_err(dev, "failed to get lane%d reset\n", id);
 		return PTR_ERR(qphy->lane_rst);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
