Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D09D0C27C6E
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jun 2024 06:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDjicd/foQGd35ePsMV2Zbe2vymuw6HPddM5yrOPI0s=; b=qTThaoA/2qMm7o
	3sKDWwOiPyP3DJ2VPek70D9OMva0tVYdWeYaQ82/sk9wXKZb5G+fbZbLvdITNyA0ZeBr1spQixxmq
	xEemkLpDv4W1PtdNZYa0snCYeHyG5SkG8rB4Mki+9GdkFsBvqs0fok3wRmRJ8Pk76BQ+5FDHJU7Xa
	ndhQ+ef1QqKwaFhr+Lnfy9sSA8u5+zI2D6h0DBdY/iOmV58qmL0tfKBKMBRUX/IoqeOa+ryme4625
	jOK4xHnrQO9cQFQXr2QQvZ5ZeLVgN649eFMsrsK8s3CXilrfvGX3rW0tYaSTWRywTkdK9WD4VV938
	w0EAk2DluHvqAylBDkiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ5fx-00000009P5T-1qjM;
	Mon, 17 Jun 2024 06:17:09 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ5fu-00000009P3a-0qxc
	for linux-phy@lists.infradead.org;
	Mon, 17 Jun 2024 06:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1718605021;
	bh=VWekmmnDCFhOysdFb3773YHoJmKjjDsvt2a9l5bgUHY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GfAGMw0ZZyYgqYriV00BwwICn7jhFVRT6CHhpnH4I+e8+UPYY4HOVProJmitrWlP/
	 gvaiWffcIW5GhINlt8ak7bvajVyuQtSV2jSwfoR6yZMgUb6yvK/uAv7vIYBnoyfG6q
	 ztPXpSlfVZ3V7nK/dvgTBNXH8dLvoSsIachDF195ilXJBcearS5KM0x9M5kml1G5ig
	 jru3s+CyX6ay6UHHJcWuy4edp0BGYqU0ne0dbbCx24CKqbTwOEsQs6Iq7r7z+nQHVY
	 t9xNfWF5JZW+fQhWXc9++7/bySgA+gZ5lwKJR6YKe8hJf80Kt5KhP1Du4uZVzcODQ2
	 hnir8Ah0LGnLg==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id 80FB9AC4
	for <linux-phy@lists.infradead.org>; Mon, 17 Jun 2024 15:17:01 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=TnkVAI1m;
	dkim-atps=neutral
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id EB77DA87
	for <linux-phy@lists.infradead.org>; Mon, 17 Jun 2024 15:16:57 +0900 (JST)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-1f6810e43e0so30239945ad.0
        for <linux-phy@lists.infradead.org>; Sun, 16 Jun 2024 23:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1718605017; x=1719209817; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=60zeZXWHXHBwDs11QTLBG22SVSiDpOOF7b1DAQhvIYU=;
        b=TnkVAI1mXZvaVpi/YscDpER29rz66TBA/7J7x1YJ4/W2OBhp4MNnoWIqOjiuoqirPn
         eiBlABBEEhexJEegXyIpUAo/pHi/Rf8g0NUNRBjOBIDDOAXaUm/NcUOL2xMW7rj5IG7J
         myKWynbZRO0pQEWFHGt/fzCCMiWB1E5Hep4BbrZfmIEaP5w1pKLySxUp1KuTWlmu8V3R
         9mQodu1sBiXmNjSspvNP6ht/GwMSCD+Sa6aAyI0Gqbhrdn1o70qUxDC1FUkDvQv5WBuV
         tzjF/MKLKccg5jfr0xD0ytznFdByi1h8r8ZYpwJeORWihr5VXkN+uCmVpFxMHsabaFNX
         t7YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718605017; x=1719209817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=60zeZXWHXHBwDs11QTLBG22SVSiDpOOF7b1DAQhvIYU=;
        b=pTlRUaxuZ/qVcyGG/Hqf7s7YoJ/NXXXAZMUEioMZHBJ7p/BhntiPDj05cZy1kMSMMn
         MXWUzAMim22kQJkIfNUhpnU9A22ChGKZ5XlgsxtX5vY+e75w6jyVi7Qbrv5Y7c3NVCZP
         rmgHfPRqn+4YkB7UZJWY/L78tSwMIWyd6R6QiWMPW9v/++1IcwVkdQp9Oj7EnoUicdi6
         lDx92G+MXW2xSS9tdrPSm1XKNAVaKaLB5gKVl2c2MvWwJ1mQ75RnBcP5N07a+wIIEZZr
         SQgiUMNo+fOsdVKj3UEKUlqSkH6M+KrfdWvFlvH0B7Hd+pULqi6YwED1+Q7xt+99IjFV
         aZ0g==
X-Forwarded-Encrypted: i=1; AJvYcCV5zbUKOAqoMssy5ZIIOuIJOd4qYeDiWghS1qL7SM+tC/WoSoz4KIekm1o+7tkIfXYkeKRZPEoG1IE8Pr0UqbBQEXnNc8fe+lzJU5+DsA==
X-Gm-Message-State: AOJu0YxBmcyYKfAIp5eByC/KaRXvrxg9Flb8uRNt62UAQtqCYgcs5W2j
	9TdeNw9PxRIC/Ubp2prwNaiizC/7r1V4UEun6+hI5pFifyxvPmWu3GVaGML+ztcmrSBvx219Uge
	qGnSpin6JvRzsYlD99HDiDxUKRBi01Ud1cXJJmGhIrwDe4tPDRMP+bRa9Q0LmqFqb
