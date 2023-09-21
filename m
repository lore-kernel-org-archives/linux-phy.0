Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA979E7107E
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjIAJq2fxlDX+vpeey68nLPp9Pr+yCFmgMvr6LgpK+M=; b=Dn+/hoD4HmzamI
	q07nxPrZBWp3t/vmyB3CARFbT1TdxJhOjqyB0POSMG6X3XVWXGFHrLvzH/lxiAnQxvPauqkz73bsu
	LbhUGIYKImfbl1ouigRnPZld87n6UGCNVhCB9siy4pzU/ahXaYW1PtOR67NQ8C8KRodfGXOUxRk5E
	xGtsYpbYxinUDY5Q2OAoififzDvjLiwtKDPsK/r58FZjaqiAP8qC6j8KXXD0ZELAMj5MNDfAGYNfu
	e3OgrUpGCPtdJHKBqCSqCoYibK31STT7/I1t8dk51RkKSWpuyYXO/XjZLclS+p+TY9nxq5deh3Srj
	bwamNAQgtw5jEBepyCTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdP-006GNp-1u;
	Thu, 21 Sep 2023 14:26:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdN-006GMg-1k
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:26:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1386660AD9;
	Thu, 21 Sep 2023 14:26:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C308FC4E760;
	Thu, 21 Sep 2023 14:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306384;
	bh=0xfghWMedoSlx/QEomZwRWfF6s+XXddyyG2dWRAjylE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=EkLApXW1gXrwyAaIXHRdvTXv3SfUvQba44REO1oVauxSzObWcZRClxcVaX3xSHW/O
	 nrpPLOuOiJUiqfSRKgAtzd19NjihB40k3kdCJK2+nLFb4FC+npLKdx/UmBWqNnX3XF
	 hxbULxlQ5QL2yH4/2A/f8+f3x+DYBuxOljlIwYF2WD38uJYql5yIKTEImWMiU1BvE0
	 iaZocxM/PcdBS5anrbjt2lGNleLmYN1M+7LEGz8QJO1swuiAUO95JVAML1EqFHZTWQ
	 G2FCccazx7Wxo7e/1hGuvoInLJdbhJrs+9MzpKX1Hd9jx/ZIcdYSk1/n7DKUubo9c7
	 QeyJgOjNuLB2Q==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, Bo Liu <liubo03@inspur.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230912114646.8452-1-liubo03@inspur.com>
References: <20230912114646.8452-1-liubo03@inspur.com>
Subject: Re: [PATCH] phy: qualcomm: Fix typos in comments
Message-Id: <169530638251.106093.8189249588604640066.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:22 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072625_621457_3E00E0BD 
X-CRM114-Status: UNSURE (   5.33  )
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


On Tue, 12 Sep 2023 07:46:46 -0400, Bo Liu wrote:
> Fix typo in the description of the 'succesfully'.
> 
> 

Applied, thanks!

[1/1] phy: qualcomm: Fix typos in comments
      commit: 11395c32f9e9e26f2f6281bd916a1161ba42ee6c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
