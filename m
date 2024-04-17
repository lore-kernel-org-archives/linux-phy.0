Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC3C8C04FF9
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 09:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oO9qCG4pqqKcrUZjuGOBsb+jrXg5gf8zFXcQnOQPjVw=; b=v/8yxFBc6hp6Eq
	oVMPettFJOYlODffG5iE0w9Y3lszvAyu2pY4otGhoqDzFBunXGhGqtDeYmgxo2Hig3AuJUptMk+9B
	XnkZg7MOk4948kZM/AhRebK1MVOEvW5VSJ+E0l8KWAvok0ctraPV/gwKAAD0KL/FQfkVDtvJOuord
	g9UImHjlPk403bNewAL719YynSAwMS//3sMRYWCdo1TbC6xmqNQQhiSc79lycy2+H3g+eXtbUBKLQ
	aTtg8cPGJCLytMB4eygV43vgUCwu75v2ApzgwbtbFKsOXa8ITV//EVA+UFQrkhXaa7N6GmXUVWR4w
	wyUs6lwcPrfMXHAI0iJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx1xo-0000000FU9N-1VMR;
	Wed, 17 Apr 2024 09:52:24 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx1xj-0000000FU3f-0wVN
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 09:52:20 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5714bb39c29so12952a12.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Apr 2024 02:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713347531; x=1713952331; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5f5XU8CL1kg+VvVC0mF3oI+N9DcL6GD1pDu7yNmuO1Q=;
        b=EJ6KTWerJNdTApAgvMqKq71A5qy0G5ThD0Uajjh4lDy6hWeGYnoKIkkZe264M/2xlI
         i8xj3w38dv7PMDGXqWHysgPmf6ukw0DmL/FjmIcXZIMIrefTcOOS5qjSDItCGLwpiWyn
         h/VqmlYdwRcx9c8L1TglYue9NfiNIYkGS4lkVc+6YHRVVn1kq6RmwXdS1aKRXejHNHrt
         bhJgTroLhebH22WUkbs1sYHwQf9VZrvtQ6z66WyHOzHTc+hIkolPtnxfo9irOEqn5beh
         PzjgfiIQL3hLIjpOxZe1XALrf9EB1z5Yv2j7GHA0R6LvSuWI1YeHaLkXunzo8QLd190s
         qRvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713347531; x=1713952331;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5f5XU8CL1kg+VvVC0mF3oI+N9DcL6GD1pDu7yNmuO1Q=;
        b=KnnuDAZzTTq9Hl+MNl7utwRgL6qHRt9jx5zz7n6SEIyME1K1q0MM6ltHKjyUWVFQJx
         t8rEKwoH+7uGZbZI+YnWvdVmjxn18XTj0FqE1ERHIVcOtjPK3ISCOaWOZ5PHOKZARB1E
         U/R1AT9hawMZVWCtBDaJxcYLZxtWc66Qb+2/XMW0I8z4H4Jf6PoiA0fML1gnUVMr7kXL
         YxBg3SYAzKZcCUmUEugVsAE/plpCg2ZYLlTTx3yTVBYmny8PAIxi1r3G26zeXnUNhqIl
         pY6AKad9HPdnQC8BPPlcBT4Hy/YMlHfwiu82X+XpOegixBpDobQgE4BlVRulPO543AZp
         1/Hg==
X-Forwarded-Encrypted: i=1; AJvYcCXsxMNHut28Wb+XliVrZBgdp2Hqxwl0mKXfRRSZLZx5thC9sjRs7y8v+60CMlaW223dO2JiOC60vgpUMU8gDtB/fNKujjxrdw1RDTmXkA==
X-Gm-Message-State: AOJu0YznPKwmAHWsRCY/Df+9DeVAhe6Uq00abzrNMqJGQQq92eqyZUDE
	HzAd/eVXV4zI27gqMhm1Hx4/14qTMAri67de5vTRdt0GmO8Ao6ID7PGL/zFEals=
X-Google-Smtp-Source: AGHT+IEYPrQEauvIgRMeVjGwsmiUGzuIZo8hcH8ym7d63O1kdjEGb0XdYaDBVBXRGhRdHQrpHYNOWg==
X-Received: by 2002:a17:907:7d91:b0:a54:1c55:7123 with SMTP id oz17-20020a1709077d9100b00a541c557123mr5905226ejc.73.1713347531118;
        Wed, 17 Apr 2024 02:52:11 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id t6-20020a1709067c0600b00a5229c51077sm7414958ejo.9.2024.04.17.02.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 02:52:10 -0700 (PDT)
Date: Wed, 17 Apr 2024 12:52:07 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org, s.nawrocki@samsung.com, cw00.choi@samsung.com,
	jejb@linux.ibm.com, martin.petersen@oracle.com,
	chanho61.park@samsung.com, ebiggers@kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, saravanak@google.com,
	willmcvicker@google.com
Subject: Re: [PATCH 10/17] phy: samsung-ufs: ufs: Add SoC callbacks for
 calibration and clk data recovery
Message-ID: <75b1b063-e8d4-417d-99a8-4320d72297cf@moroto.mountain>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-11-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240404122559.898930-11-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_025219_309406_1F3003F8 
X-CRM114-Status: GOOD (  13.71  )
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

On Thu, Apr 04, 2024 at 01:25:52PM +0100, Peter Griffin wrote:
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
> index c567efafc30f..f57a2f2a415d 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.c
> +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> @@ -46,7 +46,7 @@ static void samsung_ufs_phy_config(struct samsung_ufs_phy *phy,
>  	}
>  }
>  
> -static int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy)
> +int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy, u8 lane)
>  {
>  	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
>  	const unsigned int timeout_us = 100000;
> @@ -98,8 +98,15 @@ static int samsung_ufs_phy_calibrate(struct phy *phy)
>  		}
>  	}
>  
> -	if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS)
> -		err = samsung_ufs_phy_wait_for_lock_acq(phy);
> +	for_each_phy_lane(ufs_phy, i) {
> +		if (ufs_phy->ufs_phy_state == CFG_PRE_INIT &&
> +		    ufs_phy->drvdata->wait_for_cal)
> +			err = ufs_phy->drvdata->wait_for_cal(phy, i);
> +
> +		if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS &&
> +		    ufs_phy->drvdata->wait_for_cdr)
> +			err = ufs_phy->drvdata->wait_for_cdr(phy, i);

The "err" value is only preserved from the last iteration in this loop.

regards,
dan carpenter

> +	}
>  
>  	/**
>  	 * In Samsung ufshci, PHY need to be calibrated at different


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
