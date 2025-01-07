Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5905BE77197
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jan 2025 10:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZWOfCdlmy8xoIa+Bjx/i33yupgMTm47ib3bR9GwTHE=; b=zn7WUGgKzRsaH0
	3qb4n0aszCXlYmU0YgM8TZxKySo+fHd6IwlVms4r+TNC0URyEP8gtv+qX6lV2b57bjX80Ac/KBjYP
	xdRdP1bsgKvNS+DX6MTMvKoFSPKLSPMBGLxkSTlJb75tXWWyu4ES0tMV3gl/mKroRuPXN3oLPJ5vu
	NV/ko60MqlxhhD3m4XumTR4FFHCj0CPasX5aac7CLVQ+DWG4cw1G/BF43TUNkmPKvI4l0oU/eBG65
	PwVJZljYgh9J4ThAV6PzsDxKnnmWQHxyy4GbXtP5cqA508qCSG7YKn0H7ati5UuJN2BLzeQN3jOr8
	OGQAr93Kcymg6INq5iQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7G7-00000004Sun-2Pkb;
	Tue, 07 Jan 2025 10:56:27 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7Er-00000004ScT-25ak
	for linux-phy@lists.infradead.org;
	Tue, 07 Jan 2025 10:55:16 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5401d3ea5a1so15386618e87.3
        for <linux-phy@lists.infradead.org>; Tue, 07 Jan 2025 02:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736247307; x=1736852107; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8JZJoaJUaNREKAXmerLK4Rd1hRsVn/PObGVachLq/qE=;
        b=flAM62qZBto9aHKIz9Ub0aRwipx2z3SNh55dKLkAuxjwflOqlGBaRkcuw1JKdemPMM
         tsRAC5mf7iXXrr27IMGgJ1PcTHAxtzZd9813Ah0XykQiZ1IMiYEfUtaq/dyXbZ3Df/+D
         Q4v+Xk5adGla2TyYoXJXGn1kG2Y+bC5b+tm71CZ6wX7AU3tTUwFCmcEFxRAIDMiZeB9l
         VgHsYtgYyd3nVTvdYdqhiZSR6U4u4fUD5iGrcNVk0wSrKUYW+7QIgjgGjoff6xhj7ytc
         rAgtDBVHfnJbZOLnu69EB1SvXFGMgSbQEYwfjf8s51mIthqPYoc4ctPaJ0TK+IaVMxbB
         CAxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736247307; x=1736852107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8JZJoaJUaNREKAXmerLK4Rd1hRsVn/PObGVachLq/qE=;
        b=p8bWCwfPjiG34kLNi0fpApZF9D349UBfIxKKFxSbudMrgClfuxrDHygZqhKPiKxKrL
         YaNZdfsO+23ubO7aNJ/UY46LAJpdZG5toEh46BBTkhrk+/H1NjmQjkGgUdz3k68D3rLi
         TVXVBBAHd0quM12tYwgU0Cdopdtt8KyQ7KWOOl5qRxsc3sYQaBHbB28UBpU+2tOa+SNu
         0jZIM1ssKeKwEjQBnr4YQBtuUmKhk08ldzk3fHQTYZ+194dMOGcDn47A1vPrLz6ms+Yf
         kcYx6n9m0XkbjPjwzFY3EtxUumG5oplwgSe3Nl1TlwQlUFYMK5KFbJQre9C24kEUyv1x
         icew==
X-Forwarded-Encrypted: i=1; AJvYcCUNaNomknybPh7+7cO4brJ9csRXEm6E79PbfA1jFqnqMdG77BmWQc1QgZaifWzqTqS2ZYCXIWFMd/U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5JYZX2nVQPcMx4HbGMdBtN1K8Wn1UmExLmp0bcQE59ccO9t5h
	FabRzjUlhFBSfGiHhwr9yI2mL7ve2UCvnitUuTrSu0Tzvp1foqqhE/4Um/ng07U=
