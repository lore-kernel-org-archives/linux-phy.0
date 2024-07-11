Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06AAFC3DA45
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 17:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBCDajtgCBoubSR/GcRdlEojl+n5b6whjMFZErjX/Rw=; b=SJYRF3Fphd79R2
	tvGSyazsCy5K8XoTKyp8kg9/sTJFGRnbPSazGMmJji2HzQnC4GPUrtKmv+/2EPGDKQZZ8LJpjoYVB
	5/p+r35GRhLMrS2j0BHrypWRmMYQoADCzAh9nO8R/6gRLYDigeEBDDl49w5tgTjkhVEqStwSffjvQ
	maTka/AIW7I5pbatzbwJOA+WkQVN7xhycx4iJjBM15mUebVtP9VVFheMat7T25oWISNi+Og+LO+wq
	jpHFanQ5aGQJT1B5/6zf7/b5vFliLzNPnUIG8bzeZ3+ZtDSVap867/vxVV/+mn71BU0YwKcv6N3XF
	9xXniPktJ5INLc1N884A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRxe1-0000000EsSe-2sve;
	Thu, 11 Jul 2024 17:31:49 +0000
Received: from smtp-68.smtpout.orange.fr ([80.12.242.68] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRxdz-0000000EsQq-0VFw
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 17:31:48 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id RxdPsAr1uHTrpRxdwsVM6q; Thu, 11 Jul 2024 19:31:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1720719105;
	bh=CYDBY2pWQO+vL7jUvHWkdq6VSa180NCvhyL35LhJ4nw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=AI76M2CNz/N0+vD1wQnHuPFx3lNMObmO+djuwzVfE+tEFcf41Gc4mxZ9lWQE9ygtD
	 73FG9DaAXzSrSVqCt89PNak4DHz0jBDk30k0SQPUwuFp4OUY4dNL6dRqZgZY7bHvl3
	 QC1PoyOOivnLhNtxvWk4PKNNK/uYCzZK29IdIHHlW7Qrd1JvZo5qs7hMgA+qF/v7GL
	 ZkG6rTisyxlvedh1MOALNEIgyV8CSOIEvPboywkMMUGQd0+urlO5JSrcLr3LwN5C5S
	 RyQ/qcicJIM+8VJcyUlehJBjc4gKwl1VNBX7gMrJuTc3Ld/hAoUqyjlkjFOS6YGyil
	 FHdESRH/i/nug==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 11 Jul 2024 19:31:45 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH 4/4] phy: cadence-torrent: Constify a u32[]
Date: Thu, 11 Jul 2024 19:31:09 +0200
Message-ID: <34e23ceb6b7b7eb730ee8deee21d231b504dc65f.1720718240.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
References: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_103147_344565_42E7569F 
X-CRM114-Status: GOOD (  10.27  )
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

'cdns_torrent_refclk_driver_mux_table' is not modified in this driver.
And it is only used as a "const u32 *".

Constifying this structure moves some data to a read-only section, so
increase overall security.

On a x86_64, with allmodconfig:
Before:
======
   text	   data	    bss	    dec	    hex	filename
  93578	   4798	     16	  98392	  18058	drivers/phy/cadence/phy-cadence-torrent.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  93606	   4790	     16	  98412	  1806c	drivers/phy/cadence/phy-cadence-torrent.o

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested-only.
---
 drivers/phy/cadence/phy-cadence-torrent.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index e99fa19aafb2..098c141c28c2 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -285,7 +285,7 @@ static const int refclk_driver_parent_index[] = {
 	CDNS_TORRENT_RECEIVED_REFCLK
 };
 
-static u32 cdns_torrent_refclk_driver_mux_table[] = { 1, 0 };
+static const u32 cdns_torrent_refclk_driver_mux_table[] = { 1, 0 };
 
 enum cdns_torrent_phy_type {
 	TYPE_NONE,
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
