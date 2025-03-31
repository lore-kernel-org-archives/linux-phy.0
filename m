Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA073C3600C
	for <linux-phy@archiver.kernel.org>; Mon, 31 Mar 2025 21:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Iq8GSIAIVM6MS5jCEmCSlnihmjmaAoi6NDPigqJJMxM=; b=1R9nsWCeG4BnLB
	aF7P/Ace8puvin4BIkUKKvMUyc+2wnp+x21sBhZh1T/vftaDKFY6XUd1C2MRzncF026Pj5HLEMLES
	+WqgEVKOLpcXhW0aPXdpRDLozgJwstoSMpkyvFfM3k/UDjHY/Dk5vo02TKRFjXJB9iBTvNMFC7Hqa
	DpDlzZxSCKssbyV2fO/ytPZyx+rFDHPTk765DdmW9JFaxbruT7xBqSgM5I7DDDsFk3KejCcktibUX
	f+poQgtto9JSZ7lZ0oOn3qm8qG2l7uOwlSDljsDMxRCKrnk/hZPIe5blnjgsghFSSYlfh/VkW8yV2
	m/Bp69+71rL4J9lCMN4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzN9u-00000001Sop-223Q;
	Mon, 31 Mar 2025 21:59:06 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzN9s-00000001Sne-0MCK
	for linux-phy@lists.infradead.org;
	Mon, 31 Mar 2025 21:59:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1743458340;
	bh=k7LMlvy0mG38bHKsmOyr2dXqku3hwvCTZolnWTOf4hU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=XfqH6hVIS9lF220D8mfMsxnGbyD8pzwrDfAPONdcMDDeFEw3BuzUsdg/VC0V5K0T8
	 HQhH2m2BEyVnHFaXXIvuBXHgtEDaIR3Opmp3bsGTJfZI4CN+TVoTWVDsosgOkm53FN
	 kI9Zc2BtHJftaejpTyQ9Wyilugr2f2q8Wq30oKgFyvU1HzXs2+WY781rygCi+jNf5b
	 1vGCVIYCSZ+8teclJJoN6vlUExK/0RmBs6x8AfbzdLRZCfpJzXmWz//tOfra6Yma8Z
	 sCpS2+xDtmF2ynkWsKToq9N/iZjjDkujxiJ3EPfCnEWaLh+FJoDoXPBC0DWp0Zn4G/
	 oC2IwmTTuK/Jg==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id E9B64A74
	for <linux-phy@lists.infradead.org>; Tue,  1 Apr 2025 06:59:00 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=WZw7i6Dj;
	dkim-atps=neutral
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 34EE39D1
	for <linux-phy@lists.infradead.org>; Tue,  1 Apr 2025 06:58:59 +0900 (JST)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2254e0b4b85so84087745ad.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Mar 2025 14:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1743458338; x=1744063138; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tFX2ExnBv3aVLNqFccl8e2jClp0XfEMXZ5Px9EvOekY=;
        b=WZw7i6Djjx0Im4WQzF58cDUrNz5wlXIr8jcd+kzV3QW3/W8rLaAyCloga6W6tsBnzC
         dItVlhuqqc9uhxniT/pICE+oYFfSK2VcdGsDeagtPwZgmWKQFOmPMjEXLqhc/CT1ndJ2
         syUM0cUlbjDwkZkF6vaT7IzzGJTe1mGijTK2lFBpto0stbzpu6YPaLy3odPEJZC3Le9z
         nOqDdQ1xN/PPqIns8Yzi7paFWdw4qkj0f3Grbttb9C48dgXSzqwte4X67wiKZmcp9eMi
         x31sl3NIeJBOTcih3p23CIiH6h7g77g8Wptrx9VOCoQ3IlEM9WJMZKthV/V4RZvJ6GJd
         QnVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743458338; x=1744063138;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tFX2ExnBv3aVLNqFccl8e2jClp0XfEMXZ5Px9EvOekY=;
        b=B0O+FEHAlLjtVhJovWlXiQqhJF57tspggvoDe46rU4Xq3bOZyLnTrM5xj+SOJmSO/8
         XYX1NV5PORgpOYtX8k3rbW5JayIOtJRFjgSfvppDLwlTI9UoHVlURXn56EPbMDHzcdWM
         gSs6L8tZASAKeB1xkoWSJDjlEdYkVcGwSqBQ/lOKYAw3cpNK+qEUPD6G3z6v42363yoP
         oKK+UPl1/81OM5rrkNrrOfh9ZNzNg7VrHLB/CVzuRQwZg9V/cyIxrMX4qB9N5JsUBHul
         0ADeHv8/S7g39seAkOsl0Xh9rXmCBB1wKFFbCFWYBqfwGxszwQkMOJ2w64Hh+Pt5N2gs
         /WFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOTKkydHL/T2UhHCFvAVQncEnkw/v89zPOHI4Wa57mblIGVhAwoaKiSy3ba+IgYIc2LZJB+QadqdE=@lists.infradead.org
X-Gm-Message-State: AOJu0YynXiTxVqylkIKv4gRVn7K02hc4+QWR8VuDGOV+k13ePcBF+ExM
	qtZCPUEO/qKW8748SRbfLyrtD+fUUO2JI+dIYq1A7+5eYkyxud1CEJ6JQEDCjfAlPyGyrGlV8Yy
	ZEiN9b5SnXQ1gx2WU7A/PKA1GE+9kLgaTbaplo35fST5LbtcnRWmbGFB03b3AbGV8
