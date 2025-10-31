Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C65ACCFA00
	for <linux-phy@archiver.kernel.org>; Fri, 31 Oct 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqY8iB3V01Opk7/qrjA/eNskpn5wh7T1g22649odiMg=; b=JknmcBD5FI7UNh
	+Wrv8C8PmTyqMPkVnC6+UWkZJQSa3Bj6F2/nBeu7boftZTptViRhWNZvPAA3XFFciZdCkoP2aU8Hc
	A01lckAH9MJ3jIbaMA46m1kP2a8T+23/IMHf3q8o9b5Q/9JGUNoAvw9XWUePSTbFyUrsBFdMkWRQ4
	0TAxQuTR6alGKuC+vOZiGHtFo3MrOrkArpw0YIE4oNczmBEvwV8TfRAYm79+eg8BbcGzP6fMVMDtZ
	wbUUCJqyZSmHqM3yVM5dWB4NbTYE4OyOQslWBraKts8/U9UP8b385SC3RcP1lGwwG7MikpEUEM7QG
	LW7FiRYuDI7CgJL6p3pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEksO-00000005haA-42MI;
	Fri, 31 Oct 2025 08:52:53 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEksK-00000005hWZ-34Jv
	for linux-phy@lists.infradead.org;
	Fri, 31 Oct 2025 08:52:51 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7c68bee554cso1141298a34.0
        for <linux-phy@lists.infradead.org>; Fri, 31 Oct 2025 01:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761900767; x=1762505567; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UVOOle+AJIIuteMGQoWj0kXyHB826iCzl9rVosT29bw=;
        b=ZRVHhkHiCVdCZZNgyD6byQ22x50IK4IejGkIeJLHdE9YIUv8rpoJ9TozWOHMp/vQWv
         0G9Tq8tPvkz7c40VqNiJN1iJUTRly2IDz1Z9N3vBg2/DsG6wgancIe2PbEWk+OQ0mB1N
         Lga9cu0dgRPQhTG58SufXkesu/ekIHc1nZ7iryy6VauWdTj9QtvhNbo2RZxTMwLwWBoV
         ExHHGmL3WKecTdjcbAX77L1k9m+8k7DvuFf9gBhrIp9MzFVOoLvtydFng6etUGTOMTtG
         +Ee+EQoZ9gYvVUBuK54AOlyn/2gQ84NYvlEAHrtQExRXsnC86LDOXbtaQMO0LpInAlIX
         Qflw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761900767; x=1762505567;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVOOle+AJIIuteMGQoWj0kXyHB826iCzl9rVosT29bw=;
        b=TP0UU7B3CwE49B9rVFBsJIHyVvq6neFNlLyCYbBOM6U3Y1QveaEc32hA2CLuiFtPQQ
         U3eg+/d0+OFvsEfmp/h4+dx39S70sJDC3ALABVuLr4OTt7TpQTRxn4nOMQ8S+KSaDg8Y
         mj7mEpoJo37pf0nkFlT70Sub+Czk0eFzkgkywNmJK6TM9rB7HYzhhMrPU6t28kv/vOsd
         R9DVxY85DafIfQxJ9E5Cxv7SzA47fdDJmPZc7z3jYj+84Gf/9VxFIEW4jM2SGlmRV3Su
         4jxgpQsOXJiiYL1v0o3sL0gLCBx5zT2KVPGqP/Mck6tdcZlBWfo4R4izvm2fkBJsqnZn
         CD4w==
X-Forwarded-Encrypted: i=1; AJvYcCXlZTNC7ZX1xz8Bt7mBYazW0P+gUCdF0JHaPZE38mY3VaVXl/0Qp4ePOTDtHp3mLXKbD5lzBR7tx9Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDIQy6pnM+CDZPhIZp6Kube7cRGj9MvylGPvu6m/s0vv/WbKPJ
	fC+7eSLDN+2OhWEa5RFJej0PUkxAys7s3soidKqhHkIEZpU4wIkhympYWux76CI8s1BFsIvnMRg
	c+dp/9xxtweRnicwzqroxQPm7b8JK+qGqDOEqMmbPAw==
