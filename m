Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 201B9CAC58D
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 12:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/Xe3qK1kWrHuZyJIRwLQDDUo0WGylWIpM6KCKe7a08=; b=et+c9/+dtP1Itn
	T4+Ay3RW402rtSiSPmzVm57x39G3v/usxyL6kBIF1ESARa3hzbiH0vsLoa6olIHaPzBwmuO6IDvJ4
	mWBVNkxXIMpoPxyXAic27ZDeSkSr7NOZJSJrSGPUgzNEfLwUAOWOAPJw5FIvMfvqCAg51+jbhVNTy
	pSxqt6c4qacIEm4Gdt2QZjj2vivKIAEv+LLZcZ/pBX0ftRn3+1Y0c7AKGMpryy007dRUi/svRknjU
	bGSQQt/5gIv1Aaw372dpk0oqq8sU7ojZ3Ins6lh0ZxCD9eEPkojml76G5V11wNKufUGsLMg5Kc9X2
	ThD0k3ByxBl/46TNq4mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwgLB-00000002x2W-2hFb;
	Thu, 11 Sep 2025 12:23:53 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwgL9-00000002x10-1kfg
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 12:23:52 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-31d6dcb5894so461331fac.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 05:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757593430; x=1758198230; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZOhHNVyVLP7kW4W4c9CpTeNpoSEZbVmnYepZzBb3fl0=;
        b=IHmDOduMyRs8HSTq5Mk82uwxfWkAliLe8Klk4K4nrTFeZF/nBBz8Fm4M/cg8qmdkiD
         ifgE9lricg42R3LDTUlGTyNtioOP19XihFroDEolIKRU2TtqbWwB4qD6kNEbSi59dqYS
         Pen8Y6SU/cE6/HM+pqovz1iLsZeaYVi8r8cKwv759iV3aP2vQftQejzFPtwcE4RSM2mu
         H2XIxMcH8+FwC1mNRJ79j5mdKwFV8udblklw1gDpiOCYNdpq6iD+s/OkrIz0Ng1+my6A
         nGfXDJeoLZ4z4c0ZOyKjAhFGFN9wG3VXlT/KbAoCiWUaD2UDDzZl8N88+YClbQBGJgOz
         pc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757593430; x=1758198230;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZOhHNVyVLP7kW4W4c9CpTeNpoSEZbVmnYepZzBb3fl0=;
        b=iNh7bcT1CLbw7lrr8pQbHHbjAn9uHwAeMkRcOcgm5AX3flFE7yPidtNdWSeBkk8CDN
         lPJ1N7yZl4GkFhU9b8V8jAEnzQEYA35EQU+TKMfz9YiXArckoW1NsLzK+9+/49IujE1Q
         PqCSgGwfNzLZqMiHCAbrqnSLGCWEBBlvsvNSUPAti1FB8PkOOMq7UApscvF5WxR3Vgn/
         ba+DlQAt6fA6CZJhpphx75evlI9eOIf5F9TGtWnyLSwvj0vYotAeVdgJYUYDsssY30Dv
         snjkKVVb6nytZCAdV9uBZrNS7nU2YFrMbdGA7ie2TQi/vpfFCuoibjEAWwAEQyDWVJa/
         2IVA==
X-Forwarded-Encrypted: i=1; AJvYcCWpH75mKavqyQcAhup5oUkfovRVgmADynsxwWfHWiHNM4W7u/J2yJRv0pxfAwGUMmtmNMPxAkKHoHE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwW/wUMFEJufYPyQEWMrKQ6shUjyHNPdheDhirmbBHx09WK0agz
	rLRsxLnLxCouw5QHyp5kH5w+hb8aGZ7+BY0Z7PpYszdncIB8WJsya2L3yMbTDFgl/YejawbY3rB
	ElkFu/IVF+szOlQokuvM2sIZ+1g5IYKYyXjmtlurhfA==
X-Gm-Gg: ASbGncuaECOnyvlp3SPmruRPTRQZz6mnOYXVqww/6cx6f3+NqG4yXPoLKsm72X2GODR
	OYT6sJtUuoPwXXIPb82IbD/mwDhr8FoSDUsgxsYLP/BmJOaBwazrPZVLYnm1xgIk+ip1o4uu77J
	05udeY4Mavn0CS1R4TznXjvLhH8g551RAfzFL9BWmVYNJsM3D6oKcbwW+H5hspy54Mp9iMSu4QB
	gjLM7mktWe5QIbeYw==
X-Google-Smtp-Source: AGHT+IFlJGRFVdFunbhE1qMFhFzsQ7ox2qrr0kPK3cR6JnkVwwd4KR9aUMOAVadxtU1iOr8rX8btiw416Km4fjx3eEM=
X-Received: by 2002:a05:6871:2942:b0:322:3811:e4a1 with SMTP id
 586e51a60fabf-32264a23b40mr11016481fac.26.1757593429792; Thu, 11 Sep 2025
 05:23:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org>
 <20250813-phy-notify-pmstate-v3-1-3bda59055dd3@linaro.org> <aKX5C9Xlx2CSJraY@vaman>
