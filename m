Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBBE1E77184
	for <linux-phy@archiver.kernel.org>; Tue, 17 Dec 2024 11:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+vDaIcf16NGSusXh4mRBJwVn2A+FJHxQaU3pLhuom8=; b=TMeLRaf909vZKX
	xFs+3nCGU/qfj+tXPBWPz8iuMYeSnkmI9BZYHFssUtXNYh+ZuRkc+YtfZw5SYrHKjFrvZkp8rqTFB
	1BNSvEEjdiB91J/QzNKAbEDi7BEVYoU2Bee1SvwDk8aEa6vSsen6GpGcVz42VRAYhtJmUOWXSC27q
	AsI6w4IBH9ahx5Yw2Z0lgjbkSdL8yahS6O91yGokn5vUu3lu3ZSQaXPIIZeb8cZM8FLbLnXqEP+t8
	TJHTGy6V5Or/PPhZ/aQqTAIwz25i7C+Ca2HNR6858ptnJs/OuAjL+zHX9YEzSozKiiMPmjpKY5fe/
	hR3NjB+g30OUc7bNJC8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNVPz-0000000DDH6-2zDq;
	Tue, 17 Dec 2024 11:07:11 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNVPw-0000000DDFg-2oEI
	for linux-phy@lists.infradead.org;
	Tue, 17 Dec 2024 11:07:09 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5401c52000dso5577428e87.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Dec 2024 03:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734433627; x=1735038427; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AfuoU4NCeZC6i1F3LvimU1oXmmt7Zka/LPketmVAjnQ=;
        b=kziX2/Y5b543SW0z+aAakPe7x9zi2rl36fnJPkizrIjH5VMySJP6UsApwfl0n5n1tn
         iJ+Q6xCUcEG6+EtFtLSDv2gsNuLdlrebti/alFCcFBAyCk/TQhDchqz7QzyNtYPWJqJQ
         8dZaGZF3TtSIMKmIUXto1AueJI83wSDXjc8qsly9wPJipZuZ1yMcB2lH70kq+ZWbFxCU
         Ty37xo64b6yhDag/mQYVcpn1mFasTcl1Fc/By/1+ppT348ix2NM3xea0BFGXFwGL4UfR
         1ZogSb1p+tlHx1We3vJJwFz2E1vqDTlCejUoPDV7aQh0MHtf3rpLP+w0fYUxVsVJMK2N
         Kbmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734433627; x=1735038427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AfuoU4NCeZC6i1F3LvimU1oXmmt7Zka/LPketmVAjnQ=;
        b=YeHU6xAfDodDkV+1yuUMidO/t69yi7daoNf3jC59LBnlDq8AyMYMpS27onnYUGEA4s
         ipeZ0NOU1dbb+3p/DktHmrUOT7A/aWH2KvaHz/VaElgyIwX+4QBRj/Eba+g26VF3SoK6
         mfD+4Ur30QvDRuBuCDA+DSmLZ2zEhOF/GjoJQypsf1JNL7SMcg6LySI2KJSiyXCQCuei
         y/jzGUOW8RlCsuN9VW2SpoAo1KYjuClQ+KTYmiT7e0+iMiKJjRzE8QYhA2Xtpkx3ly6Y
         lH6W+KzAfJvniWwxsYhJFUaPYg++Mm1JwVUfpMjEUYO5zX2asQxg7n6MZZF0G3UA7POn
         vKkw==
X-Forwarded-Encrypted: i=1; AJvYcCVm7Pf+N+ZbgBzip33BN7PDz6MJbB99Xiznj7wyquOOhlCAs9mPDUIo0M7dMjeTwr4Cm+4gnCsf94E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdvQytWRlmMzY4Ewzk3w3OPSZKWnylOV2UhipOjijYblaOkv86
	O+WvZjTCh8bs/mVPV/frGaX3zCJYU0am3HvQ8KlRcGFHRSspPukaL6VBNNqgIew=
