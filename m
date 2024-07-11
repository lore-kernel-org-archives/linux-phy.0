Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B51C3DA45
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KYboNQb549qpwG9c/CiCQuksXlEy8q16jnNtMqpjI+E=; b=PU8EH+2OcJLrtT
	UncCHdsgDqkKqsNR2oTPEkvjYc5fGd0hUdt2ko/JgC6ECW6JEQpgZqP0sd1QCVBXzLUEB1nbkIvS5
	unAcnFXnTjARixl6CGnEbvnMt0yCZ3DgSH2lXBJQup23PkCCd1KMCseVMLAJDKdWkz8XojPOXSeXR
	mz3F8aFS44bA9KxOcho9+joWaYAxL6/6Jjvb1SYLwBdvmckAn6K7fdOGcUGEmsi2ZbZ+EKnNewyd6
	GVivF8KcZoAfQpqZTqFtJaEgzJvxh+y9lw8cr5Gm+6IHveb9+qJIlk+QQIGK7bTxI4IJvyZpEKFRB
	12n6FFiwx86DW+leJ6ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRxdc-0000000EsKi-3BnQ;
	Thu, 11 Jul 2024 17:31:24 +0000
Received: from smtp-16.smtpout.orange.fr ([80.12.242.16] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRxdZ-0000000EsGW-0mbC
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 17:31:23 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id RxdPsAr1uHTrpRxdQsVLWC; Thu, 11 Jul 2024 19:31:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1720719073;
	bh=RRQXTK+lQmAsyj99iqPHXhZaL0F3tchaEGasoQcNsJg=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=RKGfCXy+SgyVVuegeHXFR9X/K4vy2r5C/OqqhX1Jt7URhz/8Wl8GE4CJClVkmOfag
	 JdcvlzDivjhY5PnmQ86winemWbm3hV7D09j+2d91kFXbtKtbfwUFdHpEDobvFNM3P4
	 RzntG9QMIbD5vNpdHaU3ylw6ITkrkZ/a0lOcPlk5Aw5qTaArCkF4fF+dVpxzB5FII4
	 AKGbV5hg1xJRgMrjeTg0R04QvxcjVHypXVxYs9AxjKAig3EqAXePBWgjUyx3OeOtCc
	 QiDYwnivWHW8N/S5CkkmmWJgmMINyYAiu6GxR50Ar9+fF3AAZiy/QFdncjhSxCHL3K
	 XcUVp9P5XV5Bg==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 11 Jul 2024 19:31:13 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH 0/4] phy: cadence-torrent: Constify struct cdns_reg_pairs
Date: Thu, 11 Jul 2024 19:31:05 +0200
Message-ID: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_103121_665334_5678FD73 
X-CRM114-Status: UNSURE (   4.74  )
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

This series is just abour constification of some structs.

It turns about 15 ko of data in ro section:

Before:
======
   text	   data	    bss	    dec	    hex	filename
  78154	  20222	     16	  98392	  18058	drivers/phy/cadence/phy-cadence-torrent.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  93606	   4790	     16	  98412	  1806c	drivers/phy/cadence/phy-cadence-torrent.o

All patches have been compile tested only.

Christophe JAILLET (4):
  phy: cadence-torrent: Constify struct cdns_reg_pairs
  phy: cadence-torrent: Constify struct cdns_torrent_vals_entry
  phy: cadence-torrent: Constify struct cdns_torrent_vals
  phy: cadence-torrent: Constify a u32[]

 drivers/phy/cadence/phy-cadence-torrent.c | 376 +++++++++++-----------
 1 file changed, 188 insertions(+), 188 deletions(-)

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
