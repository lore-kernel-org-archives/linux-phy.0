Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A46C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  3 Dec 2021 20:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHy8cZToVxSVHY8Cpl3JXR0gk2OVmtjZivVpkVzoFBs=; b=PNK/Wye5Z1CHGx
	MiJ/UkGeEhvFFZqwbqYAHhp2C00ynU0cfnmMJxZkumF52Zcw5uDUBkUyQhYobfXRcd5ZjnXb7c4mB
	oOQp+1MWssBejuBoXuY6az8iqPTP5OaXBe+HDNJnmE3qgAzKTfSqC88WKqkDdiMa0pFHozHt/CR58
	dUxRYkOUw2eZgfxWVyIPUDKAwxTuPBNkKRkVxO1f/7n4g1NrYPuS0KmXQ5WAtLyl1PWkw8j/xqH1z
	24Ub/tHeltVQywNZFe4FMJF9gd/vsnzL/qI8FFR7r31NZfJo7mbxGS+GMqYf8JNwU/3LT6LNnmbH1
	tbkqCisdomgjqUXWbWsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtFdo-00H1S9-AN; Fri, 03 Dec 2021 20:58:48 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtFdk-00H1RY-V5
 for linux-phy@lists.infradead.org; Fri, 03 Dec 2021 20:58:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F2CE8B82956;
 Fri,  3 Dec 2021 20:58:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6716AC53FCD;
 Fri,  3 Dec 2021 20:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638565121;
 bh=a2l2btTqLXJTW+qfcpQ0pmrOOnQRbJ/Zk+E+6mIyYaw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hd7DN5JBvUkNty1JHdsbYR4TIvQPriTx/2e2XrdO5lVMeH0xI86hzc6L7CtPL8F0f
 Yb4D3wsC87gPTnZtc04CK0iLQcHTV3hQnnpmY1haLGI8p+DtUp7tADF6JSEC013YM1
 0/7k3I9+7k/tHS2SzeW8p57lUGpRyoPdWMA2tbCwI34bPGyjYioQzer0VHo/8vcHPG
 HPRAMDq2ZKd+ffiryUr1H3Q4sX8ncUGtuXbe6OdQ5m72e0ITXw56RvGov2S9iwuu6L
 FikQehN1IjxOydPD+lW623M9aIL0GFww2650whICA4Ah3aq+nttQCkVj28+kNjK72o
 o1KtpC7+Ve+Gg==
Date: Fri, 3 Dec 2021 21:58:37 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, pali@kernel.org
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH phy 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <20211203215837.53d2bbc4@thinkpad>
In-Reply-To: <YZyXoAofmLeqzNBh@matsya>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211028184242.22105-3-kabel@kernel.org> <YZyXoAofmLeqzNBh@matsya>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211203_125845_203378_04842696 
X-CRM114-Status: UNSURE (   9.74  )
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

On Tue, 23 Nov 2021 12:56:24 +0530
Vinod Koul <vkoul@kernel.org> wrote:

> > +#define COMPHY_SYNC_MASK_GEN_REG	0x25
> > +#define PHY_GEN_MAX_OFFSET		10
> > +#define PHY_GEN_MAX_MASK		(3 << PHY_GEN_MAX_OFFSET)  
> 
> Pls use GENMASK()

Dear Vinor, Pali,

I have refactored this driver thoroughly to kernel standards (without
functional changes) and fixed a lot of register name definitions (they
didn't align with Functional Specification). (I have also prepared
this fixes for TF-A, but will need to rebase them.)

I have also applied one functional change to fix a bug I found, but
still need to fix another bug.

Hopefully I will have a solution tomorrow or on Sunday.

Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