X-Received: by 2002:a17:903:230c:b0:1f6:f318:71d7 with SMTP id d9443c01a7336-1f84e2ecf4amr202295595ad.19.1718605016624;
        Sun, 16 Jun 2024 23:16:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGupfMdS0WD6NixTdYr6ZfcWEtMhu5SpstN18VssrHrcsQGhmU5k6sNEo7ckq0TCT9O5Tg9zA==
X-Received: by 2002:a17:903:230c:b0:1f6:f318:71d7 with SMTP id d9443c01a7336-1f84e2ecf4amr202295225ad.19.1718605016152;
        Sun, 16 Jun 2024 23:16:56 -0700 (PDT)
Received: from pc-0182.atmarktech (35.112.198.104.bc.googleusercontent.com. [104.198.112.35])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855f1b146sm73170955ad.244.2024.06.16.23.16.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Jun 2024 23:16:55 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1sJ5fi-009Sm5-23;
	Mon, 17 Jun 2024 15:16:54 +0900
Date: Mon, 17 Jun 2024 15:16:44 +0900
From: Dominique MARTINET <dominique.martinet@atmark-techno.com>
To: Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: drm/bridge/imx8mp-hdmi-tx: Allow inexact pixel clock frequencies
 (Was: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for
 i.MX8MP DWC HDMI)
Message-ID: <Zm_UzO4Jmm7Aykcm@atmark-techno.com>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-11-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240203165307.7806-11-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_231706_389385_CBB57038 
X-CRM114-Status: GOOD (  24.13  )
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

Adam Ford wrote on Sat, Feb 03, 2024 at 10:52:50AM -0600:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Add a simple wrapper driver for the DWC HDMI bridge driver that
> implements the few bits that are necessary to abstract the i.MX8MP
> SoC integration.

Hi Lucas, Adam,
(trimmed ccs a bit)

First, thank you for the effort of upstreaming all of this!! It's really
appreciated, and with display working I'll really be wanting to upstream
our DTS as well as soon as I have time (which is going to be a while,
but better late than never ?)

Until then, it's been a few months but I've got a question on this bit:

> diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
> new file mode 100644
> index 000000000000..89fc432ac611
> --- /dev/null
> +++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
> +static enum drm_mode_status
> +imx8mp_hdmi_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
> +		       const struct drm_display_info *info,
> +		       const struct drm_display_mode *mode)
> +{
> +	struct imx8mp_hdmi *hdmi = (struct imx8mp_hdmi *)data;
> +
> +	if (mode->clock < 13500)
> +		return MODE_CLOCK_LOW;
> +
> +	if (mode->clock > 297000)
> +		return MODE_CLOCK_HIGH;
> +
> +	if (clk_round_rate(hdmi->pixclk, mode->clock * 1000) !=
> +	    mode->clock * 1000)
> +		return MODE_CLOCK_RANGE;

Do you know why such a check is here?

When plugging in a screen with no frequency identically supported in its
EDID this check causes the screen to stay black, and we've been telling
customers to override the EDID but it's a huge pain.

Commit 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY") already
"fixed" the samsung hdmi phy driver to return the next frequency if an
exact match hasn't been found (NXP tree's match frequencies exactly, but
this gets the first clock with pixclk <= rate), so if this check is also
relaxed our displays would work out of the box.

I also don't see any other bridge doing this kind of check.
drivers/gpu/drm/bridge/imx/imx93-mipi-dsi.c has a similar check with a
0.5% leeway, and all the other drivers don't check anything.
If you want to add some level of safety, I think we could make this work
with a 5% margin easily... Printing a warning in dmesg could work if
you're worried about artifacts, but litteraly anything is better than a
black screen with no error message in my opinion.


In practice the screen I'm looking at has an EDID which only supports
51.2MHz and the closest frequency supported by the Samsung HDMI phy is
50.4MHz, so that's a ~1.5% difference and it'd be great if it could work
out of the box.

For reference, the output of edid-decode is as follow:
---
edid-decode /sys/devices/platform/display-subsystem/drm/car
d1/card1-HDMI-A-1/edid
edid-decode (hex):

00 ff ff ff ff ff ff 00 3a 49 03 00 01 00 00 00
20 1e 01 03 80 10 09 00 0a 00 00 00 00 00 00 00
00 00 00 00 00 00 01 01 01 01 01 01 01 01 01 01
01 01 01 01 01 01 00 14 00 40 41 58 23 20 a0 20
c8 00 9a 56 00 00 00 18 00 00 00 10 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 9a

----------------

Block 0, Base EDID:
  EDID Structure Version & Revision: 1.3
  Vendor & Product Identification:
    Manufacturer: NRI
    Model: 3
    Serial Number: 1
    Made in: week 32 of 2020
  Basic Display Parameters & Features:
    Digital display
    Maximum image size: 16 cm x 9 cm
    Gamma: 1.00
    RGB color display
    First detailed timing is the preferred timing
  Color Characteristics:
    Red  : 0.0000, 0.0000
    Green: 0.0000, 0.0000
    Blue : 0.0000, 0.0000
    White: 0.0000, 0.0000
  Established Timings I & II: none
  Standard Timings: none
  Detailed Timing Descriptors:
    DTD 1:  1024x600    59.993 Hz 128:75   38.095 kHz  51.200 MHz (154 mm x 86 m
m)
                 Hfront  160 Hsync  32 Hback 128 Hpol N
                 Vfront   12 Vsync   8 Vback  15 Vpol N
    Dummy Descriptor:
    Dummy Descriptor:
    Dummy Descriptor:
Checksum: 0x9a
---


Thanks,
-- 
Dominique Martinet



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
