Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28D02C54EE9
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 08:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qC2xnTaIVc2YJjKULEX+yS6QvmCv2/GgZJPRJlVAcss=; b=gi5kgcpyQLCWmE
	7MIZkTlPMv0x/ygLXU0FffLABbDUxLfCYHzQcRhKpJl5ks2aM9iquBMndGf/5deFa204a/IRdAb7g
	vxxPFCtptuWG0xbF6Ess4ngI9+WaaKvr59Ctuc5v9zWVpmyVq8oiwMrIZMX6NrrLmmb8F6+FyObKg
	AjCdGkkMSJRvHZQjZYTEhwYVhyRumbamzAQo5tSxVtJJqiGAbH2SVkpDB1gkLS/71dSEFavX9BzMb
	MskfftrY7ep37sbjmoBOzavLYDfR4ObbdoykqqJlgWOoPwn+GOY8CVgPKaGNMXdbWtD70/CYMbVfV
	+JU/iWm5bHNZZo9fpEcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVq04-003z9u-9t; Wed, 07 Sep 2022 08:01:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVpqq-003tyd-AA
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 07:52:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 62DEC6155C;
	Wed,  7 Sep 2022 07:51:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72D71C433B5;
	Wed,  7 Sep 2022 07:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1662537118;
	bh=uSW2ovitghVX/3zIU1kuVb5+1uQH1jIvAvyEfZy+RTU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xe1hnJfYkMMbQN83hus992shMEWY9M5m0CfWCzVibI6C9X2ywCBguS25aZ+hM77GO
	 k3tzS05BARzNxS1VL8NOuzjI/ozMJclx9Fe4fQ7yZew700CV2Oy4t3igxedmr9Daca
	 KwmNxTf7Y/gM2Xj5GnB+qLLLhT6hQd7AVBj7pKBc=
Date: Wed, 7 Sep 2022 09:51:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Linux Phy <linux-phy@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [GIT PULL]: Generic phy fixes for v6.0
Message-ID: <YxhNnD/kUA7REvZr@kroah.com>
References: <YxM2f3BCvYm0tvWt@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YxM2f3BCvYm0tvWt@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_005200_477332_8B6696C1 
X-CRM114-Status: GOOD (  10.54  )
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

On Sat, Sep 03, 2022 at 04:41:59PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to receive a single fix to marvell a3700-comphy driver which
> fixes broken reset  in the driver
> 
> The following changes since commit 568035b01cfb107af8d2e4bd2fb9aea22cf5b868:
> 
>   Linux 6.0-rc1 (2022-08-14 15:50:18 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-6.0

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
