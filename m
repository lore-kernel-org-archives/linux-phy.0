Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2179ECA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 17:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VCF8fAicIc6m2I26Cv1s1NRezia1EdVMMLHx74Y3Z8=; b=TGCBhbZ7Wb9DDD
	DTAuNHsakfjl2VRzgKV+NQI5+eHY0abnWMT74HwwnC8HsPjVXTWZBngxTSFfkRaAkvHoOw9qZJenH
	5oJndVR5/nmK/j6cIg1HnN+QFiL0kIR4jfo+Jw7nVvfWbktRxQcQOJMpp33sWXpkQ8ZVtnZfJqHi1
	bCBHOfyM5Bi/Gq4Un3jN3Niu5PicwquJm/zHrASeYLlHW0/rIV4CjV6LeLjlVWd3ut4r2vmX1YA0m
	Qn+a8QlyfnAe5M8aKOzWA7DbE1AcsF5rHwexNXczqebTE9jHo04FwYyvNib43TmG+QOI2/cQ2DYdD
	OfIl3xp8YtNIynPEb8hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw20g-00000008vPM-26ff;
	Tue, 09 Sep 2025 17:20:02 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyfS-00000007UnI-0ych
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 13:45:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757425553;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KuUSi/wMj/deuFTckhCe0po1wpou4UMuleZXZpAya2o=;
	b=EMWKULF6g+7iuAinjy7TX4TVdqfppsvSymbPqseJztrPDdlzb69sChhXZqNdIyHHj1oxeP
	YeTiXD+ZCyBMCap6NGb7nrRnVJucyGWw9NvvYVKmC7W5HDn2VDX+0hnIAmUaB0F+gofjV+
	IoCF5gEEEbduak6PEk+vI9RNeSk/fAU=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-218-eiCQDB2jN2GkbDm82NbwfA-1; Tue, 09 Sep 2025 09:45:50 -0400
X-MC-Unique: eiCQDB2jN2GkbDm82NbwfA-1
X-Mimecast-MFC-AGG-ID: eiCQDB2jN2GkbDm82NbwfA_1757425550
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7211f13bc24so118545016d6.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 06:45:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757425550; x=1758030350;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KuUSi/wMj/deuFTckhCe0po1wpou4UMuleZXZpAya2o=;
        b=BnDfzK+h45Qu5vk27cNhjDNw9C32iq/9DG/7oy7ZnEumUzqF9mG/grKGp9Wl6zSgla
         iPBET7QOL5wSh5e7A+HPt8ife4KIJ6Qtu3Cst8IgR7kYswBuvtQlQ+WOlkWIf1QQXrX1
         OtOdBoV9Nhq6QkauNlSQpRIWhxxrpSgTVCxTRe6om1cyd7Lv4KqphYy54+dEo75t0ckG
         wCWVHz95N3HID/mSClnlAtO1NykfiOzVZ9DI3r/Zw72KId28djnqqOtibtLaShEV0hL1
         5DfJgLpyOVSK2kkxn2sZEtYUTHbVWx/ZZlQLvqjvGNvWmVk2l6AlHs8o0R89qKZW2cQN
         qZqA==
X-Forwarded-Encrypted: i=1; AJvYcCXe01AoU2fMVY1SGC0ll4klbht0cAatXBK+2SGEGQKl/AprTQ08TAxMOaAqv3l6ze/I9k6GfSvwLLE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yynzo5aa4UetnYliL4uiBIzkKmvf7+eU9l31Iz/8/d+1FknASO9
	iuKrWft3TakNAgwIVr+OtESd39JUAAqkKO3uIJLfaX2B+KsEBMxPX4v+N//TDEhDSNRsOxuc2dq
	hZ755qIp2dJO/2mise0CdvpRe1XvEwvDzUvegXTQRjEgDNvOgeCL72Hi6sjVwEWPycq0=
