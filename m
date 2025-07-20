Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31863C83F1A
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5gUIW2Q2+0AjLjyCCu/5luUUAl8C6qMC6gK5z+TVHI=; b=bVUkBWGgELiePH
	aPNmBhhw4EuaNXCdvKG0weNKx2YnwH5Xd5oZ7v2WYfQHN85a6CS5tR9xHMSLhuu1JmYiIu4QAVH46
	dxN9A88RH5iTjAeVo76SpgAfhGhPvWXk9f5Swf5zNU7XD2v1jb75rqlPyMyF5QHSumVaur6MLoLp1
	ZW1yRvR8veZn2Sh7C2ZPnrZmGxzbRuvHz76icWOHhFqWXhwj0dZt57dzHqC93w3MqKntkK5YFxctt
	oYBIICBnn3dPNmf5TSlNBU0TnTlZ4dg15KpjvYq6KertMGeInhWzv70xL/6Bk4ExzSM/IxbXqU0Ks
	EF0ZBp5kOO+9XXWCMVaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcY2-0000000FmL1-3vsw;
	Sun, 20 Jul 2025 22:30:22 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcXz-0000000FmK7-3aXz
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:30:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A07FBA50513;
	Sun, 20 Jul 2025 22:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 295C6C4CEE7;
	Sun, 20 Jul 2025 22:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050618;
	bh=qEgD4I5cBb5OU+UR2RFNbERDweiq78XewGziHT97wpo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SgGCmdd5phGtW64MqYleOa4hyq5Tde/Sy8A4/tJxII4stWb7IxX/Zk+23Nw5Kdxo0
	 1N0xqc2ZdUk3wdZe5GrQ+FmRSYHjjmLmfOd/w2p5qEO5cfFZrsz+uhzLoenJB5EZYr
	 pLRlsrm78TjlclZUMn/b75sRM4dUK0qhJ90ElYoA6d+5ubDKnWQPar44BQ3eDzItVW
	 h8lsAsxacvc0MDcewnKDnh05MNji8iZe3DEVLiMf3vmg7AT5iP82jzmOpmM4lKLJcj
	 3rj3/Zd8Gsj0Vy44tlAJEDQ4ifbaAgU75K2xIBrtml2Lo+mQzS3N5b5jAydAVpJ1P9
	 2gQzqtWM+ZAvw==
Date: Sun, 20 Jul 2025 17:30:17 -0500
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
Subject: Re: [PATCH 08/17] dt-bindings: tegra: Document Shield TV 2019
Message-ID: <20250720223017.GA2895524-robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-8-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-8-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_153019_957663_84B5283D 
X-CRM114-Status: GOOD (  11.70  )
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

On Mon, Jul 14, 2025 at 11:02:51PM -0500, Aaron Kling wrote:
> Add the device tree binding documentation for NVIDIA Shield TV 2019
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/tegra.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
> index 9cae3268a8274fd3a38580939c79a6f21de48a3f..806190233b9859ad573fe43ac5104887fbadf428 100644
> --- a/Documentation/devicetree/bindings/arm/tegra.yaml
> +++ b/Documentation/devicetree/bindings/arm/tegra.yaml
> @@ -174,6 +174,11 @@ properties:
>                - nvidia,p2571
>                - nvidia,p2894-0050-a08
>            - const: nvidia,tegra210
> +      - items:
> +          - const: nvidia,p2894-0050-a08
> +          - const: nvidia,darcy
> +          - const: nvidia,tegra210b01
> +          - const: nvidia,tegra210

Description? Because nothing here says Shield TV...

>        - description: Jetson TX2 Developer Kit
>          items:
>            - const: nvidia,p2771-0000
> 
> -- 
> 2.50.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
