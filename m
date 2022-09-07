Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCAD2C38145
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sxaJc10zspegU86AJYeDyBX0KV8uO3MgE6X5/75ZXc=; b=EkJg4F5lmdHpEb
	bYYfbmOcdg7TA94JyWh5f1Xw7Fds1jKuON+lF8pH2fK4avG4YGcLF5g6CpzNKIrm/iFdPpEf6GJDG
	giHfdw6sB4YEJNAZoyBzYcoCT4YH9epgAUJ4uuuNekOUPCGnbHOZajlYBONTpEn1207kBcu+VpjZ6
	tXSoI8rPKgrJsDTQeYg5emq3RmkH565T7MwDVvgG0Ol+YAhBeFT2/OeclTprHTDuOkqLfH6j6KUeN
	ZLyLtzx3PFGb8CyFBayhcnlE61Ry3y7+DlKthGYi5gQqEBcRGfqqtrr49Lj/Ve7TfbWVyq9w0ikMk
	dCoCT+Mok72IRWOiJvJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuX-005XEc-JA; Wed, 07 Sep 2022 11:08:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuM-005X4i-H9
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:07:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5BAD061868;
	Wed,  7 Sep 2022 11:07:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BF42C43470;
	Wed,  7 Sep 2022 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548868;
	bh=xeeZ/hRPE1L6ERcuNq6GJw4L6Pi8/SbKoX7gCvYyM1g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Wh8WQ2Ka1MNzUqZ3C6xSChljMAEtiYKN4ec6nyiM8LLuBLbQNQzwzSxQYyLvkea1u
	 cQGWVL7ecrgJAy8ib4L3oh6DLEfa3f26TPHcixZB6DR1PmSYqvwPebJKR+fYWVGSPP
	 bZ+zVNRmrwkwNB8AV/q0jwdyxvdIfDcCPGs0txAxdJunDaLOZk0n1gO/pUzD42PGkU
	 DeUeqfs1yZn9hA+ioGLqFaoEVyfbmckwNDI4+O6jMsGtTL7ULB6zxbdXPlwQ2dZmid
	 nExuAJzc1bH1kuugo7OEEK+J+pZTkKAs0q2Kg5Vofgu3pfIFZpfKWUBz3MuUzXbema
	 VFQUXh9doM+6Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuO-0004yo-47; Wed, 07 Sep 2022 13:07:52 +0200
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
Subject: [PATCH 01/16] phy: qcom-qmp-combo: disable runtime PM on unbind
Date: Wed,  7 Sep 2022 13:07:13 +0200
Message-Id: <20220907110728.19092-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040750_687895_C15234BF 
X-CRM114-Status: GOOD (  12.26  )
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

Make sure to disable runtime PM also on driver unbind.

Fixes: ac0d239936bd ("phy: qcom-qmp: Add support for runtime PM").
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index af608c4dc869..9ce2ab56be4c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2930,7 +2930,9 @@ static int qcom_qmp_phy_combo_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
@@ -2987,13 +2989,10 @@ static int qcom_qmp_phy_combo_probe(struct platform_device *pdev)
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
 		dev_info(dev, "Registered Qcom-QMP phy\n");
-	else
-		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
 err_node_put:
-	pm_runtime_disable(dev);
 	of_node_put(child);
 	return ret;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
