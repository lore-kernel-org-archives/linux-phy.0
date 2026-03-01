Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70EBDFD0048
	for <linux-phy@archiver.kernel.org>; Sun,  1 Mar 2026 00:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNeA+m0pzhEmW1p5jHnGMcmu40m4SMboyFcMFURgw6w=; b=N40GFY3wb+lNrK
	M3ZthWrmEkiJuzI8a+GypDy7YuCC27y/nZkTBKQx/KkzOt+Op8Z6Oh0Ty4BltlFSeceaXBHyE7Nxu
	On12UZTuptNg8PImYNW8W+E9rcyzKWyBGjHulF1RizdZR+91OnLvlnkazemssEskMIut6rXB0oz6t
	j3dmB44qnAO0Yy9dT+9vjHyTrYQQinnILVeP1Jm5213DexWerBlMQV/MRGZjobLUwdEcXz2A1QTY+
	dvTGkBlHJyUOA0LJ5dn93v47n76ZmCdhlJeuOItVpV3gSPpyGS08eIwlTXNjawpADrk3PdEVa/XCb
	jtGfEmlwb8XnI1z57V4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwUjZ-0000000APUu-1TcK;
	Sun, 01 Mar 2026 00:32:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwUjY-0000000APUg-0Ocw;
	Sun, 01 Mar 2026 00:32:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EF3E6600AD;
	Sun,  1 Mar 2026 00:32:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 029FDC19421;
	Sun,  1 Mar 2026 00:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772325150;
	bh=TrV9WuauQIJMEiV5wFKqcBZhdXyHXR+OiLKPj6LkgY8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=n4FjocUsnH9ow+vG/caTVCBGsupj6baiby6R9/+J+554TwP7pfoCJg40d9fDBNtOY
	 XV1FPy1wsDXHW7KlsFpZC01/W+Q9U5c9qdGb35+moXGWpXYyJAkDhTQHRG7aCCSUjq
	 Y+ieR7hrNTDCeKNsfkyboHf34BS+4i0QNL1UmbeRCJZJaxOsYJRZ3ltBT87QhxGEM1
	 JNDk67+eFNZYojXj4Qqbrt1c/P3RIJDDmfzHUUFsPCXuCc0Fkai0btjP+JOK+DV4ot
	 Pgd6HtPRocHRezXUG3WrNXogy0QDgm2VXB93PRcQMr9mR33qLcClaZNHYqszPGIhko
	 eLqwxJfzZEXQg==
Date: Sat, 28 Feb 2026 16:32:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, Andrew Lunn
 <andrew@lunn.ch>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Andrew
 Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, Mohd Ayaan Anwar
 <mohd.anwar@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, Vinod Koul
 <vkoul@kernel.org>
Subject: Re: [PATCH RESEND2 net-next 0/8] net: stmmac: qcom-ethqos: further
 serdes reorganisation
Message-ID: <20260228163229.1024f263@kernel.org>
In-Reply-To: <20260301001453.lpd2rawy7bqxyivp@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
	<aaIysVxy-WxbiJz9@shell.armlinux.org.uk>
	<20260227165556.5cf9e844@kernel.org>
	<20260228083111.5df8550c@kernel.org>
	<20260301001453.lpd2rawy7bqxyivp@skbuf>
MIME-Version: 1.0
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

On Sun, 1 Mar 2026 02:14:53 +0200 Vladimir Oltean wrote:
> > > Yes, that's what I thought but then I saw the other thread..  
> > 
> > Trying to apply this now but stmmac parts don't apply on Linus's tree,
> > and Vinod wants a tag :( What do we do? 
> > 
> > Could you, perhaps, send us a PR with this on top of Linus's tree 
> > (a resolution of the inevitable conflict with net-next would be helpful
> > too).
> > 
> > Or do we give up on the tag?  
> 
> Actually, I think it's mainly me who wants a stable tag. 

Ah :)

> I'm working on a series for phy-next which will conflict with this 
> hunk from Russell's patch 1:
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> index 5b1c82459c12..4ea3dce7719f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> +++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> @@ -7,6 +7,7 @@
>  #include <linux/ethtool.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/phy.h>
>  #include <linux/phy/phy.h> // this gets renamed to <linux/phy/phy-provider.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>

That's not too bad.. if that's the extent of the conflict (which is
probably hard to predict at rc2?) we could let linux-next handle it. 
Of course assuming Vinod is okay with us merging Russell's entire
series.

> If there's no other way to provide a stable tag other than on v7.0-rc1
> (like for example a snapshot of current net-next/main), which I didn't
> know wouldn't be possible, then I think going with the route of fewer/
> more trivial merge conflicts makes sense.

To be clear, it's only about having a common ancestor, I wasn't actually
planning on making y'all a tag. I'd just apply the series on top of
v7.0-rc1 and merge them in. Then anyone can tag the relevant commit 
in net-next or use as a base for their own work.

I haven't looked how bad the conflict would be if Russell's work was
rebased on Linus's tree. If the delta is not too bad, and we can just
resolve the merge conflict when pulling it into net-next. That's
probably the cleanest.

I don't recall us ever making a "dirty tag" on net-next which would
propagate few 100s of netdev patches into someone else's tree :S
IDK how Linus would react. It's the least good option IMO.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
