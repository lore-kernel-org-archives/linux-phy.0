Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DEF8C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 12 Dec 2021 06:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ufmomYJFG+xcALLHMzwwufTDoLvVuIlJ73WtvQ0yDhw=; b=wXZrnPJNyq6Yeb
	G1R9hWUH4hgIZ6AHpNJmOTklFsBEZLKl+HhemkgLf82uM5pYNP5tbQGcU3QmKuvKJ8HkXKHWzxa3m
	KrhdO3yG6SMgD7BXev3193Rt21JoIHkybvuth47AdC74L2RASh9lFrCMOULRqW8p3IMKGsvdQXvSU
	zHQrXDFf8H9qFOwoEiEjpQe3vzStWF6Dez+Cs33K45eZrBJQaE1l6frKyJPVE110zvfYyD6Majxq0
	JbMUYGaTKFY1+jjusHd5e1coehePirOwpMocjmuHZ1t/Z+Lau2gGcgyyRlH6TPp2xrk05jR5cn5F5
	QFoZ3ZV3A2SlOuqzxsHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwIgg-0061zE-Jm; Sun, 12 Dec 2021 06:50:22 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwIge-0061ye-HQ
 for linux-phy@lists.infradead.org; Sun, 12 Dec 2021 06:50:21 +0000
Received: by mail-pj1-x1036.google.com with SMTP id
 y14-20020a17090a2b4e00b001a5824f4918so12382500pjc.4
 for <linux-phy@lists.infradead.org>; Sat, 11 Dec 2021 22:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=Vv5HnCBn8ZZpA7yWumcO3TVtFyNutN2LSOBDm38pII4=;
 b=lHproLaSO5xxAcZ7keHz60psiB6fnSyaocv07YHedRG0Ni2Sgdiu213n4n6BKu5n1X
 hF/kmfnosyvrSljTVUdQhGwq+T/anRyJ1z2WtNC8hHCeFCz/712L5Z45TjJy2IWlqtyj
 20oLbMA92hkwdqPlg7Xm0Rl1WbUCudBOUULoVH/RYWmh4UGHbZA9aKP7/kwv5+p5ww5U
 fxiJVTY8NuFVviJg81e1dlJ1JCN2+eghcYFNUcJ9iCH+W4ac9gaPZiynECOL3KflT5Gb
 SwAY8uuj0UA4seNSR4M824qTr8Srt1e7AcQJqYpBlkhmIwqDBe/4TFPLfNuTdvDg1rVd
 gibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Vv5HnCBn8ZZpA7yWumcO3TVtFyNutN2LSOBDm38pII4=;
 b=e8i1yv1Hfn5EPwoKKu/Qvjz/xfkdKopz7YO3vQJjZJ0+CQqpXb1gxQV+xciWKS3/8C
 XEJHgieL2VHLaFa9wwC6Ti+HW/I/gkHrHdz6g/6Nomqx74JpPEIlYZNO0mCARFYO4448
 kYjwWfRXQ9vLjpqiw6azVWtczNeveOUnBKgI7uaDLAWiTWrwi1xKdQmlyx8pZRSEz9WF
 OlNeAvmIHDEjGkkQmCsPmOyTZRjAy8X/7Xh+5MZzePa3OowsZBF7tAXHO5N8Xg7hOKym
 0GujbJHHsjkXlA2pS1dta2ys/esq1akBc2MSEQXNyV/aAQJV7bEBMHcuQ6G/Yur0DDSY
 Qzpw==
X-Gm-Message-State: AOAM533qjk1ViOFJNYHxDJ6RWF/PwCChecAyiVWm5s96ZFS3m2P4Atzk
 KzJoJS+3JauJrwNOCkB/hQY=