X-Gm-Gg: ASbGncvSf4Ehy4Dg6OnxY5eqtIqNiAFVSSwLWcZlMF4i0zQXnPKBwN2y2CtmJkrRbRq
	UynkOkbxo4kfwFXe64RVltlSsLjxoKF+IkgX6qHlHUBzwkyV/uPG2qGIyRiAkOHdYEe9oYmU0kz
	KRVoT2hlXYRTdPujg2/MuUrfWnUC1hXB4N7Eejuq9/Jq2oaccB9GZSlMR+mE94ROnbAtsdDx0OF
	HmoWJfZa88Mn8x9F4YYh/ys8vpSKFYAToHQx8CwAYF6sJ9K2vRUrWRNwH0NSAyhZTgEPTbMd6QZ
	Lytu0q+kNYa3JJPlaYDN/0RJrDNq0g5/MZlindtDi9DYBi3kAqRAHGSSKy4lEiq0x4dU2B4fVIk
	KNWh0eocGIy9waGRj5M4=
X-Received: by 2002:a05:6214:624:b0:70e:3e:6304 with SMTP id 6a1803df08f44-739435cc42bmr94854046d6.65.1757425549574;
        Tue, 09 Sep 2025 06:45:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmp4FTmcXOP7+RMzS1+U7HWsbh9sfiIsI3KOLWl/uwcWgSrIp6/82zb9nfnJx9VJ/Da/CuPA==
X-Received: by 2002:a05:6214:624:b0:70e:3e:6304 with SMTP id 6a1803df08f44-739435cc42bmr94853596d6.65.1757425548985;
        Tue, 09 Sep 2025 06:45:48 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-720b4665fcbsm138866926d6.37.2025.09.09.06.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:45:48 -0700 (PDT)
Date: Tue, 9 Sep 2025 09:45:46 -0400
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
Message-ID: <aMAvinQ4nn38E7tx@x1>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
 <20250810-phy-clk-round-rate-v2-2-9162470bb9f2@redhat.com>
 <aKX35U4jX55W3W61@vaman>
 <aKYFh5YI9j-MHKH4@x1>
MIME-Version: 1.0
In-Reply-To: <aKYFh5YI9j-MHKH4@x1>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 7WCZGRkDtRBENvvnabpvdkiTXgn735_Mq2yT0Q8rneA_1757425550
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_064554_339072_B91CAF3E 
X-CRM114-Status: GOOD (  32.55  )
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

On Wed, Aug 20, 2025 at 01:27:35PM -0400, Brian Masney wrote:
> On Wed, Aug 20, 2025 at 09:59:25PM +0530, Vinod Koul wrote:
> > On 10-08-25, 18:45, Brian Masney wrote:
> > > The round_rate() clk ops is deprecated, so migrate this driver from
> > > round_rate() to determine_rate() using the Coccinelle semantic patch
> > > on the cover letter of this series.
> > > 
> > > Signed-off-by: Brian Masney <bmasney@redhat.com>
> > > ---
> > >  drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > > index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
> > > --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > > +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
> > > @@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
> > >  	usleep_range(80, 100);
> > >  }
> > >  
> > > -static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> > > -				    unsigned long *parent_rate)
> > > +static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
> > > +				       struct clk_rate_request *req)
> > >  {
> > > -	return rate;
> > > +	return 0;
> > 
> > This does not sound correct to me? should this not check the requested
> > rate?
> 
> I can't speak as to whether or not this specific driver should have a
> rate check here. I've seen in some other drivers where the specific
> frequencies are managed in firmware, and Linux just passes on the rate
> request as is.
> 
> Some other phy drivers (most notably drivers/gpu/drm/msm/dsi/phy/) only
> makes sure that the requested rate is within a min/max range. Assuming
> I read this driver's set_rate() correctly, it looks like the min/max
> range may be 64-192 MHz. I'm not sure to be honest.
> 
> This change keeps the existing behavior of the driver as it is today,
> and just migrates off an old API.

I'm just checking to see if you have any questions about this series,
and plan to merge it for v6.18. I'm hoping that in v6.19 to remove this
old API from the clk core once all of the other subsystems outside of
drivers/clk/ have been updated.

As I mentioned previously: This change keeps the existing behavior of
the driver as it is today, and just migrates off an old API. I don't
have access to this hardware, or technical details about what should
be here.

Brian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
