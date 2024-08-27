Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80113C5472C
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 07:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNyo4otMuMXdLrk9uxpOCX2QgAQo/ARXg1arzISPLKQ=; b=uYtIht98qfn8V9
	k4wmDzvxGamjgkTo5uQFpHeEGW5/7SG82YUl5Gxgp83EWoRo6cTIwL6DPGwNr/lqzBq+QFnxPZX4/
	wxjIWyx7zpAZJ7up5tQ/GdcqLdqUN9tvS5dYLs98TmHqr/n3ngn1WvFVuq3OeOrmYKYQ6ajQ3tFRe
	fSuy+Zi5RC/nIyt9pjjAVTMQ55uv4hJpXlMFZzPvBDU4OmtH2ENwp+O57VkGWQz65JD38CjDMJBC2
	+ZeWQJaf+UOyc0jRNrjnGenNC1Ne3y3GkbbI9r/qeDpk7NOLqYgx0knW83rTZdviTW9vfP7vN3yNz
	zCwbQ8InAz5SmsCqwBHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siqbF-0000000ACm9-0XsQ;
	Tue, 27 Aug 2024 07:26:45 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siqbC-0000000ACkb-2yks
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 07:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1724743599;
	bh=s5SVCmSXXVTlWTSGyITY2lSONRFpLbKxgXI0kEQ0mXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VufqKVNZpVTGUsL+xMKeQD5z7LrVCNxqkLtcFKzfQpxQUIzyYoEb4wrP+I9h9Rzd2
	 Loo9dYyNdPv5A2o3zsJx4AN9qST2+seOzFBseFgrEoh6QtSRV12vpnlKqdfB0kgV3D
	 Tmcaie+2L5X1R4PleYF8heugtnFM4h4cuOXwr1ErK6Y5nY5+rmm9Bvcpp5HuZwXQSa
	 JUGa4p8+MYzoMSGib2Ej3fAYgjk0wDCL5o3SR7kl62qz1M5IskLdKG4nDQHuK9DKze
	 H59xH7iHlDytlt4zMWLSi9PlZ1MM6Jc9TCXqYO53lgLMkXMQf3ksQjtuEFxy5rsXIz
	 /mi2qec61ryTg==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id C3F5E9D1
	for <linux-phy@lists.infradead.org>; Tue, 27 Aug 2024 16:26:39 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=ARWrusm4;
	dkim-atps=neutral
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 7F15D9D3
	for <linux-phy@lists.infradead.org>; Tue, 27 Aug 2024 16:26:36 +0900 (JST)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-6507e2f0615so4549315a12.1
        for <linux-phy@lists.infradead.org>; Tue, 27 Aug 2024 00:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1724743595; x=1725348395; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yMSxmDf0MF2kmVGar68KDMZHrrKcCPfHUHgljqdD7Xs=;
        b=ARWrusm4Tn6uoIkyFqJhqw6S35r9R48nVPDTm86/731LV1hvQreamzjRMePy6sB2yd
         mbx5RX5724FhVZrCon2xzS/bEBBigxdgyg3rCz1E6rXte2h+G7z8TvxEXyiemF4YbalG
         +dAOanUPJM7er+RNr1uu7wndnHRU/51SsMA6/jE4cYW+kS25tlki7mdt+fsDtjYvTRHb
         OjQCHIMEvH2uJ/EkluovG6/DVYk+8UY10OgaR0HhbQJWdgNeWoowS2BSHC+xjzWPZNz0
         DoQ3n+3GAd9oT5Yto5DphjscZ0NqY1WPw9AWct+1QW3JYN52NrV4zCvuA/PdJ00r1my4
         QnCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724743595; x=1725348395;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yMSxmDf0MF2kmVGar68KDMZHrrKcCPfHUHgljqdD7Xs=;
        b=pNZ6CY/iXEJkX/sAc7s0F/h54ctQibXTt7/VzLumUMp87r397tpzB5goz2/qacTAO9
         SQMmHc2Rc+ucoc9BAeKwgUYnz14NN9SHppTvg3uzmzVFMEs+5gXrSlco4DAuICwdJFhr
         RI3zTdA1nuPWhyvfi/rC/kPHJrKopdjvhlxP1UVy0gQNcxYe6D3dtPMu4JWd59W40OIi
         OOuenI51NXPuFLmDikxqBf/w8v7Ycp5WeA2HqIUgRx6CaagZl63dJoW6qRQBD1eslm9U
         J63vS+lbpkWGQ4QubX6huClqU/PVZpMvPzUk/dM4+XDzxaAElUw2gul26vZaudHDJvYc
         eQfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOwS9M9Mq18Da4QVLgsYeX0f+6MBg4j0+f/sNcYXCB8BPF14HnT193/dkuXFys7IvuNH75WNOMi7I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOnUDVHyYBQAdAUzwAZ8Z4SoHaRDdLL5mkTF0x8Vpcj+/ucjq4
	OLyUrEiuSTFiubjnDUCIeLjMlfoFkJVTjhBKlvn48ZNf441sc5yn/g+Y3cDidVu0Qb/wJxtF+VK
	zmgr10z5H4CwdWcguCND2wvb2inAyCJweskjeT1Xk1esQqzFV7+/Y8sS+B8bIAKw6
