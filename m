Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1139C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0tA9f22+HktCiRk5T9/80EaftPJvsZmmaAb2I9hGxA=; b=WFN2jl1//LuTaF
	f3ZgEeoir7CDjiIA67BjlrA9HbmFTfY3k993U0eU11YSCwq131rgh60nxcrXvA9ecnkZo8liEGi7j
	CH9KVXCxK1QN0pYGqCCsoQUDshG5IroCe3BBEArXo96gZFgUyfh0V0Ggh7QKb3HZJoqt1qLRhV8Rt
	pIN9P8H395zVkuEzUr8grgI0CBtzHtzd0xaHFJAQ/7t6Sqp4hJGzupLSis6r+fyBRnkhENeZIAYS9
	RePZC8D01GTDSQm+JhsBxN8uGXcJdEz8//6RLigwaNFMo/h7nszTXL+QuliXyXacoEwVh1CIWkq4n
	sBQ+NEEygZjIwGKKJzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4L5l-00EjjS-AI; Thu, 23 Jun 2022 11:33:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4L5j-00EjiK-4W
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:33:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DBBB660FAD;
	Thu, 23 Jun 2022 11:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4518AC3411B;
	Thu, 23 Jun 2022 11:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655984019;
	bh=4OZWF88ZGl7gNa7eawf1xJ3ZOtfszFqU8X+FxZF/O3E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QRlTwtmP0+T7kG1SQrsC3QOFxOnes+2sZ3eGK0AEe8ZPloEP1/h5Rh7BB2TFocbCh
	 YsjO7Sc8CQMLMPoGLDlDX3pqRisbJKXVkVppHY6m4/5jbb+K+e9v0ZP24DdGCa2P5G
	 1o6OfRmzTLgZrRmckzYZLEBQTjhbOncEhU9nya3Em1UNUCUiXU3D7EB+YiEW7pXeci
	 FoSAn/Q3z/Qn75p+7kjOdbt4Ke0T5rdT17JhGakXeLtsrY4mMB9pRmsI6TF/6COZpq
	 668QaX3oIrYmlKg2m8kYQRLEMPW3SO+8Vh10jIgOmv5d1nR5U3XB72Zfac6RbpEKFl
	 YuaQ+sxwtdBvw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o4L5c-0007kP-Q9; Thu, 23 Jun 2022 13:33:36 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 3/3] phy: qcom-qmp-usb: clean up pipe clock handling
Date: Thu, 23 Jun 2022 13:33:14 +0200
Message-Id: <20220623113314.29761-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623113314.29761-1-johan+linaro@kernel.org>
References: <20220623113314.29761-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_043343_252156_E15706EA 
X-CRM114-Status: GOOD (  10.82  )
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

Clean up the pipe clock handling by using dev_err_probe() to handle
probe deferral and dropping the obsolete comment that claimed that the
pipe clock was optional for some other PHY types.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index aebe5ed4e4e3..40e87f75ec4a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2530,22 +2530,11 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 	if (!qphy->pcs_misc)
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
-	/*
-	 * Get PHY's Pipe clock, if any. USB3 and PCIe are PIPE3
-	 * based phys, so they essentially have pipe clock. So,
-	 * we return error in case phy is USB3 or PIPE type.
-	 * Otherwise, we initialize pipe clock to NULL for
-	 * all phys that don't need this.
-	 */
 	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
 	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
 	if (IS_ERR(qphy->pipe_clk)) {
-		ret = PTR_ERR(qphy->pipe_clk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev,
-				"failed to get lane%d pipe_clk, %d\n",
-				id, ret);
-		return ret;
+		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
+				     "failed to get lane%d pipe clock\n", id);
 	}
 
 	generic_phy = devm_phy_create(dev, np, &qcom_qmp_phy_usb_ops);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
