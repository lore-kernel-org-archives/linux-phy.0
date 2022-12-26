Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD3C2C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 06:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w5EwkiQZo6Sd+YONEsrHQ4gjoOOgC1cBDaU187xIRts=; b=afY6YSE/FY91gc
	Beoe/ZQRyNKp6yH26MZwczWzglndanI73BV3IKGAePpuk1ji2ChOu7SWdGQpOgkGlORMnhMBop7t+
	I8JtEsqNBXnQcL87Ir8eJTpS6aq6UxEdqSy/obM4rMcNbyrqs5Op9g6EHKPBnFDwj1/hTNAHFvwiY
	UFzJUUn+A1K0iymAdeJLCJinpwSdOAIHndZ0eVZNT+9y36C11J7aZdf1bu/jCIs6MwacPuzpj77Pl
	AU+4GAthaan8eW/sS57dRDXhYf/NP3RcQK++Hb7ms2NQtW37uLtkpCBt5x5oG9PdVV46s+U3IyEVD
	u0mE8hZNkfg8LaAOW6vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9hMY-002OiN-3I; Mon, 26 Dec 2022 06:53:32 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9hMU-002Ofy-Aw
	for linux-phy@lists.infradead.org; Mon, 26 Dec 2022 06:53:27 +0000
X-IronPort-AV: E=Sophos;i="5.96,274,1665414000"; 
   d="scan'208";a="147422892"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 26 Dec 2022 15:53:24 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id 1CDAE41B3556;
	Mon, 26 Dec 2022 15:53:24 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH 0/2] phy: renesas: r8a779f0-eth-serdes: Add .power_on()
Date: Mon, 26 Dec 2022 15:53:14 +0900
Message-Id: <20221226065316.3895480-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_225326_505103_A18F3BEB 
X-CRM114-Status: UNSURE (   3.34  )
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

Add initialization function for each channel from step 9 or later on
the datasheet. Otherwise, the rswitch driver cannot initialize
this SERDES hardware correctly.

Yoshihiro Shimoda (2):
  phy: renesas: r8a779f0-eth-serdes: Add .power_on() into phy_ops
  phy: renesas: r8a779f0-eth-serdes: Remove retry code in .init()

 drivers/phy/renesas/r8a779f0-ether-serdes.c | 65 ++++++++++-----------
 1 file changed, 30 insertions(+), 35 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