X-Gm-Gg: ASbGnctNU7Zsq2ahvgQ+Tvy7svb7okaZkpXZs2CiGkuho0g+KUGrBvr9lW1vhG+4aDf
	I0BdrS0ofFPhXN8AQNP8jAnGdRN9IGlnO/5PAZk6JJ+DK2JWC/lnFQrf9ni06sKEGzOSyVbdd6n
	RehF1w23ss2oP0hmagCMRaucs+XaiIm+d5i6buS01Y1dmKJVNwyk8EsbSoYH3QNkqZswFG162Ek
	+3GLlBTKsQbbT3tm5oOPzk6Efhbl7AvFkz3qBlAlwbriA23wZ86mTO7ZUv8gZ1KfHIRLXYbOFXQ
	uaHK5w==
X-Google-Smtp-Source: AGHT+IE2vnBdZNasAB1Xy72r9A2Sn2OoZw85wjD6Cd+JaiFG5aHRQrN3+j4NMQ38eKKIVVsK7pOkSngxrziJiWDeO4U=
X-Received: by 2002:a05:6808:2198:b0:437:dade:463f with SMTP id
 5614622812f47-44f95fd5661mr1151443b6e.34.1761900766670; Fri, 31 Oct 2025
 01:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org>
 <20250813-phy-notify-pmstate-v3-1-3bda59055dd3@linaro.org>
 <aKX5C9Xlx2CSJraY@vaman> <CADrjBPpaJdzDSe3kjk=zrODusH3LnwhaBn9-NDCJwEy3ymwvew@mail.gmail.com>
In-Reply-To: <CADrjBPpaJdzDSe3kjk=zrODusH3LnwhaBn9-NDCJwEy3ymwvew@mail.gmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 31 Oct 2025 08:52:35 +0000
X-Gm-Features: AWmQ_bmf3sDwcFE73Zf2SHIWustpcGeUpWRxOdPU5lAg-c6tgm7mH2rWSEsBY1E
Message-ID: <CADrjBPqc47TBXA78gO7VENLqYdsodKAGckB528OXv2==EM9MpA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] phy: add new phy_notify_state() api
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel-team@android.com, 
	William Mcvicker <willmcvicker@google.com>, Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_015248_976038_1C56F34B 
X-CRM114-Status: GOOD (  31.67  )
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