In-Reply-To: <aKX5C9Xlx2CSJraY@vaman>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 11 Sep 2025 13:23:37 +0100
X-Gm-Features: Ac12FXxrk_rVgmFgSaHooe5Gb5FZ-V_t_qQg9tRVc0kilQnohu6e2x4WgTN9EhE
Message-ID: <CADrjBPpaJdzDSe3kjk=zrODusH3LnwhaBn9-NDCJwEy3ymwvew@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] phy: add new phy_notify_state() api
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel-team@android.com, 
	William Mcvicker <willmcvicker@google.com>, Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_052351_468461_0C3DE545 
X-CRM114-Status: GOOD (  29.14  )
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

Thanks for your review feedback.

On Wed, 20 Aug 2025 at 17:34, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 13-08-25, 16:00, Peter Griffin wrote:
> > Add a new phy_notify_state() api that notifies and configures a phy for a
> > given state transition.
> >
> > This is intended to be by phy drivers which need to do some runtime
>                     ^^^^^^^^^^
> Missing 'used' possibly?

Yes your right, good spot, will fix.

>
> > configuration of parameters that can't be handled by phy_calibrate() or
> > phy_power_{on|off}().
> >
> > The first usage of this API is in the Samsung UFS phy that needs to issue
> > some register writes when entering and exiting the hibernate link state.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
> >  include/linux/phy/phy.h | 19 +++++++++++++++++++
> >  2 files changed, 44 insertions(+)
> >
> > diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> > index 04a5a34e7a950ae94fae915673c25d476fc071c1..60be8af984bf06649ef00e695d0ed4ced597cdb9 100644
> > --- a/drivers/phy/phy-core.c
> > +++ b/drivers/phy/phy-core.c
> > @@ -520,6 +520,31 @@ int phy_notify_disconnect(struct phy *phy, int port)
> >  }
> >  EXPORT_SYMBOL_GPL(phy_notify_disconnect);
> >
> > +/**
> > + * phy_notify_state() - phy state notification
> > + * @phy: the PHY returned by phy_get()
> > + * @state: the PHY state
> > + *
> > + * Notify the PHY of a state transition. Used to notify and
> > + * configure the PHY accordingly.
> > + *
> > + * Returns: %0 if successful, a negative error code otherwise
> > + */
> > +int phy_notify_state(struct phy *phy, union phy_notify state)
> > +{
> > +     int ret;
> > +
> > +     if (!phy || !phy->ops->notify_phystate)
> > +             return 0;
> > +
> > +     mutex_lock(&phy->mutex);
> > +     ret = phy->ops->notify_phystate(phy, state);
> > +     mutex_unlock(&phy->mutex);
> > +
> > +     return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(phy_notify_state);
> > +
> >  /**
> >   * phy_configure() - Changes the phy parameters
> >   * @phy: the phy returned by phy_get()
> > diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> > index 13add0c2c40721fe9ca3f0350d13c035cd25af45..664d0864c3a5042949cb121e982368fe0a97827f 100644
> > --- a/include/linux/phy/phy.h
> > +++ b/include/linux/phy/phy.h
> > @@ -53,6 +53,15 @@ enum phy_media {
> >       PHY_MEDIA_DAC,
> >  };
> >
> > +enum phy_ufs_state {
> > +     PHY_UFS_HIBERN8_ENTER,
> > +     PHY_UFS_HIBERN8_EXIT,
> > +};
> > +
> > +union phy_notify {
> > +     enum phy_ufs_state ufs_state;
> > +};
> > +
> >  /**
> >   * union phy_configure_opts - Opaque generic phy configuration
> >   *
> > @@ -83,6 +92,7 @@ union phy_configure_opts {
> >   * @set_speed: set the speed of the phy (optional)
> >   * @reset: resetting the phy
> >   * @calibrate: calibrate the phy
> > + * @notify_phystate: notify and configure the phy for a particular state
> >   * @release: ops to be performed while the consumer relinquishes the PHY
> >   * @owner: the module owner containing the ops
> >   */
> > @@ -132,6 +142,7 @@ struct phy_ops {
> >       int     (*connect)(struct phy *phy, int port);
> >       int     (*disconnect)(struct phy *phy, int port);
> >
> > +     int     (*notify_phystate)(struct phy *phy, union phy_notify state);
> >       void    (*release)(struct phy *phy);
> >       struct module *owner;
> >  };
> > @@ -255,6 +266,7 @@ int phy_reset(struct phy *phy);
> >  int phy_calibrate(struct phy *phy);
> >  int phy_notify_connect(struct phy *phy, int port);
> >  int phy_notify_disconnect(struct phy *phy, int port);
> > +int phy_notify_state(struct phy *phy, union phy_notify state);
> >  static inline int phy_get_bus_width(struct phy *phy)
> >  {
> >       return phy->attrs.bus_width;
> > @@ -412,6 +424,13 @@ static inline int phy_notify_disconnect(struct phy *phy, int index)
> >       return -ENOSYS;
> >  }
> >
> > +static inline int phy_notify_phystate(struct phy *phy, union phy_notify state)
> > +{
> > +     if (!phy)
> > +             return 0;
> > +     return -ENOSYS;
>
> Should be -ENOSYS either way, right?

I initially thought the same, but I followed the pattern that is used
by many of the other phy API calls like phy_init/exit,
phy_power_on/off phy_calibrate, phy_notify_connect in
include/linux/phy/phy.h. I can update it if you like, but I was trying
to keep it consistent.

The only API I can see (that isn't a *phy_get* or *phy_create*) which
returns -ENOSYS unconditionally is phy_get_bus_width()

Thanks,

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
