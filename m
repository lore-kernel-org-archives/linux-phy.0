Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BEA1C54FC6
	for <linux-phy@archiver.kernel.org>; Sun,  1 Sep 2024 21:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C26G5J2+N7vDanoC5tRIj7F795GEeNyJpg/gEYQJ9+k=; b=GkMkidGMEoW9Le
	ok7H8YaJcd+IgCU0O/vm/deZVEe5FrD9jm/y6B/PSaVPRYV3bIzVcuHkNn/yxt7HOMkD56C5RZXMN
	iTDlmhdOcyX9K30/0I/AaXO+PZ8dYwH1XrnhwWyB1lwWxOdkwUV010rJizXVPAY2AUCKwfqcictCl
	reMHtipobWrTKmeXXMBWXPFaKN0KkVgH7aRusTTi2oWrqoCCZluHcU+bHvEjB2tLCGywx5Y13o1Wa
	iWNbEUg/5h1vLcIIjwfZGm9CIt2Fd10lmXvUtgx8ocNBmOw85cV5VVnMy9RvToQNj7OQeqhQ/vmE2
	spKN5gHJnF/dENE4DJ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sksPA-0000000CNi5-1Wwf;
	Sun, 01 Sep 2024 21:46:40 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sksP7-0000000CNhQ-2Ret
	for linux-phy@lists.infradead.org;
	Sun, 01 Sep 2024 21:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1725227193;
	bh=Fc6jdlhhqUfBDtoCkcjqQlwdvZp0Mm902RhOUtVCNUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uHEuHBYxnOWvOuwjEgpbzVB6TLglQZwatK8gNUWPP3Lv2YZp3E+kRcHl3WjL/ph2I
	 Fde+aUPI+Tk/noYZ2cC7nQ4HF+l2LR8X3UIOsHZSOnlc9ch7MNEpUFW5w39dkmdlFn
	 MGDDXMdteqrcHhBPw6mMfs/EKRf0Y6RklfUMuqNXwPUu0D0GUbL2cUYuLHnzNRpvHl
	 ohA98+VkvvJCYcoDsYciTiH3if+NCgCeJxphmoxASbUBLifZu9AYVj0VyqcMLx0WOV
	 W7UA2KhVFLDQsAcCrth7KDq/Xds7fjPrnp4Hcc/Ec+K7uqzadw/wzBZ8bi1AyAvmO/
	 vsK/KE+E+MvJg==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id DA1E49A5
	for <linux-phy@lists.infradead.org>; Mon,  2 Sep 2024 06:46:33 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=WxjWQFlN;
	dkim-atps=neutral
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id DA9BD105
	for <linux-phy@lists.infradead.org>; Mon,  2 Sep 2024 06:46:31 +0900 (JST)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2d8e59fcd4bso228371a91.1
        for <linux-phy@lists.infradead.org>; Sun, 01 Sep 2024 14:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1725227191; x=1725831991; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aqoR1K0s1LZWBnxVYuck4KdhPBlvgzt5rveXqQj0UWY=;
        b=WxjWQFlN8EvZj44Vv2sQDHEz77cUCoQq5xvExmW9xQybeC6JGrx5btI77p6flstCcb
         gKcQpTQ2T+Hjxa8TL85QT7NATvVBjiZAFd+LhYBmWG0IWrDKJq0h8pAKqQIztUR5Bo/8
         hIXKWg2zcvelXtcfC7EKYZq8VpR2p36Ym/xuRnAJCxpJ5Ox/3X8fBrWnUd+5X3wyRkkH
         xphe/SPojtDZRLmsOPsX3L9H1wwV3nuw3ODaJPT7itjzFaGvQLVpBNUk57elE2GkgZMD
         3Ht7ukmegjUeTxOD6xdfEnjd305SF5SFC7a4EpuNht6KtMAQyWCIQz/V3ulhIFGNyodo
         aMOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725227191; x=1725831991;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aqoR1K0s1LZWBnxVYuck4KdhPBlvgzt5rveXqQj0UWY=;
        b=PjYII5ZbNDMt7rCPH6cFqVyfDXyb83Kjg0ZtWS0m069Q0V8LZSzR+gDqiV3Fol+X6S
         H16aj3kYv/7e9g/tTdL3vYOPn1a5FtOmIW3sYDK01v296lC2U0biT1e92rdhoNPKxyB+
         ZvO45EhHQMwb7/WNXy7TUD/RHE/wyhXYIwtlGy/TGXz7X/jSOy9JZ4+52WhLIardyISG
         kFMROVedW8HHhEe/B3Jr5cYQF66M41ots8Wv1ifSP0qSugkvb/T+4xB6DqYxKVeuOL+7
         qyi2+enA5ftc8RNTTyoM4eMbCbS0bzKtO7bUkaXTsFHMhwKF7R5DvBdASSQ8kAB8zHct
         cJbg==
X-Gm-Message-State: AOJu0Yy98A6kWWMq+kHdBeK9inusPMiBd9/U+DUWkyBCWF9WiVrPv9qL
	59zceOfAZMqO9ujEpVy8TgNS8Rxqd9ON1xFqBkpBbrBaJ2vQt62D00drspi6bt2OfoTCd1z5mTI
	TMriIsvR4zjp8Vhw76ZPSzmuljcZnaZ23sz/75KxnHO8FgpwSah9X5VSMb8R7ooO3NJrc8Dm3
