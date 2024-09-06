Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C9D3CE7AA5
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 01:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7cxzRkAcz1gGTO9EPccIHv2VTwVz45NpvkhK+Dwc7E=; b=tuX0MeOTTi9fU0
	Xc507gj0j1tTGibglO7L5JyRreByk+PmGSaGb8Xk//7IC/OFsLNyyV64vdFv3kw6ewtVGVI6SlhXi
	k2slZOejHs36EB5ETFt2Piw7dnSr2+OmaXTx4dhlCemR2wjG4D3owSnf4ofGDlctJp1empk9fJymy
	B8mwzo9Fs897EMfZdOQ4Y44yCEFvbcljyfPX1dLjna21K3vGU71FoqelnY3s0qBkENZAE2/VQ5Cmo
	k27NF4mqDSFQ7SSaw60uiSZmxt04fkSRzfjXME+S9hFBZynJXexXeie216+Vg3/dK8t0MwzshqNgP
	8He5Un4gBWQmcs14Gyyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smOBe-0000000AKGA-334t;
	Fri, 06 Sep 2024 01:54:58 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smOBa-0000000AKFf-47ao
	for linux-phy@lists.infradead.org;
	Fri, 06 Sep 2024 01:54:56 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=Q9O8UjrX;
	dkim-atps=neutral
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id DF1F77C3
	for <linux-phy@lists.infradead.org>; Fri,  6 Sep 2024 10:54:52 +0900 (JST)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3df1e412a53so1817311b6e.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Sep 2024 18:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1725587691; x=1726192491; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=durTQ7XeNWZjAZ/4AGM8xhjnXE2dEnjAadXy47DRtOw=;
        b=Q9O8UjrXE4GLC6NM3AhmuNRBwwaFhHxkFm9PtQ7pFAwr6H1tdFdgmJbxOAnfafiBK1
         8IpJzMyMNT3Q8M6CPI7ATm+j8W2+BCjsXDTiGYxE53AvgQHb5Q2/CHqtLfDK10+U0T+J
         OOHnMH5vJ/es18uSA/jH2XMMur4eMOb7PATrrh3B4MmfLI5NknESKLjJJ/w5uJjH7kQw
         mMFABYj+1wzDut/yYNeXlDaK5BK7iqBFDKh72lKCSayES2XT6qo6Mp/zzMuxLbfPsivc
         zpRr2vHXDifiNm82Br06FFPwTcOThWM4Iql6KmLNct43Jdd24nlsyLa0QbrUZwpOXNaR
         1FxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725587691; x=1726192491;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=durTQ7XeNWZjAZ/4AGM8xhjnXE2dEnjAadXy47DRtOw=;
        b=SO5uhXpxAoUpz7PcE9RfJuZtlnP5b9G6pnBURAavFTQ45GcjPkTXMN8gWd/7ymf3N4
         UFmS0r1pOCW4LWrABNJj0Ot7p1mmx1fln/R2SaC4GqfeMlBVY7hRoA8x1zbVL02IA677
         47kzo2ueZ4jP1N3xN58VLgB2YjEhU/tiqGED2hks/cuWcq0CTpX08YfkRZZwCO0ht0lK
         QNMIFFkf+lEhX0Ik227MHOjIDaS3dKnnsvRoV36gj5HxJFJ5hXFCRhL9Id6Y2emXctQ3
         jOH+CLza5t2amqXpOL43E3s8xFf7UPKa39Q1mKGjHCF5sY5feQbxC9s2d2kHBVQB/iwc
         Y+oQ==
X-Gm-Message-State: AOJu0YzHJWrAWjFiiKgHjfhmkZNNapjq6++/7aSVYA3/WBDHg1GAxeh4
	YMbnrtE7ngDdf4st+R5xF1y+FpLWBH7tXCyU0EyOaccxdN1ie79jJLnrrArZsj9dbWHcJRh+ZJd
	lMS+US0qquuUItMKOLFVDqoVaOJMXtUnjQnh6SwGnoJpB24veCdrziKk9s02XaN2d
