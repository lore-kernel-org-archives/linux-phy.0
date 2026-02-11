Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5245FECD6D0
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 18:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ja3ym2jNulIRL/62J8xm98kt55jl6OKToDlyI5BU/pI=; b=Zcyv1U0ON6u+P1
	aQqV44igUxXa+L+aetjcIc98EUGnweNLxrf9vqoXCFGA3iaJvWbVxac4eiGZYK8WmwjWt5ocDttij
	Zwx1WOS/zmM5Xilk7KrnVQPytNbPhVux6ek5L8nwfrFcnkU6MZzZEBLrlB5gGYtRzjIymys1F0b3y
	swgsTwA69+TyGyRqZgUipDff4j40dXV1qzR3wobuD+YCmOUfolKVKjoN08iMx49ZNJ92LuQWCkpK+
	r1kRkmqBsd+7yaUUGnahG7mVngSjYSBPELqa63L4tG0O3NLp4GQtlGGyk70Z3h+Ct5gCTGDbfCado
	b+i5tMQq9hvbWf0ElT3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqEkJ-00000000w0P-1WvE;
	Wed, 11 Feb 2026 18:15:27 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqEkF-00000000vzb-0BDs
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 18:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=q0b/9mHXAHkCPQF6gj490znq+sb7w5XclW4QCSC8pSw=; b=TYOrP/uGrV77kDLeFcNNMBGk2o
	T8Tjirthzd16f1R0GZMmVz4YKJfkqcHn2r0ard0/GK+XlrcN+VSAXk7Pu4p2vg7eokxQyPuYy3gIu
	wf0Szeqy7s3Rh8UhFuawsNFdK0TV0bzjqSTZFMCHyMJOx7d7NhT6/evzn/BBjFUyRbXOzH7Vz3eZv
	mZoyr7TrHvMBQ/IK66uV9nhwjU+hTOSblcPA6AUp3ewog1/xAcYcHOvGILQkY5ue5GFG6k4q+ZbCs
	Xaa4g6sIGjFonS7g6kL/3EcSAI0jy5o1RtX1ac3xEXFODtjDZVYmMlzY0QB/Q8vs5ShB+BxGY7pOE
	aLYTtBgw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:32944)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vqEk6-000000003cF-2Avd;
	Wed, 11 Feb 2026 18:15:14 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vqEk3-000000003yM-1PDT;
	Wed, 11 Feb 2026 18:15:11 +0000
Date: Wed, 11 Feb 2026 18:15:11 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260211154839.lbh4uovxr5b5s4nv@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_101523_105365_D19930DC 
X-CRM114-Status: GOOD (  15.40  )
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

On Wed, Feb 11, 2026 at 05:48:39PM +0200, Vladimir Oltean wrote:
> My 2 cents: I would actually remove any reference to any sort of preferred
> call order. There's nothing in the framework to back up such a concept.
> Just say that it is recommended for PHY provider drivers to not rely on
> a particular calling order, such that PHY consumers have the freedom to
> choose depending on what suits them best.

Sending out this patch was a last ditch attempt to get a response to
improve the "generic" PHY subsystem, However, as the issue is now
almost two weeks old, and the current patch series causes a regression
according to Mohd's testing, I've rewritten the series to be a finer
set of smaller incremental changes.

This has meant dropping the idea of using the "generic" PHY subsystem
in generic code, because as "generic" PHY drivers are currently
written, that's just impossible given the current state of "generic"
PHY.

There are "generic" PHY drivers that require to be powered up for
any of the phy_set_*() functions to not error out. There are also
"generic" PHY drivers that require the PHY to be powered down
before calling phy_set_*() before the new setting taking effect
at PHY power up time. In this group there are drivers that error
out if phy_set_*() is called while the PHY is powered, and there
are drivers that silently accept the call, returning success, but
do not change the PHY mode.

This makes it pretty much impossible for platform independent code to
know the correct order to call the functions, and what to do if an
error or success is returned from any particular API call.

In other words, it's a trainwreck as currently implemented, and this
was my attempt to try and get some consistency.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
