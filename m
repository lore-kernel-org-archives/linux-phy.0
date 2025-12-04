Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2B32D1D884
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 08:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6pFhUdhHeI6bn0Xu7nThODgcY6K4uDBMXgf+eajgag=; b=BKDPEZqFCN1TQf
	w6obDmojdmOxmWwshEvnsF9UwQMBLSOVXdxOZwBJv19E8UxsXPX7pGmKh6iSy9shEI2VctzKvDp89
	t076QpNmbcY3hR9e6ZxvEbymBMFc+/0DRaLN++DvUxOxb56dS5DHGz1/ZYrRfBKbYwsA3WKxd3aox
	PpvtVRs6aELNj5s0NgxzwjPZq2oUJyIh0HNydsp1KtUoaqAF3PW8UgWLL8vnhEQLSABqpcH8GgR/9
	inA8EhiGbjThgo6+hq6HMM20kRLaloAq86wmK8mkdnzLvSo+qejk26Byof59ri+vICCgyxW6OWvxg
	ysRm+JZe5I36mYkCCYRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR4KS-00000007eEs-2DfB;
	Thu, 04 Dec 2025 08:04:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR4KQ-00000007eEB-0BxX
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 08:04:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4D81C438F7;
	Thu,  4 Dec 2025 08:04:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9ED78C4CEFB;
	Thu,  4 Dec 2025 08:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764835481;
	bh=mLvO41dr3CiI3nT3Iyp+BWmbfaVV4v/BWSOqWplPvP8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MHpA9+2SrqBFVA215IUE67TsjeGUZpqV6d1ncZM3DVzlEr8MAsuYvSY9lVZ2dv2Nv
	 NCZDRSjPmR+nlqCb55QBp+jlrGHnVS6dfBQ2MfhmgZno25wHacm2cfA0xeRkzS13RM
	 Wm2QZDINeK1pKdcoYiobKCmp2+U7TZAgO9ALcfwm5lt4+syCE7AYz//OJ0G/iHMe0l
	 z4KfiIhn5f45FgbEMU40HFBtKVm7YUfiFZHQqQFdLk3TmFauPgVe5rYmi6fs9Glwb2
	 zXUqkt7NZvj1D247rvG/LXgb+jutQambDY1UmZ12dXKjx0NRxM/wtcLu26WnlcFBZw
	 uxPZPrzqCyAZg==
Date: Thu, 4 Dec 2025 09:04:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, Georgi Djakov <djakov@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 05/22] dt-bindings: reset: renesas,rzv2h-usb2phy: Add
 '#mux-state-cells' property
Message-ID: <20251204-great-perch-from-avalon-7e940a@quoll>
References: <cover.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
 <9848482be3655a9351a13cdbf815db6b556201d0.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9848482be3655a9351a13cdbf815db6b556201d0.1764241212.git.tommaso.merciai.xr@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_000442_125060_C38A1771 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
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

On Thu, Nov 27, 2025 at 12:48:32PM +0100, Tommaso Merciai wrote:
> Add the '#mux-state-cells' property to support describing the USB VBUS_SEL
> multiplexer as a mux-controller in the Renesas RZ/V2H(P) USB2PHY binding.
> 
> The mux-controller cannot be integrated into the parent USB2PHY node
> because the VBUS source selector is part of a separate hardware block,
> not the USB2PHY block itself.
> 
> This is required to properly configure USB PHY power selection on
> RZ/V2H(P) and RZ/G3E SoCs.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
