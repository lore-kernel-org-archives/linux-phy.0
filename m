Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA5BC5AD49
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 07:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5aVzX90s1x9jiP/xnAP2s/8C8EA8mcSCNwgdE3h9XOU=; b=IOppFHOW4T2vWe
	Q7Z/GFJCz80FtsUTZNPDzDj1Ks7gyXR8yh6Y2+/suZNks/OV9IZmgSiweLU1ir7ZEOrTsdWi+CzV6
	ScqeeFo9JflOp2WaWv9gzwqNODdTrjSzClvBwbbMAOaOzi7i0lqMAr2VAUf6Z+UJqzGpC3q+fqqjm
	lQq/lvgOap/zTNJNiPq1u8GrahPjWiW3Hr1nBsGuK+hGretAm0ghqNO9lRaJwUzjS+1T4ks/I0v53
	5kwKc5gips7QsJz8doG6NKpfg44DznnY5nxp+miXB9AF8JWO7lxGFeCSp+yWqi3Yw1dvynlD8vwpi
	KkGT9C0vNZtPpTayC2Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJoQn-0000000A7JD-2PwK;
	Tue, 27 May 2025 07:09:01 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJoBx-0000000A50C-009h
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 06:53:43 +0000
X-CSE-ConnectionGUID: nXnsUZqfQ929Rq8kR0tzew==
X-CSE-MsgGUID: T0l3bknqTvypqtYkg4PB7g==
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 27 May 2025 15:53:35 +0900
Received: from [127.0.1.1] (unknown [10.226.78.19])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 2CFFA4000FA5;
	Tue, 27 May 2025 15:53:32 +0900 (JST)
From: Michael Dege <michael.dege@renesas.com>
Subject: [PATCH v2 0/2] phy: renesas: r8a779f0-ether-serdes: driver
 enhancement
Date: Tue, 27 May 2025 08:53:05 +0200
Message-Id: <20250527-renesas-serdes-update-v2-0-ef17c71cd94c@renesas.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFJhNWgC/x3MOwqAMBBF0a3I1A7o+CncilgE86LTRMmoCOLeD
 Za3OPchQ1IYDcVDCZeabjGHlAXNq4sLWH1ukkq6qpOGEyLMGWfnYXzu3h3gBnPbS6j7EFrKdk8
 Iev/fcXrfD4oeg45nAAAA
X-Change-ID: 20250523-renesas-serdes-update-3ec462f16ff4
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Michael Dege <michael.dege@renesas.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748328812; l=989;
 i=michael.dege@renesas.com; s=20250523; h=from:subject:message-id;
 bh=tFyJCy/K8B41yM0mnXdn8pKsFHaDMNuEeTac00ImmcU=;
 b=mMmil/CVmMOLcRb3JyX7UgN1YiwKgd0i0VY6yH0yBuY3xJnnKRVM2t5FOaar56nM27wO28OuC
 Od6KgXZNh8EALs1vFiWlZ6+XI8l6emgp+GTBwPPJOXvdTwouad18yYw
X-Developer-Key: i=michael.dege@renesas.com; a=ed25519;
 pk=+gYTlVQ3/MlOju88OuKnXA7MlapP4lYqJn1F81HZGSo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_235341_168963_265166F7 
X-CRM114-Status: UNSURE (   6.31  )
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

Changes from v1:
 - Modify this driver for the R-Car S4-8 only
 - So, this patch set drops the followings:
 -- any dt doc modification
 -- X5H support.
 -- 5GBASER support
 -- Registers' macros

Thanks,

Michael

Signed-off-by: Michael Dege <michael.dege@renesas.com>
---
Michael Dege (2):
      phy: renesas: r8a779f0-ether-serdes: add USXGMII mode
      phy: renesas: r8a779f0-ether-serdes: add new step added to latest datasheet

 drivers/phy/renesas/r8a779f0-ether-serdes.c | 97 +++++++++++++++++++++++++----
 1 file changed, 85 insertions(+), 12 deletions(-)
---
base-commit: a5806cd506af5a7c19bcd596e4708b5c464bfd21
change-id: 20250523-renesas-serdes-update-3ec462f16ff4

Best regards,
-- 
Michael Dege <michael.dege@renesas.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