X-Gm-Gg: ASbGncuusmqm8OXCqAZiDkkeSp8edjJ1hjuf6Z6z8NaNV8Zw0wz8dRic8olgzvuP/iH
	9A+FzDInIPww0u9Lg2m/iAuGtwLRVdF+GZHwTEgDNlZrN7RgvB4xZn3CeosXsF3V/3bHh3vW9Ed
	+Ko4gJIcyXQFcSPxCPBaSU4ZS/5Y5SEs7ZuLxvX80+DRx6W3FBImy+Im6qFtFmpq4MQRHwVFCvD
	yuVCT4hj6GS0ghS/bfrsSkX4Wgp8jikH+pvrhJQh31YG8DYGYJoDlhLvdNN3YTkrN3r2yqoueFa
	L5n7AuRuxOQWmGkU600fxKVnd7GNkw7W1QFfUSytAunqah4rOA0O81bHmLYZxtkbzR7CnyjPOTo
	=
X-Received: by 2002:a17:902:ec8c:b0:21f:2e:4e4e with SMTP id d9443c01a7336-2292ec07225mr162596005ad.5.1743458338181;
        Mon, 31 Mar 2025 14:58:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEC2tmtdDUEgw9i+Zj6fWqwksycm+AdRgJPxbfLg0t89SH8ZRKaaaInjYucDq0nxU0GQWquPA==
X-Received: by 2002:a17:902:ec8c:b0:21f:2e:4e4e with SMTP id d9443c01a7336-2292ec07225mr162595795ad.5.1743458337821;
        Mon, 31 Mar 2025 14:58:57 -0700 (PDT)
Received: from localhost (117.209.187.35.bc.googleusercontent.com. [35.187.209.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1f818csm74221515ad.233.2025.03.31.14.58.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Mar 2025 14:58:57 -0700 (PDT)
Date: Tue, 1 Apr 2025 06:58:45 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: return closest rate
 instead LUT
Message-ID: <Z-sQFRaWxiGe6XEN@atmark-techno.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7x+WkhPQGLUqJ40SjtmhTXx=Fn2rkqw8NQ=qgaNnpK97zQ@mail.gmail.com>
 <CAHCN7xKUdveqVnOXXRL-RhXFrN4OUjJC+VgZguy1kYjx230wCw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_145904_253616_5F6A12EE 
X-CRM114-Status: GOOD (  43.88  )
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


Adam Ford wrote on Mon, Mar 31, 2025 at 08:45:26AM -0500:
> If Dominique won't have time, I can try to clean this up a bit.  I was
> not liking the names either, but I was trying to keep them small.
> I'll default to this convention more in the future, based on your
> feedback.

I've been chasing weird suspend bugs on our platform (another soc) for
the best of the month so it'd be greatly appreciated, sorry.

Feel free to replace our patch with anything equivalent

Adam Ford wrote on Mon, Mar 31, 2025 at 08:43:38AM -0500:
> > For this particular rate check, I believe that if phy_clk_round_rate()
> > rejected the frequency then phy_clk_set_rate() cannot be called at all
> > with the said value (at least on this particular setup going through the
> > imx8mp-hdmi-tx bridge validating frequencies first before allowing
> > modes), not that it'd hurt to recheck.
> 
> I believe that is true.  I considered adding it, but when I put debug
> code in to trace what was happening, it was being rejected, in one
> place, so the other didn't need to.  If the general consensus is to
> have it in both places, I can add it.

Yes I think it will make the intent more clear, if we're going to share
some code or make it more consistent might as well go all the way.

> > In general though I agree these are doing pretty much the same thing,
> > with clk_round_rate() throwing away the pms values and there's more
> > duplication than ideal...
> 
> I've been working on creating some caching to determine the best
> values for the PHY and remember them, so the work doesn't have to be
> done again if the next call uses the same clock rate.  I'm not quite
> ready to submit it, because I need to rebase it on Linux-Next with
> some of the other updates requested by Uwe.  My updates also remove
> the look-up table completely and use an algorithm to determine the
> fractional divider values - thanks to Frieder's python code that I
> ported to C.  I experimented quite a bit with which values have more
> impact and reorganized his nested for-loops to keep track of how many
> iterations are done and also measuring the time it takes to do the
> calculations, so the code doesn't really look like his as much as one
> would think.
> 
> The downside with my updates is that running 'modetest'  on the 4K
> monitor that I use has so many entries, the time it takes to calculate
> all the values for the monitor takes a second or two longer than
> before, because searching the LUT is quick and doing a series of
> for-loops to find the nominal values is more time consuming.  We could
> potentially keep the LUT and only use this new calculation if the
> entry isn't in the LUT.  I am not generally a fan of LUT's if the
> values can be calculated, but I can also see the advantage of speed.

Hmm, tough question... I don't think we want displays to show up a few
seconds later, we regularily get mails from customers asking how to get
a logo to show up faster on display (I think there may be some variant
of uboot that supports imx8mp hdmi? but we don't have that), so while I
see the appeal of not having an hardcoded look up table I'm not sure we
would appreciate that compromise.

I think it'd be great to just have a way of checking the values in the
LUT are correct though (either statically from Frieder's python code as
I started doing or through a CONFIG_WHATEVER_CHECK_LUT config item
that'd check once at boot, although that's probably overkill); I started
checking from the python code but they weren't computed with the same
algorithm so some values end up being different even if theend result is
the same frequency and I stopped halfway...

> > That's quite rude of me given I just sent the patch, but we probably
> > won't have time to rework this until mid-april after some urgent work
> > ends (this has actually been waiting for testing for 3 months
> > already...)
> > If this doesn't bother anyone else we can wait for a v2 then, but
> 
> If you want, I can submit my stuff as an RFC to give it a try and
> solicit feedback.

Happy to test/review anything you send, but I make no promise on delays
:-)

Cheers,
-- 
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
