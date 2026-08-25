Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDE91C61DB9
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 18:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lI67C0d6UamcmbwCVhtLBVHwXH4aAqFx2KtKbFTQQcE=; b=r9GvKCrnbH7sU4
	wMOr0slNBrXLLjXJr0tsv5gSGXlcgtpKVLOkmBQXTX+SgBzpToJPsqIDnrG4olh2Kxp06iLAIL26B
	onfKl6IpD+0/1YiDjscCGRbookntmxycRIfaIxJIwboEZ+gIZ1YUfDHPl1ePrDG2uEjzl8G4xz1Om
	4ndSim2TX1O0o2VkH4WG6j8IhbAC0mMoAaeMjuEe+7GE8PzCxWKaosR+5FcYE2A1Kmnf7o7eqAFgT
	3CRYD5KbofIS0w3b/17WdBKJncwm4MThuQFTJQ6CQB59eTKd8KvKcGmnOnubhsCiqxkCeBlBW430W
	yWwh7NmuALKXMBGK1pqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyvp2-00000001Ixa-0XnF;
	Tue, 25 Aug 2026 18:24:32 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyvp0-00000001Iwk-2ebj
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 18:24:31 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7eb5bdb50fcso95217a34.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 11:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1787682268; x=1788287068; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mrSQugjWwNbSyFKJC0aQ+HhLTDBrn6ENKLGPbrFSXE0=;
        b=nct/w5c4X6qa8Wi7v4HaYjaI6Vp0QfstUgIYq0D9Qb2LShUMD6qkF9+t+bdKfDa3bJ
         PE1u5jLXkbymFcHhi5NbC0eebxilklOOQwupiFTeisvcOokiotl/dV5l7P0S89t4EqWM
         nAxnBjZVrHsLKNQHJTZ6MIm/XtJgrvWZwklTF3pbURbuZPpBixw4NDSE+nypJNawkujQ
         LXTR55NcMNOCjqWtA62ZHAv7QHXMgNHptDK3JnQJT68khT4gShUOhfZmI7ORbXeoe6kW
         LrbNWDfbair/dttuUtN4L62dQp/MynaiAAY7nfElpQeFQKOH4qgEFzfBsbtU/yN9tbiY
         Kj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787682268; x=1788287068;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mrSQugjWwNbSyFKJC0aQ+HhLTDBrn6ENKLGPbrFSXE0=;
        b=jB/q4NlxmADk6oflcT3tIwXnObWvi0IGAMFaUo0LVFtHcLpcThiGdetvWovWHbKEJR
         ARwFiaBMwTZExr+OoswfDM45cNbNoj0SLSj9TV6eDi6q54bef728sFaEhbY4Poaeqkf4
         xFiL2kQd0ugvX9uoLJMes50kpJdnm/fCImGn7s/AqR/HUyrCyHAJAQQCN9UDRqOA290U
         bdjVdPxQwU5/j3ti3fvHwCdLA/kk728/SQ4+wjoUsjnEA9drZo7NI2hCt0tfAdCJpKhn
         fOV1DsMaq+ItZWXp7g/r5Iz1nLUuB9dUrjv2GCP91xveWGGTN4qh7PwlclqbC5T+LK+Y
         Mtwg==
X-Forwarded-Encrypted: i=1; AHgh+RozoZ0NhmyXjCW11PzrDg0TBPTd2iqflP1D2lp69rtweabe8JLdAVEcYPhA9qJCq1v3jtNZ5z7mOOA=@lists.infradead.org
X-Gm-Message-State: AFuF++mFhIfpD0Gb6mRMce9n1WF37U6s/9U1QPOnmOkGQ0/nzFwt58i7
	fFJkKC4X6fS2ttbQTsuxhl2ke3yw3wRtZKLs4Db3lSGrRzBnAobl1MSYnHBMbm7hDw==
X-Gm-Gg: AR+sD10Av5QmMZLSBp7N74j/32WxRKRWFbGDZ/mG6lNK7zpwZJ4ABdy27P3C0bejagS
	VsyVFEWXXWUYwMZH1U7CTwN+IzXibzs/0NbiVPpW9Cq9OKuBn0ZfJzL0egRMYCqG++fKhfXkmBZ
	XS6eCj0bPJZQPgeai5Sou0MrBgMqREhtHjJuUkuW0H/1yim/RxVjr+PhR3pNHvJq0juxZEzNC/S
	3Uz3vE6ESzA3e8MslZ2qSjrvkkAKP3WX/UMK59yHCAksLebh5HStxnWFwQzrmL9O7Y4OwjDb2Qz
	VtM9KyHCk2DTFVYjQmWSxSZ3ZqWPvyTzNSazoa2jCFHm6pgu0n8fboS1LDLFk/YeEEVyBI8a9zn
	L5PKkcT84ou2MMlLJBMoawRyaGNd/FWLD+RBFgMjQZvd40GirDbiBihRK2KJT+QBIRyg0AKsFaE
	FaPcTTrTNOxrI4SIm1FYfqAPE2SoHF4JQFzm/tvGgW1jS/nU5VR/7eyVupJM71UCd3E4OoVj+1m
	/UdykKiYodC+mHaKNEzi0qzwly5
