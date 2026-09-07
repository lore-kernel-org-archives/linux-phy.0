Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11FF8C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 10:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjtK2NEZnJYtW/ydfP04GiPBMSc1FWtBxg4m7+BmBtU=; b=dS7jTH15KHsAZd
	cZmdVTcjuKkfy18BEz0aHsQToFfeetPYQu90FnTpka9SMlKSfZiKnSvtKLwH0dl0Z2uu5jqpuCfsT
	UpWKCnVRGplHjHQf3JD2/awLy7RwClzLH44tRWs4HMMpM/etV8HveGoWz3xK97MyMBjGDV1SERNdF
	bOLTgTz9PDX8nU2lAynvZBMIrlYsx3EqNliSnsSrEcDw4B367dR92OPQNlvojRn6Tra+EVFp95ZW8
	1J0DJe1kImxGwtfkhOTE0VZs+8CVcGkDE+S2kvTDgmdF9k/70q9lt2x7bLjdiF4apqjBw2MLmLtZO
	AXZbrALGupm2M3vLArPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X1T-00000006aJR-2YIq;
	Mon, 07 Sep 2026 10:56:23 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X1N-00000006aHN-1Vsy
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 10:56:20 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49d109c7067so465965e9.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 03:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788778575; x=1789383375; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qOp518ytTAH6/dnN5OP4wt3M73KjqMFaIqs6o7qE2pw=;
        b=R8yYPOw/nSf5DzjK90Zr09Gg2UkrxDvzOTXwuckHPSQJtM/q0P/tXz0/UNvm/aRbFG
         iIxQWu1Xl+i0HYl74kZv1jLcdFMlHgub+BuvpatwIicLuALKnKMvIIKOYASF2j/la5g2
         tU9gIPnTONZb0SdfjCSKRiLPLzjlG5jxT55CeuD/K5mg0UcFgnN3vrMdLsH/Wk276cZX
         pQwXO0dv7bwcI73EUjiKCV22Ut7rjqPXJeh7MsqVcV0r9P8BvQGvno7BtBkf7LASBhkC
         OJ++a7353lwLbqPPc6MjHcKdqt9Vtn0bGyDNPdljsthWmNlKpBvfuuITtPwXwjGVTaIO
         Ywtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788778575; x=1789383375;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qOp518ytTAH6/dnN5OP4wt3M73KjqMFaIqs6o7qE2pw=;
        b=G+jY/Bk66GiPuIoufkYADv04WDHOB6B3sTL4W6q/QRAKjeycCgzaViAjadpbMX2EjD
         X8cbBqq714qru7Qnkqp9q1kRI5K9hIvVu61FAStsNwezs7p8p7YA/38dtAS1WhM0TU44
         2sdY4qruKD8ux6iRKu+/JyU/PcJH9K2AViTldxE8ZTq7KpaXlcnPXPnxOkDRKVJVzvRL
         27u44DVCtATYQLXbIlodfLiInLHLVVg77em4197bOOmZGhvEOaff+FI3iLqllmaGRKgV
         QXt9gx1XT/ORC8Xs8z9zdph1c0Ob9xSyqU2LukUDZLpBD97S95t5n8sfXkyxMkQL0acF
         i3SA==
X-Forwarded-Encrypted: i=1; AKwUvBy95dLo1EMQdS5JxM27b3/gf6LWt4VVieoPTTLjiCQhdu8rnV2rpWj2yI82rfBQGciGckoHCxVD5TA=@lists.infradead.org
X-Gm-Message-State: AFuF++nN5SY6O8Qs8nen+UDAZSEB1qxmLnFF9gTqXXDUBC/brZ9CZ1us
	h8zGLznyL3seEwN8k16JAioIdKfgWOMWC71cVvrH1M0WTFTQLL9oIET4
X-Gm-Gg: AYBFou3ydLGIBIUb8TX6FY++v9cLZIstu1RfNuEMB+sakGuTQvCVLCtqa0gb7aEYkMv
	4PNfebbkFyThiU31/M8kLReRu/ol1thIyU1npzG/SJtjIjZFCd0aXW7KEwJXsSD+NAwKxOaC0BG
	C2xhmbqalN7O8KM21cZERQw+kEJs7Zv6jOJ+5o57BXhgdgUCOmitx1XKzszrDvSMFAqQtx9lVBP
	WgmJu0ABOQCuB6mwvmfeZqQG5/2dRLHRZGx6nLOt9IU+7JuYbKvjVqdjHB7cV/Wv/eBLqwvq2Lx
	Chv380qLN35OPGx6p3DUCszJivX31XLXAgyLULkGEsZKf5iISYm11f9PyGDjwsvNRA3XALuhels
	VQz7VDHMXb+TohuGYDPWKQCFeCgZvOFP7h3pEwTFahYQVsZgmIDvToj+H9nOJl5vtlt7u6t7jQb
	7KaiCf1xyeIIk4R8MYpJwE0uHNrG4nhOc86F1cdtP2rXCpIuAbEg==
X-Received: by 2002:a05:600c:c48f:b0:49b:9241:7ff0 with SMTP id 5b1f17b1804b1-49d010c4f64mr133554825e9.0.1788778575186;
        Mon, 07 Sep 2026 03:56:15 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee60bae6sm459522435e9.9.2026.09.07.03.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 03:56:14 -0700 (PDT)
Date: Mon, 7 Sep 2026 13:56:11 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 3/4] phy: core: Add phy bulk data helper functions
Message-ID: <20260907105611.uvhdywq2pwikfz3y@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-4-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904083709.425893-4-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_035619_055486_75A60212 
X-CRM114-Status: GOOD (  13.23  )
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
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index ea47975e288a..13f9f030122f 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -81,6 +81,17 @@ union phy_configure_opts {
>  	struct phy_configure_opts_hdmi		hdmi;
>  };
>  
> +/**
> + * struct phy_bulk_data - Data used for bulk phy operations.
> + *
> + * @id: phy consumer ID
> + * @phy: struct phy * to store the associated phy
> + */
> +struct phy_bulk_data {
> +	const char	*id;
> +	struct phy	*phy;

It's not clear from your design intention if struct phy_bulk_data :: phy
is permitted to be accessed individually by consumers. Personally I see
no reason to. In that case, can you explicitly mark "struct phy *phy" as
"/* private: Internal use */" (like struct regulator_bulk_data does,
albeit for "ret"), or simply say in the kernel-doc description that it
is managed internally by the PHY framework (as is done for both struct
regulator_bulk_data and for struct icc_bulk_data :: path)?

This should help at least LLM review flag abusive users.

> +};

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
