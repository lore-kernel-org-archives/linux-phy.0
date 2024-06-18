Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6679AC2BA18
	for <linux-phy@archiver.kernel.org>; Tue, 18 Jun 2024 00:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzF517Ft84LZqRnc7qUdgvWxzHkbNtOYvh/S2MqYsDA=; b=KkyNlCPowshcoV
	+NfmTEZ+NtEsZCAPLapcsEmw8sYgPUl7P6y7Bm/2H6baZwaJmxjMat1i2T+dsknwNcQfsOTWJladg
	HrALVwd0qnVCj1UVSaUgfAfOkGQ2WlCTto/yo4tT4PWGtVX+V0iminyA8CWHCKWnXnWIV/4tgXddZ
	dDTgbf/IJ0n37x6hZ6xy8sWhP9ZvNbNhRS/pKThqAXPeHznXAm5gI4tZ0hj3u7E4SRSnNSb6fPukW
	CLdUQXsXHsY3Id5VPSz5DNXV3v5bVVIwzjPHqwgbbFRofZEPWZF2nFy2CHU1vnL0iR7caAO88XFYf
	lOS0Wm3e8QmSMJcfm6Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJMLS-0000000CzhQ-0PKW;
	Tue, 18 Jun 2024 00:05:06 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJMLP-0000000Czfp-0lgQ
	for linux-phy@lists.infradead.org;
	Tue, 18 Jun 2024 00:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1718669100;
	bh=TKA2C043TkCUGXnV0SbvDBVxmP0XE7myxN4MUMYbCJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nTyZ13zSV1xy2D0V9wrmiHKETjbqBilxCREcL2+XF4LZGIszKOBc+6xQIoepxm2NU
	 War3Yf1tC30isr/EJJ+drTL4yCvYyglbq89o4nMbAzOmx6dSd7BIsRthjyWzjD4ZQP
	 ax6HpXMdhtGbzepPoF1VSn+9BS9CHQUYtLD6oOX2uDKH2Fe1/i7F9kseX6icwctATp
	 /xSR2Nm4TR4fpi5O7lgSMSn3HkYYt9A5nUvg1mlTLSGL2l5dVQRnwVO8b77X2sNKbc
	 9zew8da/RIuaBFki0aKrrXVgy0G0BQ+pObc+s8C1nBV6gkn4z9lA5BGDCsLVCj4s3z
	 jR3bIvPmsYK1A==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id C5927A55
	for <linux-phy@lists.infradead.org>; Tue, 18 Jun 2024 09:05:00 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=ckoZyrNt;
	dkim-atps=neutral
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 4098CA87
	for <linux-phy@lists.infradead.org>; Tue, 18 Jun 2024 09:04:58 +0900 (JST)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-70428892e0cso4057735b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 17 Jun 2024 17:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1718669097; x=1719273897; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0Xe63nUyIwv36+7xnvrOAI6BQO79Yhtze7l/OyxIXbI=;
        b=ckoZyrNtNnQGxMmCkAy0GMtNOLj49HPwy+DeGAoVQDu2sSjNg7VgVdOPs20P64PPO7
         bKLH0C/EwGyanxEPdv8+RnHruwWiXe59za7oLHKKUmj8tUU7Gq8GrpGzjpKG4XhKbfjz
         +aOShSqSrIeFe88TwAeW3FIFo+hXuBfst7YXdgwzI+LFuG2KMVS8BvuLj0eTHKfT1UKS
         jJrQcOI/VM1J2vZMAo+HSPVL5JX+uHGEVb8GIOA4TgckVqc1/Ro839OgkzGJj2pLVswJ
         vas4a++xE6bbzLuDQwzz1xdrKwrMBK5rxPWOnuTXTPXL39g4G5DSyDcpfjmNdRcTAxM9
         z4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718669097; x=1719273897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Xe63nUyIwv36+7xnvrOAI6BQO79Yhtze7l/OyxIXbI=;
        b=IvGL1AP127j2uhAxyN61I0FOd+vNe0qzY9sVjqHAFP1sUiOFgX/gkb93+CkeEYrkKx
         KeZIZQP9OhRGaIzAvlGXJIt+R5Nua2Pee2oswaUaEAPljp+UEJ2NGKMZLrXkpjmTSlYG
         ddUv0/8wmuDDYg55LiBhAGB7U2sG5Gw4mdjhsfD0TNoo2+Aseca6Rqb0H36Vcdz150fs
         Q75U8oTuFIkBpKOzzpoGhPJxilXyEn5fvnhYu+2hL1I+seE0LKiXmImmXw3KlFYiExaS
         ERe66F+tf+c1H2vA/KfzZfn0hGoB4NGZE/4Q/GZWW48WouI9E8gnVbTbRqJerrXCX1Fh
         COZg==