X-Received: by 2002:a05:6820:55ca:10b0:6ac:a539:bc41 with SMTP id 006d021491bc7-6b1a03e5c38mr696085eaf.12.1787682267892;
        Tue, 25 Aug 2026 11:24:27 -0700 (PDT)
Received: from google.com (203.215.188.35.bc.googleusercontent.com. [35.188.215.203])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6b1a02566desm215005eaf.11.2026.08.25.11.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2026 11:24:27 -0700 (PDT)
Date: Tue, 25 Aug 2026 18:24:25 +0000
From: Neill Kapron <nkapron@google.com>
To: RD Babiera <rdbabiera@google.com>
Cc: vkoul@kernel.org, peter.griffin@linaro.org, andre.draszik@linaro.org,
	tudor.ambarus@linaro.org, p.zabel@pengutronix.de,
	neil.armstrong@linaro.org, badhri@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] phy: Add USB3 PHY support to Google Tensor SoC USB
 PHY driver
Message-ID: <ao3d2TlIRqxbz4WP@google.com>
References: <20260710172946.15633-2-rdbabiera@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260710172946.15633-2-rdbabiera@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_112430_682335_4EAEADD7 
X-CRM114-Status: GOOD (  18.88  )
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

Hi RD, some minor comments below.

On Fri, Jul 10, 2026 at 05:29:47PM +0000, RD Babiera wrote:
> +#define GPHY_TCA_DELAY_US 10
> +#define GPHY_TCA_TIMEOUT_US 2500000

Do we really need a 2.5s timeout?

...
> +
> +static int wait_tca_xa_ack(struct google_usb_phy *gphy)
> +{
> +	int ret;
> +	u32 reg;
> +
> +	ret = readl_poll_timeout(gphy->usb3_tca_base + TCA_INTR_STS_OFFSET,
> +				 reg, !!(reg & TCA_INTR_STS_XA_ACT_EVT),
> +				 GPHY_TCA_DELAY_US, GPHY_TCA_TIMEOUT_US);
> +	if (ret)
> +		dev_err(gphy->dev, "tca xa_ack timeout, ret=%d", ret);

The dev_* calls throughout this patch should have trailing newline
characters.

> +
> +	return ret;
> +}

...
>  static int google_usb_set_orientation(struct typec_switch_dev *sw,
>  				      enum typec_orientation orientation)
>  {
>  	struct google_usb_phy *gphy = typec_switch_get_drvdata(sw);
> +	int ret = 0;
>  
>  	dev_dbg(gphy->dev, "set orientation %d\n", orientation);
>  
> -	gphy->orientation = orientation;
> +	guard(mutex)(&gphy->phy_mutex);
>  
> -	if (pm_runtime_suspended(gphy->dev))
> -		return 0;
> +	gphy->orientation = orientation;
>  
> -	guard(mutex)(&gphy->phy_mutex);
> +	if (IS_ENABLED(CONFIG_PM)) {
> +		if (pm_runtime_get_if_active(gphy->dev) <= 0)
> +			return 0;
> +	}
>  
>  	set_vbus_valid(gphy);
>  
> -	return 0;
> +	if (gphy->phy_state == COMBO_PHY_TCA_READY && orientation != TYPEC_ORIENTATION_NONE)
> +		ret = program_tca_locked(gphy);
> +
> +	pm_runtime_put_autosuspend(gphy->dev);

Here you are using the _autosuspend variant, but autosuspend is never
configured in probe(). Should this be changed to the plain
pm_runtime_put(), or actually enable autosuspend in the probe function?

> +
> +	return ret;
>  }

...
> +
> +static int google_usb3_phy_power_on(struct phy *_phy)
> +{
> +	struct google_usb_phy_instance *inst = phy_get_drvdata(_phy);
> +	struct google_usb_phy *gphy = inst->parent;
> +	int ret;
> +
> +	dev_dbg(gphy->dev, "power on usb3 phy\n");
> +
> +	guard(mutex)(&gphy->phy_mutex);
> +
> +	if (gphy->phy_state != COMBO_PHY_TCA_READY) {

I think prior to this we should add a check if phy_state is
COMBO_PHY_IDLE, return an error and change this check to phy_state ==
COMBO_PHY_INIT_DONE to make sure we are explicit in our state handling
to prevent issues with any potential refactoring.

> +		/* Wait for PoR -> NC transitions*/
> +		ret = wait_tca_xa_ack(gphy);
> +		if (ret) {
> +			dev_err(gphy->dev, "PoR->NC transition timeout");
> +			return ret;
> +		}
> +		gphy->phy_state = COMBO_PHY_TCA_READY;
> +	}
> +
> +	if (gphy->orientation != TYPEC_ORIENTATION_NONE)
> +		return program_tca_locked(gphy);
> +
> +	return 0;
> +}
...

Thanks,
Neill 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