X-Google-Smtp-Source: ABdhPJwGWiBsr3aky1R6JtO8s875qTPMx14Q38lR67upO5k8arQsQEmsr43TObpKWSsNtL550Npx/A==
X-Received: by 2002:a17:903:2082:b0:142:7dff:f7dc with SMTP id
 d2-20020a170903208200b001427dfff7dcmr87437835plc.46.1639291819898; 
 Sat, 11 Dec 2021 22:50:19 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id q10sm2910261pjd.0.2021.12.11.22.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Dec 2021 22:50:19 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: 
Cc: linmq006@gmail.com, JC Kuo <jckuo@nvidia.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: tegra: xusb: Fix NULL vs IS_ERR_OR_NULL checking
Date: Sun, 12 Dec 2021 06:50:14 +0000
Message-Id: <20211212065014.31660-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211211_225020_620171_278B1FB4 
X-CRM114-Status: GOOD (  12.28  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The tegra_xusb_find_port_node() function may return error pointer when
kasprintf() return NULL. Using IS_ERR_OR_NULL to check the return value
of tegra_xusb_find_port_node() to catch this.

Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/tegra/xusb.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 963de5913e50..52c2f85c67c3 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -472,7 +472,7 @@ tegra_xusb_find_port(struct tegra_xusb_padctl *padctl, const char *type,
 	struct device_node *np;
 
 	np = tegra_xusb_find_port_node(padctl, type, index);
-	if (!np)
+	if (IS_ERR_OR_NULL(np))
 		return NULL;
 
 	list_for_each_entry(port, &padctl->ports, list) {
@@ -763,7 +763,7 @@ static int tegra_xusb_add_usb2_port(struct tegra_xusb_padctl *padctl,
 	 * marked as disabled there is no reason to register it.
 	 */
 	np = tegra_xusb_find_port_node(padctl, "usb2", index);
-	if (!np || !of_device_is_available(np))
+	if (IS_ERR_OR_NULL(np) || !of_device_is_available(np))
 		goto out;
 
 	usb2 = kzalloc(sizeof(*usb2), GFP_KERNEL);
@@ -829,7 +829,7 @@ static int tegra_xusb_add_ulpi_port(struct tegra_xusb_padctl *padctl,
 	int err = 0;
 
 	np = tegra_xusb_find_port_node(padctl, "ulpi", index);
-	if (!np || !of_device_is_available(np))
+	if (IS_ERR_OR_NULL(np) || !of_device_is_available(np))
 		goto out;
 
 	ulpi = kzalloc(sizeof(*ulpi), GFP_KERNEL);
@@ -884,7 +884,7 @@ static int tegra_xusb_add_hsic_port(struct tegra_xusb_padctl *padctl,
 	int err = 0;
 
 	np = tegra_xusb_find_port_node(padctl, "hsic", index);
-	if (!np || !of_device_is_available(np))
+	if (IS_ERR_OR_NULL(np) || !of_device_is_available(np))
 		goto out;
 
 	hsic = kzalloc(sizeof(*hsic), GFP_KERNEL);
@@ -970,7 +970,7 @@ static int tegra_xusb_add_usb3_port(struct tegra_xusb_padctl *padctl,
 	 * hence return 0 instead of an error to allow ports to be optional.
 	 */
 	np = tegra_xusb_find_port_node(padctl, "usb3", index);
-	if (!np || !of_device_is_available(np))
+	if (IS_ERR_OR_NULL(np) || !of_device_is_available(np))
 		goto out;
 
 	usb3 = kzalloc(sizeof(*usb3), GFP_KERNEL);
@@ -1035,7 +1035,7 @@ static int tegra_xusb_find_unused_usb3_port(struct tegra_xusb_padctl *padctl)
 
 	for (i = 0; i < padctl->soc->ports.usb3.count; i++) {
 		np = tegra_xusb_find_port_node(padctl, "usb3", i);
-		if (!np || !of_device_is_available(np))
+		if (IS_ERR_OR_NULL(np) || !of_device_is_available(np))
 			return i;
 	}
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
