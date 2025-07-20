Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D24F1C83F22
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hP85oBmiAz9v83Lwo466XSuSW7JpMWPU2g0vRYgHUok=; b=XMlfzxgCIYDcMy
	k1EJ73tfmHCUOMRYG3MiUmfG9Ts86X8R6UxKfZdLCP90E+TBp/VayuXsZS3ahMYgea5MI8pix1gDv
	gftEcg7UMRSztEJKnSQQKdhAKIRYOxsvjZeJxWdvOpPBEmPhq2K472PNDDNe/LvkBeuu9FO8000Tu
	IsVyQLVxeOkAeJzG/Jzu13M3BImsX3GtRAjPQfn5ch40LiBwxRFWj/3oEZQvZ0loS08w7R/vjnH/4
	A8Ch/YbfeHhdtBy1j+otguoVLBB9OKmXO1jr/Gi4wVEdc0WMP/wZ9Ga7ROJWxosG1h5PM0sojidFX
	wFCZMsVx92sMruCVqfUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcUx-0000000Flr4-2alw;
	Sun, 20 Jul 2025 22:27:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcUv-0000000Flqi-1IFf
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:27:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 821E45C56EA;
	Sun, 20 Jul 2025 22:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0752CC4CEE7;
	Sun, 20 Jul 2025 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050428;
	bh=XFoJ+QoeylaVvKszHW/UiA61y62McXiFRBHLIfspD0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ktL/B8AwRIaVBNzeALVYazb7pnEKq1v1AC4nsXLsBZZSxHOLCpgu5klPeinOzvB0Y
	 /9ZciO8WJ5om+fW5dYlFuqaEnQHs1OKvBZYR6UwKNgxLPMS+0W5ohM+j3mvQzCIaNX
	 feXi9rpccajyFE001GoRDn0pNtsIpRftqm78i3/FBfu+PAaKqzXQqwwCJ9IqHehuPO
	 n5OxUX8o+mGCOXJYNFMicvrbaCbIaUjbKwm1wcNljK/c0+l8yRSwWGb7OHFV234tJk
	 JZwuGV4TI4NWXVfqXVP+Gjx2R5nguyycy0HKKjjk4LVK1Nhv8wd3g3LmjBwvEgoz6n
	 B78I7m57R66gQ==
Date: Sun, 20 Jul 2025 17:27:07 -0500
From: Rob Herring <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	Thierry Reding <treding@nvidia.com>, linux-pm@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 06/17] dt-bindings: clock: tegra: Document Tegra210B01
Message-ID: <20250720222707.GA2885707-robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-6-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-6-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_152709_433796_D5B8B7A4 
X-CRM114-Status: GOOD (  13.91  )
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

On Mon, Jul 14, 2025 at 11:02:49PM -0500, Aaron Kling wrote:
> * Add the compatible string for Tegra210B01 clock and reset
> * Add Tegra210B01 specific clock bindings
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml | 1 +
>  include/dt-bindings/clock/tegra210-car.h                        | 5 ++++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml b/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml
> index bee2dd4b29bfe391caee346aa5afad49772c2c41..88cce500bbc43de934f6c56152e5b2d006f8a8bb 100644
> --- a/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml
> +++ b/Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml
> @@ -32,6 +32,7 @@ properties:
>        - nvidia,tegra30-car
>        - nvidia,tegra114-car
>        - nvidia,tegra210-car
> +      - nvidia,tegra210b01-car
>  
>    reg:
>      maxItems: 1
> diff --git a/include/dt-bindings/clock/tegra210-car.h b/include/dt-bindings/clock/tegra210-car.h
> index 9cfcc3baa52c6eef0439c859200cf44446a1cd17..27485d9b80f68fc0e7668a8abbd1b821f62035dd 100644
> --- a/include/dt-bindings/clock/tegra210-car.h
> +++ b/include/dt-bindings/clock/tegra210-car.h
> @@ -409,6 +409,9 @@
>  #define TEGRA210_CLK_DMIC3_SYNC_CLK 392
>  #define TEGRA210_CLK_DMIC3_SYNC_CLK_MUX 393
>  
> -#define TEGRA210_CLK_CLK_MAX 394
> +#define TEGRA210_CLK_UTMIPLL_60M 531
> +#define TEGRA210_CLK_PLL_P_UPHY_OUT 532
> +
> +#define TEGRA210_CLK_CLK_MAX 533

Generally we've been dropping these max values because they are not part 
of the ABI if they can change. I guess that's a separate change.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
