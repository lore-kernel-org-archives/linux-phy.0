Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1CB8D1953D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 15:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVR8AWGp83Kn2WGvZLsUeAKJ4ryCZHbPKwrnsuYTC6s=; b=qJiOXePquGQKgf
	v+no9ITNHy8XxEwhb1labl7gvMS0ygX7/oXMprI5tFbnSc9UTUNLT+gyFhe+9+raqKfWR66S8mYXI
	7etam9CTTwtWmRr4A16mTv4Zbq+Q4Xhc4QGOHea6ENoEAVEO46PIvdF/3cc81K0nGX6Rh4Le3uIuK
	IGFPzWSDB8bIQM7bWYwfsmAGdtNdwvJJ/gm2YWiIWkPlPZqBVFIzN0HXajFa7XoW3zzY9IIJiDKYs
	e6MEbpUzt6TYkjpD9PWkIbZDlL0mqcdwwl1kR4ffaulIqH42r2uhijc4Dhskj/pINkecsG0QnJhSX
	9C/RwIaO18zHxZ6Wltcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkk7-0000000EVlg-16lf;
	Tue, 27 Jan 2026 15:12:35 +0000
Received: from smtp1.tecnico.ulisboa.pt ([2001:690:2100:1::15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkk3-0000000EVgz-2VTs
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 15:12:34 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 5DB75600086A;
	Tue, 27 Jan 2026 15:12:11 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id lWw2rW8RwuwY; Tue, 27 Jan 2026 15:12:09 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id ABE236002307;
	Tue, 27 Jan 2026 15:12:08 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1769526728;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=V0ixqb1WmQNGUgreQanqk1a+bFFp4h/i7hFLQvfziag=;
	b=CNBbIwBkCSTZbT4CWZdM+DSeMHTH1ylUgotr24CkI9OfQDo7P8woRbtOVCMKcMhihTYR0t
	DnIvtnzoa59ivt8UzQhGJj+H+7XSPePszgZSFFwEUGu18G/acDw5NPPjFquLr4uyABWT8A
	2pvJ4ZScImp5XJc9kv7HL1Q6iFJcKsa888VKEkI5k6DsMt+/2u53ajsihZupsjyrO/8ynZ
	2jZhwmD8wV+ks0wwRlK3ILVUWzbB6z2qr5w4Q5H6tOZ4m8lJbWJs+eP1gogJCNP32d8+aT
	iTRiisQp2+vnaMxicF9005WfDJ2WrauyZsml6nAE5Cy9PqgZ22midOLfCIweyw==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 586353600FC;
	Tue, 27 Jan 2026 15:12:08 +0000 (WET)
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Date: Tue, 27 Jan 2026 15:11:48 +0000
Subject: [PATCH v2 2/6] usb: xhci: tegra: Remove redundant mutex when
 setting phy mode
MIME-Version: 1.0
Message-Id: <20260127-diogo-tegra_phy-v2-2-787b9eed3ed5@tecnico.ulisboa.pt>
References: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
In-Reply-To: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
To: Mathias Nyman <mathias.nyman@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769526725; l=1033;
 i=diogo.ivo@tecnico.ulisboa.pt; s=20240529; h=from:subject:message-id;
 bh=tPxLgImUSfLaPO0hTIiojepsSdUOwrfSQUsTniiVYsM=;
 b=aaqsA3rbn08ZXBt45VmehvpQaYP+AdUvjAwXu//GfD98G9fWXZi5Z+r+bS6F+oCyZKHlHf3l6
 0amw7mlT1pPDbSPq6fAIxwDEDeCDafVvh0VFU/BPG10byRsmRFvz3tg
X-Developer-Key: i=diogo.ivo@tecnico.ulisboa.pt; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_071232_629288_FEC3DE8F 
X-CRM114-Status: UNSURE (   8.23  )
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

As the PHY subsystem already synchronizes concurrent accesses to a PHY
instance with a core-internal mutex remove the driver specific mutex
synchronization.

Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
---
v1->v2:
- New patch
---
 drivers/usb/host/xhci-tegra.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
index 8b492871d21d..927861ca14f2 100644
--- a/drivers/usb/host/xhci-tegra.c
+++ b/drivers/usb/host/xhci-tegra.c
@@ -1357,15 +1357,11 @@ static void tegra_xhci_id_work(struct work_struct *work)
 
 	dev_dbg(tegra->dev, "host mode %s\n", str_on_off(tegra->host_mode));
 
-	mutex_lock(&tegra->lock);
-
 	if (tegra->host_mode)
 		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_HOST);
 	else
 		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_NONE);
 
-	mutex_unlock(&tegra->lock);
-
 	tegra->otg_usb3_port = tegra_xusb_padctl_get_usb3_companion(tegra->padctl,
 								    tegra->otg_usb2_port);
 

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
