Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D32BC6FA99
	for <linux-phy@archiver.kernel.org>; Fri, 10 Mar 2023 10:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXmw4Kp70lc0Vczyfi0W9p70of4Ph68blf53IlxYZ4Q=; b=D6b6VVn6PjSZrQ
	cl6ZlmytEvZbPhtBHFIyAnZ6ukWggvn73cfNUdeQIsCQpjD5WasdOmfl0zHJtSZ2jlYEEMLt2QVpW
	8syUv7itSgD74DGov8ZZ23y5LP+W2V9+z+F9y4+9UFwikPQ2eq2CoOYCiJpsezpV6rSIVe+ToEFtY
	GP+Oyk1xoXieyDSGixbJup2hHXBZbrgTn5e5IC4y7U8YecwCifeXH2jI4XRrduZ1JQ4fReqvP9sOK
	hjeptpIzyVveUb6Uq9C4GJl22QVHhxxL15/9HLY10tFV0WjK0r6kKH3okis+y5WWymC0mfMA9Pt71
	I137PhMWED6EKOYFKFbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paa4I-00EC0v-FN
	for linux-phy@archiver.kernel.org; Fri, 10 Mar 2023 10:33:46 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paa4D-00EByt-1l; Fri, 10 Mar 2023 10:33:45 +0000
Received: by mail-pg1-x529.google.com with SMTP id s17so2777244pgv.4;
        Fri, 10 Mar 2023 02:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678444420;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YrNzsS4yDEQMUDPv9ek+bekWTDdRMD0SzIqqeBsqXfs=;
        b=j7yDOF4vjuMwEC50NwSCaNecKzZ2/3xLGtDe67+v5aE7gFEJV+8w+NQx8s0kvgTst5
         +naqkoEiK0kI7PmpwOb5Z39aKZNATOodTn+e4rIODobgKz7qibnXmEGO/zSzsEwxaEJJ
         Nya/2AXZC+NK7iLeBBktVHDwyoQAIODH98bn6kKcHWhTGloTdt3wjzwXQoip9pUe+SAx
         S1gDd/X+962d6qPwwzxeYCGWzsx5BicoCCYEy0jICNUfQuZ41zQly40a/C1JQkQ+f45C
         AAtJkeim9GRcRkFMG0hHD0Dvbfnm8eHHdMcarpnh5n/nKRsDyvu3YQLBU9/HVR3/9ruY
         ZBQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678444420;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrNzsS4yDEQMUDPv9ek+bekWTDdRMD0SzIqqeBsqXfs=;
        b=6YH32yoSN5Kk16tEcRbA1V6Aw7olq8Lxz6k5dgIJuI+n4fWIkbisx4PbSBWAQdgjE/
         UaSa/ty+xUMvJDnDwqrENStPeuS8rjvqmoJ7hgE0LLcOZOYb4Gg9XjuwDZ/KlB2+aMp8
         FQdaaYEaV1k7vasoai3jFTEzWAC55mgW7PzYCz2z+CaGMp1caCTSp+T63T+qgLsFQ/1E
         H6Pmu+v4kbHjMjS9dv8I8hJkgLb5xFQQMmRsYmqixZIFCNWR+ZWyvfXN2gM44Idm4Cqx
         rdRc2qr3y5FZVeNKWnqNa+kP/zXFXdxAof7t2uTIMoPHruuGYdIz+5Oe/bbhqbmz2xmU
         uWeg==
X-Gm-Message-State: AO0yUKWmrcDzsnPFxsGJc3mL8olqH7iQKoMZDbksLW85uQt7rtg0zVK7
	j+5PmgUg1bNYQOlLaEv75rIXvfrodtHJat/2YHs=
X-Google-Smtp-Source: AK7set8WnxbFY5oTrVIKnhdrvft3bVtLVrqnp8sLn5OeESTjitANPmUjpUeCrnOQfk59jWma/T/rN7BdO7v9GpO4T8o=
X-Received: by 2002:a62:828e:0:b0:593:da6f:fb1c with SMTP id
 w136-20020a62828e000000b00593da6ffb1cmr10533664pfd.4.1678444419668; Fri, 10
 Mar 2023 02:33:39 -0800 (PST)
MIME-Version: 1.0
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com> <CAOiHx=mcANqHTk9=b0TGHa2rk9nppnKa2EB1v05uHb5jhzoawA@mail.gmail.com>
 <49b24502-1b21-f05b-ef4a-18d5aa375f8d@seco.com>
In-Reply-To: <49b24502-1b21-f05b-ef4a-18d5aa375f8d@seco.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Fri, 10 Mar 2023 11:33:28 +0100
Message-ID: <CAOiHx=k8f6irVChBOtSoUJZiW6VS3sdg_KWhTo+C+ZWoGmmfdQ@mail.gmail.com>
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
	Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org, 
	devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, 
	Rob Herring <robh+dt@kernel.org>, Camelia Alexandra Groza <camelia.groza@nxp.com>, 
	linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_023341_116870_35C6D6D1 
X-CRM114-Status: GOOD (  22.28  )
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

On Mon, 6 Mar 2023 at 22:27, Sean Anderson <sean.anderson@seco.com> wrote:
>
> On 3/6/23 15:51, Jonas Gorski wrote:
> > Hi,
> >
> > On Mon, 6 Mar 2023 at 20:16, Sean Anderson <sean.anderson@seco.com> wrote:
> >>
> >> This is a generic binding for simple MMIO GPIO controllers. Although we
> >> have a single driver for these controllers, they were previously spread
> >> over several files. Consolidate them. The register descriptions are
> >> adapted from the comments in the source. There is no set order for the
> >> registers, so I have not specified one.
> >>
> >> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> >> ---
> >>
> >> Changes in v10:
> >> - New
> >>
> >>  .../bindings/gpio/brcm,bcm6345-gpio.yaml      |  16 +--
> >>  .../devicetree/bindings/gpio/gpio-mmio.yaml   | 136 ++++++++++++++++++
> >>  .../bindings/gpio/ni,169445-nand-gpio.txt     |  38 -----
> >>  .../devicetree/bindings/gpio/wd,mbl-gpio.txt  |  38 -----
> >>  4 files changed, 137 insertions(+), 91 deletions(-)
> >>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> >>  delete mode 100644 Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
> >>  delete mode 100644 Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
> >>
> >> diff --git a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
> >> index 4d69f79df859..e11f4af49c52 100644
> >> --- a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
> >> +++ b/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
> >
> > You are (re-)moving the compatible this file is named after, you might
> > want to rename the file as well then. Going by age bcm6358 would be
> > the next oldest one (bcm6318 would be the newest, despite the lowest
> > number).
>
> I can do that. Would it be fine to rename to e.g. brcm,bcm63xx-gpio.yaml?

I'm not up to date with current naming policies (if there are any at
all), but looking at what's currently there this should be fine.

Jonas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
