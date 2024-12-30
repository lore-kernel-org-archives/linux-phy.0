Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79F88E77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 12:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COBN80QANbu0M40YIitY25Ln0+Af9XXhHgCW7Ae03WE=; b=l5a30cfqxqntmL
	4Doil93TofuQmIrKlE7zs1ERdNN4TKO8Aar6jOxMMepx3sSVqwpOQ2fxLufMAK5beei6+y0vNvbq0
	9ZSfQPvTQPfD4ZGRmbClh4nnjDfqlQNeJfMxMFbvgBn4J365RhqnRzvsB4v96IQ3qCOEmGcCH0+Na
	PH+UNKYT7rsFekan8nouS+Yzk/si6MWzWWMJAxSiEwsiY7JrroVGJei7bwpqHnhnzvPBzibAQtoM0
	fJw+WD73O02x8X8+A4/fzNRw4RmKoBZJZHv9QTV4Nb16a34t1SKnNTcG2OjeRxm4frlJYANPLAyUf
	9Wb+piaFee+Y38CZPf2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFCm-00000005Dk7-11m6;
	Mon, 30 Dec 2024 12:49:08 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSFAn-00000005D6G-3hoJ
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 12:47:07 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53e3a90336eso10153160e87.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 04:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562824; x=1736167624; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uCO6CXWnoZCq053HJEmMFJxQhQ579FC0ggfho/ODq8Q=;
        b=NsS/Pt3WDh+sDFuFMqZUJiLv57Hn+om2lZdwu1nOXexgHHfLTqvEWz+G5Xvlqu9VRS
         udLGh8wlEoNYvL2foUlSvCpCgpFX0cEYtn98kZCwKHMXYyDk61+P2q8A8V9E/a7hkcmo
         xOEhjt6svGG4r4c2mZOXhPyS+HYrv3EKJHDyV+jhokeFUaPo5RRXsNy9MBirpEn18cxB
         Nc3qjCDC/uq+71THOICMIXxG/NDVl0agMa0iWIWVQ/vVZLz3t+VaY7JD7uE+8aAtwhkZ
         wceazpTsycb26XtX/rH3EDnbUhnv3W4Q6gksQkYbggYk6DqgOoVqVLNc4ZOFxaRhjPu5
         euNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562824; x=1736167624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uCO6CXWnoZCq053HJEmMFJxQhQ579FC0ggfho/ODq8Q=;
        b=Bksz8QVXl6XjIU2BV2O+JwaMBV8tt2Psh/Cx9yXca6holSy4vejlQbqAgMPZCzS3AM
         LwfAi3vUWfxGD1uddPeB+Kg4upp91WIYab/n99j8WX8AosDwDL4cgMfj3IglqWQV1dEB
         dREvLrlLnvP+3jOSIQ1L+ScMkmrtUw3+GVJiHn1cFKQWKuxqSnJfO9ni+zxEMsTYO1A2
         6+vABuYzDIOXV8I2u1ryh1HUxbEdayEAGUTHYGYf0O2hWb4AA3mQr+H6c4Ylih/jS20k
         NhO9zZLmLnvwhl+ohSjpydjY1QT6kbVYy7W6nlxUKv0S2MYriCcFpvaYxWhCP1AtwA4T
         Mdaw==
X-Forwarded-Encrypted: i=1; AJvYcCXtHLIfh8aKqxdv080NcL6Aq9bHIm3dJ/UwpJ+/F3FSOkodOy/ocBJ5ZdwZMSdETk5oHjnhLVSDkU8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUS5ybaaSH3dKH8wvItFq10WeY17ao/n3kuT3H3E8vjYEdI9XU
	66s08sh5ey8rfchBuIlmXsAGCnp19TzxnEN0KskjqzmJc583ne+djPKKPBWhxDQ=
X-Gm-Gg: ASbGncvlI/HrrJh46wH98pS4dirJdOj6MMuJjBi3l4WSjhVnv5cc0VA4+SN+NqG2mjO
	CUa5eswGI+Mze/s0ftRrarLSjFod3XOcl4yRWZofcKxoxVTzdyvqwq5/bnqNCaVyH+uj+o/WxL0
	SRTwMCHZHvfXvNkk1FkcXQyuBE9dvZ4zOl4ZEViciZPRxgtu4BqWcViftnILHPANGFygNfr2aP9
	ut3vocDaPZUth4HlkjL7vExf7JTMHya6yyNZ1cl2aWKrOd6NvaCKDdzuJLfsbzhsgC6CadhKG1p
	+g9egavZFxjgZwZFe8XWT2CB7J1eGjlKbHBp
X-Google-Smtp-Source: AGHT+IGVpxl0k9hRIyiBC+nX9q01hRzKPekN79eTtXLIY4DaSMy9S0MrmJK/hCW8fezYBdyI4HazOA==
X-Received: by 2002:a05:6512:3b0b:b0:540:2a92:7dac with SMTP id 2adb3069b0e04-54229532e69mr12026183e87.17.1735562823897;
        Mon, 30 Dec 2024 04:47:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f5f1asm3126558e87.35.2024.12.30.04.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:47:02 -0800 (PST)
Date: Mon, 30 Dec 2024 14:47:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 09/17] drm/bridge: analogix_dp: Add support for phy
 configuration.
Message-ID: <hfqoxolgga3t4fmdeo5dmqvqiiptraqwmzwdpfhzmmw2cnsail@yamn7ms2tp6x>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-10-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-10-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_044705_918638_1CEF2D9C 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
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

On Thu, Dec 26, 2024 at 02:33:05PM +0800, Damon Ding wrote:
> Add support to configurate link rate, lane count, voltage swing and
> pre-emphasis with phy_configure(). It is helpful in application scenarios
> where analogix controller is mixed with the phy of other vendors.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
