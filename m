Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F2B6CD3427
	for <linux-phy@archiver.kernel.org>; Thu,  7 May 2026 12:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94ciYIiA8nbdWOSge1G5GVRT8uGiq5bnzqHKgOZT9ZI=; b=z+Cf9ns+h00NIC
	i7DhnAjvB0OW+2yye1dcIi0JEaZl5LlEJyCaivSDjJ1C+Agl4O89NUOFShK1pTSks+2b4nXEdOIPr
	jUmgG8zHiSS8e1DsLmgUnEEF0HbiZ9APISx/nVvz1l+hKIjHcPsNshGpmgD3TdJiusqxDnUKwlOT/
	s+ySRvDLwAxEGjuxoEuQbWLU09lY3wfanVVn/YC5upfdzANy8KGymW8mt9Gi6yBirdJPd4QMzDzbd
	8ccfNjoBk5eJ1+q2nKpYQUEhFFYxoTBc/nVm5uXryvFpSvL55o2k/Ma94Ws6MnxxTJOS0Snbf20n6
	MiqddvL/4WIMSOYz3zDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKxUk-00000003jn3-3WHM;
	Thu, 07 May 2026 12:06:22 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKxUh-00000003jlq-41qZ
	for linux-phy@lists.infradead.org;
	Thu, 07 May 2026 12:06:21 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-43d7dab87e1so89784f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 07 May 2026 05:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778155577; x=1778760377; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xw5SJ5ouCRYB/b5GcNxozXNcJ8qmSd+3bPwo/jj3Nqc=;
        b=RuIw70aPruUkCw2VczMZCCDlR911SMvGEGYIigXBvDuMyrc/2D6DDx+122bOa83nb3
         dfAVR0f+/8ojYxT2PCv1vRF4xh7vidht+VfBJYxy1TPWgu9TmWVry5KQrX7G8ADdxKiH
         O94vovkiBYMaBn22r1xUCJhndcxYtJj6gFrM9QP3xYjNyuMMxY0lsLkLdrtj4e34ZurJ
         Gj1IKt4cCRDyegSkuHi/D6IrphMfo6oqCa4hBtzhmFRfUpsBX8WPQ0+SMCBwS4bxNkLW
         4oYubj1wRFgWnfNZtZcOgn/Gbeg+D7ZTIa7oijfzk8r/x+pVP5r66VxWcO9vnNzqCMq7
         JqnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778155577; x=1778760377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xw5SJ5ouCRYB/b5GcNxozXNcJ8qmSd+3bPwo/jj3Nqc=;
        b=I4TrzX/7Qy0/IYUDWRdY+pDR5Zkt94+GXMx045UjKmiQbmoFXVx6aD5pN4wiThrREa
         PGtLeeOoQp01BSUBPnTrsoAaFb4RhjVr1O9qxoihRFUpc9Ld4SImRLMw73uSve35UJtq
         MnKiOwG58Ir+s2kyHnWaB3toblKTtDz04uc0Gn96BX+DLxZDNqlZBEVMInHBkGuuWdln
         UAVqGxee9ct0tDZG+7XKxXol3yMeIqC2ROgy6soZ+7pS0fJ9gVYZtOQr1IjJrdCzN3eL
         2HsQ9lmIlPcafYZeSthSOypcSidKSx3VO0tjzeX4ojD6lJ24GuGn3RMYN4Zp3+oLBJUv
         VRrA==
X-Forwarded-Encrypted: i=1; AFNElJ92OKyKR430evYlcRBvPJlsjW9jcYavAbuPG97RJXrAxzcWxOBHtjNMNhmUkuR1U51YdXEnZfFlcqo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGHqj5TskA7J0XxoEM4QHSJm6rzZN/DhBVgk8Hu4HHHIAE3kSa
	N3Qttbf4TM43cyD9M7eYLSszvvkreRZgqUBL8fpDbKaDN5sla8hzi55w
X-Gm-Gg: AeBDiesbY5KwIA6Md+DJ+3MAlYvdweLV1fDEkbKgYuhFwLZOsupJrkNWRQlKJBhtwKQ
	5qtbLhrytzy83/aoptCAy3zqh67UOt+13Sj/qdrc/wbcrMKNVRuHc6o+gjJNnsyL2XeRBhyn8b/
	vIbJoWkX+rEVJbxWhnoIhdtQPvB4eImOI0SMMRc42es1CRXxRPWbjF5KnFqt27oWIw10m3oaR3J
	78LRfGy0Gea6GUWAwLyIaeK0Eh7N9YSoF9Vh9xvabZD+f1ZxWKt3EtoeAdtOynixrdCwU1FFNAe
	i87/syrfp+fQ5CFy2KAScd5UIrpoTrb4nTsQSLxvMlFFiCTc6ON3auH3eyuaQ7Lka27yXj+D/8V
	XqLsuBn5F+nH4Ph+emp7ipYTxJ6UieJv9V0fQ+/bm2VXp5wU2DbrncA2yVYBdRwwotZMrBxu4Ng
	kAgicJ0izUGc4Zq4UpmrQ65NIYgetJsnbmpvzg
