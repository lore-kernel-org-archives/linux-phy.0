Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0F13C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DzIyWp0iL6UlBMVGC9JCl816s2ji7kOB6tvbS/nk/0=; b=JJ4neIX4uXftJk
	gNU21B6GFF+H78NDXWoihrNO6MSmHQ+uQK8zbzKFVoK3BuRzwtPfQPSZqaRJ+CjHwq/zZxO29LgLP
	uUBA9BoP0V6VBHF+oTux9sTw/Xgl7+XNe8CnOjAT5v+Rl6CxuZfWFeb194GgR2rYT+h8ymwgK/Ioq
	rbeOs4gXMapn1DE9j64gPBnm1+DoVlPM1hV8SsYRbtWTg+HfTIuC4qittLsLUPeW3gntFD87HgJk8
	NEZp7o7ioikgqBqACXlMcZrlnEbt0+HjGpPiYb5RnnUC0iSPBBSJ//pmJVyVay4XNYS3Y4WlizxFE
	iIWohEnn+Ck4+F831bqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIf-00EaKZ-L6; Fri, 11 Nov 2022 09:26:14 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIZ-00EaGa-L6
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1788DB824A7;
	Fri, 11 Nov 2022 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5E76C433D7;
	Fri, 11 Nov 2022 09:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158764;
	bh=M1C/r9yglwLdkTmMaGjhYhxCfVmL/pRP5tdyQ69Kpwc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=USkfV5Ahmt3Muz1pAPC0zMHzfE4DUEAcx91OWUmXkHrW5Sd5Ca937t8/jdl0pw+i6
	 57neOLxSkcaGc4AEyphnZVlvTfEVd4/fp6NncjOvXAvypGcllk1crM+T++yQ6751Pj
	 LMv73ftLx/kNcnJgILJd68osGSh+42YOmafvwqEqwMfLe1h6MRyf3yhhvWcFxAlsS9
	 e85vjDc8ppYtX4IvPap3UAG8dtKzc5o5YWqytOHepX89A8jYdmpQbP8CPPuZF+NTu+
	 rKu7ShyxseGKhy1yKgoxi/r39UuGoHu6paFXmU4k91SY1m3cfebLM+ogEmoRE8CbtF
	 AF/zQvfr4s/Zg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI4-0002kx-TT; Fri, 11 Nov 2022 10:25:36 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 05/14] phy: qcom-qmp-combo: register clocks sooner
Date: Fri, 11 Nov 2022 10:24:48 +0100
Message-Id: <20221111092457.10546-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111092457.10546-1-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012608_082427_30812DFE 
X-CRM114-Status: GOOD (  12.01  )
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

Runtime PM should be enabled before registering the PHYs, but there is
no reason that the clocks can not be registered before enabling runtime
PM.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 1bc8567a8605..1a6aa61a12c5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2642,6 +2642,14 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	ret = phy_pipe_clk_register(qmp, usb_np);
+	if (ret)
+		goto err_node_put;
+
+	ret = phy_dp_clks_register(qmp, dp_np);
+	if (ret)
+		goto err_node_put;
+
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
@@ -2652,14 +2660,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = phy_pipe_clk_register(qmp, usb_np);
-	if (ret)
-		goto err_node_put;
-
-	ret = phy_dp_clks_register(qmp, dp_np);
-	if (ret)
-		goto err_node_put;
-
 	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
 	if (IS_ERR(qmp->usb_phy)) {
 		ret = PTR_ERR(qmp->usb_phy);
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
