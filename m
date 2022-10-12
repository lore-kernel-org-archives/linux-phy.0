Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D965FC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Ng2zIu04ZO+cA22KuwX2TLu57wvyWJQ+BBkrpAzPOQ=; b=emxHGbTv0OUgQu
	PbFqr7mmzmTrTzhUiEl29t/WoVkLdAvSuKCp1V84ejaMM1RyVVSpviXj019g0MA9gCktWBo/YHNSN
	kA/wKVh2qsDwaw7FzHBZf0SCCK3rjCJ96jEYPuSZaqaoYRXfVrPMmibiJKkasSsOoMTK0A6rCrB/m
	0ah0jBLwjAhunZLKxOHX401xhU7Ulbpq7w1gDZ9IxcO5ZluxVDZb3dFM1d6dfzHfYfcAjOo2gw02z
	b4DZw7NTm+fR8Cax8VvzEIvURr6FRPVLjI7jvmj/KIBi1coGT1ugz8a7OGwLmB76AZMNTauAUb8lP
	mSiSgFMi3Jtw/xm7wrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuS-007Idc-5E; Wed, 12 Oct 2022 08:16:12 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuM-007IXl-Jf
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 27252B819D3;
	Wed, 12 Oct 2022 08:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A324C4347C;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=qqFp8pkcuDFPDWzKz8wdA3yND9yZMIZ+qVeRKRDBlv0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QhBw2fHjSK88bKwYYllfsycap5QPqPs4i/7FxqaXNiQF+l1W48DncKN4kewB48+Gp
	 B6g6qwUJkArQ8Ot56nNwzXoYAUZlRcs0zAMFysBMcdWIGAbaR8Fgk8WE4dwN1RQN5S
	 GqusJsf/WhyVe8pWh3xlntvD9qmR8e0zohwff2RduFzzf+u12B2UUxSdBitjUzWTx+
	 58u66g93bBCQsXDwdy29/YwysGQXEwhN/8YtAkR7lelVlb0if6jO+hv+wMFmGkW0Lm
	 0q6LUgNE1kEkvU8djIZ2xitJE4nSHBJ6OzEP1cACY4xY0G9EMmVuCEFv/9SnmAPV+B
	 wTmMGswTAkAMg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu2-0004oM-8E; Wed, 12 Oct 2022 10:15:46 +0200
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
Subject: [PATCH v2 01/14] phy: qcom-qmp: drop regulator error message
Date: Wed, 12 Oct 2022 10:12:28 +0200
Message-Id: <20221012081241.18273-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011606_969576_6F50C796 
X-CRM114-Status: GOOD (  11.29  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
