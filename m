Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29B14C49EA7
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:12:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB930613DA
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 12:12:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB930613DA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFVbvGoAXIYGO5TdSCHOddq7TIV8O3stbnvpsaf3exs=; b=FOFm7wL4P/DfW0
	rcChU6vE4UnHU63s7HSEcUFaRzDFxa3/Vkd938ovXfLEcOCOJsz5Q6XnQgkRhaaQvSGcyj73Owubm
	eBFlYIQiHY+S1O12Phq7kq0iyh2RHzWqzICIWucxet2ZVmPPoX2e254D+5pV1KspJ1RihT1ObTBlX
	UeGTwaZnGZ3Tk1XSZ/93ZBlZaHfROxoU/u4IvKCmoSaARLhcadO1JYdomULG+nskyfkb3OuDqv7RY
	peMnAtfrGKMqjvTJuxFL3OOoC+URELpqqJ+vYcOA8koSqeb0oN7XSq43p9pj3cWaceeKwbeUX4wMO
	BNJ9igMuJTJPTUlUhPbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwOE6-00EX6Y-D2; Thu, 24 Jun 2021 12:12:58 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwOE4-00EX4R-0z
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 12:12:57 +0000
Received: by mail-ed1-x532.google.com with SMTP id s6so8148149edu.10
 for <linux-phy@lists.infradead.org>; Thu, 24 Jun 2021 05:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=00qJhUhsSLmie5on9fHVkXswl7GglVNf9S3IawNPKpM=;
 b=LFHTlf5beKsNbpsxpkkS7V5dXdKTpBIrVD4foDj+FdxKHL3klGfzF2ZNY8wPxslgv2
 b+q18nUxWppzyqAbC8zxa3HkuEqel6xx0h3CW75ZhmePnPERpOv3A/UK68F8D6pXZ7IN
 hhPXxXVWdAgEp3q7sAt2VrAtY/D3bz2rC8umk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=00qJhUhsSLmie5on9fHVkXswl7GglVNf9S3IawNPKpM=;
 b=Lfu1M4Fomkrkbia8z/swUnPqjO5LmITk+yZMTnOesjq75uh5JXtkwPOfxTnU7TXpF1
 4mOePEb8B8mtJ8YyLWcivBkAxs2wOL9N737oEOuAJRrNizZhSZ7q7DviDNbOJcV9RIiu
 dTvif6hNXu7nqlsNGB4f14/X7e05w3IClNKHReFULsf2qfa6Qei0504gtF4jQGYIYkSL
 ZyrPGZe9JswlHdcVuNI+SgRV1CRcF1B6yE6XmQ6O6bHNHreYXhY942VxrCbh1gc0YeBq
 t35mkkmpjhrqfqFT+8UK5gtCr/crY7Gl1Tzbc933HpJMtdXSUy1QxNwihH26+tjBogXY
 x5Ew==
X-Gm-Message-State: AOAM531I+RKbayC5ccijM+dB28+b6Fnx2f2i+WiiBtrg1YvMLmAPsLd5
 0nlg+84RvpMC4KTfcXLAsAfsxbC2fOtWhMW7B0WwhA==
X-Google-Smtp-Source: ABdhPJwH6wzxQh/EgARmUBUCU45D6SQC4arfqhFGQNZ2Zi25gX0SJv2dx4JOvDj7503wKBJOz/+Q/kaHBNGL0ZXDpfI=
X-Received: by 2002:a05:6402:1d55:: with SMTP id
 dz21mr6499192edb.338.1624536774634; 
 Thu, 24 Jun 2021 05:12:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
In-Reply-To: <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 24 Jun 2021 17:42:43 +0530
Message-ID: <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To: Fabio Estevam <festevam@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, 
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Tomasz Figa <t.figa@samsung.com>, 
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
X-CRM114-CacheID: sfid-20210624_051256_092800_E450AF53 
X-CRM114-Status: GOOD (  12.19  )
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

Hi Fabio,

On Thu, Jun 24, 2021 at 8:18 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Jagan/Laurent,
>
> On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
>
> > Looking at the register set, it seems to match the Exynos 5433,
> > supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> > that driver instead of adding a new one for the same IP core ?
>
> Yes. there was an attempt from Michael in this direction:
> https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/

Thanks for the reference, I will check it out and see I can send any
updated versions wrt my i.MX8MM platform.

Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