X-Received: by 2002:a05:6000:4517:b0:448:71e8:4b3b with SMTP id ffacd0b85a97d-451a71f62e6mr3350578f8f.5.1778155577326;
        Thu, 07 May 2026 05:06:17 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d403:cf00:be4e:5cc8:5753:4a2f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055960902sm21613178f8f.28.2026.05.07.05.06.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 05:06:16 -0700 (PDT)
Date: Thu, 7 May 2026 15:06:14 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: David Carlier <devnexen@gmail.com>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Hector Martin <marcan@marcan.st>,
	Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: apple: atc: Fix typec switch/mux leak and UAF on
 unbind
Message-ID: <20260507120614.jlygedfycdjxbvoo@skbuf>
References: <20260420231014.35462-1-devnexen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260420231014.35462-1-devnexen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_050620_018398_F9717770 
X-CRM114-Status: GOOD (  21.78  )
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

Sashiko says:

commit 13bcb3149b5056d5815f8cd52f9e018076602989
Author: David Carlier <devnexen@gmail.com>
phy: apple: atc: Fix typec switch/mux leak and UAF on unbind

This commit addresses a typec switch and mux leak during unbind by
saving the registered devices and unregistering them via
devm_add_action_or_reset. It also drops unused struct fields.

> diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
> index e9d106f135c51..4156fabad742c 100644
> --- a/drivers/phy/apple/atc.c
> +++ b/drivers/phy/apple/atc.c
[ ... ]
> @@ -2066,15 +2063,25 @@ static int atcphy_sw_set(struct typec_switch_dev *sw, enum typec_orientation ori
>  	return 0;
>  }
>
> +static void atcphy_typec_switch_unregister(void *data)
> +{
> +	typec_switch_unregister(data);
> +}
> +
>  static int atcphy_probe_switch(struct apple_atcphy *atcphy)
>  {
> +	struct typec_switch_dev *sw;
>  	struct typec_switch_desc sw_desc = {
>  		.drvdata = atcphy,
>  		.fwnode = atcphy->dev->fwnode,
>  		.set = atcphy_sw_set,
>  	};
>
> -	return PTR_ERR_OR_ZERO(typec_switch_register(atcphy->dev, &sw_desc));
> +	sw = typec_switch_register(atcphy->dev, &sw_desc);
> +	if (IS_ERR(sw))
> +		return PTR_ERR(sw);
> +
> +	return devm_add_action_or_reset(atcphy->dev, atcphy_typec_switch_unregister, sw);
>  }

Could this lead to a use-after-free if consumers still hold a reference to
the switch or mux?

When the driver unbinds, devm cleanup runs and frees the apple_atcphy
structure. The devm action calls typec_switch_unregister(), which drops the
sysfs representation but doesn't free the device object if a consumer (like
TCPM or a Type-C port driver) still holds a reference.

If the consumer is not unbound concurrently, it retains the reference and
remains active. Unregistering the switch does not clear its .set callback.
If a cable replug or orientation change occurs, the consumer could call
typec_switch_set(), which would invoke atcphy_sw_set().

Since atcphy_sw_set() extracts the freed apple_atcphy pointer from drvdata
and attempts to acquire its mutex, could this result in a use-after-free?
[ ... ]

> @@ -2146,15 +2153,25 @@ static int atcphy_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *sta
>  	return atcphy_configure(atcphy, target_mode);
>  }
>
> +static void atcphy_typec_mux_unregister(void *data)
> +{
> +	typec_mux_unregister(data);
> +}
> +
>  static int atcphy_probe_mux(struct apple_atcphy *atcphy)
>  {
> +	struct typec_mux_dev *mux;
>  	struct typec_mux_desc mux_desc = {
>  		.drvdata = atcphy,
>  		.fwnode = atcphy->dev->fwnode,
>  		.set = atcphy_mux_set,
>  	};
>
> -	return PTR_ERR_OR_ZERO(typec_mux_register(atcphy->dev, &mux_desc));
> +	mux = typec_mux_register(atcphy->dev, &mux_desc);
> +	if (IS_ERR(mux))
> +		return PTR_ERR(mux);
> +
> +	return devm_add_action_or_reset(atcphy->dev, atcphy_typec_mux_unregister, mux);
>  }

Are we exposed to the same issue here with typec_mux_unregister()?
If a consumer still holds a reference to the mux device after the driver
unbinds and devm frees apple_atcphy, could an alt-mode transition invoke
atcphy_mux_set() and access the freed memory?

[human]

Basically it is stating that consumers will continue to hold a reference
to the Type-C mux and switch even if you go to the extent of unregistering
them from the framework. This is a known problem in many subsystems;
even the PHY framework suffers from it.
https://lore.kernel.org/linux-phy/aZejMSJ9qqRWb2pX@google.com/

I don't know how the Type-C framework deals with this, so maybe you can
clarify in your commit message what kind of problems the deregistration
will get rid of, and what kind of problems it won't.

How do the cable replug or alt mode changes trigger calls to
atcphy_sw_set() and atcphy_mux_set()? A call stack would help.

Ideally you want to help the reviewer understand that the change is
obviously correct and takes into consideration all relevant factors.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
