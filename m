Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE46C43217
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 16:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9DiKk2lZZ0I9yE7UFZkjBWydcgQNe2IB0r9Qgf7Cnw=; b=lmCr72Y6Oknu5O
	8vWkstCMH+RziCeIKUYWt8aNfkOmtoGfRX7co2E+wUvQm8frU7Oq9gIxtAU/9HDFvGnZx3RWcJ2ee
	S8g2jkPKhQvTwiMzb98xxO3fZ067XvO5bTvT5uHj/IAQpnKv8epTcdK/OxfgH0JFs7tGvvPKcVHcL
	AEzhNwL4hU/dVss91wK3zMNjO0ztoS1MjzqUnf2SLzquDh4TXw1bkn3F/Szzd0F0pQahj6q6xrw5J
	XaT+htwAExfAxRsXfc+7rWutLa7MSiHE+yfj/tVgSbFLJ1fXFZkj+vqZNUyUwCKBXghsKMJSi0KqB
	2ngeUHiB9Qk5+o2d7FZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2EyB-001TuD-C2; Tue, 28 Dec 2021 16:04:59 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2Ey8-001TtS-Ou
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 16:04:58 +0000
Received: by mail-lj1-x22d.google.com with SMTP id u22so31350234lju.7
 for <linux-phy@lists.infradead.org>; Tue, 28 Dec 2021 08:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=y46ItluB+wxZf2BvQYS03fKvpZOpwUYEhb1YAVfRA8E=;
 b=ku8VScfdvvCkTVIlu6WTtz4lOLH/lRr9zL0iMlQ6se8siHILqK4y5rCZVMrtyRffyn
 3ozbrm5Dji8aNFoIAyuKQ+d19HpeyGo6fYt1HDPPa64AjfKnM1KPhi7d2o6jDzoC5pKp
 SzJigO/nlOic8+ZNXRwqsYnTxMEp9iosXRKCM54LtwS9git/WDSgmUx+iGakGvJJevo/
 8epBQL1lhbXAbNOXZMDam3EY5KXqokJOZ19vEzuLigzqE4FudWy73+zcTRnfa88KhFgR
 GTlEr+yNqJasfJhYsSLLAO0OO/fQ6a3AQPzeZSxdv8ATqikr7jhYS9StYivTQKGpAeUn
 Q/DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=y46ItluB+wxZf2BvQYS03fKvpZOpwUYEhb1YAVfRA8E=;
 b=lzQkBV+DMrSMkREeLRlpbeXrsfbWFBGsv2u7C3opwkIuM/JcmhAkHAKa+8NXnoPhb6
 rpOU0Ynx/RNs39JNvEiVAiq+Hn/kzvngul6tn15jBz1tBC5hoVI961blEFfohyPMGOIO
 FmCPf1XwAVsyq1ZCQbhYsw1FrKu/12lZ3/6OiciojM8RsFUkslaO7ImUJWI+72LIHX2K
 7wCm2Ju3ILJvVrTRLjEIfQABXHQgY/9yyb1QXleCQgLZqhCoe+d+nCjolBMMZ467DWWE
 l70/Bow3X/2pXxNd35P1/SQMtDfbBhybRtu7MJ1f8bHBF4g1lOLgTlbJHDJ9nkX+/Sk7
 WDyA==
X-Gm-Message-State: AOAM5300A4r2TuwXutYhsnipSYAik66Qfqwur3IqY/C6NXo1vP+gRCdL
 iJl9K4GUgveUWv4YXPdoLOJgAw==
X-Google-Smtp-Source: ABdhPJyKh6M+Vt6hb9G/TlAArRC5jVSarQnogP4TbLRH2TIqKNbIzSoP3L5lHC9yQy0MktTFlthspA==
X-Received: by 2002:a2e:913:: with SMTP id 19mr18636932ljj.343.1640707494857; 
 Tue, 28 Dec 2021 08:04:54 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id x6sm1960563lfn.38.2021.12.28.08.04.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Dec 2021 08:04:54 -0800 (PST)
Message-ID: <42ef1ff8-1c60-c601-3e97-7b9ffb3cab07@linaro.org>
Date: Tue, 28 Dec 2021 19:04:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH 6/8] typec: mux: Allow multiple mux_devs per mux
Content-Language: en-GB
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
 <20211228052116.1748443-7-bjorn.andersson@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20211228052116.1748443-7-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_080456_922908_DCB811DD 
