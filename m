Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD93EC43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 01:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNJZ3GM+ysHOZbexfFaVXYipi/57n+Cbx1EPMf5JxBI=; b=io1QUDO7WXtX1o
	9HQs2tGPnTY0C2wL85xjAhD/A2ZjiuziOiuINyYZueuCEMRQf0z6a1U5Egy98jSGHEJiV/c3j4KTa
	qiSiDmGzRdYFHDEWmNvVqOGuwSnzw56D67lpvZLYdW++/tR6n8bmkXoJ/PBKmDmh2KqvZKJXWjxBU
	uw+hu80gw3fqjCVZnKNvZRhgVpJyvCF0buQb6uu3gHuhXYOVRBPxrhmj1WB6kgAY2TKwKw6YkOyni
	gSO2+zlWkauPZNqwAdkBXk5V69Wr6ACUbpYYwnNTVwmskcSQHGw3aSv81LI4cA8IblYL0FBBCDpuL
	5VxlHopJRyDoPTJWCu9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgC8z-00000008uPy-0FvP;
	Sun, 05 Jul 2026 01:59:41 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgC8w-00000008uPU-2HiA
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 01:59:40 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-3811f512167so1577067a91.3
        for <linux-phy@lists.infradead.org>; Sat, 04 Jul 2026 18:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783216777; x=1783821577; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Acu2tx9xjRD3YeEyFpnpJ7uZlmuH+RrGw+/Yhe826DM=;
        b=RMh2f8NDzYSdBYomBK9l8iyggsOMwxVV+YainPlS57UVfVkcNnqEWmvzaplF3/P8Qo
         F7b1UZhTnsBV1Y2hKucZToRFAeDNr3PdBf7Za/TOcM2og2t6wtvnE7u7JSwvnVL2Ryvl
         8K9mE8yFBY1XUNXwOnwr0yQCXDuiE0seyuq5MV7/+VDWh68TWMhtwas8vgRHyzWR6odz
         zeZuIiMpStqck6LPVQf0dTtUD9tJOOZokxO30P8XdbwXaoYMZGX2/nmMYQ+r2Gq+6X5u
         o5rGRwEiKXTwBMpINDEtA6rPxFbeZT0hTMjtdhwRzbBsrZReI1oP4G+9sqDZdV/0ZNXC
         00rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783216777; x=1783821577;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Acu2tx9xjRD3YeEyFpnpJ7uZlmuH+RrGw+/Yhe826DM=;
        b=RYUbJhkfibHDFD/z/N2mMcpF/aeNYZnl5BXYX308+kEJQfsH2NHNyJ+se5q1rzOoEm
         C2ey3DF3MMNzplr/AqbTQVah1qeLSMWjwS2VJ08WlL+25LPH+RVkMtLJFvKznap1qhud
         bcpaLBkFk4+f7/l5lQqwbyNn7o41jvr2Bcbg37KPpXzZFIkpdEZn7ocmMhWK1cqxqDaK
         PJwsE/EXlzg74BukIhuWpCwe5I2Z2ddcHfyv0z9UeROsseV0lu8KgaXaB6H818+RsdxN
         r+SmTmse82H+ou32rhWOVL905i+ryWDk1umvFNF5FnC+YdZHSBGop0DWhaubfmvGv0J7
         HoiA==
X-Gm-Message-State: AOJu0YzcFcJLNNZ24lInIZx0Gf/Pco3ojAZTE3pOOXaD/p9Q8w5z1pPo
	5ShzmwVEsZG2OQDFEOkL6nCUfuFPl5GTidJV9hrq2rfMrtC1E9Xm+q6N
X-Gm-Gg: AfdE7ckOWVRPD0I2pq0IpmKqjvp9vzyTPxjstQUcRqYjzME6fmph8udcCce82EHZlxi
	l8Cblphz91L6CDU03mED6KZdz12bTyxcXdFZZ81mSlY76jH52kylSh+NUOb+RRrca7BxTNGlhS9
	Hcst14m0f67wtc5MxJ1UoTLewBVXpKI5ABJrMd7cYVO/qZ1MERoCVYPB373iqnXDuwiv0PJWR5k
	IJpU0F3hJVH/Z6kukUNP043OZ9FNMC/qdGOZEOOIaL2zPDobfIb1d9Y0NBQ7blLnglmUPMtDn+F
	G6Xp5qp9zsq5r9aJuW/aoYBXjASjOkCc6N5q75xtf52QakZUbWSgKwmq6/nUnH4YccRarn7Y9xd
	PdDXWI241FLqvEronZLbEn1ZupJv0QMCt0Jmc8h3A5cyG/+KbUPxsJugz+0t144Fj
