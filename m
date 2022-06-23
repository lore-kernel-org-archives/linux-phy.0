Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44121CCA480
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8QT7qef31eFUKTkZKzFMQOHH1g9n44/3U0Y1Aj7HOE=; b=TTVKSaPHyl4Mif
	xbagCrlX9fRCs5eqwY+tXmhuoEiyFRzCFWk6didLQCyZoFFILR/KXrGaTY+t9hAuxC8NtIzG1GlpT
	Sk3gfto+LmyCdv4OCwXr1Wd6l/UIHecCTrmms8+v3i7OXpx107hU/2qpmyOhVwzB7PT271dK5SqHZ
	q8GclhAKZ+yVK0b7BoRsv95smd0coyTVZAUd9Ew7ZXe4nXbVpiWdpJSTUzx8aKBdjree9L7QPGoDk
	0T5oxZO+3Lg9E/4x2rViUMgY/aBGX+KGOWkWbbrf/xeo44kshdo/z60uOC+1k5k+209hh61CxsX7S
	YgYxBTafq118L+4IzRTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4L5p-00Ejko-MH; Thu, 23 Jun 2022 11:33:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4L5j-00EjiP-KQ
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:33:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D316CB8224A;
	Thu, 23 Jun 2022 11:33:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 595B3C341C7;
	Thu, 23 Jun 2022 11:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655984019;
	bh=rF+KnkI8TrvuBOWUOKxZrJzbKbUt+JURZ8zGL45kkxs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f31BjyG3rUQD5UMRNzPEvh6jmBF8vkqf3MgFOKD1wvcbTfM0XrSwXr85kmFd6aMif
	 sLG7i4v0Df/TpIGNn50+q4w9Y386n5yEcjP4PoTjsx/SWCDpmxC2yvbaneNdnt3aeP
	 PcOqQMdDNW4SPC2wiE+8wXH+emXMJvzhVozCrjc8qu+DbzLdqu95Wm896fvCZEPvbm
	 z6ezr2lYK/epWpI446emHB6gwJz+iDT65N78UmQcdptQ43ullzZzUYsm6b1jw9rlzk
	 vGwXg8EYWINeprBEKy14Sc0EHOJDIPYUG6Du10lcvOniI+LD/nayokD6/e4tmiSqRB
	 WRtX1CfVruapw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o4L5c-0007kL-Kr; Thu, 23 Jun 2022 13:33:36 +0200
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
Subject: [PATCH 1/3] phy: qcom-qmp-pcie: drop obsolete pipe clock type check
Date: Thu, 23 Jun 2022 13:33:12 +0200
Message-Id: <20220623113314.29761-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623113314.29761-1-johan+linaro@kernel.org>
References: <20220623113314.29761-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_043343_845366_F23D8A2B 
X-CRM114-Status: GOOD (  11.59  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b2cd0cf965d8..385ea3d8de08 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2210,26 +2210,11 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
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
 
 	generic_phy = devm_phy_create(dev, np, &qcom_qmp_phy_pcie_ops);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
