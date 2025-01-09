Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F865E77197
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 12:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3r/bGOU43Jk7VCYW4XaMNRKztKQB1FN+g42Hs+x5x4=; b=oMAM674MImKTpZ
	UYHXGzCeDJaZ5AxlS3V17EkvVGUixlM7Fw+xFCEZ3oguBHi+dnsF3+UMBMj8/h5urmggkV3XZMvQv
	EQxsJP99gpX5Onc82OvjYLf8BmdUMxEA39toDd4R5l33Fq0hNluEeWxLWvaC4BWQ8Fr28tGhm5kqK
	GdkLDl2ZRQ4g35F+O5iGhAr64D3UeR14mFCUNFicGnWQpYjHymF+mybaQJ1K0c8ZMm5HsrI4DkVEl
	A0B6vyMU5O93VicBCZSyAQQaWzeaeeNOtN3LLI9HoHXdWzQeXVo47lX4ZqZ5WkmyqsLtERs+ddhQn
	/4cpwYclkDUJrFR18oEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrrq-0000000BszT-0u42;
	Thu, 09 Jan 2025 12:42:30 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrqb-0000000BsfY-3eci
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 12:41:15 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso876995e87.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Jan 2025 04:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736426472; x=1737031272; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R7tMXX4qdRYGFciUc1sdwNNpuk6x7gkAmHud+GC2Ng4=;
        b=r9mIU88AMnog87UGjUbk4bqQO+L41qmnvduh9ZJ8pC5yHyrVYSQ6AsJclptsjb72LO
         JkeafHkGis0Q0dPf4V9il/6KVlm+dpMmLOqV0U45UNzBTWcvk/UC5tZGoZKlLtQ+Xogr
         r3d9aXzZhfn7WjaQGln9Uu9XSHkqDWTzvFZL0EZPdR0M5vAUfZZMdjOSIPVX5qhJkPhQ
         9dncs3A1NYk9OCZMJ3en86jV5RMy6QfGGzmsGkD4cs/z0fwnrEJDRFXbDlt/sheNMS2d
         Wy5SKgtbrHwtaTH+cbYvjH6Or8CzY9+Zlv+RkmA2+dL7BZyrVSMlzSEGV5nXTiAsmWZO
         nBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736426472; x=1737031272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7tMXX4qdRYGFciUc1sdwNNpuk6x7gkAmHud+GC2Ng4=;
        b=t43nx9UAc16KqbdssN8a4QF9DBrJuKUOLqzzexLgIDNXdnYsp4P0IOrBuypjD5ZCLD
         GK/0uFgMllBvlTo+RFepapC0uZjDoTO+sj2C84XHmcHxaFRjVlgP4nipsYsRWPcyB1SL
         x/CSUt+7DYJrnYblgeaR/0tgyW/GaXjlanyzZlmbfdixKQD+i1aE4HFPNCXoxSxMR2cS
         FC2kmkYgc7GR6lZ6dRWGpMA/Tf8RfQS1hN3W3vR0IAvq1P00WLxIxewpn1yjC+blBDdk
         weQOKClscY0+9edoRlCyBJZh8xyXHDzbtIvw90z2UtdmNwEBMjV/a/nszsxb0TxJdEuL
         HBnw==
X-Forwarded-Encrypted: i=1; AJvYcCXxITmzZsjnLp4cmAmQhopaP5U6/B2Dw8PuVVA+bACifZmh/tR+jGH4zWLDTaTGRHxo8HkeA2RXrRs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLY0HSN29weH0qp8QwopqHONuqcP8fHX/fLxXFohwlWejj3CBh
	Dg0gk+1daEz1/zqAASaJ4+9DVt+oukMCRRjdz4XyLw4Nvg7XKman1pDSoMl4u08=
X-Gm-Gg: ASbGncvJi4pBrJkgJLnv25gl2Id+Rb4ff+dZBqoH21tar88LqDLQ5YNwA3MgioESaQr
	2QPyaopnmxgftSpsvLR35CAbHmL9hwWu3bBBu/8npAW6fxcdoEFjkVudK4ka+aoHreYxPJFb0cn
	JXwYHm2pBWJMOGgp2xBq3IQQpQAOGrSL4V8/Efo239RizUCGvhyzIVz47V7BTRqpLxNry3XKqq2
	H9yLGXju3bFI4UsODWlm3C4DxOUqHi80UJXKSkr/3dAqF1zbIdkGFjc/Q2lSetxgIX+o52c8rff
	Es4ypSHKu0oNHvZUus7SYBGNFG3/ktNbB/Z9
X-Google-Smtp-Source: AGHT+IEwvFACO52C3ryh5S7HnArGMLvYQPYGuxGvrDUpjWDgL5Aq/3itURjeK26UKQyFNf6mWWqB1A==
X-Received: by 2002:a05:6512:3d27:b0:542:2388:3f09 with SMTP id 2adb3069b0e04-542845b20bdmr1837748e87.37.1736426471690;
        Thu, 09 Jan 2025 04:41:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea6a72sm185201e87.151.2025.01.09.04.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 04:41:11 -0800 (PST)
Date: Thu, 9 Jan 2025 14:41:09 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 08/20] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <7tvoipnypxzkzu235vc2n4jehcxgfkmgd5op5j6cqibqwmnlkg@vpftfenswtrq>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-9-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250109032725.1102465-9-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_044113_907513_6703E531 
X-CRM114-Status: GOOD (  12.65  )
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

On Thu, Jan 09, 2025 at 11:27:13AM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - remove needless assignments for phy_configure()
> - remove unnecessary changes for phy_power_on()/phy_power_off()
> 
> Changes in v4:
> - remove unnecessary &phy_configure_opts_dp.lanes assignments in
>   analogix_dp_set_link_bandwidth()
> - remove needless &phy_configure_opts_dp.lanes and
>   &phy_configure_opts_dp.link_rate assignments in
>   analogix_dp_set_lane_link_training()
> 
> Changes in v5:
> - include <drm/drm_print.h> for dev_err()
> - use drm_err() instead of dev_err()
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
>  .../drm/bridge/analogix/analogix_dp_core.h    |  1 +
>  .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 52 +++++++++++++++++++
>  3 files changed, 54 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
