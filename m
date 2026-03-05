Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49682EEF312
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 07:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PO9ASvqvvBcLKnFBAbSwXKK/XyduGzfewa1XlNLKRb4=; b=ygIbfpKiABDpWH
	xfUODKoZf1B7Gv31xvAVheFCy8q4BEHnQ0bONA6bMjSAq58Nwx2LMw5GhmdliRHlLp2jIU4WJxzFY
	NonfOGr3Rb+ypkyLVNIxiYKF6Ljm0lZoTda9B1dDQAmv0O7dqvNi/WGVO/ZMg2nGxy6o2Z9SZTNTX
	tqd8nY+6egtaxtgUlM4LZ/d5Zqs2HuMnuU24h0ihdEavmHsijo0hTNpXHdYhTTAEsrqTu7463/GM5
	6JYdE9EAIc0Lxi8iM7r9jSBgFuzkuFebSJUbgQ/qmedvQAiO/rn03b1fV52Gmg78aRoEEMPJeN1KV
	CLkb9Y4BEK/G4HB8Rkmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3Vl-000000017zI-3jHC;
	Thu, 05 Mar 2026 07:52:45 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3Vj-000000017yq-1em0
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 07:52:44 +0000
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8cb3fb47559so902035285a.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:52:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772697162; x=1773301962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KLWXJFRzKXYfvRWexgs1gCb/dTgnevi1M5AetCjur0g=;
        b=vbZOeoZsS543dnt6uWy9pJLOUj02ftlZtdQ7FepBTCcjkefvpISweYv9CCVNCupyFT
         ZPz3HVy2ftedQ7Z6dZ9bSvyHvrXuN8QCl5BQIT0fOlbIO2Bv0ysxNMCEXmOk0OU33uug
         SpdL1HWCuTtBBHXrQM9EfC+pn+SlE8kSJp1Eu+DgvVmeP9GfHA3LsU/yZjcJNf72Uuki
         kVyTrG1Ps9PMHTQGdY2aKfusaNS2dIXeKEmUyWtv0plK2Z0Kc+5WrXV+1BsiWh8eRNVB
         NknVOiqEWBXlbgl84uGaMd9nh/MUYvlEsiml81mepbAvaCSBKKZ9n52MrsA6v0GlzWPq
         5Y9A==
X-Gm-Message-State: AOJu0YwElUD9Fyld+HiSu1x3h/0tyCgYmhdulsF/Flz1kUUIfJDFn3TV
	loKpKPt5ZlDBOiZ8qlB0ohqJBcOlRU+4iXBlZ9Nbh6BCFnC8RJfjoVZ5DsK5uCkQ
X-Gm-Gg: ATEYQzxnaiRxNUe0dCGSoIgHlvuWM+Oh7Y8BT8o2QzxuLctbxVW9+HlutaGnJcGRB74
	+vh9SlaKeto2kw/tmJ2Rz1a+QWH4IP/gITFJBQLdIQeKZRXA92RSPjMCnWy/9ZOAZTeBMjwr0eM
	bPwvNXjQgF7/X2+NV7UdjaFcoDc0b3JCEp08IkPydBJHE8eo6OTjPiHrZMdQSQ6FV8JVbQvRj7N
	oriZ2fdPw3CpZzlRKIQPZEMDFZD6Tn1qeAJvhMpSCYtJRtioZFhMqVxShaNxjg1lzHZpydjKW28
	KASi0LEJhVcciuo2IiBrIl2ifzXd5IgbaReY50rsctCIn3iekT9er6n1zQr0aASXD8C/bSFxS+Z
	ZwL5n8aXw1LdW7HBbntUOjRMCSGe83mt7v+mFylI3tT1MwCWZPFwFOpFCw6U7IYjk+vxfroKq3j
	kmtEmy1OutDtIiycJgxp/0EHndfvllvvy0KipIeRX6rYYM5CcQkkC6r9kAR1HQYMGD
X-Received: by 2002:a05:620a:f03:b0:8cb:4b1d:e424 with SMTP id af79cd13be357-8cd5af79f99mr609623685a.45.1772697161743;
        Wed, 04 Mar 2026 23:52:41 -0800 (PST)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com. [209.85.222.170])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf72d3casm1855398185a.42.2026.03.04.23.52.41
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 23:52:41 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8cb40149037so804626485a.2
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 23:52:41 -0800 (PST)
X-Received: by 2002:a05:6102:441c:b0:5f9:3a22:85a2 with SMTP id
 ada2fe7eead31-5ffaac72675mr2059267137.12.1772696734612; Wed, 04 Mar 2026
 23:45:34 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-6-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-6-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 08:45:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXA67BO8Umz8-4jRg1SLvtZUSEzK0p7WxSvomnBk+WiyA@mail.gmail.com>
X-Gm-Features: AaiRm52ziEM93YxO07h7pOV0rTYZnULijxTOwLRm9EW_k_lOxLulmwK4PITV2jw
Message-ID: <CAMuHMdXA67BO8Umz8-4jRg1SLvtZUSEzK0p7WxSvomnBk+WiyA@mail.gmail.com>
Subject: Re: [PATCH phy-next 05/22] phy: add <linux/pm_runtime.h> where missing
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, 
	netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_235243_431815_AC5E9FC1 
X-CRM114-Status: GOOD (  18.81  )
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

On Wed, 4 Mar 2026 at 19:00, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> It appears that the phy-mapphone-mdm6600, phy-qcom-snps-femto-v2,
> phy-rcar-gen3-pcie, r8a779f0-ether-serdes and phy-rockchip-typec drivers
> call runtime PM operations without including the proper header.
>
> This was provided by <linux/phy/phy.h> but no function exported by this
> header directly needs it. So we need to drop it from there, and fix up
> drivers that used to depend on that.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

>  drivers/phy/renesas/phy-rcar-gen3-pcie.c       | 1 +
>  drivers/phy/renesas/r8a779f0-ether-serdes.c    | 1 +

For the Renesas parts:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