X-Received: by 2002:a05:6870:a7aa:b0:277:e6fc:4a69 with SMTP id 586e51a60fabf-277e6fc4eb8mr17433236fac.2.1725587691320;
        Thu, 05 Sep 2024 18:54:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVipTQfUND/FnRqfGq4dI5ZGP/w2h0TeXSOD87mBrBmYVleyYHmbalAOvkXRNmqfOthp2LQQ==
X-Received: by 2002:a05:6870:a7aa:b0:277:e6fc:4a69 with SMTP id 586e51a60fabf-277e6fc4eb8mr17433220fac.2.1725587690879;
        Thu, 05 Sep 2024 18:54:50 -0700 (PDT)
Received: from localhost (76.125.194.35.bc.googleusercontent.com. [35.194.125.76])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-717785988aasm3839472b3a.164.2024.09.05.18.54.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2024 18:54:50 -0700 (PDT)
Date: Fri, 6 Sep 2024 10:54:39 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V6 4/5] phy: freescale: fsl-samsung-hdmi: Use closest
 divider
Message-ID: <Ztpg3_iE2Dbqb4VT@atmark-techno.com>
References: <20240904233100.114611-1-aford173@gmail.com>
 <20240904233100.114611-5-aford173@gmail.com>
 <ZtpMPCHBnEgtkBWp@atmark-techno.com>
 <CAHCN7xLo1RgkUPTdTpCtKjnT7w=gPDCfe_ZEbKj0joVvLG02Dw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xLo1RgkUPTdTpCtKjnT7w=gPDCfe_ZEbKj0joVvLG02Dw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_185455_165081_D16D587E 
X-CRM114-Status: GOOD (  58.39  )
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

