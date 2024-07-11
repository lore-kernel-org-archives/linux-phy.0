Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7934C3DA4B
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 19:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=paGM9JJTWQg3JIU9oILL4dfJmwFf98Ld8kSgN3obRUU=; b=HBQ4SpYSjvAczc
	tsCbBALVeluqQY6w3pfrt+wJP7ZplqbvrkULLF9oQH2fdiSIANkL/jbGh/KE1v5Ffln8gbg2/DXfZ
	gTE/aDbHW/byibWjinlhMWsAph5R7RFaa8b05BFSsFWmsJCIQygcHwz1pJZwti5h28csJDMJKtuIW
	cHJGVEEUKONPSnrFKkBUERUBDopZ77QG7xg4e3hcx1QgeezYB8cADSFc6jMAeTBUVtN/L5zfqWxJC
	0FncnsFEE75Z65QyuuvRQ7LBQRY2C3V5aI0OlRRc4oFa80CbahQje1tF34OzU4eXMpSDYRwpKcmWi
	h//iweJkAvTdyp3kRuoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRzZL-0000000FDtR-1x8l;
	Thu, 11 Jul 2024 19:35:07 +0000
Received: from msa-210.smtpout.orange.fr ([193.252.23.210] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRzZG-0000000FDp4-3ElG
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 19:35:04 +0000
Received: from fedora.. ([77.131.3.214])
	by smtp.orange.fr with ESMTPA
	id RzZBsCMFrj4pfRzZBsIiR7; Thu, 11 Jul 2024 21:34:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1720726498;
	bh=zXP3sX2ock8JSJD3V0LkyeBJQLuvRqLa/4BAy1nJsH8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=SZqgLZD2K5Whf1JsFaD1Hx/LG/aial+SuQnUKiQqbtrDMVSULcUGttuqBJnUyr6iw
	 sY+Ci+uM7iEuFaB23QEzV5il7gu/sEhSaEYmGiZxe/7vE/AUXWSK5tXuzJq5UTdS2v
	 UMI3Ljg9y9GRW4gy+g+2auZimAQvXqJk1P+dpzQhkVwVuO5UmFdmasxqphitmw6TuB
	 TU8MlVhOTN7aFQQALmAS2l6N8KF1peE3dJc/FqzXDesQS6Y0xFGZ0Y0ZJCo848B3UH
	 YA0kNse3ZP7CeMXkMieJeMTV9RuXoS+4O1HWnzKwplp/q3AqNxf7na6tChIQFjbIVo
	 w9/jkDgmKusnw==
X-ME-Helo: fedora..
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 11 Jul 2024 21:34:58 +0200
X-ME-IP: 77.131.3.214
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH 0/3] phy: cadence: Sierra: Constify some structs
Date: Thu, 11 Jul 2024 21:34:51 +0200
Message-ID: <cover.1720723132.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_123503_245506_09166B69 
X-CRM114-Status: UNSURE (   3.84  )
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

This series is just about constification of some structs.

Before:
======
   text	   data	    bss	    dec	    hex	filename
  60489	   4342	     16	  64847	   fd4f	drivers/phy/cadence/phy-cadence-sierra.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  60897	   3878	     16	  64791	   fd17	drivers/phy/cadence/phy-cadence-sierra.o

All patches have been compile tested only.

Christophe JAILLET (3):
  phy: cadence: Sierra: Constify struct cdns_reg_pairs
  phy: cadence: Sierra: Constify struct cdns_sierra_vals
  phy: cadence: Sierra: Constify a u32[]

 drivers/phy/cadence/phy-cadence-sierra.c | 88 ++++++++++++------------
 1 file changed, 44 insertions(+), 44 deletions(-)

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
