Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26B2FE6FE47
	for <linux-phy@archiver.kernel.org>; Sat,  7 Sep 2024 04:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAWFCFJ5k0+/svuB5naRYiQHtSR+sNG+RmfQZr1ks7c=; b=SEfwRb37X+eiBa
	lm9+WM29sxIn5ZaDMJjAEBEJHTOygt5ebYEc5CR35Xv4G24fFgcc+NvHZToO6ceyQ4R9Bn8tQkbAr
	f64EJi3xt+v1XNWOuOoeOmtTevVsDDwasXOjaHZNcSacloe+udfLUzT/65JNQeqqmtsUTX741oZfU
	9Je1BPeD12vlW7suFa+r7FHZrJMbKBpcAy9eLzX4BzLBk2tNLy1u/sTw7+zxV1rrm95K1ghZKiaSD
	gucWkrvSkUls5PLVdfK8c+XFOENtmbhaKBUXyShfEuESyGIUFch+1ac+C6OrCTjfGFKei/mSldoII
	FjG89iprkj0Si5XObpMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smnOu-0000000EKtJ-2qoY;
	Sat, 07 Sep 2024 04:50:20 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smnOs-0000000EKsg-19Yu
	for linux-phy@lists.infradead.org;
	Sat, 07 Sep 2024 04:50:19 +0000
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=eJKwybZV;
	dkim-atps=neutral
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id A25669A5
	for <linux-phy@lists.infradead.org>; Sat,  7 Sep 2024 13:50:12 +0900 (JST)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-7d65a13582dso2143048a12.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Sep 2024 21:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1725684611; x=1726289411; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uSMukMIhcDVQ104P2W74lSerkCACmtj94ee8fjaLxa4=;
        b=eJKwybZVO5alHiRmVgL8zAykn45Amnbq9XFQjjixJur21C49w1BKKGLqKXlarzhV1j
         75zWZebGW3QdgX2ZA7orYYPGpiFpWtMej3aURvktJL4PYAhvwqGfFV6upjIAoUAF3krc
         pSUHETtyLR1bb+z+kgDWPFewobjg+rv8/1bEMNb0S+F/bUWSgvT/HBO6NOytX4h3SmWx
         6Rmm7Y5pYPOaa+rl4der+LJbMNz3bOqxLnZ3Qd3uOMbD89tKAgCO4xzcf7I+8k5X2XIP
         ZcLqJ72HoVzdFEYhg+Q8KfjOsrxpasg/yRaP/vYXFX3haY/XK97ukrf6JfPJd/O1LbeU
         HhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725684611; x=1726289411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uSMukMIhcDVQ104P2W74lSerkCACmtj94ee8fjaLxa4=;
        b=O9Oif67xvk0OgRzZ8/jI/rzz2d7Zxwupo1UuS7qZy73XR8DBd7QuEoZJpsicsSkI2Z
         76EHfPVaaCcfBF94XCiXr2o5YFYraSnZ41+4s1jxE0v4k73E5bXRb/0oIUepQXYCsdTe
         /FLxgU/QLMZ9PEpq7a97IzWjXcHejCjCUHuL/9/4ZlbJpr532yYFEaCsFqFroYPlt37H
         18G3QAoSUbJZdY47glZviPFKLTIxb5BPQGMM03bHORL/Qgou7nrS9lXJTnWDzhtNmgiW
         vBNSn8xsILaAo+IPZ6BIXpYD7n6XEccwKsroRAUJQOH5ZGTLiO6cWddEV/pf4cOcs1Vw
         Ljag==
X-Forwarded-Encrypted: i=1; AJvYcCX1ikvp6N5f9OqYd6kKSr1TYlV3yxQSq40Pi9yltSRJj6DXpnChZTbEGt1YdwFJWZSj2KEkY63UnqY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8FFC09jDTCFdujxmbK6sQvAq2hb6Pl7SBqy0T7MEdl9feX0+r
	wdYSR8d4dXjGiDnW/rzuPt0nhKtNd/9a5o9+fB/xkVUJlUSyPSwSNa1fBqC76GmjwV48ifXynxr
	/i3L8ww6GQHrV7IoEcUkkXuIzzNrYr8VEbD6mWfEcbl15jLic7TErN15pm4aZLdrz
