Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D37EE49A3
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 17:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6VY7kXqKaWoMM+ojhaXs0pnn/auKzEQNBtCfGVGQyU=; b=xs0PEkFZELS9rZ
	qB3YQatvOBgFZmH0RfbcoujMdyxC+tDOQsUWuX02iQGZ/ZrMFYRuOn6ORtSqOhugRzwcQ0BD3IwEZ
	lLp2y4GYhbNCEfnwfbndliFPmJo+so12SfVoDE/plNxbLQ3RlUx9xKOON+Uzya1x/rY8BhKSJBLm3
	sAJuRTphT9T9jKR/Ws/PRh8tzWnHoP7ebJMI2mA/toKE1jT+dLY1+bJ1GIu0z8eonlC03njFQxoCI
	98o0ot7zoSggMeWGoowZZAASGcv6qXtNl1C1p4S/vd/Pzk4FjnNY+wyjMmpGOmn1TE+gUZ8foodJo
	EP4nuXAo+y4vdjHF8UHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYV5C-00GZRJ-1t;
	Tue, 22 Aug 2023 17:22:22 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYV59-00GZPd-25
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 17:22:20 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d746d030a86so3623350276.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 10:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692724935; x=1693329735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Que2yIbRJrk/qAKPnu985gDCHaDuWM2c+IiMxTSOqFo=;
        b=iXf3z4PpDI16KmgLfqdzWF1xg8whrVf+mqjrNLmygLnJwi6YuRYvpVxzRrTBVuMIOf
         2/JRDNjZ/5hLV11p2A0Xj3oF2S6V3V+qZJikfyG9JhBiMNdm4jVM1YP56QbgTfx0n/XB
         a/O93HWoxixX6hzNKB10ghZU/McnvWF265/Qlj+RUTngsouCFk/e+5lzMxJSybtObVbJ
         lxFhbWg2R8ZwJ//d8PhmAi1b/vTGdF1C3jZV95AaAxg+UsgTepvW/tKR/KJIeMryJ+hS
         8dMhoo59ZNIEELkBnhkS5jO1vtzhmEDEbXDxygTCGKf1fX4qPJZnZM/fHf9Hs4GMexEW
         Dvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692724935; x=1693329735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Que2yIbRJrk/qAKPnu985gDCHaDuWM2c+IiMxTSOqFo=;
        b=BVcNVxJheKkwRblgrKNih8dNYFbBYdTvPIrvFwvZ6mfuGlWvQ45HFH1ngBb7lruaY0
         d/RWN6BGF3/vcBCKSRg2h09xwHX3jrlHnJt3Sofv7eqKdpm5Wrb0xrbyxewBdp71eS72
         H5/aVMXTaP6w1dChragllVh2HuRmqD13Owq3Ks6bhpdQJh5AQ2A5fwUvTm+vRjP/fRgP
         EtrsWTz9Jc21CU0LPxZWSCy4aXuzWhc7UqnFFNRDJTXUYhk2w1MHqLYV4LuXw8xVFfZz
         a1/DOsNydMYBXJg4HjGYa/Hn31S9Mi1x5ynzZK2B/LXn8mZ09rsjLtZxPk1vrIB+cJ2+
         llEg==
X-Gm-Message-State: AOJu0YxMqysptIWoUeRSKNAmEiChRXIDwAfjYAJ6En6Q76XiIKXHAcqz
	U5N6bSgL6+JsIiD3I8OFjePz+sXBHUiCINbdq4Ysgg==
X-Google-Smtp-Source: AGHT+IGl3KL+2s+dmYMMSJu5+XMxTurRENZU4VmX6zHmymyLIA+9IDxMCbHBbSaAqr/Q/s2izbtmiLqSIM5T8l0q6DI=
X-Received: by 2002:a25:f606:0:b0:c6f:b843:c502 with SMTP id
 t6-20020a25f606000000b00c6fb843c502mr11502039ybd.25.1692724934702; Tue, 22
 Aug 2023 10:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230808083243.3113192-1-Sandor.yu@nxp.com> <20230808083243.3113192-3-Sandor.yu@nxp.com>
 <c485b64e-3c83-4616-b8d8-76c2c7d56b0e@linaro.org> <ZOS+IQgFZYxN503B@matsya>
In-Reply-To: <ZOS+IQgFZYxN503B@matsya>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 22 Aug 2023 20:22:03 +0300
Message-ID: <CAA8EJpokkjw_Q36YMh4p6NR+r4JGgM7_b+_QXtbmcPr6GzA=ug@mail.gmail.com>
Subject: Re: [PATCH v8 2/7] phy: Add HDMI configuration options
To: Vinod Koul <vkoul@kernel.org>
Cc: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, festevam@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_102219_684548_74F1886A 
X-CRM114-Status: GOOD (  11.04  )
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

On 22/08/2023 16:54, Vinod Koul wrote:
> On 17-08-23, 13:05, Dmitry Baryshkov wrote:
>> On 08/08/2023 11:32, Sandor Yu wrote:
>>> Allow HDMI PHYs to be configured through the generic
>>> functions through a custom structure added to the generic union.
>>>
>>> The parameters added here are based on HDMI PHY
>>> implementation practices.  The current set of parameters
>>> should cover the potential users.
>>>
>>> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
>>> ---
>>>    include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
>>>    include/linux/phy/phy.h      |  7 ++++++-
>>>    2 files changed, 30 insertions(+), 1 deletion(-)
>>>    create mode 100644 include/linux/phy/phy-hdmi.h
>>
>> I think this looks good now, thank you!
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Should this go thru drm or phy...?

I'd say, PHY, together with the other PHY patches. If you can merge
them into an immutable branch, then it can also be merged into
drm-misc (?) to provide the dependency between drm and phy parts.


--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
