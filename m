Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D40DFD0C5F8
	for <linux-phy@archiver.kernel.org>; Fri, 25 Oct 2024 10:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ic8nKE63Smzn6pmBdqUGSQs3bnHHt0aWVzukqVQ/e9o=; b=W2xa7jniMGt92U
	icWtC449uzK1yijAUa3n9MJiBukk/oYfAAL6L5I0kBCxzs4rhyzOBWcW1O7gs+VGgIF1QgS88SJge
	+4JYfQGvL1Or/j4GDZhj0VNwOAOmAOa8WSn93Trv2/oB1MUn3bT++l8xB2bnDgQRNDbqSuU+DK0Re
	1oQxS3xY/IKTQkhKgFFUDXFmOz+fmjMncTaBYwVzNjtw1zEZYb6KSUgWQHT709v9si0EMrI5KUNR1
	eKPtc0UsWRZEtD9AmTvHUh3UFUS5VyguJq+Fxsx1V2rSCzktCRfpAKdWJ3/6sRWj4svwQ/vglrqUB
	AKGNlA9m1oG/udcTT40A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4HHt-00000003K1u-1gsV;
	Fri, 25 Oct 2024 10:11:21 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4HGD-00000003JXT-0166;
	Fri, 25 Oct 2024 10:09:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F00F3339;
	Fri, 25 Oct 2024 03:10:03 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8419C3F73B;
	Fri, 25 Oct 2024 03:09:29 -0700 (PDT)
Date: Fri, 25 Oct 2024 11:09:26 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Cody Eksal <masterr3c0rd@epochal.quest>
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-sunxi@lists.linux.dev"
 <linux-sunxi@lists.linux.dev>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "linux-usb@vger.kernel.org"
 <linux-usb@vger.kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Parthiban <parthiban@linumiz.com>, Yangtao Li <frank@allwinnertech.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>, Vinod Koul
 <vkoul@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Thierry
 Reding <treding@nvidia.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Maxime
 Ripard <mripard@kernel.org>, Yangtao Li <tiny.windzz@gmail.com>, Viresh
 Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd
 <sboyd@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH 04/13] dt-bindings: usb: Add A100 compatible string
Message-ID: <20241025110926.6e033dfc@donnerap.manchester.arm.com>
In-Reply-To: <20241024170540.2721307-5-masterr3c0rd@epochal.quest>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
	<20241024170540.2721307-5-masterr3c0rd@epochal.quest>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_030937_175842_4B79EB9A 
X-CRM114-Status: GOOD (  13.60  )
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

On Thu, 24 Oct 2024 18:05:22 +0100
Cody Eksal <masterr3c0rd@epochal.quest> wrote:

> The Allwinner A100 contains two fully OHCI/EHCI compatible USB host
> controllers. Add their compatible strings to the list of
> generic OHCI/EHCI controllers.
> 
> Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  Documentation/devicetree/bindings/usb/generic-ehci.yaml | 1 +
>  Documentation/devicetree/bindings/usb/generic-ohci.yaml | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> index 2ed178f16a78..e00e98dd04af 100644
> --- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> +++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> @@ -30,6 +30,7 @@ properties:
>                - allwinner,sun4i-a10-ehci
>                - allwinner,sun50i-a64-ehci
>                - allwinner,sun50i-h6-ehci
> +              - allwinner,sun50i-a100-ehci
>                - allwinner,sun50i-h616-ehci
>                - allwinner,sun5i-a13-ehci
>                - allwinner,sun6i-a31-ehci
> diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
> index b9576015736b..6ce81979781b 100644
> --- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
> +++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
> @@ -17,6 +17,7 @@ properties:
>                - allwinner,sun4i-a10-ohci
>                - allwinner,sun50i-a64-ohci
>                - allwinner,sun50i-h6-ohci
> +              - allwinner,sun50i-a100-ohci
>                - allwinner,sun50i-h616-ohci
>                - allwinner,sun5i-a13-ohci
>                - allwinner,sun6i-a31-ohci


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