X-Forwarded-Encrypted: i=1; AJvYcCVn+M2elh/h80B7oJZ9Sb0b2gTk2sx/v9fb+Crj1oUselKbePnspS58MgDrFlWfrG7CpdNA0yHa/nG/rtngcplvCTJw0kSYwsH98dNJ/A==
X-Gm-Message-State: AOJu0YxLyX9yEtaIsQp8PiuKjMLKwOWEEBSCqbPU/tQ564XVVXTNyk+E
	x04sTvaxElBbqsPFVxN/BG5j05j6IKe39LleshhTDScYfuY/5e+q1d825sS1nx6D7tygLChHjFB
	P39/Qc78XdSZ6RqUxgyDMWoazNhfW33LY1t5IqbY1/YT2mnwk9bxM6VLohjS8JMo0
X-Received: by 2002:a05:6a20:7344:b0:1b0:1a02:4136 with SMTP id adf61e73a8af0-1bae7e28efcmr12053006637.8.1718669097077;
        Mon, 17 Jun 2024 17:04:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEaJwsOB5qRcAEyY5B6LLeGzmT4mUY+ApOshTQERXeBYQ+t83Lc16Ao0Q3gXge9N9DbP6gkbw==
X-Received: by 2002:a05:6a20:7344:b0:1b0:1a02:4136 with SMTP id adf61e73a8af0-1bae7e28efcmr12052978637.8.1718669096600;
        Mon, 17 Jun 2024 17:04:56 -0700 (PDT)
Received: from pc-0182.atmarktech (178.101.200.35.bc.googleusercontent.com. [35.200.101.178])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4a7602690sm11894540a91.28.2024.06.17.17.04.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jun 2024 17:04:56 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1sJMLG-00ACZX-1h;
	Tue, 18 Jun 2024 09:04:54 +0900
Date: Tue, 18 Jun 2024 09:04:44 +0900
From: Dominique MARTINET <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
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
Message-ID: <ZnDPHN_sSaWR7KKp@atmark-techno.com>
References: <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
 <CAHCN7xJt+1WGFYeBii1jUDEg9OU176f0AA+rMkXCqNQrfq=XWg@mail.gmail.com>
 <ZnDKovBokBu5D_eb@atmark-techno.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZnDKovBokBu5D_eb@atmark-techno.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_170503_379262_2290C5D5 
X-CRM114-Status: GOOD (  15.14  )
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

Dominique MARTINET wrote on Tue, Jun 18, 2024 at 08:45:38AM +0900:
> I'm thinking the last few values just affect a very small % of the
> values, but would need to check with a proper scope if I can get a hold
> of the clock line...
> Does any of you happen to have any datasheet for these registers,
> or should we consider them to be magic values?

Answering to myself on this point, the registers are properly described
in the iMX8MP reference manual...
I don't make much sense of it at this point (what's SDC..?), but I guess
it does sound likely we could generate the values with some work.

I'll wait for replies a bit first in case one of you understands this
better than I (which is quite likely!), but can give this a few more
hours to help.

-- 
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
