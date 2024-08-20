Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B69A2C52D7C
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 17:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+LwmnHXEoEdNqtae7SMi5DR9hUgRY3uvTeZYc4xVKk=; b=Acw5MssCvp1uIN
	y10Qyf6aI5rZRTfBl7vMH1AbN5CB3OHPuZliQPIfyN6ML7KWPsTjbmkSA6/W4ngTZhU/P7OlPVggT
	o9iA4c+8k2NjnoImBNqHGaKKnFm7L5xyB1KlBwuyjU5dlAzKyQ6BGRjXnJR8olKEEn1tGsqqFmMGi
	qk7gAnnfYQknVFahEX778m7XaZdtVcgvt6xowieAPxdm7sB8sIwt+YzyiaqHQbdxlL3EoiyYnoDmQ
	UgrB0FNkaDCjnbABR3BSdH3Ip6GnE5zwCcEF+9VGh5IrX1ScL80DCddnBL2dPgby3dK2l4qyd5HYf
	o11Z1c48H49iNkFcc9EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgpXO-00000009yZb-1CBo;
	Wed, 21 Aug 2024 17:54:26 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgpXM-00000009yZB-2S5T
	for linux-phy@lists.infradead.org;
	Wed, 21 Aug 2024 17:54:25 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-37182eee02dso673144f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Aug 2024 10:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724262863; x=1724867663; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5GSoPOX63tsh1GnwmAAPyj0rs+xp1YRgEBUlHY5oblM=;
        b=FBwxc9fCCpe2EgnscvQ+jwr9Um46kaPdLLONYtk+s1XD8Gs44QdfKKy1OcH0W72ffJ
         3PS1EsxRnLS0Au3u62lLlVau9Mb/Gf1ySMwM1k/IEioD/GnhtXhHtIKqabP0VOYXW7Zy
         Uu1WiKZ91WDICdHdSsCmEPTKeRegq5cg8Szwel4k81yThrF/YyDuOQ67MlDb9IdSEeZT
         gHXjrg4XpA0TU6XMv/rAjrSeEaYCJZDu5YFjC25DSyRKVpDx4z9Km7cOc7d1uOhPKJV8
         MSmyXTe150CaSlATCtcVqPL83KHbOhK5QpxMdCLAEaPjWx+DcSLDCvI9bPBWXTxDgu91
         gKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724262863; x=1724867663;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5GSoPOX63tsh1GnwmAAPyj0rs+xp1YRgEBUlHY5oblM=;
        b=YWcVnnrRahOjaT9HDb2zx27wH9Zns0VnB5LEyJz8dlrgzbaxgpw5zfsOyPnPPEKjMi
         +K5SAwzv8Y1+dC2MH2/BtL6/sE9DsXg9k1DH9BhK118J2Fck9pIEYBPmN0apS77NfTXi
         GoBge3xVbAi9uUOkZoBli9Dsnfg1URqy0xh5Q+Xnvju8RPii9poykAwmiP5XkWliQsNF
         NM/ZgarQrwE4ZWR7M0PNgvqncLQW5v+7ZwqNxTUjZcGNjITUgdF6gAi6NdtUKQNXpYgY
         n+G5oXrV7MqGcPCwO1O9AkRPysnkJstPmN8UuCJeMHHq5FK0uG6VV7JS5fHMjtM8v+th
         w96Q==
X-Forwarded-Encrypted: i=1; AJvYcCXtkGZ2KUpHlIQhqZhwjbXfYU5gcd5IIPZcHecmgNFlBDYFEy5fhuS7U9HS3a5di8G5ITUb7EHmfl0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9TgjIUQieSqbMrnIg39Q42otojlimNBGwE0DXaZYr55BtLOgm
	0db40ngO4CaRKpkieHKa1FVvhJpeEhvtLiZmrIwBbbdq3djmw1DZ
X-Google-Smtp-Source: AGHT+IHYlM8nQOjedLQaGJON7bSeTb1YxPn4t/LnM2ns00fv2w+L6BP9/bbV5wO1DlTiOndHCmLbqA==
X-Received: by 2002:a05:6000:2c2:b0:360:70e3:ef2b with SMTP id ffacd0b85a97d-373052962fdmr275880f8f.26.1724262862456;
        Wed, 21 Aug 2024 10:54:22 -0700 (PDT)
Received: from Ansuel-XPS. (host-87-1-209-141.retail.telecomitalia.it. [87.1.209.141])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3718983a2d7sm16356758f8f.10.2024.08.21.10.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 10:54:21 -0700 (PDT)
Message-ID: <66c629cd.df0a0220.1532f3.0f92@mx.google.com>
X-Google-Original-Message-ID: <ZsUPlN9RARYTqmOV@Ansuel-XPS.>
Date: Tue, 20 Aug 2024 23:50:12 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Ma Ke <make24@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org,
	agross@codeaurora.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: qualcomm: Check NULL ptr on lvts_data in
 qcom_ipq806x_usb_phy_probe()
References: <20240821131042.1464529-1-make24@iscas.ac.cn>
 <4kpmkjp6pp6r34v7se24rscnk2t7g2pjcrqm6l7nt7h3lgsu3v@rauqrchifqjj>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4kpmkjp6pp6r34v7se24rscnk2t7g2pjcrqm6l7nt7h3lgsu3v@rauqrchifqjj>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_105424_644635_4DD709C9 
X-CRM114-Status: GOOD (  20.39  )
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

On Wed, Aug 21, 2024 at 09:50:27AM -0500, Bjorn Andersson wrote:
> On Wed, Aug 21, 2024 at 09:10:42PM GMT, Ma Ke wrote:
> > of_device_get_match_data() can return NULL if of_match_device failed, and
> > the pointer 'data' was dereferenced without checking against NULL. Add
> > checking of pointer 'data' in qcom_ipq806x_usb_phy_probe().
> 
> How do you create the platform_device such that this happens?
>

I have the same question and this sounds like warning produced by
automated checks of some sort... (and these kind of patch are suspicious
given what happens in the last few years)

In practice this can never happen... of_match_device can't fail as it's
called only if a matching compatible is found hence the thing MUST be
present BEFORE probe is even called.

> 
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: ef19b117b834 ("phy: qualcomm: add qcom ipq806x dwc usb phy driver")
> > Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > index 06392ed7c91b..9b9fd9c1b1f7 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > @@ -492,6 +492,8 @@ static int qcom_ipq806x_usb_phy_probe(struct platform_device *pdev)
> >  		return -ENOMEM;
> >  
> >  	data = of_device_get_match_data(&pdev->dev);
> > +	if (!data)
> > +		return -ENODEV;
> >  
> >  	phy_dwc3->dev = &pdev->dev;
> >  
> > -- 
> > 2.25.1
> > 
> > 

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
