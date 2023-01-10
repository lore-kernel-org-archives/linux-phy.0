Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E066C54EBE
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jan 2023 15:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Y13+SifejYpRnA58dX9RetnIcFRhb/OCKggmWopvOyY=; b=cKcGQKUFUMYp8Y
	bsT0P3IiQlZqBvesKrYbB8Ht6fh4U6x2okPV7VBt0RaB8bY669dXnDr3nVjSryAssl6mwsWnhpXFo
	W/ScIdhV4LN1/I9yWPdDZgkxW36wewv3qZ9fjy5LF6XFeOhaGB27u6gf9YHqJOlos37z7bIOc8ORl
	/8jeBghvGStbj06U7zcjVuzdyKVPkn+T/r31JIeCO51xWV1DNhIXZYciLN6CVjztu8jvu66EfQY9E
	GvNsv4dx0OBn8pGeqFXVNGXpI/4FhGyJMcqz7fM/BRCUNuwGVim1uU//BfJh/o4rKnZYU5REJjb2W
	62yQGTYNxcsGYMAK8/CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGAM-007TKg-L1; Tue, 10 Jan 2023 15:03:54 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGA5-007TCy-R8; Tue, 10 Jan 2023 15:03:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id ED6C5B816D7;
	Tue, 10 Jan 2023 15:03:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0C6DC433EF;
	Tue, 10 Jan 2023 15:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673363010;
	bh=cSOjhI/rcYOBxIyxdsvudzOyCa6ADLVAW/FmFkVKg00=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=ueMulu/pRqy9gq0M9ADRSVx5gNW+bOd5FqE36CY0G+MMCuSTJ2NeoJls5C6GgOz6F
	 7ecCEwKkvMNCnLAIhRAp9YUcYtJ/R3fN5KT8fH144ZhaIrOo6+plyVGdGrYo9y2V2R
	 aHHY42/bBXpJ/XM3ewJVue9v/S6D1tCSOp22Ib3EeGoqQcOriOPLXIbKdQEvOqTVC5
	 Ld1HuYHyu60RivS9pjlewHcseOPlFiVXaS8Pbto556JYjYdCnRUAtXOLsH1DglI8Ms
	 +dAhlI89nGhNO4Z/Fol3nodQ+GgPrvW9JQpvihMOUiNTyFtb6BjpSbyezKWWeMj5g4
	 ExAKB8+0nfY7g==
Date: Tue, 10 Jan 2023 09:03:28 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org,
	netdev@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 10/11] dt-bindings: PCI: convert
 amlogic,meson-pcie.txt to dt-schema
Message-ID: <20230110150328.GA1502381@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v2-10-36ad050bb625@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_070338_180245_3C61C150 
X-CRM114-Status: GOOD (  17.66  )
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

Is this the same sort of conversion done by one of these?

  e4dffb674cfd ("dt-bindings: PCI: tegra194: Convert to json-schema")
  075a9d55932e ("dt-bindings: PCI: qcom: Convert to YAML")

It's helpful to non-experts like me if the subject lines use similar
style (capitalized) and similar terminology ("dt-schema" vs
"json-schema" vs "YAML").

On Mon, Jan 09, 2023 at 01:53:34PM +0100, Neil Armstrong wrote:
> Convert the Amlogic Meson AXG DWC PCIE SoC controller bindings to
> dt-schema.

Some references here and below are "PCIE" (inherited from the
original) and others are "PCIe".  Could be made consistent here.

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../devicetree/bindings/pci/amlogic,axg-pcie.yaml  | 134 +++++++++++++++++++++
>  .../devicetree/bindings/pci/amlogic,meson-pcie.txt |  70 -----------
>  2 files changed, 134 insertions(+), 70 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/amlogic,axg-pcie.yaml b/Documentation/devicetree/bindings/pci/amlogic,axg-pcie.yaml
> new file mode 100644
> index 000000000000..a08f15fe9a9a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/amlogic,axg-pcie.yaml
> @@ -0,0 +1,134 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/amlogic,axg-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Meson AXG DWC PCIE SoC controller
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +
> +description:
> +  Amlogic Meson PCIe host controller is based on the Synopsys DesignWare PCI core.
> ...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