X-Received: by 2002:a17:90a:9293:b0:2d8:bbf7:bb7b with SMTP id 98e67ed59e1d1-2d8bbf7bc18mr2942119a91.30.1725227190801;
        Sun, 01 Sep 2024 14:46:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMVGk1ZWIrg1GcUpcuZvKPNFbQMzrfBBFDeKfNRBY77z9dAbgRFAXRyGZG/Ha2mCmFixr2Yw==
X-Received: by 2002:a17:90a:9293:b0:2d8:bbf7:bb7b with SMTP id 98e67ed59e1d1-2d8bbf7bc18mr2942097a91.30.1725227190321;
        Sun, 01 Sep 2024 14:46:30 -0700 (PDT)
Received: from pc-0182.atmarktech (35.112.198.104.bc.googleusercontent.com. [104.198.112.35])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d85b3b95cesm7632101a91.53.2024.09.01.14.46.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Sep 2024 14:46:29 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1sksOy-002Ekh-1I;
	Mon, 02 Sep 2024 06:46:28 +0900
Date: Mon, 2 Sep 2024 06:46:18 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [RFC V3 3/3] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer
Message-ID: <ZtTgqj3kBEc8sAjE@atmark-techno.com>
References: <20240830032442.226031-1-aford173@gmail.com>
 <20240830032442.226031-3-aford173@gmail.com>
 <ZtFfBs4HEShmJKsi@atmark-techno.com>
 <CAHCN7x+xy+Y6o++Y5NdZaBJUsHV9Ru_2PwuH6G-2oz1juO=+rQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7x+xy+Y6o++Y5NdZaBJUsHV9Ru_2PwuH6G-2oz1juO=+rQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_144637_762382_D5AF0FC0 
X-CRM114-Status: GOOD (  37.66  )
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

Adam Ford wrote on Fri, Aug 30, 2024 at 10:04:41AM -0500:
> > So, as far as I'm concerned I'd be happy to move forward with that and
> > will backport this to our tree/remove our kludged values, would "just"
> > need to properly pick the closest value if no exact match instead of
> > always falling back to the table (or just remove the table altogether if
> > we can test a few monitors?)
> 
> I took that step on my local build machine to remove the integer
> divider stuff from the LUT since it can be found automatically.  I
> haven't committed them yet, but I'll likely add it to the series once
> submit it without the RFC.
> 
> I am also likely to update the rounding function to look at the delta
> between the closest LUT clock value and the closest integer clock
> value and use whichever is closest to the desired value.

Sounds good, thanks!

> > I'd change cur_cfg from pointer to the struct itself like this (partial
> > patch that probably won't even apply on your branch:)
> > ----
> > diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > index 9048cdc760c2..d7124604819c 100644
> > --- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > +++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
> > @@ -402,7 +402,7 @@ struct fsl_samsung_hdmi_phy {
> >
> >         /* clk provider */
> >         struct clk_hw hw;
> > -       const struct phy_config *cur_cfg;
> > +       struct phy_config cur_cfg;
> >  };
> >
> >  static inline struct fsl_samsung_hdmi_phy *
> > @@ -562,9 +562,9 @@ static int phy_clk_set_rate(struct clk_hw *hw,
> >         if (i < 0)
> >                 return -EINVAL;
> >
> > -       phy->cur_cfg = &phy_pll_cfg[i];
> > +       phy->cur_cfg = phy_pll_cfg[i];
> >
> > -       return fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
> > +       return fsl_samsung_hdmi_phy_configure(phy, &phy->cur_cfg);
> >  }
> >
> >  static const struct clk_ops phy_clk_ops = {
> > ----
> >
> > Then you can just set it directly for calculated values.
> > But conceptually it's the same, just one less indirection.
> 
> I was thinking about that, but I wasn't sure the impact of
> un-const-ing would have on the LUT.
> 
> Using the extra indirection minimizes the impact of changes to the LUT
> and how its handled by the compiler.

The LUT has to stay const, you don't want something modifying it by
mistake; my suggestion makes cur_cfg a copy which does not need to be
const and the assignment (`phy->cur_cfg = phy_pll_cfg[i];`) is
equivalent to a memcpy -- the struct is small enough that the cost of
copying it if the value didn't match is negligible in my opinion.

With that said, I'm not saying you must do this, this just avoids using
a static value which could be problematic if there are multiple parallel
uses of the driver, go ahead with whatever you prefer for v4.
(note my approach doesn't fix the same problem if the driver is
used twice in parallel.. is it possible that e.g. one kernel thread
calls phy_clk_set_rate() while another thread checks something about the
hardware and calls phy_clk_round_rate()? If so neither approach is
correct and we can't easily skip recomputing, and it'd be better to just
have a phy_config struct on the stack instead -- on my imx8mp it takes
4.7us without -O, 0.6us with -O2 to compute; I *think* we can affort to
recompute every time...)

-- 
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
