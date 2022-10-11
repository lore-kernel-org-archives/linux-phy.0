Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C85C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtVXnMuYepcLv+cCy7FFz+XWGO7IIFqJlyaUyy6UlyM=; b=Fgw3Uih4d1Pcn+
	JFj1MYRZ5Xmvqj5MCmur6mfRTSYW8SXsLEqgkQWzA/w3ZMe7oyl2B5FqF6Dq+okteyDZUEIiYzYfg
	1YzaG9auF28ReFy4UVUuW/tIQ6DMi6hTKuUBlmIN+CJOwpBjfailhpDSWNF0C4yttbmHBRB9ju6jx
	Ehc14o/DPOlxFquWY9hzBZjlU1wHqrj/qNkcYp5FdB/+r0WVR2D75jap2GLq1AWpfPB0ILOfu2R7F
	Pz+bh9PaDhwfI9DL2C7bkkxvQpNpq4XRvEnBwm9jqLLI/2Quj/4RdF1Qh/Yc3W3VXcwactzktkReW
	BVopcy5xvowZA/3AbgrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5x-004JBb-Bd; Tue, 11 Oct 2022 13:14:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5t-004J7N-9A
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:14:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8CE9861190;
	Tue, 11 Oct 2022 13:14:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6440AC43470;
	Tue, 11 Oct 2022 13:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665494087;
	bh=3ANqnrUqd9JGLqg1o0XGG2RFcR2wkphMXAousQI0Guc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Y/wOWr7M5vA2Y/G/CZhOvdAaM0bQzQv7kOnoKEeE3T//EizEkPdEZcWU2on9qj8a+
	 iJ99RGOcaE3hFHSOxwhk8UPtIo+AyqKmRhYR8dRKEf2Vo52zzU9XUNbU5luV6o32cU
	 1FOfGaHwtKMw/gVdWDhVBPfwIgB0NlCuDPGggL2+j59KipE2vbVkQyQ4S86aJtYW33
	 PDPgPvAQmri+XuZfoS6cG4NEgMzyH0rIyC6cNu6NiD4PDLtASi2nC5nTfgAf/8vDsy
	 ZNqyMAkPjhk0rXl0DIo+APIcyxvbbT4HdAF9T3gUn0zGYCuZ2rmnn6v8ztemvjNFlm
	 z9NKChyMm6SLQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiF5i-0000ed-7k; Tue, 11 Oct 2022 15:14:38 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 01/13] phy: qcom-qmp: drop regulator error message
Date: Tue, 11 Oct 2022 15:14:04 +0200
Message-Id: <20221011131416.2478-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011131416.2478-1-johan+linaro@kernel.org>
References: <20221011131416.2478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_061449_435035_0AD1BE27 
X-CRM114-Status: GOOD (  11.07  )
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

Regulator core already logs an error message in case requesting a
regulator fails so drop the mostly redundant error message from probe.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 3 +--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 +--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 3 +--
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 3 +--
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 3 +--
 5 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b434e2ee640..998c8f80ccd8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2816,8 +2816,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 
 	ret = qmp_combo_vreg_init(dev, cfg);
 	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to get regulator supplies\n");
+		return ret;
 
 	num = of_get_available_child_count(dev->of_node);
 	/* do we have a rogue child node ? */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 5fdd85a1dc3e..45c0e2958bf6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -869,8 +869,7 @@ static int qmp_pcie_msm8996_probe(struct platform_device *pdev)
 
 	ret = qmp_pcie_msm8996_vreg_init(dev, cfg);
 	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to get regulator supplies\n");
+		return ret;
 
 	num = of_get_available_child_count(dev->of_node);
 	/* do we have a rogue child node ? */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 30838ae8f027..dc7f8ba413b9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2445,8 +2445,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 	ret = qmp_pcie_vreg_init(dev, cfg);
 	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to get regulator supplies\n");
+		return ret;
 
 	num = of_get_available_child_count(dev->of_node);
 	/* do we have a rogue child node ? */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index e28c45ab74ea..566365fbfe1a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1210,8 +1210,7 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 
 	ret = qmp_ufs_vreg_init(dev, cfg);
 	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to get regulator supplies\n");
+		return ret;
 
 	num = of_get_available_child_count(dev->of_node);
 	/* do we have a rogue child node ? */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index b0b13fb6cb59..a0b97fd5d0a5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2746,8 +2746,7 @@ static int qmp_usb_probe(struct platform_device *pdev)
 
 	ret = qmp_usb_vreg_init(dev, cfg);
 	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to get regulator supplies\n");
+		return ret;
 
 	num = of_get_available_child_count(dev->of_node);
 	/* do we have a rogue child node ? */
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
