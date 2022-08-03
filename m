Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82736C19F2D
	for <linux-phy@archiver.kernel.org>; Wed,  3 Aug 2022 12:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knx+rhweE/Ek+Nvee71TF5iVeUP3YqtM2b7mfB6S9CQ=; b=U0s9lLRWN7E5y/
	/1oB0zFCvbZPlYVPgvpMITe0MoiqdVNrJtRtXicD1men1JaE4CoPtnmQdr7n9X8oKpavNG5Qu30yJ
	d6qS7l+HzKuaSPZGMGfg+46Uie689EHIReqefiUxWz+7bp2w2baa/9+ZkUCIdXnR7wYVTk5aDbhhw
	QaTbp6aZyyfPT3JKGlejhHx84mSGlEfxU3EZoR+E13ccGTIQn1/4mnNJuAfG2mBgTE+LvFXe42U/3
	NF0pLeaWxCdKUKdFtBc+bLamCz/WnpdgdtKLEuQW9efDN3rLTUyRpjw+3dC0HHSimXzfScATkRLrl
	x7MFGGZhVELoGgraBJMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJDaN-005vvm-NF; Wed, 03 Aug 2022 12:34:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJDaC-005vmA-1D
	for linux-phy@lists.infradead.org; Wed, 03 Aug 2022 12:34:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F332E6144B;
	Wed,  3 Aug 2022 12:34:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE2C6C433D6;
	Wed,  3 Aug 2022 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1659530073;
	bh=msh6rGbtOmkvBZUPclv6+UinjCPJTZ0keeEvElEwjSI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LUjazEmu4ouTtCOZNf92NowWYMERm7oiSTSewuuHFHXIbMhiyrpR5tY5jxuOLV3Zm
	 J0FR1QWQleRyiYExEZ3cAiQ9jzdtxkNPrRD0as5iTXOIxsLR2nAaIc30766Oa0Czj0
	 6CgL5PMFSw0HpzSH9vHyCrkZkHlRBof4NLLNzmb2w0Dp9137I61kCoa7Yn7W9pLDOp
	 qacGgLSUeB9DqD/dbtm9HWPG6IgS6TrxEQOVYSNt51ZSkZ7Y5XlyOzAsHi5NlHTDUC
	 rSh/RY3O9qURMVkMYWLtw3YMRE7kiIPU5CHB8EoRD8Ux55a8FAnglcsfeAB7McINvb
	 ERnUKqq1q7epg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oJDaO-00028D-PU; Wed, 03 Aug 2022 14:34:52 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Douglas Anderson <dianders@chromium.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/2] phy: qcom-edp: drop regulator loads
Date: Wed,  3 Aug 2022 14:33:32 +0200
Message-Id: <20220803123332.8138-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220803123332.8138-1-johan+linaro@kernel.org>
References: <20220803123332.8138-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_053440_517187_190C0318 
X-CRM114-Status: GOOD (  11.12  )
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

Drivers should not be specifying active-mode regulator loads unless
supporting an idle mode where the load is reduced during runtime.

This effectively reverts commit a4888b2005d1 ("phy: qcom-edp: add
regulator_set_load to edp phy")

Link: https://lore.kernel.org/r/YuPps+cvVAMugWmy@sirena.org.uk
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 7e3570789845..cacd32f6e0cc 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -639,18 +639,6 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = regulator_set_load(edp->supplies[0].consumer, 21800); /* 1.2 V vdda-phy */
-	if (ret) {
-		dev_err(dev, "failed to set load at %s\n", edp->supplies[0].supply);
-		return ret;
-	}
-
-	ret = regulator_set_load(edp->supplies[1].consumer, 36000); /* 0.9 V vdda-pll */
-	if (ret) {
-		dev_err(dev, "failed to set load at %s\n", edp->supplies[1].supply);
-		return ret;
-	}
-
 	ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
 	if (ret)
 		return ret;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
