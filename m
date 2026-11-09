Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6223E606A323
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 07:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gltIzKaw;
	dkim=pass (1024-bit key) header.d=cmss.chinamobile.com header.i=@cmss.chinamobile.com header.a=rsa-sha256 header.s=default header.b=B5sgBt1K
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=G9b5sNRlbY8l/60+k5KpUOct0Nw6mn+zw5FWBs9Ju1c=; b=gltIzKawnAIyyD1o2WcYNcRZhU
	HJalkIRaBQfuzJbJuOF3izh9rsKDE9xkaPr3foLFxbYLUPtNpqvSnazI1N+WDo6KLW7CJ+QiQybZY
	/S7UkhKuEG+8C5rTMF4eNE655PhMnrbbkvcWj/WyYklU8BXYT11lEu8wQCgAlGwqfvetP3zUowSYF
	E6o4bl6xcUTZmnwsN7FVLsapcLgbyVGrJzw2pFRiFG7Tef7HQhSGDrjzKSJV4+tuQDy5PXMdIDdVr
	UEd3ZYERlswe2s1Q6UgU1S4D1Su2Mw1zofi3Jg/DnQkGHGhFDm6cBTXhR05HH2aWc2IcQutRc1yP6
	lxoIu8tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJkX-0000000HYqr-44Vd;
	Mon, 09 Nov 2026 07:25:05 +0000
Received: from cmccmta6.chinamobile.com ([111.22.67.139])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJkU-0000000HYq2-0ATl
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 07:25:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cmss.chinamobile.com; s=default; l=0;
	h=from:subject:message-id:to:cc:mime-version;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	b=B5sgBt1K6hlOjrNziZXLsOA/OmDv8aWDdRUsc+keAVKutHXlsYv732ugGQnibE53xuDrS9h+6AfRV
	 mVEuOa4y8wv1+ky7inzk957J8lXjbGStQdw8jB0RDGjfqfQiEl45FN3GwOARzRwhmeZ8IunHXNfhqB
	 6FToYJ4aM3fnSr0Y=
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from spf.mail.chinamobile.com (unknown[10.188.0.87])
	by rmmx-syy-dmz-app09-12009 (RichMail) with SMTP id 2ee96af17541867-c7af4;
	Mon, 09 Nov 2026 15:24:52 +0800 (CST)
X-RM-TRANSID: 2ee96af17541867-c7af4
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from Z04181456177947 (unknown[10.55.1.71])
	by rmsmtp-syy-appsvr05-12005 (RichMail) with SMTP id 2ee56af17541290-860be;
	Mon, 09 Nov 2026 15:24:52 +0800 (CST)
X-RM-TRANSID: 2ee56af17541290-860be
From: Zhao Feng <zhaofeng2@cmss.chinamobile.com>
To: Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: Johan Hovold <johan@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	linux-kernel@vger.kernel.org,
	Zhao Feng <zhaofeng2@cmss.chinamobile.com>
Subject: [PATCH] phy: ti: omap-usb2: fix OF node leak at probe
Date: Mon,  9 Nov 2026 15:24:49 +0800
Message-ID: <20261109072450.1005-1-zhaofeng2@cmss.chinamobile.com>
X-Mailer: git-send-email 2.55.0.windows.5
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_232502_683214_C3948A2E 
X-CRM114-Status: UNSURE (   6.71  )
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

omap_usb2_probe() obtains a reference to the ctrl-module device node
with of_parse_phandle() and never drops it, on either the successful
path or the !control_pdev error path.

Drop the node reference right after of_find_device_by_node(); the
device reference taken by of_find_device_by_node() keeps the platform
device alive and is released at unbind by the devm action registered
below.

Fixes: 478b6c7436c2 ("usb: phy: omap-usb2: Don't use omap_get_control_dev()")
Signed-off-by: Zhao Feng <zhaofeng2@cmss.chinamobile.com>
---
This is a resend of an identical one-line fix that stalled twice:

- Miaoqian Lin, 2025-10-28, with the same Fixes tag, which collected
  Reviewed-by: Johan Hovold <johan@kernel.org> with the only remark
  that Cc: stable should be dropped (done here), but was never applied:
  https://marc.info/?l=linux-kernel&m=176163256031244
- Guangshuo Li, 2026-07-08, which got review feedback from Manivannan
  Sadhasivam on 2026-09-26 (wrong Fixes tag, cut-off commit message)
  and was never respun:
  https://marc.info/?l=linux-kernel&m=178349844443656

Verified against current upstream master, which still leaks the
reference.  Not runtime-tested (no OMAP hardware).

 drivers/phy/ti/phy-omap-usb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -427,6 +427,7 @@ static int omap_usb2_probe(struct platform_device *pdev)
 
 		control_pdev = of_find_device_by_node(control_node);
+		of_node_put(control_node);
 		if (!control_pdev) {
 			dev_err(&pdev->dev, "Failed to get control device\n");
 			return -EINVAL;
 		}
-- 
2.39.2




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
