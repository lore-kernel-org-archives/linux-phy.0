Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65360C7EE32
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jun 2025 08:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UKGTEaPcctAbkyvrJvZxgksMTa4SDm7pHcqU6BkJbZg=; b=IRYRRkhHd0P5j8
	E8UIrFhJ584TIe3289BYEUv0quDkFTxEjnMXRQOThvoxx4QSrPKCOw9bUHe9+0m7SEedpWtE4byJR
	hjLQhnhBuGN5nLXiwft6BhZ5MZupBYR2KkYZWc/Ldd1Gp5XAb7zhm+3khhNtoEW7mKjdz6AwVO6Pg
	Ti7lRrq4984OI2Vm19/RYRzntJXOko4DUjlWlrcXIYHl7utlbKu8SN0YCVHNxiVVuajshTYnQ0hhf
	NzNJ2zqLZKeiYlQqEx1sKh2lV9p4aq/gA6qXkragSl+MgeD8/zOafILGznVMUjeYRLWSYBjygBaBe
	QLqCfE1xhS/0rTfQiKkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUiRL-0000000B4Ar-0Av7;
	Thu, 26 Jun 2025 08:58:39 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUhnh-0000000Aw81-3rhk
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 08:17:44 +0000
X-CSE-ConnectionGUID: uTUvvCebQ+qE+brYpPDDtg==
X-CSE-MsgGUID: h2slAUOXS1i6yeDvzEYokg==
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 26 Jun 2025 17:17:36 +0900
Received: from REE-DUD04480.adwin.renesas.com (unknown [10.226.78.19])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 413F44017F3F;
	Thu, 26 Jun 2025 17:17:34 +0900 (JST)
From: Michael Dege <michael.dege@renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Michael Dege <michael.dege@renesas.com>,
	Uwe Kleine-Koenig <u.kleine-koenig@baylibre.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2 RESEND] phy: renesas: r8a779f0-ether-serdes: driver enhancement
Date: Thu, 26 Jun 2025 10:17:23 +0200
Message-Id: <20250626081723.1924070-1-michael.dege@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_011742_072750_41B8FDCD 
X-CRM114-Status: UNSURE (   7.08  )
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

Hi,

This patch set adds the following to the r8a779f0-ether-serdes driver:

 * USXGMII mode support for 2.5GBit/s ethernet Phys
 * A new configuration step suggested by the latest R-Car S4-8 users
   manual V. 1.20.

Changes in v3:
- Fixed wrong macro (reported by kernel test bot).
- Link to v2: https://lore.kernel.org/r/20250527-renesas-serdes-update-v2-0-ef17c71cd94c@renesas.com

Changes from v1:
 - Modify this driver for the R-Car S4-8 only
 - So, this patch set drops the followings:
 -- any dt doc modification
 -- X5H support.
 -- 5GBASER support
 -- Registers' macros

Thanks,

Michael

Michael Dege (2):
  phy: renesas: r8a779f0-ether-serdes: add USXGMII mode
  phy: renesas: r8a779f0-ether-serdes: add new step added to latest
    datasheet

 drivers/phy/renesas/r8a779f0-ether-serdes.c | 97 ++++++++++++++++++---
 1 file changed, 85 insertions(+), 12 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
