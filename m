Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57DC5C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 09:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8nkmvsejXRSOkaTxoyoHaX89d+Qeq8DFQ1njZuGhF8=; b=mDlh2QeMcgkLN2
	eousZe+K39W454aGgnXW71Ic+QLe7jbSYtZZlBOFNdQEQoHUkbj3ueN8RATmQxISyQVtd6cjqi1Nb
	59tfpoKXWUc+RVyN1opnuQ9ste5OsrdPJstU/eziwMqY9oPmiwpvyPLdCOaRytIWkc/Jyztx3h2U/
	FyIu1ekxnoIcw36LNt66i9Onl3MVf7SH7uQkmeOXmwXxkgQWVI7P+eBkvDgY3duwoSVYFzxK83qen
	xBL/6Mk/iDyxyaiSBORO5BdJC8IptI6p2eLawAaLt/4+qMu9SbZ3gwmhf7ZlEa6xfq0F43db3+rJc
	pt2vrDLLw4k4SaQoW/+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZmk-000T2L-P0; Wed, 13 Apr 2022 09:59:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZmh-000T0h-EM
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 09:59:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E7BD961BED;
 Wed, 13 Apr 2022 09:59:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C163BC385A3;
 Wed, 13 Apr 2022 09:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649843974;
 bh=edWDMNFQGzOPrM0txe1XmiULQnLSuJwBlfUIiC8ELSY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hrZsvSiHzSpRS/FUjbvVvDmC0pKyLTp950vO2SsROj6/bBNQfQsMyp72qz6tiLRyh
 he2HlrnlYZqfUfmcBlHhg92k6eR5gP6xjAHTJK3D1xPsxv30Afr8hzjAQGPp9r5cxW
 tzmIs9Rf4W1PnO1Bu42gEwnNNmhXjau3+Qirmb7413kvxcbFash1/aHLNziDvfZDKo
 Ted7jtaTDs7e9fGavnyU/Sf0+xgVAOIIVLbmr1XgKkXSzBfliwjM59uHYzFVsM0UxO
 HaoVj2WRd5ZKLZYykfgVGuc1DcBVCz7/0/bE+dOMGxApdJDLCZg1OF6mbiYGMy+6Fi
 J/dPhuveTJsYQ==
Date: Wed, 13 Apr 2022 15:29:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Amelie DELAUNAY <amelie.delaunay@foss.st.com>,
 Yann Sionneau <ysionneau@kalray.eu>,
 Michael Grzeschik <mgr@pengutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH RESEND v3 2/3] phy: core: Update documentation syntax
Message-ID: <YlafAkEQq81R4MGC@matsya>
References: <20220407102108.24211-1-jmaselbas@kalray.eu>
 <20220407102108.24211-3-jmaselbas@kalray.eu>
 <YlZnb2dJjaroDfyu@matsya>
 <20220413095349.GA25550@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220413095349.GA25550@tellis.lin.mbt.kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_025935_569898_1638DF5A 
X-CRM114-Status: GOOD (  14.01  )
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

On 13-04-22, 11:53, Jules Maselbas wrote:
> On Wed, Apr 13, 2022 at 11:32:23AM +0530, Vinod Koul wrote:
> > On 07-04-22, 12:21, Jules Maselbas wrote:
> > > Update the syntax used by the documentation of phy operation functions.
> > > This is to unify the syntax with the newly added documentation.
> > 
> > Is there any reason for using this sytax, is it documented somewhere..?
> > How does this syntax help?
> 
> I don't have any particular reason for this syntax, this syntax have been
> suggested by Randy Dunlap.

Is this documented somewhere?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
