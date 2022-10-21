Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78157C4321E
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqgwgDnjbq4jXv1XKPMwjB4DRcxy5V+JDEdy3GuMD6A=; b=IkbwXM2qVbsw19
	TVvL4kx/ed/3PxQMByWQCoal6GMSJSYp+01BVGqr2jQEY/xNxcpCo1+uDzZCJq91U/uiRp6oJJZNw
	l7+0IeP7yrrFI3KINGjZtHFSNNNJyLWkGlBUlgUKjGnW+Onad7U15wwYCNOC+KV5xE+EwQww1DCvS
	1SQRAmfvISuEfClg6ed4hVWrDFQ7pV/ME8s/5TEZNMpfcdVkxeALroK1LzvMa9ltEsM3H8rHIb1m7
	vHbs7qVQBhOj36a7jkdUo8aOhU1N2HBf++mNbUphmpvKUiUY/vV4xHlpyP8LH83uSrk5+GZuIDgqY
	2M4ZFgMTrliziUTxLqqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvU-007Ins-Sw; Fri, 21 Oct 2022 11:10:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvM-007IgZ-IE
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:10:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 351A661E6D;
	Fri, 21 Oct 2022 11:10:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 936BEC4314B;
	Fri, 21 Oct 2022 11:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666350643;
	bh=4E2fvLi9nlZHK7y/46TS4Ev1h53IKCCPR/zjWddiSwE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CFSWMHP2wiZjMthW5O86HYCxAbrrJdt4f7cXfPxiJ7KAL/hcGyYHy66oRU2hCXt5s
	 /7asmr4z4ao1TpBvko6+B9KmuA5wpzvjLixJb9rKB5OFvShBrUEevtbtUo21zQk2Wu
	 uSdNhx9oxpRrDY6CXs/eOxbS414T98ycYgElwWSccsdgOid1NP9RWVODq/1Q5Ak03v
	 c4CAMfmBvWwrUy/xnuGzDCtZ6HH5VZDpyIENByryyRl2uNbCqOZQM646wcYEFAstyY
	 o7JojHwetOrw+Au4a7aUwU0vzEdnn9iHO4IAlamCfA0r46SlOh2UN6sFAsKMpdcQVL
	 L3r73E8gYD4vQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1olpv4-0007Kh-Ra; Fri, 21 Oct 2022 13:10:30 +0200
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
Subject: [PATCH v3 06/15] phy: qcom-qmp-pcie: rename PHY ops structure
Date: Fri, 21 Oct 2022 13:09:38 +0200
Message-Id: <20221021110947.28103-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221021110947.28103-1-johan+linaro@kernel.org>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041048_666283_CBB7087B 
X-CRM114-Status: GOOD (  12.27  )
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

Rename the PHY operation structure so that it has a "phy_ops" suffix and
move it next to the implementation.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index e30cbc94cbf6..bd946438e3c3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2037,6 +2037,13 @@ static int qmp_pcie_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return 0;
 }
 
+static const struct phy_ops qmp_pcie_phy_ops = {
+	.power_on	= qmp_pcie_enable,
+	.power_off	= qmp_pcie_disable,
+	.set_mode	= qmp_pcie_set_mode,
+	.owner		= THIS_MODULE,
+};
+
 static int qmp_pcie_vreg_init(struct qmp_pcie *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -2160,13 +2167,6 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static const struct phy_ops qmp_pcie_ops = {
-	.power_on	= qmp_pcie_enable,
-	.power_off	= qmp_pcie_disable,
-	.set_mode	= qmp_pcie_set_mode,
-	.owner		= THIS_MODULE,
-};
-
 static int qmp_pcie_create(struct qmp_pcie *qmp, struct device_node *np)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -2229,7 +2229,7 @@ static int qmp_pcie_create(struct qmp_pcie *qmp, struct device_node *np)
 				     "failed to get pipe clock\n");
 	}
 
-	generic_phy = devm_phy_create(dev, np, &qmp_pcie_ops);
+	generic_phy = devm_phy_create(dev, np, &qmp_pcie_phy_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
