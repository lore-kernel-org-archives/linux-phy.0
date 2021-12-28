Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC6C6C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 16:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwXeCrQ2OFkbvrUSB4RjJYoRUR2qHb4mBtCNFUp4YdI=; b=WcbZgZtD7jupSo
	EXrGdO0KM7N5Ptur8zFWMteZnk1SXp4QjWdzfZgwEsRo1aYmqLvuNcMYxqTMkXAdKNoQdAqApERmT
	WWX1xFMsUP1RfVFhQnXOO7PVAZ+oFXDdKzguMp1kpu1B+Ze3NI/pZsI9WjxzkZ3bYM4US2MtMrxGS
	GFSI29hR4RO7wzPSfUvVoMuQcNvE9W31HIurE3t8jqAx5fi6Vo2B9W97ASxiARiyvZVGtI52Icr4g
	DAqefsZIsDyyjhNFaRV4BHFJCw2aHJwTq899q5uYlpcxaTPOeePRS7q1ZtEDMnVDiQYJ9BgzWywvN
	bts1oz718s46ejQRGtKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2FVD-001XdF-9p; Tue, 28 Dec 2021 16:39:07 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2FVA-001Xcc-Dy
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 16:39:06 +0000
Received: by mail-oi1-x22c.google.com with SMTP id j124so30826285oih.12
 for <linux-phy@lists.infradead.org>; Tue, 28 Dec 2021 08:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZIpboUz/xGiGm0M2bXxED5rkbHQBbAAf8QHnqv08958=;
 b=AFobbcTiuaEItSulj0GbplCZ6nJLKEzZbS81I/vjDL5fHMv8umDxbEl+tLsi3MxQBY
 46vmWs1PJkhy9r0z2ovi/LIaVLnG53l16NTAaut38zEBwHhpnVj2rEPyLbJfveeGg0Bj
 DSwuFfeEPNUP1qlM6JObzKhKwW+qoQoOUVXoRCBCvgiOgBiCLGhEOnebkh8jrpyBPcOM
 rFW3mMUh/v4bjiRSYbMb+K9WImT2Va7UIXo4yc0PDwufsUYc34QhbvMVpNajXfg1QOiC
 1Gq7DSneEuXJk7uff1K3YoVpM3Atz6KsNLgUYKNHy7yDQ0tN0VeZHhjUpSFIH/9TQYGw
 6eGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZIpboUz/xGiGm0M2bXxED5rkbHQBbAAf8QHnqv08958=;
 b=nfK/ESpIOyWY0FAkB0qp/HWJuwTXDwSWCzrGVaENdMvxd6k7Tkka8qjP4XXZ49A0yO
 8kp6NcCa4rwzMLZoK9/heK5oDQZdcQrlB0gXRFcKXTpJUl9ygQsVOWhekMN9h4k1ECwZ
 tvqi4tfaMuts0f0hN3ENb9HXgnIZAjTsjdpSfxLRMrWrfgI+BN0Uf7D9eOwCVlq5Ifsi
 1+00f3As+COFPbL9mbqIve82ooAYUhekp2WOXK4fVmtmrkMAerfXUAK/Od42nP8OfPLD
 /cc+t7K16IaZj8W9hjJik1KoC1yJXkXIgB2Q2UHNNoNGpw4FNxo589kxIabWmBvv34Ua
 QgXA==
X-Gm-Message-State: AOAM531aoXlbjpniE1JYb1zUBJUTwJZ1WLbUZueb3IEc5ji1EC2NzlqO
 nyytHOrqANa6c0wJ1Jn2v6jGew==
X-Google-Smtp-Source: ABdhPJzOODy4nmc8nUHSmsbMH/o2ue92pmv2LHEXCJDGBzRWhqAPOozIKUl/ymCjnUMkyifprhlvtA==
X-Received: by 2002:a05:6808:682:: with SMTP id
 k2mr18106337oig.63.1640709541365; 
 Tue, 28 Dec 2021 08:39:01 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id o11sm3993423oiv.10.2021.12.28.08.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Dec 2021 08:39:00 -0800 (PST)