X-Received: by 2002:a17:90b:1c11:b0:2cb:4c25:f941 with SMTP id 98e67ed59e1d1-2d82580e22fmr2028882a91.17.1724743595328;
        Tue, 27 Aug 2024 00:26:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEW1/oji6zx+gfbgJZ3oB4Xn4c8WVytmZDVMFJCBO9GQDivVWFqkuYDN36JnD5SWjWnqM9TQg==
X-Received: by 2002:a17:90b:1c11:b0:2cb:4c25:f941 with SMTP id 98e67ed59e1d1-2d82580e22fmr2028858a91.17.1724743594925;
        Tue, 27 Aug 2024 00:26:34 -0700 (PDT)
Received: from pc-0182.atmarktech (162.198.187.35.bc.googleusercontent.com. [35.187.198.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d613af145dsm11209569a91.38.2024.08.27.00.26.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2024 00:26:34 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1siqb2-00ArlM-2Y;
	Tue, 27 Aug 2024 16:26:32 +0900
Date: Tue, 27 Aug 2024 16:26:22 +0900
From: Dominique MARTINET <dominique.martinet@atmark-techno.com>
To: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Adam Ford <aford173@gmail.com>, Lucas Stach <l.stach@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, marex@denx.de,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: drm/bridge/imx8mp-hdmi-tx: Allow inexact pixel clock frequencies
 (Was: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for
 i.MX8MP DWC HDMI)
Message-ID: <Zs1_nnjtRKWUtBat@atmark-techno.com>
References: <20240203165307.7806-11-aford173@gmail.com>
 <Zm_UzO4Jmm7Aykcm@atmark-techno.com>
 <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <cd03ecb1-100e-4699-95ed-d837a2802dc7@kontron.de>
 <CAHCN7x+bh_ka250hOCenO3Et6re4EJ=5TG8=kpG1hs-PV0dQxQ@mail.gmail.com>
 <ZsVluV50NvuGGHFX@atmark-techno.com>
 <CAHCN7xJnjfjr7HfKF+4pwbENP+p2=vvMXWW1AQShNy87vfQ=-A@mail.gmail.com>
 <CAHCN7xKgpqfRf_2p1z5NyKiOYubbcDA7YE5ML8G56pVmcV+1xA@mail.gmail.com>
 <CAHCN7x+HgasGG_v-PdtmRszhJn5odHzfV6ddeeT10_1yCOS+DQ@mail.gmail.com>
 <2d877963-e2be-4090-a86f-aadccf8f5e69@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d877963-e2be-4090-a86f-aadccf8f5e69@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_002642_894003_6FCB5D1B 
X-CRM114-Status: GOOD (  23.91  )
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

Frieder Schrempf wrote on Tue, Aug 27, 2024 at 09:00:34AM +0200:
> > Using my PMS calculator and Rev 2 of the Tech Ref Manual, I think I
> > can generate you a table entry for 51.2MHz.  I don't have the ability
> > to test it.  I am still working on figuring out an algorithm to
> > calculate the fractional divider, but 51.2MHz x 5 does not' appear to
> > need the fractional clock divider, so I think I can just get away with
> > the standard PMS calculations.
> 
> Thanks Adam for all the efforts. The initial request for the 51.2 MHz
> clock was from Dominique, not me. I was just jumping onto the bandwagon
> with my own use-cases.

We still have that 51.2 MHz display around, so happy to test -- might
take a little bit of time as this already has a workaround but it's
definitely something I'd like to clean up so more than happy to help.

> > I still think it's a good idea to fall back to the PMS calculator if
> > the fractional stuff isn't found.  We could then determine which clock
> > frequency is closer between the nearest table entry or the PMS
> > calculator until someone can come up with an algorithm for it.
> 
> Yes, I think that's a good idea.

Seconded; we can keep the code as fallback of the table at first and if
it works well maybe even remove the table altogether later, but just
having fallback first would be great.

-- 
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
