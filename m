Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86CD1D61015
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 13:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvEr3nxf+q9vws+eLVX9RBtxyTRN1Ql37PXhFMPaDY8=; b=YHizTYXuZONIi6
	8UmCBzlzymtE9aJzqJ83iHNXiqkuGHN2QeyF0O/voxztUgHlIqHgcuJGWZKdzcZEmosvsdyNvexCP
	eywsCawGmk2Zi0DuU1/wMqIly3NgF2ne5CIdA6grI7LnlubvJEQVyHHhJsaifqwz0mpbyANudkX9M
	53tXY/B+2L7DUQQ5KDPFESV8jf/Qirc9DJsQq+2c7HTk/xrDpuldxqbiynB9xT2S2hUqkPV0drVUX
	vbHvKe+w9fLzAZZEOfoM6ZKo+WeJO77QZs+E5bRSD1WoRsSvXCorB71JDTSTX1EQJIxS45J/KErN8
	3Du3EmIgLJs1zInunFIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlRi3-000000008Ej-1F0o;
	Thu, 29 Jan 2026 13:05:19 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlRi1-000000008Dl-09GV
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 13:05:18 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-65808bb859cso1499117a12.2
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 05:05:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769691915; cv=none;
        d=google.com; s=arc-20240605;
        b=cx8B/4OTwrhkTpAulnunYOqz2wEeHbRtHtBsHs0yB4ZLpKzp3JT4mw7o4Pp3ajfCXS
         RwXaCtYmXQNOTTzia4HalZDqKnmxVAKxlfdcz6CU9TSoKpJWz5S7jlFEtaE4brw2WjtG
         Y+YVN5sZkQ5I5yWWTAT2huu9pEQ0lJ8Qyd+0cJho+Ctnn+oLnpoyUMsBFpM+KPUUT19k
         w4pHPK52twUaNuUH5t2jl1DErAsPdPazKGG39CnpEsP7idufpiJiJ3zhCUux6Snh1yQw
         0fFVeHVmFs0KP5xcqSceRQ0jxTjobZN2fML2OnUEw59l9ddSZUnUf1SvcwlzL1KHejkM
         BcsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hV0EaAfSfWXdEAd8ez6i9+1b1e2fuFvIVn/DRhtOP0g=;
        fh=/hVTHnZLqs/t/n4Y3DEmU8hksi0Rzqd5m3Yy6mX1Z2o=;
        b=Isl6bwGGztLMZUBQXbX5QSur2hcmpBIlEBd0E+y8bQX17uvMWgUYKX0ikFhkn5FGVL
         13e7qLdrhMEHM5eoCYCUt+hlXEz0f1X4AIJVFTt9q9DgWvF0fcA/IjExWjo+cwYxd6p1
         FdPbXpVEjaOH+yHljcRRoz/hRJ1X83QB+CSWeV1gqfrCojT9v3pRQiWdGZA1XnT/6cw+
         b/i1pygyxjR+sGksl/EH0tDf3/BFvTPV/PtP1xlcWVIpcaAOh/NRjb5Eo8ywIlb828kh
         NycMttqKstN1nothttgzIpYZyO5G6G5y/Fl6c9KirLMXD95JeeIdZnoyzOtkkizOxwpR
         wZ/A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769691915; x=1770296715; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hV0EaAfSfWXdEAd8ez6i9+1b1e2fuFvIVn/DRhtOP0g=;
        b=BArtyrnZUw6iGIHwPL+mqxQ21RwSBT8z8IjGjbz5crSfqLXC0imZw/QM7IN1pSQSfk
         pfnsDLJjkRfvEX6mFXzlIwkAXqprO9hYz8fSt0HJL/EXCTn0w7fSs+LZwefsEwime0MA
         hqEy+MirGyGhDlQisFCu1RoVywgXPSaqtLnP3RaRIc/YMiC1kArzgaMRxqpJtiVujje6
         LqXqnhu798f6gxvDwHFOvaw1CH3NWGzUM/UNyumeTYxlFTqtVNAwkTyx0xYHvyC/F2y+
         /GHw2VEr9+1fjMEfJankkixvw0n9kFozT4DkbDo7i6Monq+SL96Lz7jdjwUsCjRC0hQs
         Yy7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769691915; x=1770296715;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hV0EaAfSfWXdEAd8ez6i9+1b1e2fuFvIVn/DRhtOP0g=;
        b=fXPD0ejAP5zX+z/SkmDYkoceuYDYacqSZxevPhXwLAEsu0+aws3LfiX5CQANodJmm2
         5aZDUoSCcY2AuffVN3OS9hLcg39ZFIiSd5bIZ1iZFzhFcOcupIXERucVPYQs2s08qgf0
         EKiTIa5oksRQiX7r27BBEZV/wZCXYV/Lm+v3OAR2VcGAQlmV2EkO0LW1+Utd0o0H3sTj
         4zVzYq181+4mhqcPsvzUtFiGNHhTeOFAhiQl4mTs4H1FnrU6Ny0/DgpAaG8I6pEbV1lw
         qIKIYq4jCh9Db6kp3UqFj2sPXARHt7rh+8EyKMBsZX9cDqQ55Yehvmc+MlFgCHRCDKZe
         yRfg==
