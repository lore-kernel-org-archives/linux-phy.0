Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F54CC49EA5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:46:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B55761220
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:46:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2B55761220
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9abZO5NNenKTFKHRPJ8M/9Jn0Ti+SedBPS7kHWYhhM=; b=xaKhX6VxHWdlXl
	ti21RsnNNIOn+JtoJVeznpYeHLf+i71g352ZXWspscVwE4BhjUlbuZQWk2smmHyNj7vmQKcZll1PS
	GcELXYUcxwbcrwZ052G4uijTaPzqtDDaaBb7mUKBYyQbVu7J6P9EUmIvGtqCh3HJ0MCwaC02xqX7u
	BcsoG7H6nPGYOnw7UTxyVU6toCGorJ2hwDpK2wwuAYUiZjkTgjtHQco2kLswxWzfP/FOdDTzupmsf
	9aBq6pNSbVRz8Rq3ax12z4jAFP2dAIMV/9rC7tJnt/BR+6CIDoCGotyCJ4bMWmp5MMQuAlmV+zMpE
	sHELJFT50ywFEkMp2CBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwOkU-00Efac-M8; Thu, 24 Jun 2021 12:46:26 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwOkR-00EfZM-MM; Thu, 24 Jun 2021 12:46:25 +0000
Received: by mail-lf1-x135.google.com with SMTP id j4so10039622lfc.8;
 Thu, 24 Jun 2021 05:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rTH8vR4RixbXkriAwojNaOEycEezf1HsxVW3e2HYh0I=;
 b=m6xiTmK+5YqywiWU2SER1AgOl/l82/y/T4MGDg0zdo5hkygLuOcecQwPHTaN78mPcc
 Buc8c1nAfwLyqw7sQxd9FMd6whPlM1zabBySHWaTiSQpHXDT8meOhc69vK7n0IrO8T76
 wh6wbVUwDx6v5WkJZsw2V5f8TpjAFxdSiELGAMzKMr2wDtt/jIPxT6jbSZO7bZn8c+mw
 Gq0dDod9ydm7j3hmuTbId1ywAQIbzYr0N+ZKy2CBe3UzblKKiq0e12gJtEApxR+ojbJ/
 pTEb6vxJGW84DsuP5q7K40hxtfRF4BM1Cl5T3kCAHmJ01xM+Hz5Gu0Fx1tT4XVdPSb74
 erVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rTH8vR4RixbXkriAwojNaOEycEezf1HsxVW3e2HYh0I=;
 b=RBKv13K+jdIeQly1NNhNRX8eOMWJsGApSNHQcZGZzDsW2M+52bQOS8H75i/hmL4vvc
 ho43VA8NQFeRrD2ht86k7k+Ct3+nR0YhOlvtJ2qLV77uqVO9YPWormwUftflBKHktY4/
 /A1tcdUwypFhHNMlZTsYTT9+NSdr2Fh2ohNWrmkW1NMxMn3ya+LVwXz31A8v134pU3wy
 I5HUtrG6BqhEStqbM2N+9NPnxJlg/HS4uanYjkYWsq3q/Wn8SAwWxd8DFLIwVjrVnISN
 REsSLag3VVqWIyUtJ7nn3WmSI848FSkOBza2AXvVX6vU7mJu9S/1L8gGieejQEfays3p
 bbrQ==
X-Gm-Message-State: AOAM533OyGXKIQ6NXQ3sPIUdaO/NULQy6F5HglbMi/9OiVcB7oaT4TFB
 h7JfaV/PlUXe0HuGxvyVxNpIjr1Q2kEX26PoN6w=
X-Google-Smtp-Source: ABdhPJyT8BsP7EuS9DD/tQXewK7uBCyS9K2u42ed17KyvX5CdnnqwRSlHjBz+bCRnG+XthX/bMhDCntdoUBccksmKi0=
X-Received: by 2002:a19:6d06:: with SMTP id i6mr3624988lfc.223.1624538782003; 
 Thu, 24 Jun 2021 05:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
 <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
 <CAMty3ZA=1xreRB+SZOwj6khH6+nLsE_ND5599xfV8J=LzGFYYQ@mail.gmail.com>
In-Reply-To: <CAMty3ZA=1xreRB+SZOwj6khH6+nLsE_ND5599xfV8J=LzGFYYQ@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 24 Jun 2021 09:46:10 -0300
Message-ID: <CAOMZO5C4n0nnD0y_Ouoo70C4dN+BKg_D8iEO_wgN4_fDx0E2DA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Jagan Teki <jagan@amarulasolutions.com>, Inki Dae <inki.dae@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_054623_793779_81A3101F 
X-CRM114-Status: GOOD (  18.91  )
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

Hi Jagan,

On Thu, Jun 24, 2021 at 9:32 AM Jagan Teki <jagan@amarulasolutions.com> wrote:

> > I had a brief look at the exynos driver, and I think it should be turned
> > into a DRM bridge as part of this rework to be used with the i.MX8MM.
> >
> > Is there someone from Samsung who could assist, at least to test the
> > changes ?
>
> I have hardware to verify it on i.MX8MM but from exynos I don't have
> any contact from Samsung to suggest or test. Maybe I can add Tomasz
> Figa while sending the changes?

Adding Inki Dae and Marek Szyprowski from Samsung who helped to review
Michael's series.

> I understand that there are 2 key implementations.
>
> 1. Adjust the exynos_drm_dsi.c by dropping component_ops as i.MX8MM
> flow with LCDIF doesn't have component_ops (make sure it works with
> exynos platform first)
> 2. Sec DSIM Bridge driver common cross Exynos and i.MX8MM platform
> drivers or only one Sec DSIM bridge driver to handle both the
> platforms by differentiating compatible and driver data
>
> Any more suggestions would be appreciated?
>
> Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
