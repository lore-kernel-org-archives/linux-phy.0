Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 462ECCA9EDE
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 19:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acoDgX4OB472UYxprUCGUqchvobVEjGG6HsCL9g0Jjo=; b=gyQ2Za5scj4YH8
	V23fU1sGL9d7Pq+/RHTkomzZ3Caqe7A14euJUhRoOPp1NKAQkavXbCTm8iTKNJv56ntcZmVZo7L8r
	0pPeFHEK7eKRANUuAPQWllhl6nPUeWpSot4AGPsrzA5kIQbfixahEmaI52zg+rnL8X0e9KFzRaIYO
	0W2uO7Hpltxwsw51a+ZE+aaOZZoKA41oBtKV7eJNjGEjgmPZfgAQ8b+mSbr5aCV1NvbvgrWewNsAi
	7l1d/twzDk173UiB68Esu8+yU9H2224kdSVCeNqGTMll5npKoULADRlXh+pybFG3vYJrdXABLNLFS
	AmpFd3Ywm2xOtASwOvJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGM0I-0000000BPbt-33CW;
	Mon, 12 Oct 2026 19:48:10 +0000
Received: from mail-ej2-x07.google.com ([2a00:1450:4864:34::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGM0G-0000000BPb8-0Efh
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 19:48:09 +0000
Received: by mail-ej2-x07.google.com with SMTP id a640c23a62f3a-c2e15e7ab2bso177452766b.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 12:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791834486; cv=none;
        d=google.com; s=arc-20260327;
        b=Mme8AVUcVlwiWgmOTEVfE4wZb3Q4VSY36Q71FXWgWi/jASUbKRWF/SyngkTdLvJ9Ji
         ZOqqmAP3HwtqBiF069c/XgbaYCBuh6HUAPL87kPD5Rur+Zz5YLUUacIX2W6FzEm06Sd7
         Pl8hlfar51Xs/A8K9zJjTKB2vty1mzy7QN6bCY7sartdSN8emKLpvI19XPUkG+McClDb
         5oN7GVUYt/wh0k1u2OHWjzdc6Kq6qIVMBhqbBZtKknPYqsmX8eubfigD7O0Rp8+UgMSl
         SuZpmAdmejk2CLWae+lEEfrYYh1T7QEWJK8Lxq+Z3fORyg2VMHBDMNU1HPwz+1kB+hSt
         K2vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hePjOQgDk2oAPjPtpp2sw4T2GMv65ZXd7JkCbKndfRI=;
        fh=Q2A/rt8aL/RPcSkCCt0Y+Os1/ixknWdM/kF3NdvYMb8=;
        b=rvtIq3e4DtYztfJWchXn3iL/OM39L0QbJFgGpS2OXRKiCAczsJcPuURs7iddSJwL75
         4DVGxouTk3BNPXh9g2G3EzPaY2on91GqgHMM+xIfJqGQsQw9QQbIf3FEGGMn5LyIYo7C
         jX1lxpfaa9FC6PxQ5NdGaBneDqDYGa0ImJg+Ea+lgL5U09nUBT/wyvYK+PIiojwE+0m3
         8qonBbJDHpsVMpjBe2mXvO0PyaLbG/O1RPjuCw6SRRPuyXEN0wVnxxlVTPiaEmH+hd8f
         2Qj/luqB+nf1VYC5RPeJfBXhth8+m6oRqKMUwfS4SOH7lbPqIm6FgURAtopij+ABUVfo
         +bZQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791834486; x=1792439286; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hePjOQgDk2oAPjPtpp2sw4T2GMv65ZXd7JkCbKndfRI=;
        b=sE6c9mHf4wgr5vsyJHID4XW7HZnECZqAOe1h7fJEYcZR/ORr3SM4j3EvVK3QcngN1M
         2pot9AepnBM2aqIkhN/tIQGIS6P5VPvddajsrZlxD09gwrY0U776QxkSxm7PuDTnHjoz
         Pn9KB+DihyM+K8DFsLOeTGbaHdqWdXpo807En8eR9aE9o1udEW6MjyPoNyT/uLTOJftl
         5zoK0BYjPekUfxFsdjWSEi3nKg8Q1gSJs4qUm89yPuAPSpHXsb1iiPFCSxJSY6MGA5IB
         99jLjC0uirpqO63DKIWUkFReKxUGRNUc5OnKCAL0uf3ME5blz+BhTicLpdFttjC212rt
         lK3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791834486; x=1792439286;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=hePjOQgDk2oAPjPtpp2sw4T2GMv65ZXd7JkCbKndfRI=;
        b=xqawzH1lXnABQLDWClCKPOCbRV4BFgvt6dfdFdRwdQLR2VJXFzo43kMpQpDOxAcIS6
         a+UyN5smntGfGMtE5DBBOfxn7NZnMaqyZqwpzqQFbFokYMU65ipVIaZau9eQaoVtRZll
         4zBq8vjzPWKBHUUadKa9WNhhzrPA+yrpOEVhHxZLUzAqzu5FmciDy+hQtmTOjM9XW8xg
         /+kIKV6KocJH8XNiTEm+VxRASkOOwGLG6Kiuom1NTMjSJbE2QhJe+WOsDS5KWT8phbGS
         XHDXzGnwQVG1iFSH9TD1YLtxB9FGiN98ro1WzHlWj7EPgmW/3YIUrUgPe7XL5NEsiog2
         zI0A==
X-Forwarded-Encrypted: i=1; AKwUvBy3wDvjoiAgQvAAkd0j4fNLvKkSgRAUgL6jakK2ho93oTjMOjv++pHtRGWhbZccasojNFkp5PX40r0=@lists.infradead.org
X-Gm-Message-State: AFq9FYK/2OV/cdPpMe2ddjUPLeWVraE8jPakTV4j+4JFFT70bbac453x
	eqNj0FjzIywK/ogTZBtGdUFtYvwKwYAiZJwzGQWVbJbB9siitudtEQKW0cS0nJ8KhSLb6FazTvA
	rXfFZORWd2IQ1BEXsCHhzJi2Cmp/ptes=
X-Gm-Gg: AYBFou3N3TMP2Qc9scaIh6bknw3dobdUKVU4YeF+DI+twRsfetplMofdqxs7+MJOGDp
	XMO32fpdxnRoohZsYpsiV11SbwY2xthVidSApudSWnYAeFaRxuDmhsyzl6m1G5SOMeYqPIT8yAa
	G/gEJmKLgswQqi/6V4TNngv26BfW3SThixIA09fN/PAsU/SjqYop4kadjw8Yl9KjZJHJs8EiKsQ
	vI8E9HduPEuyjFb23O/cKa0rLFu0wa1Oqqrw60jzEsg0m8iVGVtmhb9NxFahugoaHTf/EPFwfT5
	3lk67xRAl39ukgIrfl2KarSbJuEKHg5x5oGFuips2++Cj5Zn0GpxNeY/Rg==
X-Received: by 2002:a17:907:7b8d:b0:c2d:d9f4:2c85 with SMTP id
 a640c23a62f3a-c31aa0c129fmr992438966b.41.1791834485955; Mon, 12 Oct 2026
 12:48:05 -0700 (PDT)
MIME-Version: 1.0
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-4-9d68868c1e89@oss.nxp.com> <6aabb56e-406f-4d13-9fd8-54822202039f@bootlin.com>
 <assmUIvWMuZsp8OO@lsv051416.swis.nl-cdc01.nxp.com>
In-Reply-To: <assmUIvWMuZsp8OO@lsv051416.swis.nl-cdc01.nxp.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 13 Oct 2026 03:47:58 +0800
X-Gm-Features: AclHuK-mWeAUUjbT2q4HaMO7I1jbUFx_FPbAu9P_i7ekNoCvSs5mbKy3dUi7DkU
Message-ID: <CALj3r0gQkUARS1e+2CGB3JsrGJ2XrzuoChfz0cWYRpK4kq1Uxg@mail.gmail.com>
Subject: Re: [PATCH RFC v3 04/12] net: pcs: add NXP SerDes XPCS shared core
To: Jan Petrous <jan.petrous@oss.nxp.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>, NXP S32 Linux Team <s32@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bogdan Hamciuc <bogdan.hamciuc@nxp.com>, 
	Ionut Vicovan <ionut.vicovan@nxp.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Clark Wang <xiaoning.wang@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Richard Cochran <richardcochran@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	imx@lists.linux.dev, linux-pci@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_124808_135398_48E9E37C 
X-CRM114-Status: GOOD (  26.78  )
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

Hi Jan,

Thanks for the pointers. A few thoughts.

> Yes. The S32G accessor is the same DW indirect scheme pcs-xpcs-plat
> implements (page into the viewport at 0xff, then the low address byte
> at a 4-byte stride), so there is no reason for S32G to carry its own
> copy of the XPCS code. The next version drops the shared core, exposes
> each XPCS instance as a mii_bus from the SerDes PHY driver and creates
> the PCS with xpcs_create_pcs_mdiodev(), much like the RK3568 glue.
> Details in my reply to Andrew.
>
> The part that does not fit pcs-xpcs-plat as-is is ownership, not
> access: the XPCS windows sit inside the SerDes subsystem register
> space, and their bring-up is ordered against the PCIe lane and the
> other XPCS instance, so the bus is registered by the SerDes PHY driver
> rather than by a standalone snps,dw-xpcs device. The accessor itself
> is a few lines; if Alex's pcs-xpcs-regmap is merged first I will use
> it rather than open-code another bus.

On the transport split: I think the cleanest path is to split the MMIO
accessor out into its own module, say pcs-xpcs-mmio, exporting the
read/write helpers. Then pcs-xpcs-plat can call into those exported
symbols instead of open-coding the page/stride scheme, and S32G can do
the same for its indirect window. That way nobody carries a private
copy of the accessor. If that turns out to be too invasive for plat,
keeping a separate pcs-xpcs-plat copy is workable too, but I'd rather
avoid it.

If Alex's pcs-xpcs-regmap lands first, that's the natural place for
the S32G accessor; pcs-xpcs-mmio would only be needed if the regmap
approach doesn't fit.

> S32G needs the same kind of thing: skip the generic soft reset, and no
> EEE registers. I will start with the existing PMA-ID mechanism, since
> that is what TXGBE and FBNIC use today, and switch to a callback if one
> is agreed in the Rockchip thread. I'll Cc you on those patches.

On the shared-core duplication: rather than copying the whole XPCS
core, I'd look at how the existing users express their quirks.

Wangxun has a genuinely different PMA ID, so it can branch on the
ID before the reset path and keep the generic core untouched.

The older NXP devices do the opposite: they fake the PCS ID at the MDIO
layer so the core sees a magic value it then interprets. That leaves
the magic in the core and a fake ID in the glue, and it doesn't scale
to a third user.

For S32G, I'd prefer one of these two approaches:

- A flag in struct dw_xpcs, e.g. DW_XPCS_NO_RESET, that the glue sets
  and the core checks before the soft reset and EEE paths. Works when
  the quirk applies to a whole instance regardless of the PMA ID.
- A platform callback, e.g. plat->pma_config(), where the glue can
  return early to skip the parts it doesn't need. More flexible, but
  also more surface area; I'd only go there if flags aren't enough.

Either is better than another fake ID, because the quirk stays visible
at the point where it matters instead of being hidden behind a made-up
value in the transport layer.

One question: how does S32G relate to the earlier NXP devices already
in pcs-xpcs.c? Same IP, same PCS ID, same quirks, or something else?
If they're the same family, it would be good to clean all of them up
in one go rather than adding a third mechanism on top of the old
fake-ID one.

Separately, I have a plan to propose platform callbacks for the XPCS core
at some point, regardless of whether S32G ends up needing them. The
core currently has no way for a platform glue or PMA to limit or override
parts of the generic behaviour, and I think that gap needs closing.
The exact shape can be discussed once RK3568 lands. Happy to Cc you on
the related thread when that happens.

- Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
