Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C325C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MavlfaueF1PsqE0ojeM+QUl989QfLSSzCDhm3XY3irs=; b=fvA30IXPcgGVkL
	XbnBUh3ZwrmJPyq+aEm77sn8sC9p7kn5XsbItZXqp6Y9pYA2n5ld9VkdIjrwmtGIYP4tBXqUfw/3q
	qi3gFSn8009HaRiqUlgACLcYXXPaqxwm5yv+9sTHxVPmSB+OLAqZzzGeagFQUtY6FqJwsby2JHldf
	VT7K86xeD+bP2ShB+b7ZEsjVMVsgy3upNCuUDg6+j4J3tQDtScZFACA+PfiNWa5mYSQ1KDvp7gXXm
	apoGJ2cwIeFAGfwNCeTYLBx69F7m5a+X5OsOeP+KY1au88CQWFCJ1UWXDgEmduXnOXFZgmAMMXC2U
	oZGyPyii5HVK7vdvq/oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Xq8-00000006iDv-0Mq3;
	Mon, 07 Sep 2026 11:48:44 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Xq6-00000006iDA-0xST
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:48:43 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cfbdac7a1so814715e9.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788781720; x=1789386520; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=sCcumiqt++ngk8+8ZsfaJMliyV3ADBkSY4R1nZtHDbI=;
        b=bPLxTezPnPGRJ+dh/9MovEzIkyc6ZTt+NWAsJX/ggRkfN1wCCE7ZUmXvHgzo3v5IX3
         ReuCF7b2afLFPAYU+C755CzpmsTRNkQdPB1MXiacAOc00cc52KSVdTg3P6h98VliPRMN
         0oImmsSE0xsa91jlegNm1LWKSQ5HqTvk3BkJnbao7dqMBlr+rzMHp6BNMA7nb+GTZOMr
         m56IemNOwunE+Kd59ra7sMfI+8ms0CVcL0HKmeMGc/wdNe2rbBIOxBz6IUt3GMPswXga
         cvOa7Y0UhLxFMhvRQCcXE0aTwpbHL82vThj+SgKd3DzRT4jiMoP+We1iBM40XRAzMfCF
         egKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788781720; x=1789386520;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sCcumiqt++ngk8+8ZsfaJMliyV3ADBkSY4R1nZtHDbI=;
        b=hu1T1yXcTrl/D+B9D7ttTypbPqBEJGuoPUw1YwFB19wHDdTqBm9IqoKbN/8KazBHnu
         6pv5bJCb8UXa2anMk5VUjATGeeaAVQ2jTHu3f2khLjUBgwgBjQXONB3toSry5eY0xODs
         VQ0iD0/C4+yXk2WXf3O53FiGHY0lI1zIvLrRSD0LqZtFlT5GX2kc5dXcgvscbTyC+4xH
         yC9qSaLc7aXV8GJMYGWe/Ajj1/kO9hPHLCxw28ivc8+1K5smp5D4OVS+1JHVOBeTov+I
         3j8pQRiD0EVUrfk936xG80kErnW8OZEqJ07cSGR4fEmaysT2iUQ00zIL0vh0RPf6ul9M
         Ssxg==
X-Forwarded-Encrypted: i=1; AKwUvBzR8ajwjMJlXPodbPVVLJq77nee3Bnv405uXrnoxt4NEsh7ZSwyuo2RGNXFgGx56dHpJzK983c5PRI=@lists.infradead.org
X-Gm-Message-State: AFuF++l5h7Wd72C8/oJb+CpbNAHTkXQcX/bM7K9sBAoepFvNTZBMC7j6
	dI+wvx1PY21lKqZjpfPKaEzty1IAMuRtFWmwwjQY4bq6q2xNSarKtfI97J+NeQ==
