Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40D4BC77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 12:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kbjVmBai1ffQ2Zai1l+VUYWE7lVg/JTnmByxIK+VQvc=; b=gSH1va8CRK2E6Q
	ohHbC6qUHxL1nALrEDt0cFrvCcAKMVJIDs81E8yOf9blRBPHp1U83RisHebQPK7jAfFk9dRG5fUnJ
	eSPn8b2HpOato+lAMTl/Bef27qDUosW5aSsA7K2jO7XR9b606HtudB1spptRE3mM0hhASTPlmYklX
	5HssJSLf4gRIoy6FMrdBxiuBkk8Us1ovtO3zwBEPgFo+XHOlCzfWLFJI7gvMKsV48wOSVozD6+/YM
	Co9w02iIL5jbwqqK57FIZVBu7PK0gQzHgH//XQ2+dMrA5sNWBaoPLEXdKRZI6ilfE3KdJBzk9pVvT
	YrvJNQw3dvXvEAUBowmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXJ8j-0000000BLXa-3vck;
	Thu, 03 Jul 2025 12:34:09 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXHna-0000000B73n-1mWx
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 11:08:16 +0000
X-CSE-ConnectionGUID: bmOSdLTPTR+ov5eeu73bJg==
X-CSE-MsgGUID: mum5qDdKSmiqoKaxWWLuew==
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie6.idc.renesas.com with ESMTP; 03 Jul 2025 20:08:08 +0900
Received: from [127.0.1.1] (unknown [10.226.78.19])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id D2FF040029D3;
	Thu,  3 Jul 2025 20:08:06 +0900 (JST)
From: Michael Dege <michael.dege@renesas.com>
Subject: [PATCH v4 0/2] phy: renesas: r8a779f0-ether-serdes: driver
 enhancement
Date: Thu, 03 Jul 2025 13:07:22 +0200
Message-Id: <20250703-renesas-serdes-update-v4-0-1db5629cac2b@renesas.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGpkZmgC/3XNTQ7CIBAF4Ks0rB3DX0t15T2MC4TBsrBtoBJNw
 92ljSa66PK9zPtmJhGDx0iO1UwCJh/90JcgdxUxne5vCN6WTDjlNa25gIA9Rh2h7CxGeIxWTwg
 CjWy4Y41zkpTtGND55+qeLyV3Pk5DeK1vEl/ar6g2xMSBAjqmjGLGHqQ5fe72ZriTxUzi12m3H
 FGcVjLhjFXUXvW/k3N+A8S+V3kEAQAA
X-Change-ID: 20250523-renesas-serdes-update-3ec462f16ff4
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Michael Dege <michael.dege@renesas.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751540886; l=1312;
 i=michael.dege@renesas.com; s=20250523; h=from:subject:message-id;
 bh=nQ0i//OeOyftxY70pnyCLFIQiHmHKowvqGnd/2lFKU4=;
 b=dyfl8jNl0FVwyzaeYjDy0Zl/mdDbVHMxbeKF568+fBnu9uoiCDKLyCLbKh1+JPjVQfOYmlQ1+
 LlrWSIJ+fvmDmGbuz2vL+YjTFeIBhdwty8tEZHcjGQIVbuudpvJH0lF
X-Developer-Key: i=michael.dege@renesas.com; a=ed25519;
 pk=+gYTlVQ3/MlOju88OuKnXA7MlapP4lYqJn1F81HZGSo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_040814_582241_DAA85CE8 
X-CRM114-Status: UNSURE (   6.82  )
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

Changes in v4:
- Fixed email threading
- Link to v3: https://lore.kernel.org/r/20250528-renesas-serdes-update-v3-0-8413fcd70dba@renesas.com

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
