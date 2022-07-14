Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1141BC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxUuc9OIPFtUKzaE/+AR+mJek5TKM/5kcYozjIiLBGo=; b=dK8UJ8IuhUPLbK
	ktjnh+yWq2m5BqyOBhqW1RhEUwEVp2ldD/qEYz/K6AS8ICvNfQ3Le/1eyO+j3uQT1sxpie2+zeWxK
	vOG0Qxjc+CVu0tC/fQ3xZGlW+beolYEg6Yfks/Or+R+7eWyxUt61fzJH3462FdJE6mefhql1zSUnE
	3avbNMYOzBBY5Jqb3dkTA4K5ObL3ugfiEqdOohufVbKE3kJECuwRC7JospJdcGK3dKQMWsEpV2i7K
	+28X5oE3hE4Cby2cavsxoSS5aOdeVlH3o4cmoh32jyL3ZcSGRP/EZHQz6hoFdeInes1SmUTa0Mly0
	MzToq5S5BcMYUuLRXpnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFS-00ENUN-5Q; Thu, 14 Jul 2022 12:47:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCj-00ELOR-1P
	for linux-phy@bombadil.infradead.org; Thu, 14 Jul 2022 12:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RtM1K4KYFO7+zN1BLFNXEOH4cdrni4QHNyFMOL0ipDQ=; b=GFKio/jdp1ByUZCcZFP4Czir0l
	IHqurU+sdcGQ/PQVZR7S1fpKXytsWUpYycVGKfmEGVoHh4T7wOBK0+F03Pg8Idl/vO5Ln6xwcVTQA
	tKDWWut3NO6iyMeJreMayet1uTVt+F61RBKGlayv9M1oxG/cIhi7dT5eavViKQdMDToei3i9QXwJ4
	Uutpk3Xt0aYC5LR8opi/S/imvfIU8WbqVlcGRWCavCW3rYiDYfsTHdeI2ywZc8HTcibE+nN6dkOko
	f0SOQIyhD1TfxdLVJzEcfgmr5qK8N8SEIZnxIqmnHD4BKlaCKZ0Y/BkpnPQC5ZqCYbJC1jwNPNulm
	gZaCWmSw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCd-003q71-7v
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F373C61F8A;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BC53C341DE;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802645;
	bh=/vdrzpj1m7eqBV6SFnyhWrugY9ghVbbon0lym+Lzgkg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EOmneFR1RJp2AUoMuvbpP7N51zc9ML7/iYWlWV0HwelsXLRZzKbbOr+t7E0iJMpT3
	 Qs4II4C3fmolb43ZukjEsB7fCA8e4wSaNC4vXkv5+cuKq7ED1MUJHZwD26RtfIKUBW
	 /jwvMcQ6S82pRkbKTxbFfb6j252dV7Bvofy91jCGusZo45+1hdvW8wByJWe+tsWHVV
	 Rea7HflVsdA6vApNmkmlftDejzvPe7YzA4Qp9AnewgW8Jvh7Ie0qiZyVxUjlTX8U+Z
	 3SbCTR7xv8uKK16SXG+5FIZkc77HO7mkxRf3i03OO1cjsCSJc7wHkM53OeGkn3s0II
	 g2QVfuIHR/U7Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCR-0007EF-0B; Thu, 14 Jul 2022 14:44:11 +0200
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
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 25/30] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Date: Thu, 14 Jul 2022 14:43:28 +0200
Message-Id: <20220714124333.27643-26-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_134423_876119_D26F8999 
X-CRM114-Status: GOOD (  12.54  )
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
