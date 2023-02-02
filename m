Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D64AEC636D4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 15:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OBa2j8PZO0n5mg2UD7H5FNWZNE27HUwFXSmvJqBxh8=; b=Ty/raRc3f2rHI1
	AoR0hC+wyVBTCgEfABxjmEIEe2QqPgLWntwBX+SzM8qtwclQpNYXBVxuyRI4TMlnRWOK0TkLaPnud
	ax4zdUdS1cM4I6dJWcAdjeb3UE/moaodLABBzf+XCqUPn5S3x5UUmpeLiAOlklLFF7S8CCk8CLrb2
	AWaRdSUZKOX8yO4DJfqK6S410gcBPnrMOdvUC7ms/lIc+xq+21vplcO76X+PrfWL9bQvE7Jhjw1pX
	V0Q9r7XqnS8Yfa/4q4dOErI1zYeCUn2c5mEPVj3ISu8C865K12YtNdx0dqkReNXHwsvJAtkcmV4mm
	rfaCGvh/Cro/hbQCiocw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7t-00GEgb-9s; Thu, 02 Feb 2023 15:03:49 +0000
Received: from mail-yw1-f180.google.com ([209.85.128.180])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7i-00GEZR-Qx; Thu, 02 Feb 2023 15:03:40 +0000
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-510476ee20aso29876607b3.3;
        Thu, 02 Feb 2023 07:03:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yOafWoNIBGU3Q76qlhkVuk+ht5BzMZtDb+TwP4LrI+s=;
        b=bDnxd+qmkGSeSDeyidIbz579uwPsslnbrSUj3KU52pmAABqgjbjfUhqMIizTzKvT5h
         779+dFofGPYooY6hAce7adgGtUEVoCAM/Se4rmCWNfa4+qxAK6pPGzs+NL2VrhooykuG
         xmoEQvxmf6fEiuRTA5swybP1e8+TNc9/pKbB/koOKy2anYFgz3t5MpG+crh+cw5MJWGI
         wSJH2Y81xrF3b6kOKgYbBvfuctBV4wDA4r3awegI3NFjQcpC+Aq6TeV4znnShTgFJY0a
         Ss17N1lXXzWNeOe5kXOZxefNZMm1JyCiTMbEmcT7GZa4Wj0/zTdlO+RcDqko7EFsokZh
         ibjw==
X-Gm-Message-State: AO0yUKVSaCzJbT06ZIdbMW9/QLyBW9Or86zNo0C5cs8lfzm6fwZGG5jl
	y4NUJXvpHuxY/4pqEY5fgRSegQxwg1xqiA==
X-Google-Smtp-Source: AK7set8AF0bmSZiXylUTJtk+cs/WRoZ7R3SqyPqeqZXm4RPwFFcAo48vxJsil3LQgDkj0NcLn+ruZA==
X-Received: by 2002:a81:ed06:0:b0:3a8:6a46:d953 with SMTP id k6-20020a81ed06000000b003a86a46d953mr4794005ywm.14.1675350214659;
        Thu, 02 Feb 2023 07:03:34 -0800 (PST)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id q1-20020ae9dc01000000b00729b7d71ac7sm3255697qkf.33.2023.02.02.07.03.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 07:03:34 -0800 (PST)
Received: by mail-yb1-f171.google.com with SMTP id 74so2241421ybl.12;
        Thu, 02 Feb 2023 07:03:34 -0800 (PST)
X-Received: by 2002:a25:fc1c:0:b0:80b:8602:f3fe with SMTP id
 v28-20020a25fc1c000000b0080b8602f3femr916791ybd.36.1675349832295; Thu, 02 Feb
 2023 06:57:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674584626.git.geert+renesas@glider.be>
In-Reply-To: <cover.1674584626.git.geert+renesas@glider.be>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Feb 2023 15:57:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWhY9OtW2Pa+LmY0qOvbxLiuyNYEQr5WnPgO1xD=5M1AQ@mail.gmail.com>
Message-ID: <CAMuHMdWhY9OtW2Pa+LmY0qOvbxLiuyNYEQr5WnPgO1xD=5M1AQ@mail.gmail.com>
Subject: Re: [PATCH treewide v2 0/9] phy: Add devm_of_phy_optional_get() helper
To: Vinod Koul <vkoul@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Madalin Bucur <madalin.bucur@nxp.com>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, UNGLinuxDriver@microchip.com, 
	Thierry Reding <thierry.reding@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Rob Herring <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alan Stern <stern@rowland.harvard.edu>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Russell King <linux@armlinux.org.uk>, 
	linux-phy@lists.infradead.org, linux-doc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Marc Kleine-Budde <mkl@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_070338_893089_58C84419 
X-CRM114-Status: GOOD (  24.68  )
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

Hi Vinod,

On Tue, Jan 24, 2023 at 7:37 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> While there exist several optional_get() PHY helper functions, there is
> no optional variant of devm_of_phy_get(), leading to several drivers
> implementing this theirselves, sometimes in buggy ways.
>
> Hence this series, after two cleanup patches, introduces a
> devm_of_phy_optional_get() helper(), and converts existing users of
> devm_of_phy_get() where appropriate.
>
> Changes compared to v1[1]:
>   - Incorporate "[PATCH v2 1/9] phy: Remove unused phy_optional_get()",
>     as it touches the same documentation,
>   - New patch "[PATCH v2 2/9] doc: phy: Document devm_of_phy_get()",
>   - Print an error message in case of failure, as requested by RobH,
>   - Update Documentation,
>   - Clarify removed checks for -ENODEV and -ENOSYS,
>   - Remove error printing in case of real failures from callers,
>   - Rebase am65-cpsw change on top of commit 854617f52ab42418 ("net:
>     ethernet: ti: am65-cpsw: Handle -EPROBE_DEFER for Serdes PHY") in
>     net-next (next-20230123 and later),
>   - Add Reviewed-by, Acked-by.
>
> Most of this series been compile-tested only, but the new helper itself
> has been tested with a new user[2].

Are you happy with this?  This series (at least patch 3) is a dependency
for [2], and in [3] you said you could apply it and create an immutable
branch.

Thanks!

> [1] "[PATCH treewide 0/7] phy: Add devm_of_phy_optional_get() helper"
>     https://lore.kernel.org/r/cover.1674036164.git.geert+renesas@glider.be
> [2] "[PATCH 12/12] can: rcar_canfd: Add transceiver support"
>     https://lore.kernel.org/r/e825b50a843ffe40e33f34e4d858c07c1b2ff259.1674499048.git.geert+renesas@glider.be

[3] https://lore.kernel.org/all/Y8kmG+jB%2Fs7stebA@matsya

>
> Geert Uytterhoeven (9):
>   phy: Remove unused phy_optional_get()
>   doc: phy: Document devm_of_phy_get()
>   phy: Add devm_of_phy_optional_get() helper
>   net: fman: memac: Convert to devm_of_phy_optional_get()
>   net: lan966x: Convert to devm_of_phy_optional_get()
>   net: ethernet: ti: am65-cpsw: Convert to devm_of_phy_optional_get()
>   PCI: tegra: Convert to devm_of_phy_optional_get()
>   usb: host: ehci-exynos: Convert to devm_of_phy_optional_get()
>   usb: host: ohci-exynos: Convert to devm_of_phy_optional_get()

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