X-Forwarded-Encrypted: i=1; AJvYcCU+PW1xLLQj1wIWlWON3MNT2kA8Vd61xzWAoG5RMW0qzWJsWJ010fYt9nfzo2/lHJ3/IkLRb2FNUEo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxufPzYDICsv0brf2OdMChQmsiws90FsgdGuTIy4HcXKpuPyFkj
	h5gwidS3tdZt89nD+bVxFXqpv9jI5loPbtIIkVheN5+jZ0ee7P0HFwxfn3cjZyzco1iMTueE4Bs
	7RRbpGBlsDCvxuEso2VvsPmrMpFBckv3hKCIZ68jyqg==
X-Gm-Gg: AZuq6aKE5li1J48TyVMoAWShfVQ9IKfUKZCTW2P7sqw/buxFFF/e0km2xnJ2SsjoS51
	eollhNzzgAs7xvu6MwsvMmzbiFdsRiNGWstfh+4UtJQ80hq1BQtqKe1Jgru/7188m4AM4IsmnRe
	o+Fl/IN+0FfsQXHdZTn1amn3AGths2Pv6S5PmT9FE0/aoMx1dWm39z5efSzPpsKK5VZP4slqO5f
	Ulg3mzzVCb0w+hx+PZ4edhkgLkOXSbZZsaflEymO15DfnC0ofDHRh89jPm6wfkTjDd3N8MRD7yj
	hbG0NCM12V0Ul20pXiFefGb6aJ22WFLIHdY=
X-Received: by 2002:a05:6402:5187:b0:658:cc59:161c with SMTP id
 4fb4d7f45d1cf-658cc5917c8mr1678090a12.12.1769691914958; Thu, 29 Jan 2026
 05:05:14 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-2-vincent.guittot@linaro.org> <aXtXmN1V8wg57yuE@shell.armlinux.org.uk>
In-Reply-To: <aXtXmN1V8wg57yuE@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:05:03 +0100
X-Gm-Features: AZwV_QhIdeGA_SmdiEnXscTGdrXOcfbfoiNkh_dYEPgauVTbh2-bOtUlEiHJGvM
Message-ID: <CAKfTPtANQsmWAf-u6+isXh5UHJdo2mYELBYio=-UxZj3WM6-5w@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: serdes: s32g: Add NXP serdes subsystem
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_050517_093912_90105CCF 
X-CRM114-Status: GOOD (  21.71  )
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

On Thu, 29 Jan 2026 at 13:50, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:56AM +0100, Vincent Guittot wrote:
> > Describe the serdes subsystem available on the S32G platforms.
> >
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++++++
> >  1 file changed, 154 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > new file mode 100644
> > index 000000000000..fad34bee2a4f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > @@ -0,0 +1,154 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
> > +
> > +maintainers:
> > +  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > +
> > +description: |
> > +  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
> > +    - One PCIe PHY: Supports various PCIe operation modes
> > +    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
> > +
> > +  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
> > +  must be adapted accordingly. Below table describes all possible operation
> > +  modes.
> > +
> > +  Mode  PCIe XPCS0           XPCS1           PHY clock       Description
> > +                SGMII                SGMII             (MHz)
> > +  -------------------------------------------------------------------------
> > +  0  Gen3    N/A             N/A             100             Single PCIe
> > +  1  Gen2    1.25Gbps        N/A             100             PCIe/SGMII
> > +  2  Gen2    N/A             1.25Gbps        100             PCIe/SGMII
> > +  3  N/A     1.25Gbps        1.25Gbps        100,125         SGMII
> > +  4  N/A     3.125/1.25Gbps  3.125/1.25Gbps  125             SGMII
> > +  5  Gen2    N/A             3.125Gbps       100             PCIe/SGMII
>
> Shouldn't the mode be configured via phy_set_mode_ext()?

There is a phy for only pcie only. In mode 3 to 5 there is no generic
phy created

>
> This identifies whether it is operating as PCIe or for networking and
> in the case of networking, the PHY interface mode should be passed as
> the submode.
>
> Have a look at include/linux/phy/pcie.h to see the submodes that may
> be appropriate to pass to phy_set_mode_ext() - but talk to the PHY
> subsystem maintainers.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
