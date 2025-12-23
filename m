Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC512E6F096
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H23Pi3RwRGLwH1ZNoBGizm1pu9g9IoXJJbAUJC60HUA=; b=pFAiNVfY8NIOKV
	uzOV9Xl41gShC+WQdoLBHESxBGKfXK1LA942OpePFA5NpLPy83EJnPePPaOTijDz+G+x2+VEJtvxk
	HYULVMsCKVqh2RYJB4nBaRvCR+aUIHtvZ55/0pCFYQF1p67SNZi+/vN6PrbUT5yeZcdBlbV8Fvg+x
	18smyUDIA4NqJsLsRyzBYlYWAEUdOGRPd5k1ntGA2lWAVBn9to2ivYhR2Dv1CUf0XK/Rr4d9Sd7Ct
	r2Ui28VAifSjGt0RYmCqhdsjVIItfcA7urnO8VMnzJyttQu5xyJbZX/caJXTlZDW2/iJ3WpBQ7NDL
	t8QaG6t9Q0HYQNsMN7aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY3bQ-0000000FdNs-1cIz;
	Tue, 23 Dec 2025 14:43:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY3bP-0000000FdNb-0LTA;
	Tue, 23 Dec 2025 14:43:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EEC1F6013A;
	Tue, 23 Dec 2025 14:43:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C53F5C113D0;
	Tue, 23 Dec 2025 14:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766500985;
	bh=dGSBxeN+GJn8mz9SDAWxeBi3X526sNdmyiKL7f116Nw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SyEpcvzH4PwQr/eYYz4pV3Iuv3i/sytNejmHJENaBgTrHpnSJoSMnGv8sH/OPw4Ho
	 YPEmxA6fUIEyBjWOtCgMACSdqd+C38RQQsv+/6uBEdDFda46W05bYcZkH35M9gg33B
	 FguIvh641Y2VVbc3+ZSpCZjLXs90S4jGfqgbvP/rrBp3v7+703iaLTBmfLNv5R1vfo
	 icyIZ+s7TQnI0q4PW0nDAM1DtIIuDRIZWwXr7faZu+nS5Pzaxsolyuavt4TmezVWvU
	 4EIYNUh3yHfdmNvtGMfUuoCPviIsFVwC0onrs6n+7xtUj3PaCdqSzVAXf3Mhsyl+eH
	 4xpWkzlI0tmSw==
Date: Tue, 23 Dec 2025 15:43:01 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tzu-Hao Wei <twei@axiado.com>
Cc: SriNavmani A <srinavmani@axiado.com>, 
	Prasad Bolisetty <pbolisetty@axiado.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Harshit Shah <hshah@axiado.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Michal Simek <michal.simek@amd.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
Subject: Re: [PATCH 5/8] dt-bindings: mmc: axiado: Add axiado eMMC variant
Message-ID: <20251223-ludicrous-carmine-mushroom-983c69@quoll>
References: <20251222-axiado-ax3000-add-emmc-host-driver-support-v1-0-5457d0ebcdb4@axiado.com>
 <20251222-axiado-ax3000-add-emmc-host-driver-support-v1-5-5457d0ebcdb4@axiado.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251222-axiado-ax3000-add-emmc-host-driver-support-v1-5-5457d0ebcdb4@axiado.com>
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

On Mon, Dec 22, 2025 at 04:45:04PM +0800, Tzu-Hao Wei wrote:
> From: SriNavmani A <srinavmani@axiado.com>
> 
> Add device tree binding variant for the Axiado AX3000 Arasan eMMC
> controller. This variant identifies the specific eMMC controller
> implementation used on the AX3000 SoC and enables the appropriate
> driver configuration.
> 
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
> ---
>  .../devicetree/bindings/mmc/arasan,sdhci.yaml          | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index 8e79de97b242a698a2c555b0b94e2975b1761710..47d0e35efea00bf7b1927bd0cfa39c86f0137d44 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -106,6 +106,12 @@ properties:
>          description:
>            For this device it is strongly suggested to include
>            arasan,soc-ctl-syscon.
> +      - items:
> +          - const: axiado,ax3000-sdhci-5.1-emmc
> +          - const: arasan,sdhci-5.1
> +        description:
> +          For this device it is strongly suggested to include
> +          clock-output-names and '#clock-cells'.
>  
>    reg:
>      maxItems: 1
> @@ -334,3 +340,15 @@ examples:
>                     <&scmi_clk KEEM_BAY_PSS_SD0>;
>            arasan,soc-ctl-syscon = <&sd0_phy_syscon>;
>      };
> +
> +  - |
> +    mmc@86000000 {

No need for a new example. Please writing bindings and writing schema
docs first.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
