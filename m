Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02620C6FA89
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwwGKjjGKJLeaKCuubNezatLgdesxg/SrhwtpXr2TQE=; b=JNbU33o/jBXEmp
	9YFjCka4MUHvh665ptO0BDsaNk+rvuAckAIHmUm8Q8puZ5UlqnsPeAxd9L8VGsJgi0B6LSalXw1BC
	457wkD2WuG5iwcKoSgdNZr1U/XghelP8gCxNvGwCGDXUXsfLYEH+7/Z82x8ns6WzXCFuyxow2GOB6
	dWvE88pvSPSPq/osE4X3naQmfXwJWj8w3hMhc+HCv6EARd3JNqCnk9wS538z9KW0P/3PboR25rseh
	D3d+7OhvvzgtrvxkhCWCp2Z+1yXFPp4a6k4BUJ40m0NBRtDZAQT23uC65Q3EqiieBM9DB2iVqcr3h
	iWwPWqYu3OOdfNCBnDfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsud-005XJ1-Aw; Wed, 07 Sep 2022 11:08:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuM-005X5E-P7
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:07:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4C8476188D;
	Wed,  7 Sep 2022 11:07:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B03A6C43153;
	Wed,  7 Sep 2022 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548868;
	bh=aHaRaYHYV8iVhLhmcB9HfKisaYYGvTTVWhp0+xMi1pE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oaNpCGx/HGZ5y8KsmqUfPaNPZ9lz0H/fvsFxocJsQwyL6BXD6wFwAC6z/2VCKP3UR
	 T3UThYbcZsZuxrouVCtOhCIMYt6vO8GPP3bzCvqYwozWjdtQuHUSvJUgwOmJW6RIsu
	 3Fh7HxH2l/UT0sDSl9pxQj8YrS/yaPhb/nXjjmDRMmFYyZOB4gHvWuqtt7LvtBg3PA
	 Etr8RXcqYQMprMnc5lTw7vX+5/G5xlMkZ9ozYdlQQW4NOVN/sHgKrET/A5taa8bc0d
	 X5nn/ijANaEoDSbOfgiZhqluM75b+gAagTGxDCqQMrTIj6r/an6U8Qyug0AsYp9WT6
	 irsb7kfk29Jbw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuP-0004zI-1M; Wed, 07 Sep 2022 13:07:53 +0200
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
Subject: [PATCH 11/16] phy: qcom-qmp: silence noisy probe
Date: Wed,  7 Sep 2022 13:07:23 +0200
Message-Id: <20220907110728.19092-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040750_947630_A965CBA9 
X-CRM114-Status: UNSURE (   9.82  )
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

Drivers should in general not log anything during unless there are
errors.

Drop the pointless registration info message from the QMP drivers.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 --
 5 files changed, 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 838f7e328b55..c03878fdf8a7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2972,8 +2972,6 @@ static int qcom_qmp_phy_combo_probe(struct platform_device *pdev)
 	}
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered Qcom-QMP phy\n");
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 49df846c31e6..45701b498efc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -963,8 +963,6 @@ static int qcom_qmp_phy_pcie_msm8996_probe(struct platform_device *pdev)
 	}
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered Qcom-QMP phy\n");
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index c5d8eedab4ea..e6bffb0e2da3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2448,8 +2448,6 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	}
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered Qcom-QMP phy\n");
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 62e9007137c9..28b75772cd0f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1287,8 +1287,6 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
 	}
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered Qcom-QMP phy\n");
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index c50ebe8d19bc..08e0799e8832 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2859,8 +2859,6 @@ static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
 	}
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered Qcom-QMP phy\n");
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
