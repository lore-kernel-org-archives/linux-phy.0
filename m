Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE7AC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jan 2022 10:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uztxoWjUdSNjHn+RQromm72PASuEBIim+9Bd41DKO1M=; b=4MNHnnPgZNjmge
	yL449ABFrCKXi0+6Ki5Y0SrhQan1ap5LRUFxwMsTqaV+DT+MSiwouNVffncw6pxgZgxbGGTc8OXfG
	SWTqUDCT0BjfrQ1YrgCiYiAcJF8z2dAZqR52Q6WjX2tpG4MAVbKdUzjm9TbCfjdlVxwX8S9L/uBUs
	/h1aU1axcaxm9vLlaDPaZqMW0vWJH2OtVplp9qnEbOiAC3PZbAp2SHdQ2UbNQbSvy0AxSynm9P1cm
	cXDxOp+3txzUc85yINcmcM8uAHI/WEY7BoidICZcvOhPtKM22QTH81aneE0biomN/65Ottbw2n+nh
	nldhiiC5DvSI4QrdIUlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA8Gh-004w7s-9e; Wed, 19 Jan 2022 10:32:43 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA8GO-004vyT-S8
 for linux-phy@lists.infradead.org; Wed, 19 Jan 2022 10:32:27 +0000
Received: by mail-lf1-x12b.google.com with SMTP id b14so7547014lff.3
 for <linux-phy@lists.infradead.org>; Wed, 19 Jan 2022 02:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sr17yjVIJ3L6nqEXDMpIqK2xXImflLFzz6ALbEm9u68=;
 b=Xp8s21ftcZ0WG13DDgbdH7NIUsuYX+ghvkD5zw1hiLod5qbV+yjC9/iw3BxedgypWz
 j185xcOoN7LD6uCNH62mSJRvMAjwIi7qcbYCznd6Wd0VuvmCQ/sizMwR5aWhMScNA/rl
 hmuEc+DbVv1NqMjk5IXcy/Hk3oFXKZ0haMWzOfivc06wvoxpEiX1vitoLqGmZuk04L2x
 HC73i8VxJwVCI/4Mkmi2NET/E8BffuYg/4Zged81GUTCUySqRPVe2agczTV87+sP+2pN
 pDJV7fJq03+xTsoQaVBtN6S+RGEn7oHeifzgS2DkyqcDDGnQ9aAHk1KN9hJBM2T+WaJf
 EdtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sr17yjVIJ3L6nqEXDMpIqK2xXImflLFzz6ALbEm9u68=;
 b=NJlNmhrnhbUzwACStdpXjWTLxGj71T/vmZG2vwFSNMNvhBYG5I3bCYpPpcO9feIqdT
 i/69nKMfrrGCdEgKuxrDxK8u+AvbZlVfGdl/LrNkngyvjPLVe3jo7JZFkoNT8ROY5pwX
 AWItcQIuyZRY1BsCOWUj+5OZqgzE42EmB3Adl2dnHBgnF1R8i+xw60lb+gir5VqGrOtt
 gierg/fCur6erfhw9VDTr6wd/eckWLyvsc3ROVo7qct+K8I27Wqvcf7YdcYnmNKVtTlM
 rpba1FHjcPfPG7LbolIoBNdH1u04pRKtA+Y42ZYxk7phGt6F2oEfgFcAXZjwRUkHy22P
 hStQ==
X-Gm-Message-State: AOAM531FYCSXc6W1PNmcLzhZdvjp/5GC8PP5mjTe8rsYTLOL2B1dgu2g
 M4qOzCvbsfQszOl1raizX/asX9G7P/0/p4/pOD7CcQ==
X-Google-Smtp-Source: ABdhPJz5t3UBuJxmMbI2E3pOLPGLQiV4ByMa0pgkUilXefnRDUK3bGbZ4bWfdB/wwOZVZ58x7DxfCbRQTc3tUAIioE8=
X-Received: by 2002:a2e:a26d:: with SMTP id k13mr10012578ljm.300.1642588342599; 
 Wed, 19 Jan 2022 02:32:22 -0800 (PST)
MIME-Version: 1.0
References: <20220119015038.2433585-1-robh@kernel.org>
In-Reply-To: <20220119015038.2433585-1-robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 19 Jan 2022 11:31:45 +0100
Message-ID: <CAPDyKFr5uT3H8NaAvPyGajo2R6DriYC92y=RdAk=G4PMC4MxYw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Improve phandle-array schemas
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Vinod Koul <vkoul@kernel.org>, 
 Georgi Djakov <djakov@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Marc Zyngier <maz@kernel.org>, 
 Joerg Roedel <joro@8bytes.org>, Lee Jones <lee.jones@linaro.org>, 
 Daniel Thompson <daniel.thompson@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Jakub Kicinski <kuba@kernel.org>, 
 Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, 
 Vladimir Oltean <olteanv@gmail.com>, Kalle Valo <kvalo@kernel.org>,
 Viresh Kumar <vireshk@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Kevin Hilman <khilman@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Mark Brown <broonie@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Sudeep Holla <sudeep.holla@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 linux-ide@vger.kernel.org, linux-crypto@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, dmaengine@vger.kernel.org, 
 linux-pm@vger.kernel.org, iommu@lists.linux-foundation.org, 
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org, 
 netdev@vger.kernel.org, linux-can@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-gpio@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org, 
 linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_023224_929683_0AEA9EEA 
X-CRM114-Status: GOOD (  17.73  )
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

On Wed, 19 Jan 2022 at 02:50, Rob Herring <robh@kernel.org> wrote:
>
> The 'phandle-array' type is a bit ambiguous. It can be either just an
> array of phandles or an array of phandles plus args. Many schemas for
> phandle-array properties aren't clear in the schema which case applies
> though the description usually describes it.
>
> The array of phandles case boils down to needing:
>
> items:
>   maxItems: 1
>
> The phandle plus args cases should typically take this form:
>
> items:
>   - items:
>       - description: A phandle
>       - description: 1st arg cell
>       - description: 2nd arg cell
>
> With this change, some examples need updating so that the bracketing of
> property values matches the schema.
>
> Cc: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Georgi Djakov <djakov@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Joerg Roedel <joro@8bytes.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Daniel Thompson <daniel.thompson@linaro.org>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Wolfgang Grandegger <wg@grandegger.com>
> Cc: Marc Kleine-Budde <mkl@pengutronix.de>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Vivien Didelot <vivien.didelot@gmail.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Vladimir Oltean <olteanv@gmail.com>
> Cc: Kalle Valo <kvalo@kernel.org>
> Cc: Viresh Kumar <vireshk@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Kevin Hilman <khilman@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Sebastian Reichel <sre@kernel.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: linux-ide@vger.kernel.org
> Cc: linux-crypto@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: dmaengine@vger.kernel.org
> Cc: linux-pm@vger.kernel.org
> Cc: iommu@lists.linux-foundation.org
> Cc: linux-leds@vger.kernel.org
> Cc: linux-media@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-can@vger.kernel.org
> Cc: linux-wireless@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-remoteproc@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> Cc: linux-usb@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

For CPUs and PM domains:

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
