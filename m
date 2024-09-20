Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47463CF58F4
	for <linux-phy@archiver.kernel.org>; Fri, 20 Sep 2024 09:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shToVBqMzxuscMqTMIU8IIni2Iukyf0j1iUwnm7t3x8=; b=dz/FUlJDv/Waeo
	lHC5zAE/beVoa7eucjvrAIhYCNLmRuPbW8jyiG7nI9SuR/7IHZx/DJwSnV/v8gHddOTd7RXw2xxMB
	ctQdBVCj677wPrhRwzbTnZtH1x2IoiFoLnZ8rmXVT40qRyYwGW3om61l0Hk7dCJBvjg4fEgwXlSe1
	7WrfU0SHGD7MEXZmuCy8/crN4YorWy8V7k1MybGk041W/56e/xeLI9W4YKfsgShRSgLy6KGphp3bZ
	jTzTxZQN6LRjbdv5oOkS/atsrwEyZqGYb49Vd1YSprfkl3DQami4fHV/CuRjId7B4OmCcKL2h6ovg
	SdaBOaIGWOxEGZK5msYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srZZh-0000000Bsjg-48Yt;
	Fri, 20 Sep 2024 09:05:13 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srZXC-0000000BsM0-1AxY
	for linux-phy@lists.infradead.org;
	Fri, 20 Sep 2024 09:02:39 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-42cafda818aso16235535e9.2
        for <linux-phy@lists.infradead.org>; Fri, 20 Sep 2024 02:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726822956; x=1727427756; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K9xHqn1CcNxUXmlVAV1u3xBKfqop9hQ91uqyD6F5KKo=;
        b=HmksWKJFMIIzI4rEDu8vw2NBb4V4/+btmg0tH5cOKaAcCHCb7XeLmI3yvVHHq0Rgk1
         xf0dYj8Jtv2cRD+3Y9v3M5ZIRygbz9HygluNcr0XAvDBLHlCTm3La3XQ3Yqu21aiY0mY
         sIUnJ5E9uALXjSmP2XqedJritFCYkY8eXJUCpD00kfQqtR1lCLRFDZGBRG9FWXcLLIlD
         xF+YnzEZ0f+CmDxColYuPV2IY8Fuhm/9Rc94FyVS/fJjwIhUYcOL1BddlNsjdCJxGbBr
         QJOMjyGEkIPvL8jqqN+Y2HnhCE2kR/+mbb3zlcRFCXAnRNsNeOzN1pYbt1r68+tz0ojT
         vo3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726822956; x=1727427756;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K9xHqn1CcNxUXmlVAV1u3xBKfqop9hQ91uqyD6F5KKo=;
        b=Chr8x+KBTJonGgKtCY4+pAcu3VKeZzf2dnxI1lKHuX7RLFdKt4O8awxsrSF01CvBD0
         /Uh/3PrnxlU++F0wigEuInaFEj/vYj8LwoAMfSPrrOXb8se1s7CyqL+VYIFG4PXdbZYF
         +GpcIYdub3AOjI+1atHqD6YeGVroOM/4WkCf56+8gFRaTt52Bm+zmWh8YMn6224WjbnG
         fJIMWZNtCzHhQ4AmAEcWIwZ9HxtF+6pWTP8cUQrkBPTMKRx0BuPeana9716Y9bSGoMxU
         foWG0Bc7fkuxK9TYOIs1oRwM8wy0oo6mxIyjtWe7Ldbu4/PqB3eID9WMPPz6kxhj52zA
         QXfg==
X-Forwarded-Encrypted: i=1; AJvYcCV9nU29QDC/TG2SQV3+J3Lhkie+5GYn8sNSpVzkQszSRsGXq8NlYvgPyPs1VQAxMby11Pi+7rBG9D4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8sUKXWYNulp3dmglhgrdxtOZvDLqVGUruAD282GWvi2lXkkjo
	55AzFdtIxFTcJazFDZjLtUjeUrOLuMUXKSK0crAzVOWaOvIbQYhC0PCdpf3kydA=
X-Google-Smtp-Source: AGHT+IGHKj8uLxsAhi/9AzjCpBT1u6Z/NQ3ZmyZIku0CR0sVmP89gc0izgxnNCELNWwoOtATq5c2oQ==
X-Received: by 2002:a05:600c:1e1d:b0:42c:e0da:f13e with SMTP id 5b1f17b1804b1-42e7c16ed2bmr11681675e9.18.1726822955919;
        Fri, 20 Sep 2024 02:02:35 -0700 (PDT)
Received: from linaro.org ([82.77.84.93])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e7afeb1c2sm16595405e9.36.2024.09.20.02.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 02:02:35 -0700 (PDT)
Date: Fri, 20 Sep 2024 12:02:25 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
Message-ID: <Zu06IXym0it9UPpa@linaro.org>
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
 <ZuqmB3Cn7mGfA2PU@hovoldconsulting.com>
 <ZurRLf8S1j6s8GPz@linaro.org>
 <Zu007YUYie7bEQvj@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zu007YUYie7bEQvj@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_020238_346241_506445C3 
X-CRM114-Status: GOOD (  24.00  )
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

On 24-09-20 10:40:13, Johan Hovold wrote:
> On Wed, Sep 18, 2024 at 04:10:05PM +0300, Abel Vesa wrote:
> > On 24-09-18 12:05:59, Johan Hovold wrote:
> > > On Sat, Sep 07, 2024 at 06:25:21PM +0300, Abel Vesa wrote:
> > > > Enable runtime PM support by adding proper ops which will handle the
>  
> > > > clocks and regulators. These resources will now be handled on power_on and
> > > > power_off instead of init and exit PHY ops.
> > > 
> > > No, this is simply a false claim and indicates that you haven't reviewed
> > > how PHY runtime PM works. Core will increment the usage count on init()
> > > and decrement it on exit().
> > 
> > Yeah, I guess the better argument here would be that the PHY needs
> > regulators and clocks enabled
> 
> No, that's already handled today so is clearly not a valid argument.

I think we're saying the same thing here. I was trying to say that,
as it is currently done and it's correct, the init() needs those
resources enabled.

> 
> > Anyway, ignore this version as it was already NACKed by Dmitry.
> 
> No, my feedback is still valid, and you're bound to repeat the same
> mistakes over and over again unless you try to understand what I've been
> saying here.

Duly noted. My reply wasn't trying to dismiss your feedback.

Thanks for your feedback.

> 
> > > > Also enable these resources on
> > > > probe in order to balance out the disabling that is happening right after.
> > > > Prevent runtime PM from being ON by default as well.
> > > 
> > > And here you just regressed all current systems that do not have udev
> > > rules to enable runtime PM, and which will now be stuck with these
> > > resources always-on (e.g. during DPMS off and system suspend).
> > > 
> > > In fact, you are even regressing systems that would enable runtime PM,
> > > as the runtime suspend callback would not currently be called when you
> > > enter system suspend so the regulators and clocks will be left on.
> > > 
> > > This clearly hasn't been tested and analysed properly.
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
