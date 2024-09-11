Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D270CEE499D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 11:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeY3avyADA+OG/RKs5FyIjKnGJsHcGAXy51HquXTBHU=; b=KcQ6YLsYu0NhdL
	7REHGlOBZi+JfAxajYf5aeFalDr0BWvOJNmSikKOnDXEUUwjGHsfY/+1NoEV7vNQJTp377Mt7cH2r
	sIromA9/wAaYw0aFCYp61aW7/vh9/8LPelCKFtX57wZv3cUDxuA0KAQSgsr/rNRxXDSmgCPgdprip
	7aynKoG57dfvIOJTBGXRaoDY3O7xqgIQUsOm0MX5TiJrSdFPP7K4qFFN+ju/DRDrAx0eb04HxSzdl
	UoEs4kNjchCgb5evDcwBOSXn7Bnzn3iTa0BsG9SXMYWzQvBH07PpubSpyz2lNodPXiNOP6GAZoUWz
	FzlKvDFH5/zPThu3J+Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLuj-00000009MYK-2RoH;
	Wed, 11 Sep 2024 11:53:37 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLue-00000009MVh-0y11
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 11:53:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 89958A44CD1;
	Wed, 11 Sep 2024 11:53:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CFADC4CECE;
	Wed, 11 Sep 2024 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726055610;
	bh=pY7ZEUhLGzksrKZfDgxIIs9lG9DM9Yt0khFnqvZZ+d4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vM51sJdDqQ4+sKY3Ntz1M0MKkDsCRj3bG5+TWbNJNMvBNAjn4CE/o3GDYl8iFKpii
	 MnYaKOSy9gUC/6kebjavN8KiclPXzIJOZFFzGtALkj4NoWRODotpj405ad8gQzPz64
	 yf670FHTUIQUIAGy82aTVbRYCA4wzOyd2QdAYLqVNq/OSRkYDxRiXd344KWWU/XNKX
	 4WSRLtWZ5nYLlmy122coEfpEZ8Wl2kW4rGAjOKSYjbVMFenGBM4YyojeIbzNzLAgHo
	 bwiaV4EZ/TbzUyHp57BPm2kkQ+d9ETmhg0WZCpTAA7MVIOZr4xSlWqem5bTrJsg8AG
	 yXbZzk4pcViJw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1soLuv-000000002rO-1ufT;
	Wed, 11 Sep 2024 13:53:49 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 2/4] phy: qcom: qmp-usb-legacy: fix NULL-deref on runtime suspend
Date: Wed, 11 Sep 2024 13:52:51 +0200
Message-ID: <20240911115253.10920-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240911115253.10920-1-johan+linaro@kernel.org>
References: <20240911115253.10920-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_045332_379163_9546BEFF 
X-CRM114-Status: GOOD (  10.87  )
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

Commit 413db06c05e7 ("phy: qcom-qmp-usb: clean up probe initialisation")
removed most users of the platform device driver data from the
qcom-qmp-usb driver, but mistakenly also removed the initialisation
despite the data still being used in the runtime PM callbacks. This bug
was later reproduced when the driver was copied to create the
qmp-usb-legacy driver.

Restore the driver data initialisation at probe to avoid a NULL-pointer
dereference on runtime suspend.

Apparently no one uses runtime PM, which currently needs to be enabled
manually through sysfs, with these drivers.

Fixes: e464a3180a43 ("phy: qcom-qmp-usb: split off the legacy USB+dp_com support")
Cc: stable@vger.kernel.org	# 6.6
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 6d0ba39c1943..8bf951b0490c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -1248,6 +1248,7 @@ static int qmp_usb_legacy_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	qmp->dev = dev;
+	dev_set_drvdata(dev, qmp);
 
 	qmp->cfg = of_device_get_match_data(dev);
 	if (!qmp->cfg)
-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
