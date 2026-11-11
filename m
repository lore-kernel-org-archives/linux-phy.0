Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B828A606A326
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 09:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HZTUwO1T;
	dkim=pass (1024-bit key) header.d=cmss.chinamobile.com header.i=@cmss.chinamobile.com header.a=rsa-sha256 header.s=default header.b=C6qg7oav
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=mK+St/g0rYLGfgJiIZpBQ/axVDyVVKdj61OSp1Sv6Go=; b=HZTUwO1TsGIcZ01o8RJbRZTD8w
	S/H4WqJEWWrgg//baBWDMG6+gndFXuOFDOv9HroRae5ISPrvyVvW8bA8Fcz7fO4uh7H8L6Or6gFSi
	ifl4dCT0jH2pfuq2YG2mVcG5SSvptAtrHMPJ5ePNFcJF5nWzsJREQZ+Z9FNlCGGso5xXoc8UyVvMa
	wJGWEtHuAdxhaQ3pxYswtJW7o4d/mDSxc7HtnDEAoPSqT99s0jABaugWPA5PZV26VBNwawZmUEVIa
	dnonlNNeFLkARzfBZhyLsmbRa6q+wZmiwCXNdqsKG66iTbrKGyzeE4UD/TbR/AqHa7xU3zSxnazMF
	Zdbkzz1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR4Br-000000067Ak-3qNH;
	Wed, 11 Nov 2026 09:00:24 +0000
Received: from cmccmta6.chinamobile.com ([111.22.67.139])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR4Bb-00000006792-0G5W
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 09:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cmss.chinamobile.com; s=default; l=0;
	h=from:subject:message-id:to:cc:mime-version;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	b=C6qg7oavpRnI7fJQKUapD8oifWY22JPLzkECfhGsZEw1iP2KUXr+52eANWHb4K6fwfEIJqY2S9DH4
	 mEiQ3TBuqVwp9tlYsx7wi13FMAZq7ppwPE4oOQXzKlYEL0mePjd0m030VTIvu50d8MGsAS5hwBPF2h
	 PMbGAfLRgsLYIS5k=
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from spf.mail.chinamobile.com (unknown[10.188.0.87])
	by rmmx-syy-dmz-app01-12001 (RichMail) with SMTP id 2ee16af42e8aa82-b2f53;
	Wed, 11 Nov 2026 16:59:54 +0800 (CST)
X-RM-TRANSID: 2ee16af42e8aa82-b2f53
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[223.108.79.101])
	by rmsmtp-syy-appsvr05-12005 (RichMail) with SMTP id 2ee56af42e88fd9-d644c;
	Wed, 11 Nov 2026 16:59:54 +0800 (CST)
X-RM-TRANSID: 2ee56af42e88fd9-d644c
From: Xia Yan <yanxia@cmss.chinamobile.com>
To: Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Pengcheng Li <lpc.li@hisilicon.com>,
	Jiancheng Xue <xuejiancheng@hisilicon.com>,
	Shawn Guo <shawn.guo@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	yana06070@163.com
Subject: [PATCH] phy: hisilicon: fix UTMI reset leaks in INNO USB2 PHY
Date: Wed, 11 Nov 2026 16:59:42 +0800
Message-ID: <20261111085942.159625-1-yanxia@cmss.chinamobile.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_010007_663953_25465E9C 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

hisi_inno_phy_probe() acquires an exclusive UTMI reset control for each
child node but never releases it on probe failure or driver detach.
The leaked controls remain acquired, so a later probe can fail with
-EBUSY when requesting the same resets.

Register a devres action after each successful lookup to release the
control on probe failure and detach.

Found during source review of reset-control lifetimes.

Build-tested the driver object on x86_64 with W=1 and reset support
enabled. No hardware testing.

Fixes: ba8b0ee81fbb ("phy: add inno-usb2-phy driver for hi3798cv200 SoC")
Cc: stable@vger.kernel.org # needs of_node_put(child) on <= 6.6
Signed-off-by: Xia Yan <yanxia@cmss.chinamobile.com>
---
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
index c843923252aa..9bf207e3e692 100644
--- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
+++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
@@ -132,6 +132,11 @@ static const struct phy_ops hisi_inno_phy_ops = {
 	.owner = THIS_MODULE,
 };
 
+static void hisi_inno_phy_reset_put(void *data)
+{
+	reset_control_put(data);
+}
+
 static int hisi_inno_phy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -169,6 +174,10 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
 		if (IS_ERR(rst))
 			return PTR_ERR(rst);
 
+		ret = devm_add_action_or_reset(dev, hisi_inno_phy_reset_put, rst);
+		if (ret)
+			return ret;
+
 		priv->ports[i].utmi_rst = rst;
 		priv->ports[i].priv = priv;
 

base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