X-Gm-Gg: ASbGncuRtl4jecjHg4XI+IxSb71YXNNAtlxEVXbUb8dBvWmjuZAQ6J9f0Aj2ajQLIJ/
	aVZZ3mO1bFNf+NoPw7H4IjSqtV0yA3HQojw8VH/s97eWJr7PPbJMBmBCrm08VIGR8ZLiN93+E+f
	Y69QTQRDBC3RMleiUwkdwWFIrmhJdC45GzAyTlMm6HqXvVolAbYeJUiPnlL2KyzEbDnSqefqSG8
	XAUrAWA//E1AhsWyYUjwLRsRCqcfv2ojiO/VFIZDY2nv8fPXq3MyggzKDic7z/ThT8C2lCOhsDu
	SM7uogng+EB1DoQayVj3RUMxIQtKRkaT0tx5
X-Google-Smtp-Source: AGHT+IGLgKzFbsWmFq6sHxnOSAOcAHZ8LpCXiCvq8SonzUfMjFA3G31B6U5QoMf8+KUqSpyXSGnKNw==
X-Received: by 2002:a05:6512:1392:b0:542:213f:78fa with SMTP id 2adb3069b0e04-542295224demr17287062e87.7.1736247307140;
        Tue, 07 Jan 2025 02:55:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832ba9sm5226861e87.277.2025.01.07.02.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 02:55:05 -0800 (PST)
Date: Tue, 7 Jan 2025 12:55:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 07/17] phy: phy-rockchip-samsung-hdptx: Add support
 for eDP mode
Message-ID: <pffzxwsqwkklur3b7c7hp6g5wonzam5fs35fwblil3cjfofozk@clwgt5gcb32a>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-8-damon.ding@rock-chips.com>
 <shr7ak7keqza3gw6wra2zra35qht2cxlzkvtuhzl3swzf2fwxy@i2v4o53lhese>
 <96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_025509_546888_A5D62E76 
X-CRM114-Status: GOOD (  27.76  )
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

On Tue, Jan 07, 2025 at 11:02:15AM +0800, Damon Ding wrote:
> Hi Dmitry,
> 
> On 2024/12/30 20:45, Dmitry Baryshkov wrote:
> > On Thu, Dec 26, 2024 at 02:33:03PM +0800, Damon Ding wrote:
> > > Add basic support for RBR/HBR/HBR2 link rates, and the voltage swing and
> > > pre-emphasis configurations of each link rate have been verified according
> > > to the eDP 1.3 requirements.
> > 
> > Well... Please describe what's happening here. That the HDMI PHY on your
> > platform also provides support for DP / eDP. Please document any design
> > decisions that you had to make.
> > 
> 
> Yes, I will add more relevant descriptions in the next version.
> 
> > > 
> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > 
> > > ---
> > > 
> > > Changes in v2:
> > > - Add the module author
> > > 
> > > Changes in v3:
> > > - Split this patch into two, one for correction and the other for
> > >    extension
> > > 
> > > Changes in v4:
> > > - Add link_rate and lanes parameters in struct rk_hdptx_phy to store the
> > >    phy_configure() result for &phy_configure_opts.dp.link_rate and
> > >    &phy_configure_opts.dp.lanes
> > > ---
> > >   .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 896 +++++++++++++++++-
> > >   1 file changed, 889 insertions(+), 7 deletions(-)
> > > 
> > > @@ -933,9 +1484,339 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
> > >   	return rk_hdptx_phy_consumer_put(hdptx, false);
> > >   }
> > > +static int rk_hdptx_phy_set_mode(struct phy *phy, enum phy_mode mode,
> > > +				 int submode)
> > > +{
> > > +	return 0;
> > > +}
> > 
> > No need for the stub, please drop it. The host controller driver can
> > still call phy_set_mode() / _ext(), the call will return 0.
> 
> Without the &phy_ops.set_mode(), the phy driver can not get phy_mode to
> distinguish between HDMI and DP mode via the phy_get_mode(), even if the
> host driver calls phy_set_mode() / _ext(). Additionally, the previous
> discussion [0] also mentioned future considerations for dynamic switching.
> Indeed, I should add a related comment before the 'return 0;' to enhance
> understandability.

Oh... I see. Without .set_mode() callback the attrs.mode won't change.
We should probably fix that, there should be no need to add dummy stubs.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