Date: Tue, 28 Dec 2021 08:40:01 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH 6/8] typec: mux: Allow multiple mux_devs per mux
Message-ID: <Ycs94b+Uh42KQKui@ripper>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-7-bjorn.andersson@linaro.org>
 <42ef1ff8-1c60-c601-3e97-7b9ffb3cab07@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42ef1ff8-1c60-c601-3e97-7b9ffb3cab07@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_083904_516467_71B35C44 
X-CRM114-Status: GOOD (  30.79  )
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

On Tue 28 Dec 08:04 PST 2021, Dmitry Baryshkov wrote:

> On 28/12/2021 08:21, Bjorn Andersson wrote:
> > In the Qualcomm platforms the USB/DP PHY handles muxing and orientation
> > switching of the SuperSpeed lines, but the SBU lines needs to be
> > connected and switched by external (to the SoC) hardware.
> > 
> > It's therefor necessary to be able to have the TypeC controller operate
> > multiple TypeC muxes and switches. Use the newly introduced indirection
> > object to handle this, to avoid having to taint the TypeC controllers
> > with knowledge about the downstream hardware configuration.
> > 
> > The max number of devs per indirection is set to 3, based on the number
> > of ports defined in the usb-c-connector binding.
> 
> If we had the 'count' ability, we wouldn't have to put limits here.
> The limit 3 is a bit artificial if you consider the redriver chips.
> 

I don't know if it's worth making it more dynamic at this point in time.
I definitely don't think it's worth taking two passes here, because
typec_switch_match will allocate objects that needs to be freed after
the "count" pass. I.e.  taking two passes is expensive (and ugly).

Also in it's current state we're wasting 16 bytes per USB connector at
worst and in the case of us having QMP muxing SuperSpeed signals and an
external redriver we have 2.


Given that we're just dealing with pointers the waste isn't that big,
but we could put say 8 (16?) entries on the stack and then dynamically
allocate the typec_switch and typec_mux arrays based on the actual
number of items returned.

Regards,
Bjorn

> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >   drivers/usb/typec/mux.c | 124 +++++++++++++++++++++++++++++++---------
> >   1 file changed, 98 insertions(+), 26 deletions(-)
> > 
> > diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
> > index d0b42c297aca..adf3681cf22d 100644
> > --- a/drivers/usb/typec/mux.c
> > +++ b/drivers/usb/typec/mux.c
> > @@ -17,8 +17,11 @@
> >   #include "class.h"
> >   #include "mux.h"
> > +#define TYPEC_MUX_MAX_DEVS	3
> > +
> >   struct typec_switch {
> > -	struct typec_switch_dev *sw_dev;
> > +	struct typec_switch_dev *sw_devs[TYPEC_MUX_MAX_DEVS];
> > +	unsigned int num_sw_devs;
> >   };
> >   static int switch_fwnode_match(struct device *dev, const void *fwnode)
> > @@ -67,25 +70,48 @@ static void *typec_switch_match(struct fwnode_handle *fwnode, const char *id,
> >    */
> >   struct typec_switch *fwnode_typec_switch_get(struct fwnode_handle *fwnode)
> >   {
> > -	struct typec_switch_dev *sw_dev;
> > +	struct typec_switch_dev *sw_devs[TYPEC_MUX_MAX_DEVS];
> >   	struct typec_switch *sw;
> > +	int count;
> > +	int err;
> > +	int i;
> >   	sw = kzalloc(sizeof(*sw), GFP_KERNEL);
> >   	if (!sw)
> >   		return ERR_PTR(-ENOMEM);
> > -	sw_dev = fwnode_connection_find_match(fwnode, "orientation-switch", NULL,
> > -					      typec_switch_match);
> > -	if (IS_ERR_OR_NULL(sw_dev)) {
> > +	count = fwnode_connection_find_matches(fwnode, "orientation-switch", NULL,
> > +					       typec_switch_match,
> > +					       (void **)sw_devs,
> > +					       ARRAY_SIZE(sw_devs));
> > +	if (count <= 0) {
> >   		kfree(sw);
> > -		return ERR_CAST(sw_dev);
> > +		return NULL;
> >   	}
> > -	WARN_ON(!try_module_get(sw_dev->dev.parent->driver->owner));
> > +	for (i = 0; i < count; i++) {
> > +		if (IS_ERR(sw_devs[i])) {
> > +			err = PTR_ERR(sw_devs[i]);
> > +			goto put_sw_devs;
> > +		}
> > +	}
> > +
> > +	for (i = 0; i < count; i++) {
> > +		WARN_ON(!try_module_get(sw_devs[i]->dev.parent->driver->owner));
> > +		sw->sw_devs[i] = sw_devs[i];
> > +	}
> > -	sw->sw_dev = sw_dev;
> > +	sw->num_sw_devs = count;
> >   	return sw;
> > +
> > +put_sw_devs:
> > +	for (i = 0; i < count; i++) {
> > +		if (!IS_ERR(sw_devs[i]))
> > +			put_device(&sw_devs[i]->dev);
> > +	}
> > +
> > +	return ERR_PTR(err);
> >   }
> >   EXPORT_SYMBOL_GPL(fwnode_typec_switch_get);
> > @@ -98,14 +124,17 @@ EXPORT_SYMBOL_GPL(fwnode_typec_switch_get);
> >   void typec_switch_put(struct typec_switch *sw)
> >   {
> >   	struct typec_switch_dev *sw_dev;
> > +	unsigned int i;
> >   	if (IS_ERR_OR_NULL(sw))
> >   		return;
> > -	sw_dev = sw->sw_dev;
> > +	for (i = 0; i < sw->num_sw_devs; i++) {
> > +		sw_dev = sw->sw_devs[i];
> > -	module_put(sw_dev->dev.parent->driver->owner);
> > -	put_device(&sw_dev->dev);
> > +		module_put(sw_dev->dev.parent->driver->owner);
> > +		put_device(&sw_dev->dev);
> > +	}
> >   	kfree(sw);
> >   }
> >   EXPORT_SYMBOL_GPL(typec_switch_put);
> > @@ -170,13 +199,21 @@ int typec_switch_set(struct typec_switch *sw,
> >   		     enum typec_orientation orientation)
> >   {
> >   	struct typec_switch_dev *sw_dev;
> > +	unsigned int i;
> > +	int ret;
> >   	if (IS_ERR_OR_NULL(sw))
> >   		return 0;
> > -	sw_dev = sw->sw_dev;
> > +	for (i = 0; i < sw->num_sw_devs; i++) {
> > +		sw_dev = sw->sw_devs[i];
> > +
> > +		ret = sw_dev->set(sw_dev, orientation);
> > +		if (ret)
> > +			return ret;
> > +	}
> > -	return sw_dev->set(sw_dev, orientation);
> > +	return 0;
> >   }
> >   EXPORT_SYMBOL_GPL(typec_switch_set);
> > @@ -208,7 +245,8 @@ EXPORT_SYMBOL_GPL(typec_switch_get_drvdata);
> >   /* ------------------------------------------------------------------------- */
> >   struct typec_mux {
> > -	struct typec_mux_dev *mux_dev;
> > +	struct typec_mux_dev *mux_devs[TYPEC_MUX_MAX_DEVS];
> > +	unsigned int num_mux_devs;
> >   };
> >   static int mux_fwnode_match(struct device *dev, const void *fwnode)
> > @@ -291,25 +329,48 @@ static void *typec_mux_match(struct fwnode_handle *fwnode, const char *id,
> >   struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode,
> >   				       const struct typec_altmode_desc *desc)
> >   {
> > -	struct typec_mux_dev *mux_dev;
> > +	struct typec_mux_dev *mux_devs[TYPEC_MUX_MAX_DEVS];
> >   	struct typec_mux *mux;
> > +	int count;
> > +	int err;
> > +	int i;
> >   	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
> >   	if (!mux)
> >   		return ERR_PTR(-ENOMEM);
> > -	mux_dev = fwnode_connection_find_match(fwnode, "mode-switch", (void *)desc,
> > -					       typec_mux_match);
> > -	if (IS_ERR_OR_NULL(mux_dev)) {
> > +	count = fwnode_connection_find_matches(fwnode, "mode-switch",
> > +					       (void *)desc, typec_mux_match,
> > +					       (void **)mux_devs,
> > +					       ARRAY_SIZE(mux_devs));
> > +	if (count <= 0) {
> >   		kfree(mux);
> > -		return ERR_CAST(mux_dev);
> > +		return NULL;
> >   	}
> > -	WARN_ON(!try_module_get(mux_dev->dev.parent->driver->owner));
> > +	for (i = 0; i < count; i++) {
> > +		if (IS_ERR(mux_devs[i])) {
> > +			err = PTR_ERR(mux_devs[i]);
> > +			goto put_mux_devs;
> > +		}
> > +	}
> > +
> > +	for (i = 0; i < count; i++) {
> > +		WARN_ON(!try_module_get(mux_devs[i]->dev.parent->driver->owner));
> > +		mux->mux_devs[i] = mux_devs[i];
> > +	}
> > -	mux->mux_dev = mux_dev;
> > +	mux->num_mux_devs = count;
> >   	return mux;
> > +
> > +put_mux_devs:
> > +	for (i = 0; i < count; i++) {
> > +		if (!IS_ERR(mux_devs[i]))
> > +			put_device(&mux_devs[i]->dev);
> > +	}
> > +
> > +	return ERR_PTR(err);
> >   }
> >   EXPORT_SYMBOL_GPL(fwnode_typec_mux_get);
> > @@ -322,13 +383,16 @@ EXPORT_SYMBOL_GPL(fwnode_typec_mux_get);
> >   void typec_mux_put(struct typec_mux *mux)
> >   {
> >   	struct typec_mux_dev *mux_dev;
> > +	unsigned int i;
> >   	if (IS_ERR_OR_NULL(mux))
> >   		return;
> > -	mux_dev = mux->mux_dev;
> > -	module_put(mux_dev->dev.parent->driver->owner);
> > -	put_device(&mux_dev->dev);
> > +	for (i = 0; i < mux->num_mux_devs; i++) {
> > +		mux_dev = mux->mux_devs[i];
> > +		module_put(mux_dev->dev.parent->driver->owner);
> > +		put_device(&mux_dev->dev);
> > +	}
> >   	kfree(mux);
> >   }
> >   EXPORT_SYMBOL_GPL(typec_mux_put);
> > @@ -336,13 +400,21 @@ EXPORT_SYMBOL_GPL(typec_mux_put);
> >   int typec_mux_set(struct typec_mux *mux, struct typec_mux_state *state)
> >   {
> >   	struct typec_mux_dev *mux_dev;
> > +	unsigned int i;
> > +	int ret;
> >   	if (IS_ERR_OR_NULL(mux))
> >   		return 0;
> > -	mux_dev = mux->mux_dev;
> > +	for (i = 0; i < mux->num_mux_devs; i++) {
> > +		mux_dev = mux->mux_devs[i];
> > +
> > +		ret = mux_dev->set(mux_dev, state);
> > +		if (ret)
> > +			return ret;
> > +	}
> > -	return mux_dev->set(mux_dev, state);
> > +	return 0;
> >   }
> >   EXPORT_SYMBOL_GPL(typec_mux_set);
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