Adam Ford wrote on Thu, Sep 05, 2024 at 07:57:36PM -0500:
> > > Signed-off-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
> >
> > b4 (or whatever you're using) probably picked that up from the patch I
> > included in my reply to this patch, this sob should go away.
> >
> For each iteration, I grabbed the patches from patchwork which
> contained any s-o-b messages, if present.  I didn't add anything
> manually.

Yes, I'm just saying the tool got confused - I replied to an earlier
iteration of this patch with a quote of the 0.5% tolerance patch I
properly sent afterwards here:
https://lore.kernel.org/all/ZtaawD3vb8gmnVmO@atmark-techno.com/

And it picked the sob from the patch, that I hadn't intended to be added
as a review -- from my understanding a sob is something you'd add if you
pick the patch through your tree (e.g. I add sob for patches I apply
through the 9p tree I maintain), but not something to give on reviews.
I'll reply to individual patches with reviewed-by/tested-by once this
thread has settled down; I don't have more comments than what I sent
just now, so I think this is almost ready.


> > > +static u32 fsl_samsung_hdmi_phy_get_closest_rate(unsigned long rate,
> > > +                                              u32 int_div_clk, u32 frac_div_clk)
> > > +{
> > > +     /* The int_div_clk may be greater than rate, so cast it and use ABS */
> > > +     if (abs((long)rate - (long)int_div_clk) < (rate - frac_div_clk))
> >
> > I still think `rate - frac_div_clk` might not always hold in the future
> > (because there is no intrinsic reason we'd pick the smaller end in case
> > of inexact match and a future improvement might change this to the
> > closest value as well), so I'll argue again for having both use abs(),
> > but at least there's only one place to update if that changes in the
> > future now so hopefully whoever does this will notice...
> 
> I can add the ABS on the fractional divider.  I left it out on purpose
> since the LUT table always return a value equal or less, so the extra
> ABS seemed like busy work.  However, I can see the argument for being
> consistent.

Yeah, I agree it's not needed right now; I won't insist on this, just
saying I prefer consistency/future-proofing here.

> > > +             return int_div_clk;
> > > +
> > > +     return frac_div_clk;
> > > +}
> > > +
> > >  static long phy_clk_round_rate(struct clk_hw *hw,
> > >                              unsigned long rate, unsigned long *parent_rate)
> > >  {
> > > @@ -563,6 +573,7 @@ static long phy_clk_round_rate(struct clk_hw *hw,
> > >       for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
> > >               if (phy_pll_cfg[i].pixclk <= rate)
> > >                       break;
> > > +
> >
> > (unrelated)
> 
> I don't understand what you're asking here.

This chunk is just adding a blank line that's not related to the rest of
the patch; it's fine, just pointed it out if it wasn't intended.
(these are usually leftovers from tests or something like that)

> > > -             phy->cur_cfg  = &calculated_phy_pll_cfg;
> > > +             goto done;
> > >       } else {
> > >               /* Otherwise, search the LUT */
> > > -             dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider\n");
> > > -             for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--)
> > > -                     if (phy_pll_cfg[i].pixclk <= rate)
> > > +             for (i = ARRAY_SIZE(phy_pll_cfg) - 1; i >= 0; i--) {
> > > +                     if (phy_pll_cfg[i].pixclk == rate) {
> > > +                             dev_dbg(phy->dev, "fsl_samsung_hdmi_phy: using fractional divider\n");
> >
> > nitpick: might make sense to print what was picked in case of inexact
> > match as well, but these are dbg warning so probably fine either way.
> 
> I can add the actual values returned.

Note my argument here wasn't about having the values on this line, it's
that the inexact case (when comparing with
fsl_samsung_hdmi_phy_get_closest_rate) doesn't print either line

(having the values can't hurt for dbg though, I think it could be useful
if you rework this)

> > overall I find the flow of this function hard to read; it's a bit ugly
> > flow-wise but jumping in the clock comparison 'if' might help trim this?
> > (and if we're going out of our way to factor out the diff, maybe the lut
> > lookup could be as well)
> >
> > But I'm probably just being overcritical here, it's fine as is if you
> > pefer your version, just writing down this as an illustration of what I
> > meant with the above sentence as I'm not sure I was clear -- I'll be
> > just as happy to consider this series done so we can do more interesting
> > things :P
> 
> Now I am a bit more confused, because above I got the impression you
> were withdrawing your s-o-b, but now it sounds like you want to move
> it forward.

I don't have any strong opinion here: I generally dislike nitpicking
about form, and value the progress you've done more than fixing the flow
of this function (e.g. this function already is good/progress from what
we have right now, we don't need perfect)

withdrawing my s-o-b doesn't meant I disagree with the patch, I just
hadn't willingly given it. If you don't mind reworking the patch a bit
I'll retest the new version, otherwise I'm fine approving this as is.

> It sounded like Frieder was making some progress on understanding a
> little more about the fractional divider.

That's awesome!
I think we can/want to get this merged first, and we can improve
with fractional divider calculations in a later iteration to get rid of
the LUT altogether; it'll be easier for other users of the chip to go a
step at a time as well if they notice a breakage.

> >     // (I haven't given up on that *5 to move inside this function...)
> 
> I wanted to keep the PMS calculator returning the real clock value
> since the calculations are based on equation in the ref manual, Fpll =
> Fref * M / (P*S)
> This way, the calling function can determine if it needs to be
> multiplied by 5.  I haven't fully determined how the fractional
> calculator determines what frequency it wants for a target frequency,
> and using the values for P, M and S from the fractional divider
> doesn't seem to always yield 5x like they did for the table entries
> using the integer divider.

The way I see it is that 5x is an artifact of the PMS calculation:
the caller doesn't want '5x rate', it wants 'rate', and actually setting
the p/m/s values provided by the function gets us 'rate', so it feels
like that's not the caller should have to worry about.. When we add
fractional divider support then it'll be the calculator's job to
determine if/when it needs that 5x.

But if I understand what you're saying, fsl_samsung_hdmi_phy_find_pms()
is not a pms specific to the NXP chip, but something more general to any
integer divisor that is better kept more generic if it weren't for the
few references to our hardware (e.g. limits on m)?

If so then I guess I can understand your position, I wouldn't go as far
as saying it warrants another level of indirection so I guess it's fine
as is.

(In a similar line of thought, had I implemented this I would have had
the function not return generic p/m/s but return the pll registers
directly -- it took me a moment to check why we were setting regs[2] to
`s-1` and confirming we had s>1...)



Anyway, once again I don't feel like I am in any position to be preachy
about all of this, so I'm fine with this patch as is - please take of it
what you agree with/want to rework and we can leave the rest here as far
as I'm concerned.
-- 
Dominique

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
