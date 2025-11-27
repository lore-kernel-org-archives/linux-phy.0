Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE8F0CFD2F6
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 13:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eG26kQGxOiX5nV5zls0a/s4Jj5WBpOslr72DSrVogbc=; b=jibkdgyXokh74h
	YprLgjpP8fDx3C463xBDVdlNYaRVFnk2DlziATfGbaT5kWOmZ8XwZuqTUik2sy8spK5dG7tpQbWzz
	pr7jx76OlwefDCCoSaqJWMi9RP1PhkyndJIzmmn71CtvKux2GzNvyrSVuF0RJcJ4Pl5gjg9tDK38d
	FUOEUBy6Py3A9R1I378CynOF57KIJGIyM8h0PYwn9ErgquXQqSZbVoTz0v4OgoxVcbyL5j1ZORcal
	303XXO7CBZ6yZqoUL1TpM8+gF6YRFMKI6bdMwahAjMtCCCWnEBUn+hIv3uxH/Yyi3xy2YR8EpCO+r
	U4y8jHJDvfo3lDzQO+mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOcMl-0000000GiKL-2nhL;
	Thu, 27 Nov 2025 13:48:59 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOcMk-0000000GiK6-3xck
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 13:48:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 16EBA6020A;
	Thu, 27 Nov 2025 13:48:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA45C4CEF8;
	Thu, 27 Nov 2025 13:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764251337;
	bh=N2+IV1yRY0T/LRl/K2e/owyDnFap0O5LSqnWZ9obaNg=;
	h=From:To:Cc:Subject:Date:From;
	b=r508GE7UTowlumnhCbER64bfwPrvcIIFZGX2rAoWGGErHMNURRoAItuSkCK+TUpdo
	 2inaOAv7ca1pUEAfyzDaNVNdNqiq563o093ZjdiLT48SHvXoLzRZ+pm+36czW8cT41
	 JpGe3DY05mgJOOQgdaTz6Ny6vMFFnr9NdhrA8Fx+arT1fR2FbvUm1I1MmfVy1ALmQ5
	 M7+Y88C1HHhYKwAMSrSezssUJfIuwLG7y0TZvZOvqpope8hPCpISqLwCvBjNMiHulC
	 hgeeOpUHoqXPkGVUpVJ6jakPG2TAJAnaBqYpZK7l1x8Xby7QDa8HhNrKjzdiEesWOE
	 XemmX0oycosvA==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vOcMm-000000000XO-11gd;
	Thu, 27 Nov 2025 14:49:00 +0100
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	stable@vger.kernel.org,
	Andrew Davis <afd@ti.com>
Subject: [PATCH] phy: ti: gmii-sel: fix regmap leak on probe failure
Date: Thu, 27 Nov 2025 14:48:34 +0100
Message-ID: <20251127134834.2030-1-johan@kernel.org>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
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

The mmio regmap that may be allocated during probe is never freed.

Switch to using the device managed allocator so that the regmap is
released on probe failures (e.g. probe deferral) and on driver unbind.

Fixes: 5ab90f40121a ("phy: ti: gmii-sel: Do not use syscon helper to build regmap")
Cc: stable@vger.kernel.org	# 6.14
Cc: Andrew Davis <afd@ti.com>
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/ti/phy-gmii-sel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 50adabb867cb..26209a89703a 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -512,7 +512,7 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 			return dev_err_probe(dev, PTR_ERR(base),
 					     "failed to get base memory resource\n");
 
-		priv->regmap = regmap_init_mmio(dev, base, &phy_gmii_sel_regmap_cfg);
+		priv->regmap = devm_regmap_init_mmio(dev, base, &phy_gmii_sel_regmap_cfg);
 		if (IS_ERR(priv->regmap))
 			return dev_err_probe(dev, PTR_ERR(priv->regmap),
 					     "Failed to get syscon\n");
-- 
2.51.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
