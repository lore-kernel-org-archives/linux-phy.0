Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A9CE95A95
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 14:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KnFzHJIiw37jVPRezrQ+d6u2e2w+v3KnfhK1I4sfz5Y=; b=g2+i6cpoY69EFv
	9sSwNvftNieHx+p3iUIMNC1GxtZ35l/UGikDhM2po32gNgAXFcUSrlqmBsbR6fv48QN2BJ/8ydfl1
	EuYcuNHyuoEC3iKsfM5htAtdc7J7xDIBwdl09qmeR/GJ8gWUSFn4bvESEhgAdL1xDTU3tqo5ipABT
	VKdUmY9ozXwOTyUYJ9QsqsXJ2Hx9t0nnw+ryAId4UcZagJhZRUmrJYHuscir6+xe8LIR+AuPRHhxV
	RdIAZnsTqvYYUmVVkTIZbw4N2tP3FgBB+HiWdFe1iJx6EDbuJ1AatLoxLXj/WX4PTBv0BOzvM53bk
	00CX3R/S8+UC2lIoZDEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaaRD-00000004v0l-1wwO;
	Tue, 30 Dec 2025 14:11:03 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaaR8-00000004v03-1biQ
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 14:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=JUQCdhyqa1/3bZomRbu2t/WU5oAGOwDFR5E9voRpuJU=;
  b=h1gHOzwtlwpnCD2M+OB27XRMZOHYbGXSCLnl8wymsL3U5l3puFPDeUNJ
   5fk1fjCDO83qU9A2KwRqgh5WMCtmO6I6kxwBE3MmRmI93yVPdwOAAvvBc
   ZnUFdQnzebn7SCNjYNXqcXWv/u6f8VhSvHr5v86iNrWOZF1Kr+2/vUuBY
   Y=;
X-CSE-ConnectionGUID: aCmhUqSRQAutl/S4pg/3BA==
X-CSE-MsgGUID: KN80KtU2QViOFQ7xjWTc3g==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.21,189,1763420400"; 
   d="scan'208";a="134749896"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.102.196])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Dec 2025 15:10:55 +0100
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Vinod Koul <vkoul@kernel.org>
Cc: yunbolyu@smu.edu.sg,
	kexinsun@smail.nju.edu.cn,
	ratnadiraw@smu.edu.sg,
	xutong.ma@inria.fr,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: renesas: phy-rcar-gen2: fix typo in function name reference
Date: Tue, 30 Dec 2025 15:10:50 +0100
Message-Id: <20251230141050.93856-1-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_061058_711734_8968027B 
X-CRM114-Status: GOOD (  11.07  )
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

Replace cmpxcgh by cmpxchg.

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/phy/renesas/phy-rcar-gen2.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
index c0221e7258c0..08d36e6eabcd 100644
--- a/drivers/phy/renesas/phy-rcar-gen2.c
+++ b/drivers/phy/renesas/phy-rcar-gen2.c
@@ -85,7 +85,7 @@ static int rcar_gen2_phy_init(struct phy *p)
 	 * Try to acquire exclusive access to PHY.  The first driver calling
 	 * phy_init()  on a given channel wins, and all attempts  to use another
 	 * PHY on this channel will fail until phy_exit() is called by the first
-	 * driver.   Achieving this with cmpxcgh() should be SMP-safe.
+	 * driver.   Achieving this with cmpxchg() should be SMP-safe.
 	 */
 	if (cmpxchg(&channel->selected_phy, -1, phy->number) != -1)
 		return -EBUSY;


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
