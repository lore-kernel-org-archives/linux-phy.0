Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88ABCC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 19 May 2022 15:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8Bn9g5lMJ3y8piq7BXAtiB5jBfcUqsD51lOjzTSbfc=; b=RzMzMSvruBQWfz
	zy34xTssCKkMsvphe/l+M3QIWZEnVZZAi4cnJimcnVeC3aXeqUWs0XGGaZtiHSaoi+uCz6G+XL4Pl
	l68H1xs8bOmPpsJPg0t1hvN5rUS5r4kixWp2+EG2n8T1oXX1jpecaCXktMLqwOQwOYISaaR8ixeRd
	n2J0mfmQdlSxoCFPdvEYEUYtpJbIQKW04EVRYFqSgvT9NeAlpDyr1cPkgB4sGya/6hfmWo0751PJq
	bYixtegkxzTsogAiWw/gfgqnxo9aCYx8DnhEaCPSbE9kFYw4Z32SQD9NpN1MfIL/Q/9Hj7/VLoKXh
	BcoGD6fUstnTEoPBt+OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrhz4-007txt-CI; Thu, 19 May 2022 15:22:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrhes-007gII-47
 for linux-phy@lists.infradead.org; Thu, 19 May 2022 15:01:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 80DCAB82565;
 Thu, 19 May 2022 15:01:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C58FEC385AA;
 Thu, 19 May 2022 15:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1652972504;
 bh=2peLXIHGWglCmyR/bvzZxIAVGwKGih10obviZg1W3hM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BUf0dvh8lhk2JTFzx9yx6uy38NdQrALC+6Vqh/QplD20CpkZV+WR1FAsj7LDzE8RB
 Z883selXnhhvgYU0sIjUmGDN3pqkBqnLBLDn2k6s1cJjJyxNcEPQoVOrl3ieXExHZ+
 gni+NxAu+zVtfYQ+m4o2ZA6V+T/q0uYf3uRSUnIw=
Date: Thu, 19 May 2022 16:56:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: Re: [GIT PULL]: Generic phy updates for v5.19
Message-ID: <YoZaurFLJJe8mYNv@kroah.com>
References: <Ynz77p8KWnLzSzK3@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ynz77p8KWnLzSzK3@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_080146_369620_8F0ABF69 
X-CRM114-Status: GOOD (  10.99  )
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

On Thu, May 12, 2022 at 05:52:06PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to receive the Generic phy updates for v5.19. This time no
> new driver, few driver with new chip support and driver updates. As
> usual the changes are already in linux-next.
> 
> The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:
> 
>   Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.19

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
