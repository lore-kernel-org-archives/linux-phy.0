Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB30C7EE2A
	for <linux-phy@archiver.kernel.org>; Thu, 18 May 2023 15:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KJ18/3R4jT+7lIuqYnm8zaevaXL/ydcX6f08WYr1cMc=; b=CMjHRQP4IXTx+f
	Rqk/KOmKBquUZnOrOjd1VMmDSqpKM7zKN0/a2RKt7ZtwlXFgZo11ZNGYN7OssTWF6kg2UhizGHtVl
	rN9Vzv42lZknRRR8hlvmtrthAXTU7vzJbMKVZ71OtF/Js/6hNOjOZVU97bo6g8q9PdXMbGu5hda9J
	OGEzJLd7Fqh/n+eY5ws0a4Lxyg2vl91DWwYPx/M8jcC769zz378y867qU0cvL2pSyLi5t9jVGTuIp
	8MYSiz804Fm0aJRaFlvTdtGCKlo46hrP6pmj2fP9qhOvhY46vBx2ukThaNsh80MCXRST8ZCi/Kh4N
	x6KBz20yvRSnW8EeAyOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzg00-00DN3j-2H;
	Thu, 18 May 2023 15:57:04 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzfzx-00DN2e-1b
	for linux-phy@lists.infradead.org;
	Thu, 18 May 2023 15:57:03 +0000
X-IronPort-AV: E=Sophos;i="5.99,285,1677510000"; 
   d="scan'208";a="159865399"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 19 May 2023 00:56:54 +0900
Received: from localhost.localdomain (unknown [10.226.92.79])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 22524400F7E0;
	Fri, 19 May 2023 00:56:51 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH RFC 0/3] Support VBUSEN selection control for RZ/G2L
Date: Thu, 18 May 2023 16:56:46 +0100
Message-Id: <20230518155649.516346-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_085701_648982_63E672CD 
X-CRM114-Status: UNSURE (   7.26  )
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

This patch series aims to add support for VBUSEN selection control for
RZ/G2L alike SoCs.

As per RZ/G2L HW(Rev.1.30 May2023) manual, VBUSEN can be controlled by
the Port Power bit of the EHCI/OHCI operational register or by the VBOUT
bit of the VBUS Control Register.

A reset consumer(phy-rcar-gen3-usb2) needs to find the reset controller
device and then call the provider(reset-rzg2l-usbphy-ctrl) to configure
it.

Please share your thoughts on this patch series.

Biju Das (3):
  reset: Add reset_controller_get_dev()
  reset: renesas: Add rzg2l_usbphy_ctrl_select_vbus_ctrl()
  phy: renesas: phy-rcar-gen3-usb2: Control VBUSEN selection

 drivers/phy/renesas/phy-rcar-gen3-usb2.c |  9 ++++++++
 drivers/reset/core.c                     | 14 ++++++++++++
 drivers/reset/reset-rzg2l-usbphy-ctrl.c  | 27 ++++++++++++++++++++++++
 include/linux/reset-controller.h         |  9 ++++++++
 include/linux/reset/rzg2l-usbphy-ctrl.h  | 16 ++++++++++++++
 5 files changed, 75 insertions(+)
 create mode 100644 include/linux/reset/rzg2l-usbphy-ctrl.h

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