X-Received: by 2002:a17:903:2303:b0:206:c12d:abad with SMTP id d9443c01a7336-206f05523e9mr76534205ad.34.1725684611659;
        Fri, 06 Sep 2024 21:50:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEk7UlUC3AHUh16SCd2taB+NCntOKFAyIOi25PshPx3ZbLNjNzHyk6BXfmJVY+8FNLV6qwfiw==
X-Received: by 2002:a17:903:2303:b0:206:c12d:abad with SMTP id d9443c01a7336-206f05523e9mr76533955ad.34.1725684611310;
        Fri, 06 Sep 2024 21:50:11 -0700 (PDT)
Received: from localhost (117.209.187.35.bc.googleusercontent.com. [35.187.209.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710ef71c5sm2565125ad.132.2024.09.06.21.50.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2024 21:50:10 -0700 (PDT)
Date: Sat, 7 Sep 2024 13:49:59 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Frieder Schrempf <frieder@fris.de>
Cc: Adam Ford <aford173@gmail.com>, linux-phy@lists.infradead.org,
	linux-imx@nxp.com, festevam@gmail.com, frieder.schrempf@kontron.de,
	aford@beaconembedded.com, Sandor.yu@nxp.com,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V6 4/5] phy: freescale: fsl-samsung-hdmi: Use closest
 divider
Message-ID: <Ztvbd4XqY95YMAZd@atmark-techno.com>
References: <20240904233100.114611-1-aford173@gmail.com>
 <20240904233100.114611-5-aford173@gmail.com>
 <ZtpMPCHBnEgtkBWp@atmark-techno.com>
 <CAHCN7xLo1RgkUPTdTpCtKjnT7w=gPDCfe_ZEbKj0joVvLG02Dw@mail.gmail.com>
 <ada922ea-b307-4ccf-9e2d-9a2a08fb97c1@fris.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ada922ea-b307-4ccf-9e2d-9a2a08fb97c1@fris.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_215018_453674_CBD19C01 
X-CRM114-Status: GOOD (  25.09  )
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

Frieder Schrempf wrote on Fri, Sep 06, 2024 at 10:28:59PM +0200:
> I think I managed to get behind the calculation of the fractional-n divider
> parameters. I came up with a spreadsheet to calculate the output frequency
> from existing register values and I have a crude Python script that can be
> used to search for parameters for a given pixel clock.
> 
> I tested this with three different non-CEA-861 pixel clock values (supported
> by my HDMI USB grabber) for which the integer PLL yielded deviations >0.5%.
> With the new LUT entries those modes work now.
> 
> I will clean things up a bit and then share what I have. I hope that this
> allows anyone to calculate parameters for their non-standard displays if
> required.
> 
> If someone feels extra motivated they could try to calculate the fractional
> parameters at runtime. However I'm not sure that this is feasible. The
> numerical computation of a large number of parameters is quite heavy and
> it's probably not easy to strip the algorithm down to something that can be
> run on the target without too much overhead.

I think keeping the LUT is perfectly fine if we know where the values
come from - perhaps having your python program in a comment above the
LUT so anyone can check the values match?

My main problem with the LUT is just that -- there's no way of
checking. If the values come from somewhere sensible and can be verified
I think it makes sense to keep it to fill the holes where the integer
divider isn't enough.

> > This way, the calling function can determine if it needs to be
> > multiplied by 5.  I haven't fully determined how the fractional
> > calculator determines what frequency it wants for a target frequency,
> > and using the values for P, M and S from the fractional divider
> > doesn't seem to always yield 5x like they did for the table entries
> > using the integer divider.
> 
> For what I found out the factor of 5 always applies. For the integer part
> and also for the fractional part.

In that case I'm definitely in favor of moving it inside the function as
part of the calculation

Thank you both!
-- 
Dominique

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
