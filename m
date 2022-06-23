Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7B0C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7Jc6M0LGs0eEEtUTyrHqfXlN/Fql5EbmhGXEn6hAqg=; b=twWNiPvDqB0CBI
	UQgZ3lCOorwQCFXenMZ0M8TFN+dCnvStouRqe8DSAeaj+bQpBvit23CEXdcvz6q7JQtzzPMI2c5p3
	nfu+WhOXbNv1jw3YsD/zSSakfyAvU3+QJfAxXhLpzjPY7nRhvmQG1UIk4D3Iy6knt9xRZzmgnGqQy
	te1gZgkZo2BnwBij3IKBr9mF0l70syUvWRW7XFnMm1W6zuBzeY2P2jKVz6p78So1lon/ubv+3MCb0
	xBXtPJFzUOU5Hd7gYTCRdytavgETriZNGfPFLsrmDNmShngO5Y97VM7ByL32sD1qGMTwJS9eaJDAz
	T2xlkbVY5wyl1EzMh1YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4L5o-00EjkZ-J1; Thu, 23 Jun 2022 11:33:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4L5j-00EjiO-4Y
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:33:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2166AB8224E;
	Thu, 23 Jun 2022 11:33:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49F71C341C6;
	Thu, 23 Jun 2022 11:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655984019;
	bh=xprJTN5w5gXBlNSXfX5SAAvt9W561yQWJjzVR1zxOVY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C6vhk84cdEDrKkEXXkhZsMXaP1x3L5Mstd9vY/jiTd4AzlqwpWR8h/HXBap3E9eff
	 NSm3qkTADJNuXKzXBOM9hmr2FRCNnC1T0uTaAzP2l9LsLOHAxoF6NQSy9copZoAJ/s
	 4TNtG1pe4cZcMRY2e2A3HCBjq6aK/2iQIph42IvWukXaDdIzcnh86tPsYZx3dgElXF
	 3PrTjXqyIZXv1CgkUhbVjxMtW4YPkulVN3mAwfH8eCb3rccAVH7FYGJ//HLAWE4JJJ
	 hXh4dna9xDJd6fNyC6kzlQFKgCHgiazuNEcNMfrW5uoz3ClF+fVbqvGmpnkastKxwX
	 CnsN+JLCvtfeg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o4L5c-0007kN-NL; Thu, 23 Jun 2022 13:33:36 +0200
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
Subject: [PATCH 2/3] phy: qcom-qmp-pcie-msm8996: drop obsolete pipe clock type check
Date: Thu, 23 Jun 2022 13:33:13 +0200
Message-Id: <20220623113314.29761-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623113314.29761-1-johan+linaro@kernel.org>
References: <20220623113314.29761-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_043343_359390_336E8F5D 
X-CRM114-Status: GOOD (  11.91  )
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

Drop the obsolete pipe clock handling which was used to treat the pipe
clock as optional for types other than PCIe and USB and which is no
longer needed since splitting the PHY driver.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 48ea1de81d7c..812d14afb5ec 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -904,26 +904,11 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
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
-		if (cfg->type == PHY_TYPE_PCIE ||
-		    cfg->type == PHY_TYPE_USB3) {
-			ret = PTR_ERR(qphy->pipe_clk);
-			if (ret != -EPROBE_DEFER)
-				dev_err(dev,
-					"failed to get lane%d pipe_clk, %d\n",
-					id, ret);
-			return ret;
-		}
-		qphy->pipe_clk = NULL;
+		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
+				     "failed to get lane%d pipe clock\n", id);
 	}
 
 	/* Get lane reset, if any */
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