X-Gm-Gg: ASbGnctRsOT4vFTfwHS+V6c+IJjFZgm1ydmsrg5w//qpFq/b88gg5dJ4fNyDDhBQM4T
	zYgKw8fpswg0e2JI++K4R03xz41/RK+3xges5l8lN7bSrOMbG7C/ia78N8r9TwKUl7EmrOWIToJ
	1O28H7fDoj3+Ll5/n8vwvA9uDDRd9iHxcMLu/Dlw/BySVR65fOexgrHH/ESoo8JURa47A0yqkfG
	yzWTKKga0RLzMiH62zvSuSeJqxn8LhIgFQuQVdPkHejoP0VMQlYTk3VDpcfmPRC7gYMzLhHnBvV
	176HQn8nHkIoyLz+1KxZ6YV1fB6ecW3P8DF0
X-Google-Smtp-Source: AGHT+IGORYjhudTQdAvMdm8g3LCUxmZy1h6j52DQHamk5YqQ8TrNPXiGHtV+PtxV/2H4doZcZuIeCQ==
X-Received: by 2002:a05:6512:2392:b0:540:20eb:80c5 with SMTP id 2adb3069b0e04-540905a6f84mr5483487e87.37.1734433626614;
        Tue, 17 Dec 2024 03:07:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c13d69sm1118592e87.217.2024.12.17.03.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 03:07:05 -0800 (PST)
Date: Tue, 17 Dec 2024 13:07:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v20 1/9] soc: cadence: Create helper functions for
 Cadence MHDP
Message-ID: <rew4x4qxemig7rq4kossrn7cybihrgsizh43wnllgv2daf75gm@ziqsakm7gm56>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
 <7fd5d54e2594aadd66598888ddf512f3d6d30e5d.1734340233.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7fd5d54e2594aadd66598888ddf512f3d6d30e5d.1734340233.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_030708_718702_10D3AD94 
X-CRM114-Status: GOOD (  21.06  )
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

On Tue, Dec 17, 2024 at 02:51:43PM +0800, Sandor Yu wrote:
> Cadence MHDP IP includes a firmware. Driver and firmware communicate
> through a mailbox. The basic mailbox access functions in this patch
> are derived from the DRM bridge MHDP8546 driver.
> New mailbox access functions have been created based on different mailbox
> return values and security types, making them reusable across different
> MHDP driver versions and SOCs.
> 
> These helper fucntions will be reused in both the DRM bridge driver MDHP8501
> and the i.MX8MQ HDPTX PHY driver.
> 
> Six mailbox access helper functions are introduced.
> Three for non-secure mailbox access:
>  - cdns_mhdp_mailbox_send()
>  - cdns_mhdp_mailbox_send_recv()
>  - cdns_mhdp_mailbox_send_recv_multi()
> The other three for secure mailbox access:
>  - cdns_mhdp_secure_mailbox_send()
>  - cdns_mhdp_secure_mailbox_send_recv()
>  - cdns_mhdp_secure_mailbox_send_recv_multi()
> 
> All MHDP commands that need to be passed through the mailbox
> should be rewritten using these new helper functions.
> 
> The register read/write and DP DPCD read/write command functions
> are also included in this new helper driver.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
> v19->v20:
> - new patch in v20.
>   The patch split from Patch #1 in v19 and move to a new folder drivers/soc/cadence

It makes it harder to review, but granted that we have already past
that, I think it's fine.

> 
> diff --git a/drivers/soc/cadence/Kconfig b/drivers/soc/cadence/Kconfig
> new file mode 100644
> index 0000000000000..b668790660fa5
> --- /dev/null
> +++ b/drivers/soc/cadence/Kconfig
> @@ -0,0 +1,9 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +config CDNS_MHDP_HELPER
> +	tristate "Cadence MHDP Helper driver"

This symbol isn't supposed to be selected by the user. Please leave just
tristate without the menu entry text (the help text is fine, please keep
it).

LGTM otherwise.

> +	help
> +	  Enable Cadence MHDP helpers for mailbox, HDMI and DP.
> +	  This driver provides a foundational layer of mailbox communication for
> +	  various Cadence MHDP IP implementations, such as HDMI and DisplayPort.
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
