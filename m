Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA301C2B9F4
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 13:59:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BC5A61374
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 13:59:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BC5A61374
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIHawfqA1v4I0VX4U6XN9mxAW5+fYi4G9uNTdQdJabc=; b=sq0GGn3ba3svNI
	qmYc49V+sqgaEjAzRZX1dRi3IHFXKJiFsIjsYZYK8FDpIIjoiuT018tJPnU1EgEqsrvr2SS1pTrVS
	0Oyo6nQObhc8fBOESUaDA94iHDdAa1Aqr+ecm6DvX4w1TXYAUfhi2adSbDpfH07HHGQmPCy8d7huU
	rcVN1hfJ9gcM2VYIhI3wVW5RNscB9X60ZgoSdp5ZWMbQWqUq0nAjBzEkrwHLXJPQhAWnm+Oxq4pta
	/2DLafAIyriF5KK37JCwT2bqETjKNoVsHr0qk1s/XNCsVSifwmN1Lwxwfcg2SUzpJz5zSSeLdJTAa
	WF/ro6bhlvajJihMARpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvgwV-007P54-Sv; Tue, 22 Jun 2021 13:59:55 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvgwS-007P2R-78
 for linux-phy@lists.infradead.org; Tue, 22 Jun 2021 13:59:54 +0000
Received: by mail-ed1-x52d.google.com with SMTP id c7so22870899edn.6
 for <linux-phy@lists.infradead.org>; Tue, 22 Jun 2021 06:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TvpjBACzoV42mn66zZsleALOXDYyAjKfVllzcHMcfwM=;
 b=Wp1TqiybqZXzu69uHeEPGREFTO4HIBfR+ESJKgc0unJBPRzOBSE7xOgXcg8pCqdhI0
 l8CHinSE9Y/aEqHbLuiB6OSStiCxRY0Hn+tzuJawj+ViDwS02PWNcI/dvUNECQlf4i1J
 HSvmL13FTBydydk0Gb5/zUkalgf6J0ziuYZCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TvpjBACzoV42mn66zZsleALOXDYyAjKfVllzcHMcfwM=;
 b=BQYVTTwHhjKu62wge0r/G132fUzPeJma2LP+aJGQ4fdzSwK2EseoUL6g07H6zT3zeV
 grhIyJXhRxGA7OpTsQ8OYsLm5nsm5n0EDxVcEv7vf8RGMEz3bm8lOZeHizAMA8OuzNLP
 1rZB6aJwoQNk4XvRDxlLrTwwLjduqyp9Ib1FTgjyLRaNEkk7L7B7466GwRg430uJNXGC
 ZfZvDT9WEHddTQbLFByiNIf9eO5HRHtK0a5DoIMvKvvJvk+u0DycdedFkrK+NqbNHWGg
 wp5vhEPAtgUW04CAq4eKmSnMkVazleb/fbjWqNShObaU8DY7EiKcMGSquqtQ4RNrR9xG
 d0qg==
X-Gm-Message-State: AOAM530GJmg0Dc+cc6gCNl9bgJc5zE32l9QAPBJKR5KmaTrcrhaqMTrk
 DcTmM/nE0EHI/Ob2K5+Knxq75L9ajKNQiItBQp1sKw==
X-Google-Smtp-Source: ABdhPJw/q9PxAXyZv2WBeIUBgEA/9dXP9RWMWTh4uf9ndcmWUOV/Ki10fp+3NvT1lHWph76Diq/QxzKIiaoVikN66Oo=
X-Received: by 2002:aa7:c644:: with SMTP id z4mr172031edr.204.1624370390201;
 Tue, 22 Jun 2021 06:59:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-8-jagan@amarulasolutions.com>
 <CAHCN7x+RKuOwBEFC5ySHJuFiC26ZdYuv620+5FiTfrh-3y2-Lg@mail.gmail.com>
In-Reply-To: <CAHCN7x+RKuOwBEFC5ySHJuFiC26ZdYuv620+5FiTfrh-3y2-Lg@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 22 Jun 2021 19:29:39 +0530
Message-ID: <CAMty3ZCR7A76UfN98ffawET20D+nN5=EMmzosXu1G2vaNtBdfw@mail.gmail.com>
Subject: Re: [RFC PATCH 7/9] arm64: dts: imx8mm: Add eLCDIF node support
To: Adam Ford <aford173@gmail.com>
Cc: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>, 
 Fancy Fang <chen.fang@nxp.com>, devicetree <devicetree@vger.kernel.org>, 
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, 
 Milco Pratesi <milco.pratesi@engicam.com>,
 Anthony Brandon <anthony@amarulasolutions.com>, 
 linux-phy@lists.infradead.org, 
 linux-amarula <linux-amarula@amarulasolutions.com>, 
 arm-soc <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_065952_709261_7D8FC1D8 
X-CRM114-Status: GOOD (  19.30  )
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

On Tue, Jun 22, 2021 at 8:39 AM Adam Ford <aford173@gmail.com> wrote:
>
> On Mon, Jun 21, 2021 at 2:25 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Add eLCDIF controller node for i.MX8MM.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index fe5485ee9419..5f68182ed3a6 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -1030,6 +1030,25 @@ aips4: bus@32c00000 {
> >                         #size-cells = <1>;
> >                         ranges = <0x32c00000 0x32c00000 0x400000>;
> >
> > +                       lcdif: lcdif@32e00000 {
> > +                               compatible = "fsl,imx8mm-lcdif", "fsl,imx6sx-lcdif";
>
> Based on a comment I read from Marek [1] from this patch series for
> the driver, I think fallback compatible should be fsl,imx28-lcdif.
>
> "The iMX8MM and iMX8MN do not support the overlay plane, so they are MXSFB V4"
>
> [1] - https://patchwork.kernel.org/project/dri-devel/patch/20210620224834.189411-1-marex@denx.de/

Yes, I saw that, look like some conversation is going on that thread.
will update accordingly in next version.

Jagan.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
