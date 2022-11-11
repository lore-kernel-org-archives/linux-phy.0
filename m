Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 796CBC4167E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u73iuT4t4fL7w5Ve9Z/2rLOqQKkG8G+AXEglm+K5aSI=; b=KzLqp6nIcsNF+H
	zBO5NXm3TH+RDylo3Piz0zY66E3VysCVXujJ4Gv/0VZwAF9fJodP0/yZI9UxFF52vKLycTkVmk64z
	HbzmKUhEoL5a+Blmone6qYMAhNb1+pq79rXgRdDHbqT3KFq8W7ORXDRVNZ95RPvg3L8myVAH0ExKU
	WsGRRQ4GXTVwMm9iLeBceDC0SYWE1uW5wBaF9JtXw4vZzDxtb62h9a/yByC5ZsxRfVcn9S5YzUVdM
	LUvJrirI97UKDWMglO1lnc00cizHPaa+lTK3RfvRjGfkf5/3f0e0VlMAY48mL4lARnUUWsFuS7NbL
	DplhsvdJjbQnMRNSFQbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqy-00EPj6-TQ; Fri, 11 Nov 2022 08:57:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqn-00EPUV-BI
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EA13F61F06;
	Fri, 11 Nov 2022 08:57:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21F76C43157;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=eW3+jzMHM1mxUjKl/OmFeMIXXkIdOBHUWC1tQ0C6GkI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Sy3FsnIKxz2gXhxDoeR6JUqd5AqE1vn2vgLLdFTVAJ20eMA8419gCkbmAJg2W1XSs
	 +dXRCJcvy7G+e8aihRTniXtnxgeOHhcvrqs4EEEpqTxviy9w8tD9//irnDgP1b7zVp
	 6xvSC22AVaRcNRJTQRjS8dCYxGbTL3ARynH2w+nnAKpKfHD3Z3/lSCTKbWWPZ39N0G
	 HpxyJx5bwHuBsarOq0552xg5+fwUzD9Mwgq0r7L2tt9ufv3gufN7E/YL+dvt52uFeM
	 o5o9CP78GXsDvCqXke2dH7fLuloskGo6pyM2CccwnIdpAGfJra0zTQL2kZeiIpBy8j
	 5sACxYSwgB+Tg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqJ-0002U5-Cb; Fri, 11 Nov 2022 09:56:55 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 07/22] phy: qcom-qmp-combo: drop unnecessary debug message
Date: Fri, 11 Nov 2022 09:56:28 +0100
Message-Id: <20221111085643.9478-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005725_477357_56683BB2 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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

Drop the unnecessary (verbose) debug message from the init PHY op.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bf0874d22d91..ae04f6219fd2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1967,10 +1967,8 @@ static int qmp_combo_com_exit(struct qmp_phy *qphy)
 static int qmp_combo_init(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	int ret;
-	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
 
 	ret = qmp_combo_com_init(qphy);
 	if (ret)
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
