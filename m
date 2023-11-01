Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1AF6C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  1 Nov 2023 15:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYsvBRPD2NcBiXY3AvBDpmO/b2BR99f2BP2KdwhjBT4=; b=vgHxhedJP3MzJ0
	x9KcfHmDMQGfu41zTTybTklcBWUtq3y2MS8UBlxW110lPKoYyl4n3E69khgWj/IFh4OnftJAO5p1/
	xJpPunUIgpA7PGrmMZQqFofQf8xLTitnMxMvtMuGXMzo+ByYYYZvWmSRdN+E/CzGmdMPGjPSwjP6a
	4zvZIdxROD+lsEKSEkKNMtPCsfDe30AulOK6+xUe3uGZSiIhfE8WhcNOxlwzCABFFh4gkoeZTTsrx
	y8JaSc7kQWaYnH6Cj/Ahp25F2JRZxdyRiYIc/ItYF6LG5FB0oWiPskhuCCAjXL3uAn96jA0HVq3IC
	A5OG42YTsuFDv6zG/0Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyDbi-007mcf-2K;
	Wed, 01 Nov 2023 15:58:14 +0000
Received: from smtp-14.smtpout.orange.fr ([80.12.242.14] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyDbe-007mbK-2K
	for linux-phy@lists.infradead.org;
	Wed, 01 Nov 2023 15:58:12 +0000
Received: from pop-os.home ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id yDbZq0T7ydFbKyDbaqoC18; Wed, 01 Nov 2023 16:58:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1698854286;
	bh=i21kCUborbDIm4AbDPL2tQN3AqBRzOGB4lpH+Cd5dY8=;
	h=From:To:Cc:Subject:Date;
	b=dOSSpP4vQt0MNdHx9PyLyIAn38jj8YspPHjD2QCCUf9Uxsof8mzZ3pfM3ULTChpMu
	 0IjIVsFBWuzWIjTIBOIOCp/PW9+q1UKBOgNU4UTcdyhrrxRz7zD3BB9+kBk+NCtMPu
	 mK3Re2YadiLmgBGIKlren4V71eaOizgHLuf/z2ZMKEI+m3fnoSWWoTbXYPFOUkGPT0
	 J+Ks83hInGhi5lEtFbAQal/dujHm6jAcqZSxpJ0+yM5Lh7CdKR1ZoaM8PPEzsuMxOM
	 gnMYGrfHWx+H9mNmaTQ68TbutnjMeC9hDytjv3V1RbedSFaznZYXFwgLAE7LpRIqt1
	 2VdzsVliFMI6w==
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 01 Nov 2023 16:58:06 +0100
X-ME-IP: 86.243.2.178
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: core: Remove usage of the deprecated ida_simple_xx() API
Date: Wed,  1 Nov 2023 16:57:57 +0100
Message-Id: <d2323636c6cd2ec22f73a0ae6c2d34ac99b4abd5.1698854255.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_085810_895329_F675F5D2 
X-CRM114-Status: GOOD (  10.80  )
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

ida_alloc() and ida_free() should be preferred to the deprecated
ida_simple_get() and ida_simple_remove().

This is less verbose.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/phy/phy-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 96a0b1e111f3..d9be6a4d5383 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -959,7 +959,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 	if (!phy)
 		return ERR_PTR(-ENOMEM);
 
-	id = ida_simple_get(&phy_ida, 0, 0, GFP_KERNEL);
+	id = ida_alloc(&phy_ida, GFP_KERNEL);
 	if (id < 0) {
 		dev_err(dev, "unable to get id\n");
 		ret = id;
@@ -1232,7 +1232,7 @@ static void phy_release(struct device *dev)
 	dev_vdbg(dev, "releasing '%s'\n", dev_name(dev));
 	debugfs_remove_recursive(phy->debugfs);
 	regulator_put(phy->pwr);
-	ida_simple_remove(&phy_ida, phy->id);
+	ida_free(&phy_ida, phy->id);
 	kfree(phy);
 }
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
