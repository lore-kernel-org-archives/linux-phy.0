Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A066AC3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 05:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zzb/6b/goVUldJoqJq5m1WnnISC6jRHx2Fmc+ltyjSc=; b=fRHTPvfHcR0GhS
	eV085C9a5LiFzAXbR0krt/d9wymCILL7sGOPvBIIUh9S540lENkNJfCTVCcItaoGCfHyO27mXN+PJ
	aUaHoMyhOfvFxYzu9OwnyL9W70NJscJsaUgmm7N1PB/yBr0oL6+7MXU2PgRhnPWJCZ4DV10WnlmQU
	YzVsz034kEeXjtR/piQ0eKghyya8CntJvt/Lac76uIWg7n0Gnabtt/srFxRphkwrqh5rI79nuK+9f
	VRzgKtqa1uPjXXlSbRjhGUE3aCqYtHs3Tuxsdj5pplzzNFDkaRTM1RRwNXD0E/W9myVjsgOk8M0Hv
	SIoNwxPJfmuhLtTgaNSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9Jm-0000000CDIf-1GkT;
	Wed, 28 May 2025 05:27:10 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK9IN-0000000CD6x-14jk
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 05:25:45 +0000
X-CSE-ConnectionGUID: VsJxNp3ZQ/uLDYy/SExasA==
X-CSE-MsgGUID: YQwMdWRNT5ieinerWDHpDg==
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie5.idc.renesas.com with ESMTP; 28 May 2025 14:25:40 +0900
Received: from [127.0.1.1] (unknown [10.226.78.19])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id EBBCF41728C9;
	Wed, 28 May 2025 14:25:38 +0900 (JST)
From: Michael Dege <michael.dege@renesas.com>
Subject: [PATCH v3 0/2] phy: renesas: r8a779f0-ether-serdes: driver
 enhancement
Date: Wed, 28 May 2025 07:25:23 +0200
Message-Id: <20250528-renesas-serdes-update-v3-0-8413fcd70dba@renesas.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEOeNmgC/3WNwQ6CMBBEf4Xs2TWwLRA9+R+GQ9NupQeBdLHRk
 P67lejR45vMvNlAOAYWOFcbRE5BwjwVUIcK7GimG2NwhYFqauuWFEaeWIxg2TkWfCzOrIyKre7
 IN533Gsp2iezDc/deh8JjkHWOr/0m0Sf9Gfs/xkRYI/umt31j3Unby7d3tPMdhpzzG4Y1Adu8A
 AAA
X-Change-ID: 20250523-renesas-serdes-update-3ec462f16ff4
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Michael Dege <michael.dege@renesas.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748409938; l=1321;
 i=michael.dege@renesas.com; s=20250523; h=from:subject:message-id;
 bh=0kyZ4m3Y4UQwKjvbj8YXdXEVhRm5J7o8ugG9z52fs/4=;
 b=Ci3aNmr359XvUjFWg5wdbcrdjlSbDyS4bbxWExa5Er6A7Hg4G6bP7O3zxdthxmNxqu7M9G9wf
 eAjlegETIVmDj0jKwI17aalyEcRKs7lU1/QbRIaDM59C5KmRDzF4P9N
X-Developer-Key: i=michael.dege@renesas.com; a=ed25519;
 pk=+gYTlVQ3/MlOju88OuKnXA7MlapP4lYqJn1F81HZGSo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_222543_406876_C11325E6 
X-CRM114-Status: UNSURE (   6.90  )
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

Signed-off-by: Michael Dege <michael.dege@renesas.com>
---
To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

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
