Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C9A3C25B78
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 10:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yj984EA0Nd8UvBC0JxK4Koe4i+HHpjgJzS/rbRB1OxE=; b=S0oqNlLTie/9a5
	OeiA9XpkzT6/h33BoVe9JSkBjOCVJKGJ+sVreVC6mVFaCoeaxyziqwkT2uhCBjIcocOEQ7+GxcjMR
	TgJmgvbvPNeaiGlnaSaBmT+fdCyxrUZUhr4EbvJAWeA4ESucuDZsx4UVSXB4CM8m+YFyXLnrbF2/p
	q5lrZKtuuk3C4UFzPDEWFlyLz346LyBlHQQFZlFYPN10hSuR7E8tkwlRtremyrJPeREiUQd7t0tai
	dpbPnzL2B+PAGxvdLrnHE1td2Gfl7kq1cmm3IjqN7ZmHvlsT/AVNQacvTrx/yrL66XEz4UeZTBGcu
	b4y/Ns8EmfcARpuLJdwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwh-00000000BrC-3sf3;
	Tue, 28 May 2024 10:20:43 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwb-00000000Bnw-3dJ1
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 10:20:40 +0000
Received: by mail.gandi.net (Postfix) with ESMTPA id 4D0DE24000B;
	Tue, 28 May 2024 10:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1716891629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=amToApSarLSNqnXhX0wNJ/SchkoaLpTlnt9nLIsw7Xw=;
	b=Vcf9VNi4oHVeaX/E9kYettn+xE2HkeMekUBAz7m8jxAWawVImMompaxF05MT7VUAVqGD09
	EY9yGRfRa5E3HexRQf+yD4Ng16ORCE9XPnMJSOYkU5HNuihzDlF3lWD78hpWjV5QpEAaIq
	22ZVHCszbVvXOXhaWVczfVBsVGFL23qlt/5ASmqDAHmZ5y9j55E//Yg8tNmU0tDrnTVXNi
	mkjw0GXvDmASHLZy8luNQtpoccFlHysn7tlseV7afxknTDXmdzwVckxn28AaRraUne9JkE
	fmsL6ee7uBSIGk5ak2ttjutCD5flBeT85cIXcCdtOi9H4eqvQJhgxmia2H8cbg==
From: Bastien Curutchet <bastien.curutchet@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bin Liu <b-liu@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	herve.codina@bootlin.com,
	christophercordahi@nanometrics.ca,
	Bastien Curutchet <bastien.curutchet@bootlin.com>
Subject: [PATCH 0/4] usb: davinci: Add PM runtime support and improve HOST only mode support
Date: Tue, 28 May 2024 12:20:22 +0200
Message-ID: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-GND-Sasl: bastien.curutchet@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_032038_194412_109CA066 
X-CRM114-Status: UNSURE (   7.79  )
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

Hi all,

I've worked on adding PM runtime support on the DAVINCI's USB PHY
controller. It revealed some bugs in the MUSB controller that I fixed in
the last three patches.

The platform I work on uses the MUSB controller in HOST-only mode and has
been designed to save as much energy as possible. To do so, the USB's
VBUS supply can be cut off by toggling a GPIO, this triggers the bug
fixed by patch 2.

If an USB stick gets unplugged, then plugged back while the PHY is in
suspend state, a BABBLE error happens. This BABBLE can't be recovered.
This is fixed by last patch.

Bastien Curutchet (4):
  phy: ti: phy-da8xx-usb: Add runtime PM support
  Revert "usb: musb: da8xx: Set phy in OTG mode by default"
  usb: musb: da8xx: Remove try_idle implementation from host-only mode
  usb: musb: da8xx: Implement BABBLE recovery

 drivers/phy/ti/phy-da8xx-usb.c | 49 ++++++++++++++++++++++++++++++++++
 drivers/usb/musb/da8xx.c       | 20 ++++++++------
 2 files changed, 61 insertions(+), 8 deletions(-)

-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