X-Received: by 2002:a17:90b:1f8a:b0:381:41e9:32aa with SMTP id 98e67ed59e1d1-382812808d5mr4797300a91.15.1783216777198;
        Sat, 04 Jul 2026 18:59:37 -0700 (PDT)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3809c8c0915sm3074901a91.0.2026.07.04.18.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 18:59:36 -0700 (PDT)
Date: Sun, 5 Jul 2026 09:59:03 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: sashiko-reviews@lists.linux.dev, Inochi Amaoto <inochiama@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, 
	neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: spacemit: Add USB3/PCIe comb PHY driver for
 Spacemit K3
Message-ID: <akm5-xLZgFPLKeE4@inochi.infowork>
References: <20260703021024.495433-1-inochiama@gmail.com>
 <20260703021024.495433-3-inochiama@gmail.com>
 <20260703021929.15FDE1F000E9@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260703021929.15FDE1F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_185938_600373_155D11E9 
X-CRM114-Status: GOOD (  23.98  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, Jul 03, 2026 at 02:19:28AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [High] Hardware register clobbering due to missing read-modify-write op=
erations in PHY initialization.
> --
> =

> commit c71cb5c4ebfcb4fc5aff5c18a7769949e15dae55
> Author: Inochi Amaoto <inochiama@gmail.com>
> =

> phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3
> =

> Adds a USB3/PCIe comb PHY driver for Spacemit K3. The comb PHY requires
> configuring a syscon device for the correct mux configuration and needs
> calibration before usage.
> =

> > diff --git a/drivers/phy/spacemit/phy-k3-common.c b/drivers/phy/spacemi=
t/phy-k3-common.c
> > new file mode 100644
> > index 0000000000000..0b289e63db999
> > --- /dev/null
> > +++ b/drivers/phy/spacemit/phy-k3-common.c
> =

> [ ... ]
> =

> > +	/* Power down 100MHz refclk buffer */
> > +	val =3D readl(base + PHY_PU_CK_REG);
> > +	val =3D u32_replace_bits(val, 0, PHY_PU_REFCLK_100);
> > +	writel(val, base + PHY_PU_CK_REG);
> > +
> > +	/* Program PLL REG1 configure the SSC */
> > +	val =3D FIELD_PREP(PHY_PLL_SSC_MODE, PHY_PLL_SSC_MODE_DOWN_SPREAD1) |
> > +	      FIELD_PREP(PHY_PLL_SSC_DEP_SEL, PHY_PLL_SSC_5000PPM) |
> > +	      FIELD_PREP(PHY_PLL_FREF_SEL, PHY_PLL_FREF_24M);
> > +	writel(val, base + PHY_PLL_REG1);
> =

> [Severity: High]
> Does this completely overwrite PHY_PLL_REG1 and zero out unspecified bits?
> =


No, All the field are filled, so no data is lost.

> Unlike the PCIe initialization path which uses a read-modify-write for th=
is
> register, this direct writel() in k3_usb3phy_init_single() clobbers the
> entire register. Could this cause important default settings or calibrati=
on
> values to be lost?
> =

> [ ... ]
> =

> > +	for (i =3D 0; i < lg->data->lanes; i++) {
> > +		void __iomem *lane_base =3D lg->base + lg->data->offsets[i];
> > +
> > +		val =3D readl(lane_base + PCIE_RX_REG1);
> > +		val =3D u32_replace_bits(val, 0, 0x3);
> > +		writel(val, lane_base + PCIE_RX_REG1);
> > +	}
> > +
> > +	val =3D readl(phy_base + PHY_PLL_REG2);
> > +	val |=3D BIT(20);
> > +	writel(val, phy_base + PHY_PLL_REG2);
> > +
> > +	/* The write is needed as clock requires renegotiation */
> > +	val =3D FIELD_PREP(PCIE_RX_REFCLK_MODE, PCIE_RX_REFCLK_MODE_DRIVER) |
> > +	      PCIE_RX_SEL_TRI_CODE |
> > +	      FIELD_PREP(PCIE_RX_LEGACY, PCIE_RX_LEGACY_DEFAULT);
> > +	writel(val, phy_base + PCIE_RX_REG1);
> =

> [Severity: High]
> Does this clobber the entire PCIE_RX_REG1 register for lane 0?
> =


This also serves as the whole clock. If the phy has two lanes, they share s=
ome
data and the data is store at lane 0.

> The preceding loop performs a read-modify-write on PCIE_RX_REG1 for all l=
anes,
> but this direct writel() on phy_base (which points to lane 0) invalidates
> that previous work and zeroes out any bits not explicitly set here.
> =

> Should this also use a read-modify-write operation to preserve the regist=
er
> state?
> =


No, it is not needed, as all the field are filled or it should be zero.

> -- =

> Sashiko AI review =B7 https://sashiko.dev/#/patchset/20260703021024.49543=
3-1-inochiama@gmail.com?part=3D2

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
