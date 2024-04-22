Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25EDDC07C79
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 12:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfqfx+NH8C2aNqdjLAH055EGaU4USvObtMAr4Gr/kv0=; b=IjbTj9LIM7l8gf
	jz2IGnjm61DejtXLbcf5NgENJ2FNDcNZp+1YDyyg8Vh3PmnQysBZdCizXT5YTaxUF9kMvGUbFf0yn
	QsmqChKoD9gb22RMu5/Glozo9zFSFs6YsxjUbI6mvTDsIRalMBrcYtfPo8K/5glYgkHyotGysWjGk
	oo2kJH90fObrVrsTI5+tQe3GzSXTE/35c1gYmX7JknZ87AqepLshegENkPPnMZcXIpZvASeLg1zMF
	A26E7ufk8579kIHyjbj8PIdB8V5oW2W57WR1ETHa+40yu1MKq4k+6UdmNpS6scThJhmxJTO1jvN0E
	VBv3lo9MHi/T7hEbm87w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysxV-0000000DWg1-3RM2;
	Mon, 22 Apr 2024 12:39:45 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysxT-0000000DWdb-0jZq
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 12:39:44 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-23a6a8e9978so170021fac.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 05:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713789580; x=1714394380; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S4ySNq3QesUCzbAIR2RY0fipn3yuib781ddLRiaF6bc=;
        b=sKBVToGgfUeGsM8coRLbyi0Yo7Gr1LikDztVwEdoJ64GWa2Mi4AgOcK7+mNLpchOjJ
         WnJv6IS4x1u0u9i3hXiBWDX+GvZyo7x/AkrOvWwTeEw543nMQkb6RFf5xibSraR3KZ5c
         +UiJyQ4WX3pDUt7/dfVWTP0wq7HKxKHppDm8wjZm2yckKNb7mgiFvh+OHO2RuBoZ4ujY
         AthcYT95v2Fh9Y1Ch44Arcbw3Xgm6hfqmwgCNV/eMB9EgAKt07/eDaSUk9A6Q3xU0JEC
         WsOHQz5PkPl4prCxo/UcvcsTYZKfhAgOpoIPuxNf551ewa1l85Qyka3AAdnqO3s8dGqI
         /0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713789580; x=1714394380;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S4ySNq3QesUCzbAIR2RY0fipn3yuib781ddLRiaF6bc=;
        b=EmaFkbSIiFAzIpC+RypZWVYS1FOjVzi+26NK4j0wwT1SvV+2OlESjmOikgyEU+SW7S
         P9CPJypvLCGWAZ4h8xyWSct4XqilF0TCJphqyjYg2aRW/Y8bHK3TaXhq3+itv8F8SJIW
         Xr9IuCfSeSOw51xDqWTMkSvC7Dm9qwzh8PfUeq/2UZMcgERVWO7N9IY9YhEB/8Bho7If
         YMJTKqbe0QVlNl7ISk0SGYRNCm1wJ/VLbYesHYBBvDQxLsX6fbliujK3TQDeoodzCIga
         EtJewo9i3QUiP5d+HprlInz87LVxcMjxZZ4vcQshVsL7p98zEgakaTvS+ORQDSIJK5su
         h3uQ==
X-Forwarded-Encrypted: i=1; AJvYcCXA1U915rqFdFgt57C8LtcKkclgxYPLCMjcrXnjTbIunuDaNMDDUiUO0PExJQSORtrHoq+c4u1beDA/107ap88fkjN5EM8DJs2Dn4bDoQ==
X-Gm-Message-State: AOJu0YwSJ7wCHA6Pl2KHhR/YlI7fVtqUFTnICm1QJ6WilAbc7xuIkwVY
	myU2MWo+bTR4Gnm4uXwx1lnO4tBm11U+k3PTghUOQ4CUk+7xpO+HzBfDSGWpCarOSl1+8ook7HL
	QX46i/sd0ClzpmBOKzvUbXeMzoIINwKn1cx8MOw==
X-Google-Smtp-Source: AGHT+IFRVyCeWFThbOBOiFgmqUhy26Z9HP2Lw9XMRIZylBypB7g6tOUorMkXN+WcL7sQuHVha6TScv+q+Y0CqpP+4uw=
X-Received: by 2002:a05:6870:c1cf:b0:21f:d2a2:7ff4 with SMTP id
 i15-20020a056870c1cf00b0021fd2a27ff4mr14344315oad.17.1713789580152; Mon, 22
 Apr 2024 05:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-11-peter.griffin@linaro.org> <75b1b063-e8d4-417d-99a8-4320d72297cf@moroto.mountain>
In-Reply-To: <75b1b063-e8d4-417d-99a8-4320d72297cf@moroto.mountain>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Apr 2024 13:39:28 +0100
Message-ID: <CADrjBPputDQWpQZgPiuUDLTWZA83KJEMp-X8ZtXAwt6ivTOG9g@mail.gmail.com>
Subject: Re: [PATCH 10/17] phy: samsung-ufs: ufs: Add SoC callbacks for
 calibration and clk data recovery
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_053943_266621_556515A0 
X-CRM114-Status: GOOD (  14.40  )
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

Hi Dan,

Thanks for the review.

On Wed, 17 Apr 2024 at 10:52, Dan Carpenter <dan.carpenter@linaro.org> wrote:
>
> On Thu, Apr 04, 2024 at 01:25:52PM +0100, Peter Griffin wrote:
> > diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
> > index c567efafc30f..f57a2f2a415d 100644
> > --- a/drivers/phy/samsung/phy-samsung-ufs.c
> > +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> > @@ -46,7 +46,7 @@ static void samsung_ufs_phy_config(struct samsung_ufs_phy *phy,
> >       }
> >  }
> >
> > -static int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy)
> > +int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy, u8 lane)
> >  {
> >       struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
> >       const unsigned int timeout_us = 100000;
> > @@ -98,8 +98,15 @@ static int samsung_ufs_phy_calibrate(struct phy *phy)
> >               }
> >       }
> >
> > -     if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS)
> > -             err = samsung_ufs_phy_wait_for_lock_acq(phy);
> > +     for_each_phy_lane(ufs_phy, i) {
> > +             if (ufs_phy->ufs_phy_state == CFG_PRE_INIT &&
> > +                 ufs_phy->drvdata->wait_for_cal)
> > +                     err = ufs_phy->drvdata->wait_for_cal(phy, i);
> > +
> > +             if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS &&
> > +                 ufs_phy->drvdata->wait_for_cdr)
> > +                     err = ufs_phy->drvdata->wait_for_cdr(phy, i);
>
> The "err" value is only preserved from the last iteration in this loop.

I'll send a follow up patch for this as it's already applied.

Thanks,

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
