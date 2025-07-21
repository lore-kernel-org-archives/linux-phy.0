Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17F3EC83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 09:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQ8+wTqg279EsA9WJSLg/mqY5ZniELk7BxS3TiCIMwE=; b=QiNJZQNecmKWP+
	7OUliZuXEekE/Nw+aoFga9K5+ltezwWUPX8Bd+WKlchaZr4FrgC6o32jW96CttggeWZrBqRfTuajA
	WCNHat7LqjDxgQgsN69v8JfXztvUYAswyus7wnIOyLmZSGogMZREhly2D8TRh1SzUNiykr5Fx0wEX
	INaLWmGDu1f/A1AZb3W6xYl62tObhX3zj9Wg2cdF5XNOZQYABcGViPmld8CxWtOd+4Kpdt+1XndeE
	nZIRkl5LyNvMVIHHcVV+PMNYTD4W6XQAjJsh/PR5o/DmQ0u1nYbiXZjpqnw6Sji1ekCmWqEDc+JlY
	zTenjDyIATWiVQNrsukw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udmxr-0000000Gpks-3aK6;
	Mon, 21 Jul 2025 09:37:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udmUP-0000000GkZy-2taN
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 09:07:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2B2645C5A33;
	Mon, 21 Jul 2025 09:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DBB4C4CEED;
	Mon, 21 Jul 2025 09:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753088836;
	bh=mWbYUZ8RpLg7sOJxNI1MKrXpqhPZ6q61NO8r6g1VBL4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UN1h/7clLpuilJSIuDW6BgG2LU/Flp/JeMU1x1rxzWje9mT+WqDL3tq35C9NCu1+3
	 J1WWmV1kj+/HeOfsdY7LOxE+f4sX5mA/RowNQ71AM8wE0SF541udqLwfvQGFO+So1z
	 ueMPbao8XuTqLtD1JXIITALW3ZCzf9VfxMsMZIFoG4dyTLURNE8lMGc4P4CRHBfgrD
	 krx70SFQzeY7gVh2pkg44a1G14sa8NB+CoXCwE9R8HIpHxDE1NO9zbpO2w01+WvzGd
	 8kPcK1mGUXCJ+JA2y8fnDIg/BsyZPtQJbFnKC48KdC1HVGpRJW1OUH72brBOGCxJi7
	 Dhn4x7kOQLs3Q==
Date: Mon, 21 Jul 2025 11:07:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nagarjuna Kristam <nkristam@nvidia.com>, 
	JC Kuo <jckuo@nvidia.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>, 
	Peter De Schrijver <pdeschrijver@nvidia.com>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 01/17] dt-bindings: soc: tegra: pmc: Document
 Tegra210B01
Message-ID: <20250721-logical-lorikeet-of-upgrade-6dce4f@kuoka>
References: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
 <20250720-t210b01-v2-1-9cb209f1edfc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250720-t210b01-v2-1-9cb209f1edfc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_020717_771647_AF6C776B 
X-CRM114-Status: GOOD (  13.57  )
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

On Sun, Jul 20, 2025 at 09:14:55PM -0500, Aaron Kling wrote:
> Add the PMC driver compatible strings for Tegra210B01

And what is Tegra210B01? Do not say what you are doing - it is obvious
from the diff. In this case here say what you are ADDING, what hardware
is this.

> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml b/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
> index 7140c312d8986b0b733c519b1e89e360d9602add..eddcafc2f9398ad6fb4d2d46b3181ab91c89a229 100644
> --- a/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
> +++ b/Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml
> @@ -18,6 +18,7 @@ properties:
>        - nvidia,tegra114-pmc
>        - nvidia,tegra124-pmc
>        - nvidia,tegra210-pmc
> +      - nvidia,tegra210b01-pmc

Why they are not compatible? Commit msg is also silent on that.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
