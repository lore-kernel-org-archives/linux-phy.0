Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44446C52D6D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 06:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jPe+FsRcsAFKdsrBCOkVAne+v1mLcEmAKwrhjie8RI=; b=n8NTfFhVRix95l
	cv9TX0xvE8xmpx+XhVCXtx5UNoDCGJJDO08Qh3YSo7Vi+2Mt9QeOv+LbJX+18HcOPO3LRekxRC63y
	whYmDVg31eH6uhPa8cstu3uZkeQF0cGxBsHWPWe4oFqqVkbvttv3Lumfv4vkrL+VHdhOVp8qc8TJs
	GmLp2XJj7LkBm0IGErqI2MQO3Gvhu7MUq1lCNTDbgr8itKuwVR0U24nKPMFT5wsClqbltIIXk0d6W
	2lfCqQYp4spXjnOHByR254u+Uur0efIiRSg28wVusDSmdakpvNFMCyt1VpC/IQnGcP099o2NUn8Jp
	iufsUMHl7Ra/KcWTGS2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiw-000000045Hw-3vhn;
	Thu, 01 Aug 2024 06:55:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPiY-000000045Ax-2qaJ
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 06:55:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EA455627B3;
	Thu,  1 Aug 2024 06:55:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18BB9C4AF09;
	Thu,  1 Aug 2024 06:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495317;
	bh=PW1fmd0yFchGP2DLz+NRdDx4udpU1rOUDGXgTeYD+z4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=L2Vrx0hwjGVTr98Q0F30tc8oNm21dncEGnWTPPgHsCqAbFZla1BicwBQ8kwJVKZxI
	 sbJGX4u/cHAV1VfQD/wX+NQnFPDHUxThaPfjQ5MKYUKTnqGjg8WdwzCdILe7BxHYuu
	 byDL/3WzwtgE23YyHfB01rciFu55jK0gldxsIYcGJ75iie+osIVq9kjLu91oyyLU1u
	 Zxl7Gcp7Gur+byCkuRZOICmwABbo7i0V4G+xrPrS1frcEFCTfWNZ6hgw9zwd+lJHL7
	 VARmVlYucs3wYhXblgfWNybH5skS9W/dioG9xmd2UKYzTPCQvdG/2+RZ5kLQ5gvTe+
	 CvXCmm4Vl9dDA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
References: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH 0/4] phy: cadence-torrent: Constify struct
 cdns_reg_pairs
Message-Id: <172249531567.256913.10505517208895735918.b4-ty@kernel.org>
Date: Thu, 01 Aug 2024 12:25:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_235518_829734_11106985 
X-CRM114-Status: UNSURE (   5.92  )
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


On Thu, 11 Jul 2024 19:31:05 +0200, Christophe JAILLET wrote:
> This series is just abour constification of some structs.
> 
> It turns about 15 ko of data in ro section:
> 
> Before:
> ======
>    text	   data	    bss	    dec	    hex	filename
>   78154	  20222	     16	  98392	  18058	drivers/phy/cadence/phy-cadence-torrent.o
> 
> [...]

Applied, thanks!

[1/4] phy: cadence-torrent: Constify struct cdns_reg_pairs
      commit: ad3654812f2cf937679128f18a146d25db9d3a0e
[2/4] phy: cadence-torrent: Constify struct cdns_torrent_vals_entry
      commit: 1d7eb113f1f0d368afbadf56ffef91d615b1cf41
[3/4] phy: cadence-torrent: Constify struct cdns_torrent_vals
      commit: 86946f25cb23b71d3ebdc3dd5bbb8ec5155c03ce
[4/4] phy: cadence-torrent: Constify a u32[]
      commit: ceb6e0435075ad8b44c78a12dbdc3ec1fb4ec301

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