X-Gm-Gg: AYBFou1T+Sy6qpXj53Q1YwwZy9D1aVJWdmeHczZv0cAlWTIU2z8iohOVUZ9uhiAk1oZ
	/06QC4YQ35BYLUsn0DFez5HG01DtljpqW0mBq2M7HUHxCRDAAhVpesn2SYPNKciyveVTDCk55jl
	AEAwhOp8g5RVfjnnwPA66t/oRxnin575tyxPYzXQD+iHte67zXYoYucNRb+B8qvnkrAAp6oC+Zg
	Sz/eS8me0VFf4Rzqgmjc5Clv39wIY9GxGX6nySR5J3Bu+P2CaPAU0Npma2JfpESz8dNG98BKvav
	gxta1M/ygs0KFxqZyVV34j8grEdsHxhKL3H41Y0JrW4TDtTYfM8rTBDTEDzV7Gcaq1+fLKk6+kI
	yIdsMipEC+2ur6YQ6KzVF5+AogdiWL1FuiHGYdmBYv+kI+1dih0ReNFwX10dUs/6Cee12/O4GMV
	MpTDRyanyCVKoxHLtqZfGL6hnUJGfTXn1cSAgc1pDz4DXjGD/DMw==
X-Received: by 2002:a05:600c:8485:b0:499:5b0f:72b with SMTP id 5b1f17b1804b1-49d01dcc32cmr132422645e9.1.1788781720257;
        Mon, 07 Sep 2026 04:48:40 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce58da3acsm823780485e9.0.2026.09.07.04.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 04:48:39 -0700 (PDT)
Date: Mon, 7 Sep 2026 14:48:37 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 3/4] phy: core: Add phy bulk data helper functions
Message-ID: <20260907114837.2y55l7dfqqrgcka2@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-4-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904083709.425893-4-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_044842_290191_3F3251D4 
X-CRM114-Status: GOOD (  15.86  )
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

On Fri, Sep 04, 2026 at 04:37:07PM +0800, Inochi Amaoto wrote:
> +static inline int phy_bulk_get_all(struct device *dev,
> +				   struct phy_bulk_data **phys)
> +{
> +	if (phys)
> +		*phys = NULL;
> +
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline int of_phy_bulk_get_all(struct device_node *np,
> +				      struct phy_bulk_data **phys)
> +{
> +	if (phys)
> +		*phys = NULL;
> +
> +	return -EOPNOTSUPP;
> +}

Why do the stub definitions of *_get_all() return an error?
I would expect these to have optional semantics, i.e. 0 PHYs are not an
error to the consumer.

For reference, I am comparing with clk_bulk_get_all() which returns 0.

> +
> +static inline void phy_bulk_put(struct device *dev, unsigned int num_phys,
> +				struct phy_bulk_data *phys)
> +{
> +	if (!phys)
> +		return;
> +
> +	while (num_phys--)
> +		phys[num_phys].phy = NULL;
> +}
> +
> +static inline void of_phy_bulk_put(unsigned int num_phys,
> +				   struct phy_bulk_data *phys)
> +{
> +	if (!phys)
> +		return;
> +
> +	while (num_phys--)
> +		phys[num_phys].phy = NULL;
> +}
> +
> +static inline void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
> +				    struct phy_bulk_data *phys)
> +{
> +	phy_bulk_put(dev, num_phys, phys);
> +}
> +
> +static inline void of_phy_bulk_put_all(unsigned int num_phys,
> +				       struct phy_bulk_data *phys)
> +{
> +	of_phy_bulk_put(num_phys, phys);
> +}
> +
> +static inline int phy_bulk_check_disabled(unsigned int num_phys,
> +					  struct phy_bulk_data *phys)
> +{
> +	if (!phys)
> +		return 0;
> +
> +	for (unsigned int i = 0; i < num_phys; i++)
> +		if (phys[i].phy)
> +			return -EOPNOTSUPP;

For consistency with the individual API, I believe this should be
-ENOSYS (not that I know why we would be using this error code).

> +
> +	return 0;
> +}

Can you update Documentation/driver-api/phy/phy.rst with some terse
references to the bulk API and its intended use? Not much, just say
what it's for (like multi-lane protocols, and why some operations are
missing: phy_validate(), phy_set_mode_ext() etc). I guess they are
missing because currently they have no user, which is OK, but the rest
of the world should be on the same page w.r.t. the future of this API.

Thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
