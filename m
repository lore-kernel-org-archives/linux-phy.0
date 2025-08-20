Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB732CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 22:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPDi5xZVBmw4eBSdowzwOWlKjYPp32oi1yrhRHTbxrk=; b=iLnsJxxT7TtgoL
	a+PWDo1gWU3t/icEijS7OnMlvOSeiETSPYNZvOQUmAt1aW8TZWqWzRD+S97h/LcqozOg/XiE9vAeN
	J16mVT+6e51z3IQQ6ITo4YzcWTuNasBzO2gDPIMPMCEJabNwMk85YyCJ1Xgv4aDXmXXP7aUn9+quv
	v3XvaAnee5HKfufEhHpH4220VupVZc/R7NiKOpYHEhVHbijlzNX901Y1xJanhlEoRrt6mw7fDRucw
	aCjYNGRLLY+0PEZ7PWv4mOe6Qgy0nhWwQEgFTLH406aNJeZFdEZNdUJO3IdwgEjiA74zaP2rPLdnM
	WEQSr4hfXvgdVtPAcTvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoqs8-0000000F34U-29lH;
	Wed, 20 Aug 2025 22:01:32 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uombE-0000000EXpP-25qs
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1755710866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=y70NAvFqmHqQ/QHVWzEdqMxMN+9/pnnsuJyiP3UY3H8=;
	b=dH089n+TIXFlEGc7CcGxcnMifRoEomWsKPCQyFcGvQuUSYcI2Nr7kIMdduHG8M2ne0h7xm
	7xaAjFt+TdoNIwoeJ3wI8ZoRlZjw3x7FffAHu/jIjA/b1QNdYzxAxabUworKP7ZeMVLWZY
	qV+4K6hX5ZH0rKuzzp65hVGbxE6w2oo=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-501-lfOayIKUNdCu8y1FR4s5lQ-1; Wed, 20 Aug 2025 13:27:44 -0400
X-MC-Unique: lfOayIKUNdCu8y1FR4s5lQ-1
X-Mimecast-MFC-AGG-ID: lfOayIKUNdCu8y1FR4s5lQ_1755710864
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a92827a70so3857806d6.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 10:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755710864; x=1756315664;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y70NAvFqmHqQ/QHVWzEdqMxMN+9/pnnsuJyiP3UY3H8=;
        b=lkGDgTAJ58e4qPOJ7IqBwnwzAIu28zdf8pHgTSHIFY2orix/8JfKnExKsSY1PKlT+s
         jQKo8St+iHvc55lBnexHakksECH/oRQkzszaVmiqhw9x16M2DUVNaJT5KRM/Rv45eyQv
         0bBypph6HaXf1rj7MygK/Z6WJjDpToMW78PFptvqitiRupPlMv+0REgGnnh7J0XqdqQ9
         yB9qwLr/fR1XJtZ0Z2rilHrS56c/OSkBDNtLTVaEJpDA8h4hunMTXCa3SxV0Tm/oi2eN
         G66VALqonQ9paiRJeRYV0Nzz/o6PajvdfC/gUL4jrfY5VkZ0Y36z1WN7HUY3PrbJojTw
         DD/g==
X-Forwarded-Encrypted: i=1; AJvYcCU7wCe76dvKL+aFsIyceX8FKaknDXHsYe5HnjfNeTQ4RkJOze9qZzBSjEnGBxZuhzVdNHvCGxCLxK4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpqfdEAKypIQpiFR9kBjMayfwKGmLfsYEiM6BWpi9kx1Uc4vYT
	neYbwYMb4BI8DHyqxor5Hlhl1Rf3sQ3AldKbLFsl8SODZLYalCqPpl7CTPtvgQmfHPPyG1Y3YRL
	3Z8QR/qrba/hqaQB+phnacgRUJXzeQhPJkuxu6pI1dM8uf7U9kdE4uQBxUMuxmD77GwE=
X-Gm-Gg: ASbGncuSZ/7n4F4WVYhC1NfvJcanUr0Y1bCsHQrvbiS92+8iMuyPpiQziJjzPi351pk
	/KjxkQM4zSB/kGkWXcDnqOJyXkZET4S6UvROvh14zyc6o7gyCS44gFXBG/PI/XK9RAUxm4zsYtP
	Wlh471undI/UQFZ/HZQ3TU35Io/dkLBjrJK4ZuaLd6cFouL7p1RRrsL6KODqB0h3gej48w+Uxx2
	wDx2w1DnHHqfXRE7W+bTOkDDToWT3YTR6atyHeIp8i1RpDKDKBKgSgx2tX0aJNPAXqTLeZZK163
	OGNXzAnDgZ0yZKkjPDugKcfcsBIeHYh1s+TbO6hr86zGErmRoULSQZKzgh+i6Wk=
X-Received: by 2002:ac8:5dc6:0:b0:4b2:9ac2:6857 with SMTP id d75a77b69052e-4b29ac27162mr22633321cf.78.1755710864084;
        Wed, 20 Aug 2025 10:27:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBHjmp0EQimLUiSVjKdx79ljrj20Q8jlRYnemWAhO0v2X5MfDUxphjoE81Tq8MZ5J1pPp2Eg==
X-Received: by 2002:ac8:5dc6:0:b0:4b2:9ac2:6857 with SMTP id d75a77b69052e-4b29ac27162mr22632391cf.78.1755710862940;
        Wed, 20 Aug 2025 10:27:42 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b11dc5aeaasm87927511cf.19.2025.08.20.10.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 10:27:41 -0700 (PDT)
Date: Wed, 20 Aug 2025 13:27:35 -0400
From: Brian Masney <bmasney@redhat.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert from
 round_rate() to determine_rate()
Message-ID: <aKYFh5YI9j-MHKH4@x1>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
 <20250810-phy-clk-round-rate-v2-2-9162470bb9f2@redhat.com>
 <aKX35U4jX55W3W61@vaman>
MIME-Version: 1.0
In-Reply-To: <aKX35U4jX55W3W61@vaman>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eehTwOFs6DGVaJXfUZKjMlNeu6gbw9MTeyPdBGZ0tmY_1755710864
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_102748_605524_54164892 
X-CRM114-Status: GOOD (  24.02  )
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

Hi Vinod,

On Wed, Aug 20, 2025 at 09:59:25PM +0530, Vinod Koul wrote:
> On 10-08-25, 18:45, Brian Masney wrote:
> > The round_rate() clk ops is deprecated, so migrate this driver from
> > round_rate() to determine_rate() using the Coccinelle semantic patch
> > on the cover letter of this series.
> > 
> > Signed-off-by: Brian Masney <bmasney@redhat.com>
> > ---
> >  drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
> > --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > @@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
> >  	usleep_range(80, 100);
> >  }
> >  
> > -static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> > -				    unsigned long *parent_rate)
> > +static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
> > +				       struct clk_rate_request *req)
> >  {
> > -	return rate;
> > +	return 0;
> 
> This does not sound correct to me? should this not check the requested
> rate?

I can't speak as to whether or not this specific driver should have a
rate check here. I've seen in some other drivers where the specific
frequencies are managed in firmware, and Linux just passes on the rate
request as is.

Some other phy drivers (most notably drivers/gpu/drm/msm/dsi/phy/) only
makes sure that the requested rate is within a min/max range. Assuming
I read this driver's set_rate() correctly, it looks like the min/max
range may be 64-192 MHz. I'm not sure to be honest.

This change keeps the existing behavior of the driver as it is today,
and just migrates off an old API.

Brian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
