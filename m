Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BD4EC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 14:44:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA4EF610D1
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 14:44:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DA4EF610D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNUb2fLqYM7L4PUpuOZRBXmHTXGWkohDt5CqDAEuy1I=; b=Iw3h1/+OwrqF+J
	gmDVDFm7pSnvWDgPeZIwlb5hsNOdnzij+Lqz7TzqVJjRfKMdGv2dOmEPuqvBfczTVtb1w1Vghyq4J
	OyYQOe3dIybtS2xXLF3V9c1Ir8jcvbf1uTvWjLPBgkMz8rGXBM+Fb6qRAzP0y0tF5fzj37qYBJhCc
	aytXJFDPBAGnzP9qZQjDBVuccVO0GMvbfBod5bC246SfhTyQBFP5zhK5ao0eE88zrKttLaVZlJE/w
	lrTHVdPSFdDINCC8QKAj0u+SiwAA8vDcVCIYiue+IspWpvVVjieKeR7Q/VGrXtf0fowyn6kVk3zeS
	nRJJtdfqXavoT+sH/ABg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTPxP-00BtEw-BZ; Thu, 23 Sep 2021 14:44:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTPx3-00Bt62-Te; Thu, 23 Sep 2021 14:43:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E3064611C6;
 Thu, 23 Sep 2021 14:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632408232;
 bh=oURGTTytXYO9QjY9AXVDK9+v2UgnhEYRmFXbtjUBCPY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IqJelMFvIdSrGeKWQEpseMJZyvfKvG8nhw0D67Pqr1T4dx3e8s5XBVjhu4z7CLyz1
 ISVa5lYUFRW6rpV/HmgulkJRWuu8gkPZkPIObCCXJzdiuYuw62fCgc+iFiG2UthVN4
 7lUdcY/SdUHaSd/k0YwH4grVtLKXnD8T5aqd5zQcM4hLhicFTEQmZuRzU3bfnhKp5F
 /cZjOxYEdhZu2RUH+MhvSWqemoPe1Rdq0O2RdXFY0tLQuohjPohJojWR1RaVBu66Vs
 afbJuJuRmlUB7Gq8fNL5i6ROtK0kJyd211BEvbCSpJBgDxc0dl8QnMn66k8J+1WKEy
 +hMT3iB8PxDhA==
Received: by mail-ed1-f54.google.com with SMTP id v10so19947622edj.10;
 Thu, 23 Sep 2021 07:43:52 -0700 (PDT)
X-Gm-Message-State: AOAM530RYxceP66JibEMaEiOcCfpaGJRkj1ArfTkcR3wzerY4rGXxJAg
 ruqRnH1N55reaOaJfwWFRsolddeK4Q6r0TYGiA==
X-Google-Smtp-Source: ABdhPJyeC+hTvMr/QmcLda9a4Xl1Ej0dWEJuusrQlBBef8Ak7tpatznMOhMs/se7nVqhINdPZeyF7Lamk7xM0n5f+zY=
X-Received: by 2002:a05:6402:b23:: with SMTP id
 bo3mr6082099edb.145.1632408230595; 
 Thu, 23 Sep 2021 07:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <1631845863-24249-1-git-send-email-hongxing.zhu@nxp.com>
 <1631845863-24249-2-git-send-email-hongxing.zhu@nxp.com>
 <YUuDMjBGWfNsMf2n@robh.at.kernel.org>
 <AS8PR04MB86766122EB2D851844FC7D7C8CA39@AS8PR04MB8676.eurprd04.prod.outlook.com>
In-Reply-To: <AS8PR04MB86766122EB2D851844FC7D7C8CA39@AS8PR04MB8676.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 23 Sep 2021 09:43:38 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJJhSB1ZYUU_nB+U+1yr0kbWQLeO1CUs5PCQ85MEOb=Og@mail.gmail.com>
Message-ID: <CAL_JsqJJhSB1ZYUU_nB+U+1yr0kbWQLeO1CUs5PCQ85MEOb=Og@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for the
 pad modes of imx8 pcie phy
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "galak@kernel.crashing.org" <galak@kernel.crashing.org>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_074354_061415_B7C83967 
X-CRM114-Status: GOOD (  20.95  )
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

On Thu, Sep 23, 2021 at 12:56 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
>
> > -----Original Message-----
> > From: Rob Herring <robh@kernel.org>
> > Sent: Thursday, September 23, 2021 3:26 AM
> > To: Richard Zhu <hongxing.zhu@nxp.com>
> > Cc: l.stach@pengutronix.de; kishon@ti.com; vkoul@kernel.org;
> > galak@kernel.crashing.org; shawnguo@kernel.org;
> > linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
> > linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> > kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for the
> > pad modes of imx8 pcie phy
> >
> > On Fri, Sep 17, 2021 at 10:31:00AM +0800, Richard Zhu wrote:
> > > Add binding for reference clock PAD modes of the i.MX8 PCIe PHY.
> > >
> > > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > > ---
> > >  include/dt-bindings/phy/phy-imx8-pcie.h | 14 ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > >  create mode 100644 include/dt-bindings/phy/phy-imx8-pcie.h
> > >
> > > diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h
> > b/include/dt-bindings/phy/phy-imx8-pcie.h
> > > new file mode 100644
> > > index 000000000000..fe198a0cc12c
> > > --- /dev/null
> > > +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> > > @@ -0,0 +1,14 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> >
> > Perhaps this should match the dts files license...
> >
> Hi Rob:
> What's the means of the "dts files license"?

You include this into .dts files and those are dual licensed. The
licenses should match (or be compatible).

> I'm not clear understand that.
> I found that there are almost similar "/* SPDX-License-Identifier: GPL-2.0 */" license contained in the files of the /include/dt-bindings/phy folder.

Yes, licenses are a mess. But what other files in
include/dt-bindings/phy have don't matter. Where you use this file is
what matters.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
