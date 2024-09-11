Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2811EE4998
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 11:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2z1ot6YGoxZpVuMd7oJXfG5uRX7pZrEfXxoioTEXCM=; b=qwxAclcRX7SXNE
	+CJLFok3SBgi+7QFtQ9VeaVAq/sqSKIvt8m3OjR7bg0ffCD2yuR8ghQQScRTA9eVjY+exNS0E6mAQ
	k2dT3D7bnycwmgzdddrIDKzK/yIS3edUhXCevI1ptbxSufOuWhqcvqt7d2dCrAGmrgOWL5NQSKSv2
	mkB5CwJzk0saoce9pd9/YTelfQhQIS2BII0CdpUUzGe5iwLXj7EzPEgflM5EB3YkvkZZFSR0cHJCY
	AfERMHYLDlpSXMsUPn3dCbjMhDRiiXDrwFyLnCp9i2UHCCTc/AE6Lp9k3l/7KnZ0c84+/Num0IiWA
	J7kQGHW2b97ciiFkvrAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLui-00000009MXs-15jA;
	Wed, 11 Sep 2024 11:53:36 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLue-00000009MVg-0iPw
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 11:53:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 43BFEA44CCD;
	Wed, 11 Sep 2024 11:53:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66CDBC4CEC6;
	Wed, 11 Sep 2024 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726055610;
	bh=IZP0j0URHKg34Z+uDXsss8wvd9andjBbgzMWCUodLmI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d/fdVFS6XEQFeADxLTiFke6jAgpiRerRJ5wROxrE+lBd1o2RdSV9MdHWHj+uZSyTk
	 Aa5yFtJdtYvhZ4UHC/ds5w2sYPQ0PCVu9jxL/RF53gk2LT+9lPc9u1lgvqFH1Gsrn3
	 c3payVXt+6GIJOX1elOndTTHvUAJIy+zVsKuaWTD2xC7SOBeLISnYqnwBe2lLhFGNF
	 0+Uhf8XscvoLCz/oFnKyiQrLcR8fUIm+ySWeCnI56xoHqp156zYYl8Qnj4Wj3SSaWb
	 wfejaQED14F7pR9NtI+WP9HlZuMqUSWrvavnVe9boWENRN6WyK9eTdpgmG2WSqV+E6
	 WT0MlbEwtZn8g==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1soLuv-000000002rS-2cQ7;
	Wed, 11 Sep 2024 13:53:49 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 4/4] phy: qcom: qmp-usb: move driver data initialisation earlier
Date: Wed, 11 Sep 2024 13:52:53 +0200
Message-ID: <20240911115253.10920-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240911115253.10920-1-johan+linaro@kernel.org>
References: <20240911115253.10920-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_045332_299730_55C96DBE 
X-CRM114-Status: GOOD (  12.38  )
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

Commit 44aff8e31080 ("phy: qcom-qmp-combo: clean up probe
initialisation") removed most users of the platform device driver data,
but mistakenly also removed the initialisation despite the data still
being used in the runtime PM callbacks.

The initialisation was soon after restored by commit 83a0bbe39b17 ("phy:
qcom-qmp-combo: add support for updated sc8280xp binding") but now
happens slightly later during probe. This should not cause any trouble
currently as runtime PM needs to be enabled manually through sysfs and
the platform device would not be suspended before the PHY has been
registered anyway.

Move the driver data initialisation to avoid a NULL-pointer dereference
on runtime suspend if runtime PM is ever enabled by default in this
driver.

Fixes: 44aff8e31080 ("phy: qcom-qmp-combo: clean up probe initialisation")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c478bf74817a..ddecf34968fd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3649,6 +3649,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	qmp->dev = dev;
+	dev_set_drvdata(dev, qmp);
 
 	qmp->orientation = TYPEC_ORIENTATION_NORMAL;
 
@@ -3725,8 +3726,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(qmp->dp_phy, qmp);
 
-	dev_set_drvdata(dev, qmp);
-
 	if (usb_np == dev->of_node)
 		phy_provider = devm_of_phy_provider_register(dev, qmp_combo_phy_xlate);
 	else
-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
