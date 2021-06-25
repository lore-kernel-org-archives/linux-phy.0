Return-Path: <SRS0=Mo6n=LT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00E2C2B9F4
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:54:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FF3D61459
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jun 2021 10:54:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7FF3D61459
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zi9QBYRQc5XHBYPY8HKPG4ax7siYhSFMg+/fhqDtEqI=; b=CwomkL012dM7VUT6yP/jBFB+7I
	LjB0a0xzWdQr6MCFCM3jJAHX3MDjbheRZ9uWzHUReDZ+PXhGkrxI9VKoO6zPJQ5+F4w2N8JnwVZpv
	LGgK5ffnNwC3eVz09YrfVv+u06InzCmsJ732thlYgcUswyvvOBIUG5PbGxf9/fWJVrxWtNAM14YF5
	cio6Z316Wy2jIBZUxAWaedRAsxNWkQicosYFAjBGOShUcinMxFGiAlFFu1VtXPjc+/1aD2qsAPdtG
	cvGaToksW60zwD4jYdq+LlcqGWuDSmBadC9xsGR19+ZZxodWefJd/vZQU2/j0iz8kYv6QyMww3Fvs
	vN12Mi0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjU7-0018pa-QT; Fri, 25 Jun 2021 10:54:55 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwj4F-000xjl-3t
 for linux-phy@lists.infradead.org; Fri, 25 Jun 2021 10:28:12 +0000
Received: from mail-lf1-f72.google.com ([209.85.167.72])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <krzysztof.kozlowski@canonical.com>)
 id 1lwj4D-0003UO-If
 for linux-phy@lists.infradead.org; Fri, 25 Jun 2021 10:28:09 +0000
Received: by mail-lf1-f72.google.com with SMTP id
 o16-20020a0565120510b029032f0b0fc9f1so118986lfb.23
 for <linux-phy@lists.infradead.org>; Fri, 25 Jun 2021 03:28:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ooQ/bpan+0/tVSYEdf4mZkzEEyxm1PiIoniVSmhDjiE=;
 b=lJZqWe4YXAnAQ/quOtDL0RoXFSSkYGoZIYAWVYxL57rtYfmvBX396O3331w6tdei6i
 qjTo/zhwjew5VdfYgjGz17+/bgNs8rkBX7V/1+Y99w5eHcMd7L4+jNPGJJMpF4UlpfoQ
 ISdhAdAVox3phrUO4VNgc3z3fzsHo47HFwRL/wlPOaPE5gSlqF7SZwrtYtcgkU4Cm1Hh
 SxTwCpb79N3ABkIpmT7q9oHCepy3B+epU8/xMzZew+zoAGAhff3BOTDjbIx6uezfn4bl
 mUu4IX44+x6bcYVoYhc5uyeM5REpoghVZCDE7DVJjE9VO+qtrhyEeYSSLJSiU4TV91yX
 8juw==
X-Gm-Message-State: AOAM533FQEOdR+FxD/+B7Kl3rqgkM3IylBlaiY5UqRPR7jkeavavJQuo
 EMHRXpaJVl5UKDFMaZRfb+hWEsLlmbL3okRx52IzbVUeKvMyih/ZTNUYL2YBz/L5yR9S92JKl04
 0gqQoPlzWsWWeiV/h9QpWKoYIJAkyfZXTfQXEh50IWnE=
X-Received: by 2002:aa7:dad2:: with SMTP id x18mr2475704eds.319.1624616878339; 
 Fri, 25 Jun 2021 03:27:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy3cVNg6WpHcCXQbDGMr5Bh35AfaEmUsyMepbsDA9xjQrFf3dK49GpbzPfo/R2byKacwC1C9g==
X-Received: by 2002:aa7:dad2:: with SMTP id x18mr2475662eds.319.1624616878073; 
 Fri, 25 Jun 2021 03:27:58 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch.
 [188.155.177.222])
 by smtp.gmail.com with ESMTPSA id p18sm2712783edu.8.2021.06.25.03.27.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Jun 2021 03:27:57 -0700 (PDT)
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Andrzej Hajda <a.hajda@samsung.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Anthony Brandon <anthony@amarulasolutions.com>,
 linux-phy@lists.infradead.org, Fancy Fang <chen.fang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
 <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
 <fdd446c6-c8ce-9dae-f7ac-e06241f76250@canonical.com>
 <CAMty3ZCEQeRi53yuLYyWVU8o=Lo2ZKy+kgjU+9PC33QJEq2LQg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <ff421d53-7308-7959-ea4a-9cf94efe63b2@canonical.com>
Date: Fri, 25 Jun 2021 12:27:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAMty3ZCEQeRi53yuLYyWVU8o=Lo2ZKy+kgjU+9PC33QJEq2LQg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_032811_185477_08E91F96 
X-CRM114-Status: GOOD (  22.47  )
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

On 25/06/2021 12:08, Jagan Teki wrote:
> Hi Krzysztof,
> 
> On Fri, Jun 25, 2021 at 2:51 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
>> On Thu, 24 Jun 2021 at 14:19, Laurent Pinchart
>> <laurent.pinchart@ideasonboard.com> wrote:
>>>
>>> Hi Jagan,
>>>
>>> On Thu, Jun 24, 2021 at 05:42:43PM +0530, Jagan Teki wrote:
>>>> On Thu, Jun 24, 2021 at 8:18 AM Fabio Estevam wrote:
>>>>> On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart wrote:
>>>>>
>>>>>> Looking at the register set, it seems to match the Exynos 5433,
>>>>>> supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
>>>>>> that driver instead of adding a new one for the same IP core ?
>>>>>
>>>>> Yes. there was an attempt from Michael in this direction:
>>>>> https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/
>>>>
>>>> Thanks for the reference, I will check it out and see I can send any
>>>> updated versions wrt my i.MX8MM platform.
>>>
>>> Thanks.
>>>
>>> I had a brief look at the exynos driver, and I think it should be turned
>>> into a DRM bridge as part of this rework to be used with the i.MX8MM.
>>>
>>> Is there someone from Samsung who could assist, at least to test the
>>> changes ?
>>
>> Yes, I mentioned few guys in reply to PHY. Around the DRM drivers you
>> can get in touch with:
>> Inki Dae <inki.dae@samsung.com>
>> Seung-Woo Kim <sw0312.kim@samsung.com>
>> Marek Szyprowski <m.szyprowski@samsung.com>
>> Andrzej Hajda <a.hajda@samsung.com>
> 
> Thanks for the information.
> 
>>
>> The easiest testing of the display stack would be on Hardkernel's Odroid
>> XU4 (https://www.hardkernel.com/shop/odroid-xu4-special-price/) however
>> you will not test the DSI/DSIM directly (it has only HDMI port).
> 
> Look like I found one board with Exynos5430 with DSI. Does this SoC is
> same as mainline Exynos5433?

No, Exynos5430 is ARMv7. Looks like improvement over Exynos5422.
Exynos5422 has a very good support in mainline while Exynso5430 was
never touched at all.

Exynos5433 is ARMv8, although many things are shared with 5422. About
DSI I have no clue.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