X-CRM114-Status: GOOD (  25.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/12/2021 08:21, Bjorn Andersson wrote:
> In the Qualcomm platforms the USB/DP PHY handles muxing and orientation
> switching of the SuperSpeed lines, but the SBU lines needs to be
> connected and switched by external (to the SoC) hardware.
> 
> It's therefor necessary to be able to have the TypeC controller operate
> multiple TypeC muxes and switches. Use the newly introduced indirection
> object to handle this, to avoid having to taint the TypeC controllers
> with knowledge about the downstream hardware configuration.
> 
> The max number of devs per indirection is set to 3, based on the number
> of ports defined in the usb-c-connector binding.

If we had the 'count' ability, we wouldn't have to put limits here.
The limit 3 is a bit artificial if you consider the redriver chips.

> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>   drivers/usb/typec/mux.c | 124 +++++++++++++++++++++++++++++++---------
>   1 file changed, 98 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/usb/typec/mux.c b/drivers/usb/typec/mux.c
> index d0b42c297aca..adf3681cf22d 100644
> --- a/drivers/usb/typec/mux.c
> +++ b/drivers/usb/typec/mux.c
> @@ -17,8 +17,11 @@
>   #include "class.h"
>   #include "mux.h"
>   
> +#define TYPEC_MUX_MAX_DEVS	3
> +
>   struct typec_switch {
> -	struct typec_switch_dev *sw_dev;
> +	struct typec_switch_dev *sw_devs[TYPEC_MUX_MAX_DEVS];
> +	unsigned int num_sw_devs;
>   };
>   
>   static int switch_fwnode_match(struct device *dev, const void *fwnode)
> @@ -67,25 +70,48 @@ static void *typec_switch_match(struct fwnode_handle *fwnode, const char *id,
>    */
>   struct typec_switch *fwnode_typec_switch_get(struct fwnode_handle *fwnode)
>   {
> -	struct typec_switch_dev *sw_dev;
> +	struct typec_switch_dev *sw_devs[TYPEC_MUX_MAX_DEVS];
>   	struct typec_switch *sw;
> +	int count;
> +	int err;
> +	int i;
>   
>   	sw = kzalloc(sizeof(*sw), GFP_KERNEL);
>   	if (!sw)
>   		return ERR_PTR(-ENOMEM);
>   
> -	sw_dev = fwnode_connection_find_match(fwnode, "orientation-switch", NULL,
> -					      typec_switch_match);
> -	if (IS_ERR_OR_NULL(sw_dev)) {
> +	count = fwnode_connection_find_matches(fwnode, "orientation-switch", NULL,
> +					       typec_switch_match,
> +					       (void **)sw_devs,
> +					       ARRAY_SIZE(sw_devs));
> +	if (count <= 0) {
>   		kfree(sw);
> -		return ERR_CAST(sw_dev);
> +		return NULL;
>   	}
>   
> -	WARN_ON(!try_module_get(sw_dev->dev.parent->driver->owner));
> +	for (i = 0; i < count; i++) {
> +		if (IS_ERR(sw_devs[i])) {
> +			err = PTR_ERR(sw_devs[i]);
> +			goto put_sw_devs;
> +		}
> +	}
> +
> +	for (i = 0; i < count; i++) {
> +		WARN_ON(!try_module_get(sw_devs[i]->dev.parent->driver->owner));
> +		sw->sw_devs[i] = sw_devs[i];
> +	}
>   
> -	sw->sw_dev = sw_dev;
> +	sw->num_sw_devs = count;
>   
>   	return sw;
> +
> +put_sw_devs:
> +	for (i = 0; i < count; i++) {
> +		if (!IS_ERR(sw_devs[i]))
> +			put_device(&sw_devs[i]->dev);
> +	}
> +
> +	return ERR_PTR(err);
>   }
>   EXPORT_SYMBOL_GPL(fwnode_typec_switch_get);
>   
> @@ -98,14 +124,17 @@ EXPORT_SYMBOL_GPL(fwnode_typec_switch_get);
>   void typec_switch_put(struct typec_switch *sw)
>   {
>   	struct typec_switch_dev *sw_dev;
> +	unsigned int i;
>   
>   	if (IS_ERR_OR_NULL(sw))
>   		return;
>   
> -	sw_dev = sw->sw_dev;
> +	for (i = 0; i < sw->num_sw_devs; i++) {
> +		sw_dev = sw->sw_devs[i];
>   
> -	module_put(sw_dev->dev.parent->driver->owner);
> -	put_device(&sw_dev->dev);
> +		module_put(sw_dev->dev.parent->driver->owner);
> +		put_device(&sw_dev->dev);
> +	}
>   	kfree(sw);
>   }
>   EXPORT_SYMBOL_GPL(typec_switch_put);
> @@ -170,13 +199,21 @@ int typec_switch_set(struct typec_switch *sw,
>   		     enum typec_orientation orientation)
>   {
>   	struct typec_switch_dev *sw_dev;
> +	unsigned int i;
> +	int ret;
>   
>   	if (IS_ERR_OR_NULL(sw))
>   		return 0;
>   
> -	sw_dev = sw->sw_dev;
> +	for (i = 0; i < sw->num_sw_devs; i++) {
> +		sw_dev = sw->sw_devs[i];
> +
> +		ret = sw_dev->set(sw_dev, orientation);
> +		if (ret)
> +			return ret;
> +	}
>   
> -	return sw_dev->set(sw_dev, orientation);
> +	return 0;
>   }
>   EXPORT_SYMBOL_GPL(typec_switch_set);
>   
> @@ -208,7 +245,8 @@ EXPORT_SYMBOL_GPL(typec_switch_get_drvdata);
>   /* ------------------------------------------------------------------------- */
>   
>   struct typec_mux {
> -	struct typec_mux_dev *mux_dev;
> +	struct typec_mux_dev *mux_devs[TYPEC_MUX_MAX_DEVS];
> +	unsigned int num_mux_devs;
>   };
>   
>   static int mux_fwnode_match(struct device *dev, const void *fwnode)
> @@ -291,25 +329,48 @@ static void *typec_mux_match(struct fwnode_handle *fwnode, const char *id,
>   struct typec_mux *fwnode_typec_mux_get(struct fwnode_handle *fwnode,
>   				       const struct typec_altmode_desc *desc)
>   {
> -	struct typec_mux_dev *mux_dev;
> +	struct typec_mux_dev *mux_devs[TYPEC_MUX_MAX_DEVS];
>   	struct typec_mux *mux;
> +	int count;
> +	int err;
> +	int i;
>   
>   	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
>   	if (!mux)
>   		return ERR_PTR(-ENOMEM);
>   
> -	mux_dev = fwnode_connection_find_match(fwnode, "mode-switch", (void *)desc,
> -					       typec_mux_match);
> -	if (IS_ERR_OR_NULL(mux_dev)) {
> +	count = fwnode_connection_find_matches(fwnode, "mode-switch",
> +					       (void *)desc, typec_mux_match,
> +					       (void **)mux_devs,
> +					       ARRAY_SIZE(mux_devs));
> +	if (count <= 0) {
>   		kfree(mux);
> -		return ERR_CAST(mux_dev);
> +		return NULL;
>   	}
>   
> -	WARN_ON(!try_module_get(mux_dev->dev.parent->driver->owner));
> +	for (i = 0; i < count; i++) {
> +		if (IS_ERR(mux_devs[i])) {
> +			err = PTR_ERR(mux_devs[i]);
> +			goto put_mux_devs;
> +		}
> +	}
> +
> +	for (i = 0; i < count; i++) {
> +		WARN_ON(!try_module_get(mux_devs[i]->dev.parent->driver->owner));
> +		mux->mux_devs[i] = mux_devs[i];
> +	}
>   
> -	mux->mux_dev = mux_dev;
> +	mux->num_mux_devs = count;
>   
>   	return mux;
> +
> +put_mux_devs:
> +	for (i = 0; i < count; i++) {
> +		if (!IS_ERR(mux_devs[i]))
> +			put_device(&mux_devs[i]->dev);
> +	}
> +
> +	return ERR_PTR(err);
>   }
>   EXPORT_SYMBOL_GPL(fwnode_typec_mux_get);
>   
> @@ -322,13 +383,16 @@ EXPORT_SYMBOL_GPL(fwnode_typec_mux_get);
>   void typec_mux_put(struct typec_mux *mux)
>   {
>   	struct typec_mux_dev *mux_dev;
> +	unsigned int i;
>   
>   	if (IS_ERR_OR_NULL(mux))
>   		return;
>   
> -	mux_dev = mux->mux_dev;
> -	module_put(mux_dev->dev.parent->driver->owner);
> -	put_device(&mux_dev->dev);
> +	for (i = 0; i < mux->num_mux_devs; i++) {
> +		mux_dev = mux->mux_devs[i];
> +		module_put(mux_dev->dev.parent->driver->owner);
> +		put_device(&mux_dev->dev);
> +	}
>   	kfree(mux);
>   }
>   EXPORT_SYMBOL_GPL(typec_mux_put);
> @@ -336,13 +400,21 @@ EXPORT_SYMBOL_GPL(typec_mux_put);
>   int typec_mux_set(struct typec_mux *mux, struct typec_mux_state *state)
>   {
>   	struct typec_mux_dev *mux_dev;
> +	unsigned int i;
> +	int ret;
>   
>   	if (IS_ERR_OR_NULL(mux))
>   		return 0;
>   
> -	mux_dev = mux->mux_dev;
> +	for (i = 0; i < mux->num_mux_devs; i++) {
> +		mux_dev = mux->mux_devs[i];
> +
> +		ret = mux_dev->set(mux_dev, state);
> +		if (ret)
> +			return ret;
> +	}
>   
> -	return mux_dev->set(mux_dev, state);
> +	return 0;
>   }
>   EXPORT_SYMBOL_GPL(typec_mux_set);
>   


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