On Thu, 11 Sept 2025 at 13:23, Peter Griffin <peter.griffin@linaro.org> wrote:
>
> Hi Vinod,
>
> Thanks for your review feedback.
>
> On Wed, 20 Aug 2025 at 17:34, Vinod Koul <vkoul@kernel.org> wrote:
> >
> > On 13-08-25, 16:00, Peter Griffin wrote:
> > > Add a new phy_notify_state() api that notifies and configures a phy for a
> > > given state transition.
> > >
> > > This is intended to be by phy drivers which need to do some runtime
> >                     ^^^^^^^^^^
> > Missing 'used' possibly?
>
> Yes your right, good spot, will fix.
>
> >
> > > configuration of parameters that can't be handled by phy_calibrate() or
> > > phy_power_{on|off}().
> > >
> > > The first usage of this API is in the Samsung UFS phy that needs to issue
> > > some register writes when entering and exiting the hibernate link state.
> > >
> > > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > > ---
> > >  drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
> > >  include/linux/phy/phy.h | 19 +++++++++++++++++++
> > >  2 files changed, 44 insertions(+)
> > >
> > > diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> > > index 04a5a34e7a950ae94fae915673c25d476fc071c1..60be8af984bf06649ef00e695d0ed4ced597cdb9 100644
> > > --- a/drivers/phy/phy-core.c
> > > +++ b/drivers/phy/phy-core.c
> > > @@ -520,6 +520,31 @@ int phy_notify_disconnect(struct phy *phy, int port)
> > >  }
> > >  EXPORT_SYMBOL_GPL(phy_notify_disconnect);
> > >
> > > +/**
> > > + * phy_notify_state() - phy state notification
> > > + * @phy: the PHY returned by phy_get()
> > > + * @state: the PHY state
> > > + *
> > > + * Notify the PHY of a state transition. Used to notify and
> > > + * configure the PHY accordingly.
> > > + *
> > > + * Returns: %0 if successful, a negative error code otherwise
> > > + */
> > > +int phy_notify_state(struct phy *phy, union phy_notify state)
> > > +{
> > > +     int ret;
> > > +
> > > +     if (!phy || !phy->ops->notify_phystate)
> > > +             return 0;
> > > +
> > > +     mutex_lock(&phy->mutex);
> > > +     ret = phy->ops->notify_phystate(phy, state);
> > > +     mutex_unlock(&phy->mutex);
> > > +
> > > +     return ret;
> > > +}
> > > +EXPORT_SYMBOL_GPL(phy_notify_state);
> > > +
> > >  /**
> > >   * phy_configure() - Changes the phy parameters
> > >   * @phy: the phy returned by phy_get()
> > > diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> > > index 13add0c2c40721fe9ca3f0350d13c035cd25af45..664d0864c3a5042949cb121e982368fe0a97827f 100644
> > > --- a/include/linux/phy/phy.h
> > > +++ b/include/linux/phy/phy.h
> > > @@ -53,6 +53,15 @@ enum phy_media {
> > >       PHY_MEDIA_DAC,
> > >  };
> > >
> > > +enum phy_ufs_state {
> > > +     PHY_UFS_HIBERN8_ENTER,
> > > +     PHY_UFS_HIBERN8_EXIT,
> > > +};
> > > +
> > > +union phy_notify {
> > > +     enum phy_ufs_state ufs_state;
> > > +};
> > > +
> > >  /**
> > >   * union phy_configure_opts - Opaque generic phy configuration
> > >   *
> > > @@ -83,6 +92,7 @@ union phy_configure_opts {
> > >   * @set_speed: set the speed of the phy (optional)
> > >   * @reset: resetting the phy
> > >   * @calibrate: calibrate the phy
> > > + * @notify_phystate: notify and configure the phy for a particular state
> > >   * @release: ops to be performed while the consumer relinquishes the PHY
> > >   * @owner: the module owner containing the ops
> > >   */
> > > @@ -132,6 +142,7 @@ struct phy_ops {
> > >       int     (*connect)(struct phy *phy, int port);
> > >       int     (*disconnect)(struct phy *phy, int port);
> > >
> > > +     int     (*notify_phystate)(struct phy *phy, union phy_notify state);
> > >       void    (*release)(struct phy *phy);
> > >       struct module *owner;
> > >  };
> > > @@ -255,6 +266,7 @@ int phy_reset(struct phy *phy);
> > >  int phy_calibrate(struct phy *phy);
> > >  int phy_notify_connect(struct phy *phy, int port);
> > >  int phy_notify_disconnect(struct phy *phy, int port);
> > > +int phy_notify_state(struct phy *phy, union phy_notify state);
> > >  static inline int phy_get_bus_width(struct phy *phy)
> > >  {
> > >       return phy->attrs.bus_width;
> > > @@ -412,6 +424,13 @@ static inline int phy_notify_disconnect(struct phy *phy, int index)
> > >       return -ENOSYS;
> > >  }
> > >
> > > +static inline int phy_notify_phystate(struct phy *phy, union phy_notify state)
> > > +{
> > > +     if (!phy)
> > > +             return 0;
> > > +     return -ENOSYS;
> >
> > Should be -ENOSYS either way, right?
>
> I initially thought the same, but I followed the pattern that is used
> by many of the other phy API calls like phy_init/exit,
> phy_power_on/off phy_calibrate, phy_notify_connect in
> include/linux/phy/phy.h. I can update it if you like, but I was trying
> to keep it consistent.
>
> The only API I can see (that isn't a *phy_get* or *phy_create*) which
> returns -ENOSYS unconditionally is phy_get_bus_width()

Friendly ping about the above ^^^

Peter.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
