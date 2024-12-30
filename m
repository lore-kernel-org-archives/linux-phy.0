Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7351AE77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/a55RR5tWvvNBLq873lg8HJmf7fLCGElcQfRc96a/s=; b=abJCXYvasLqs5Y
	sEuWZl6LxXlpa/K+UH1lI4zjebEnpmr9igEwI5HxXSTRfmBpE97AtcwjF4SaPMMWfOzzcGMXLpEm8
	XFe140j5HS703qSMgAW/eBuH+SQTQvMa93opOq7SS6OZkw/gVzmmIwTnYrm0R5fmDEyb+KraF63or
	y9MhWP14p9JJIFKh0ZVv8GrtUPEJmpobjicfHNOYFCaEuZ2f4ZQWRrPmZVTR3NM50wqpSEHKYJLDN
	Cxj3qFohvcEbkiPb04RHDfl7QSlMF073qH7NeT4TWKLZk867RivwUNS3wePhp9P9YJTiZZqnW/8yH
	jY4h2JSXyMGfSobtw+uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFFC-00000005E2j-0s8W;
	Mon, 30 Dec 2024 12:51:38 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFFA-00000005E1W-0map
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:51:37 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so9938117e87.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 04:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735563094; x=1736167894; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Whv3w5+5QDDBIWkUbKKLfY2NqWbDdylwB0SvEbCmtM=;
        b=dlX0H1OIL5/ejjkIpmfS5TEK6z8psaeorepe5w+2bTjcKfZdusgYxKdoym2OKKbpWL
         Ar8Pv6Wl+kktzNTzOJw+G8CXGtap3pfUJtC5AdMZClqW+iF55U+GyD5omhpmeNaFGkV6
         KsehyRKSULl6TXdvdNru1wmJk6EoPXdr+Hvw0WzedHASYo9CHvHDWh4vZZvUFZyoIb3A
         kaKjyYoU+7oPrMIAUSoeNhDZzQi7ekKPKugi7Cd0UZGUC9zRl9NckfRYD+/lkkfp8tnY
         vUNFkSCUWs6zP4BHI/Z0wBCj2qq9Lb8UVcaAzQuGDYBL40UMr4HAtsJSTJPTKSmwE5ip
         1tyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735563094; x=1736167894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Whv3w5+5QDDBIWkUbKKLfY2NqWbDdylwB0SvEbCmtM=;
        b=qoT+nzD33mH4GUxxlk1U/32Zj/qBatDtuG0e6sivbnY3EW0WCJ87h3bmZe47XYsTLx
         a2ckW9qZE+aWvHURFC0xr9YnFlu1QijxzTmmRycOy80DrwihERqqap8WtZb3UnYDDTpR
         jKnxeKo8ONEIOMN8UwbcXuiAHQXhhJNoSlxhaa6PR2SmVXGZz17+UQ71hmF3J4k31kBg
         rgBLDAyloQAoS+YSzL1hv+WoEJaGHVnhKnJG27J2ujAYLwLYR2Wlj3z4f6GvdNB8CsOS
         OX74g0NHMqInvmN68vKUyWKcI1QYpPZSiR+hiYNM1AhvwE9wbaMqKYjmJG2b3dx6RzUr
         MfRg==
X-Forwarded-Encrypted: i=1; AJvYcCUMo9gFMu/3QJekyopJKeuFM4MAxJavv+wCQkgFhO7Sg9wBYyKqIKQrBHNNIbPQQ5aNkgWkbu1mJIA=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywo3aMUHexzLaGkXJ2muFa2bCwfHpkHf6rywX1wxEM6RJUGPo1M
	6mcfQQFNyKgAN6PLfR57E3xLnhZ3+fqEYZKWMW25q5W+bwnubV4wE56bKvXmy7g=
X-Gm-Gg: ASbGnctTtcAJabSvYDNow/ex+NdfHRiJZxECNHNd3+un7wC6onpwfmJjG1gc+fgainM
	U2cVJDKNYrlWsTlWjDeQKWISQiv7Tnax2QZtn6m/QJG25iPmdxbNNNI/qpe+LUNRunLDpqFbOPb
	4JLiM93PkFkBxLRWqEY0ykQalj6o9XKZ/bAmi5jbOuQqdp+2ZWifumlsoboI37J4nxjvCOfNfD6
	cTvJMJw4+g1YjbxUfXWD8P9cITYYzDUT67TEq0GIK7YfjZ5VtF5vDsuhoeJOIn6BGoEP2oF4PTE
	JLFBhg6WsqZgzWAcJLkf0QRR7bv4K8NjAeW0
X-Google-Smtp-Source: AGHT+IEW593Bqv5NB/vO2QEA4rz6rsbxfXb7nT58hLPf3Wn4NzBw3y0XPudnrMXfV5cdFkQkrpllxQ==
X-Received: by 2002:a05:6512:1255:b0:540:3550:b0f8 with SMTP id 2adb3069b0e04-542295305b7mr11077421e87.24.1735563094455;
        Mon, 30 Dec 2024 04:51:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223821504sm3074015e87.198.2024.12.30.04.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:51:33 -0800 (PST)
Date: Mon, 30 Dec 2024 14:51:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 12/17] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
Message-ID: <tlfkh3vwuwtqiaps3l4krv2grttlbe7ahienvjlglnzzdn3czk@pfdgmrvp65yf>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-13-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-13-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_045136_247432_DAAAB5ED 
X-CRM114-Status: GOOD (  11.90  )
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

On Thu, Dec 26, 2024 at 02:33:08PM +0800, Damon Ding wrote:
> Move drm_of_find_panel_or_bridge() a little later and combine it with
> component_add() into a new function rockchip_dp_link_panel(). The function
> will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
> aiding to support for obtaining the eDP panel via the DP AUX bus.
> 
> If failed to get the panel from the DP AUX bus, it will then try the other
> way to get panel information through the platform bus.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
