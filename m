Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44254EB48F8
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 11:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtQUDpE/1zWdXVyJde5GceyvgLKc1Z3+JQzXC31QLBs=; b=Sw6PLzcjPiac31
	wQFcpKrwRmycJINZ1LjCaCN+0rtR8/IDLw5mr7mqSbEgl6HZYr3IGPWO7MXY7ZTec8TheFJHULrmv
	U+vowHDvB1GrUKdmHajGPdKM1M2uLyky6b4dVxoNqbfR+l5IGlD6q+bYQ/MwNcIk/blEC1vNbEz4V
	Vp5wyvuKxh14x+TTvKJZg6NuoZGC4pTjug/q7xUUDqGf4++dcINnN0C4mwFG55Yf3KkOUowDNdIVt
	6DzOTV9nlZj4O803KTvulooPXI24ww9vl0RSbDAOuBlhNNQeCBiVmBp5/1ajz6/8bCGV2UGqzPaZn
	zODK9jesDn9xnjzqGmUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUhE-00000001ywN-465y;
	Thu, 12 Feb 2026 11:17:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUhE-00000001ywC-04Jt
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 11:17:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 28C4A60010;
	Thu, 12 Feb 2026 11:17:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 606E2C4CEF7;
	Thu, 12 Feb 2026 11:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770895038;
	bh=OE95iEv5hbPxhjUCx2mMjsub+XUE22v7OakoLEelgVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJNwmr+xLGPlQ/JDiqh03dsABOaOdsbwQpJBXvNEuRa/nSHhhN+ug367o00A9EJ3B
	 LmIIL6t7HuqEqAor0q9+qFqkReSzi/qoeajF2nR0+cGr466r8L3vVXiSkjluj0N5QE
	 h2fO6k+trYuckwiZVqQqee7aBSNFfjO85OYNHmWpCHRd2VIXge2KnPUsoGjvnGFUbx
	 rqh78fKf75yWz0yxQXi/FiID9nA/mmGa3CNyBI7hBFe0dhCeL0NwqqA6Fhqd6ZKaCO
	 J261hyDvN++QBfnTjjGK/VreMU1p6hDAgqJz0oSq8OS+Cp7rPTxlYFNafMbGodczpP
	 UP3ZTow/9zkcw==
Date: Thu, 12 Feb 2026 16:47:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Vladimir Oltean <olteanv@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-next@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local
 devm_mux_state_get_optional()
Message-ID: <aY22u1rDDWuU53zP@vaman>
References: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
 <CAPDyKFpY2X8hephSfHq7rj_DaKX76ZSkWSCYXrGTEBUFHkvOzg@mail.gmail.com>
 <aYyrsPTH1923jV7y@vaman>
 <CAPDyKFo92pOimvtGdN4yvFtFkc3vB+ex2OH10WmoKXcVSS+iAA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFo92pOimvtGdN4yvFtFkc3vB+ex2OH10WmoKXcVSS+iAA@mail.gmail.com>
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

On 12-02-26, 11:39, Ulf Hansson wrote:
> On Wed, 11 Feb 2026 at 17:17, Vinod Koul <vkoul@kernel.org> wrote:

> > Should I drop the 8bb92fd7a0407792 and it makes things easier for
> > everyone and then we can pick fixed commit for 7.1 cycle..
> 
> Well, my pull request for MMC was broken (the mux patches didn't get
> properly tested in linux-next, until it was too late), so Linus will
> not take it.

Yeah I saw that one, sorry for that

> At this point I would say that 8bb92fd7a0407792 is still a bit
> problematic as it uses the same name of the helper that the mux core
> intends to use. It would be better with a phy specific name for it, so
> it becomes easier to convert to the common mux helper, later on.
> Although, at this point it's still okay as is, as we will need to
> defer the mux core changes to v7.1 anyway.
> 
> So up to you!

In that case, I can keep as is for now. We can rename the api as a fix
and proper changes can go in for 7.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
