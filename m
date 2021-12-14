Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3020C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 08:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfZ77O5LAMxnCoN3CGr+qoVCAG6BUWO0nK/qiZtW650=; b=CwNeCvor8QF8mq
	XlTmmlAOw0tenkcqyFKYh+bTq7zf6d9830yHFDgvxrHxbEfP74radx8WFDRZ3KobHt/GDJgAcA3NR
	fuGAMoHmE6zHKZAjYwSRmdms3wJD5Mdv+gwwZw3VGvvAdRxIZ1Zsw5+75wpZ7GEAMt065h1pWEQbG
	MKYca2JmsxLA2ZoKdaYocz4+sN+EnAjPDN3lINKuWahyX1LxR4gaN0Pi3CSNa4ZL38iI96KQOsOey
	sr0khgWxSkUTo1H0U3g3sSc373XvKAkg5aiyCKu68RAjRJ5tT6QYhB0NkngKLzUVH586C6XWdZ+3o
	0u1Jyqo1OnxaiRBXnbwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx3eg-00DARW-FG; Tue, 14 Dec 2021 08:59:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx3eI-00DAIr-Gf; Tue, 14 Dec 2021 08:59:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id ECC5E61362;
 Tue, 14 Dec 2021 08:59:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3C6BC34604;
 Tue, 14 Dec 2021 08:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639472341;
 bh=4XA1uqFSGAEDw8kyB0Oc0Z4VEEuxndcmhIaDpt3JEqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WMKcE6fE0tJBSGble33b6dgoT7H1nam2Z+dJJQFPSqU14zpfjQvX4WDuyzmjb6uKw
 66YDVW00o9MQaorBqtloEtItPrrOQ0KWMWgA/19aWO8bVuu3lw4lolWv2qCuOjxb2X
 Uaj3EUDudLp1OqEENaQm3g/YOEf7Br1zTEr/2F78HRuFXy3Pk8dmdTFajxtClrjtQT
 e323KTimibKLwZ2AxalRo7jjJPBwWqaQwzt5AhbvrRwKXWGC3nuSfIc4GCWNTqI60O
 cee0eHMMQZxlaqSBAK2OeqETmGW1achsP+F1IvIob0fFYq7imZ/iNUyryICbWhDVE7
 eoU3TC2/iT0hA==
Date: Tue, 14 Dec 2021 14:28:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, kishon@ti.com,
 p.zabel@pengutronix.de, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v4 2/4] dt-bindings: phy: rockchip: Add Naneng combo
 PHY bindings
Message-ID: <Ybhc0VW6JeJ4CNY9@matsya>
References: <20211208185449.16763-1-jbx6244@gmail.com>
 <20211208185449.16763-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208185449.16763-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_005902_679514_9F531EEE 
X-CRM114-Status: GOOD (  22.64  )
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

On 08-12-21, 19:54, Johan Jonker wrote:
> From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> 
> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.

Why is this series still tagged RFC..?

> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V4:
>   restyle
>   remove some minItems
>   add more properties
>   remove reset-names
>   move #phy-cells
>   add rockchip,rk3568-pipe-grf
>   add rockchip,rk3568-pipe-phy-grf
> ---
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 127 ++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> new file mode 100644
> index 000000000..d309e2008
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoC Naneng Combo Phy Device Tree Bindings
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3568-naneng-combphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: reference clock
> +      - description: apb clock
> +      - description: pipe clock

no maxItems or minItems for this?

> +
> +  clock-names:
> +    items:
> +      - const: ref
> +      - const: apb
> +      - const: pipe
> +
> +  resets:
> +    items:
> +      - description: exclusive apb reset line
> +      - description: exclusive PHY reset line

Ditto?

> +
> +  rockchip,dis-u3otg0-port:
> +    type: boolean
> +    description:
> +      Disable the u3otg0 port.

why not make it explicit and say rockchip,disable-u3otg0-port

Also why should this port be disabled?

> +
> +  rockchip,dis-u3otg1-port:
> +    type: boolean
> +    description:
> +      Disable the u3otg1 port.

ditto

> +
> +  rockchip,enable-ssc:
> +    type: boolean
> +    description:
> +      In U3 and SATA mode the SSC option is already disabled by default.
> +      In PCIE mode the option SSC can be enabled.
> +      If Spread Spectrum Clocking (SSC) is used it is
> +      required that a common reference clock is used by the link partners.
> +      Most commercially available platforms with PCIe backplanes use
> +      SSC to reduce EMI.
> +
> +  rockchip,ext-refclk:
> +    type: boolean
> +    description:
> +      Many PCIe connections, especially backplane connections,
> +      require a synchronous reference clock between the two link partners.
> +      To achieve this a common clock source, referred to as REFCLK in
> +      the PCI Express Card Electromechanical Specification,
> +      should be used by both ends of the PCIe link.
> +      The PCIe PHY provides 100MHz differential clock output
> +      (optional with SSC) in RC mode for system applications.
> +
> +  rockchip,pipe-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Some additional phy settings are accessed through GRF regs.
> +
> +  rockchip,pipe-phy-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Some additional pipe settings are accessed through GRF regs.
> +
> +  rockchip,sgmii-mac-sel:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1]
> +    default: 0
> +    description:
> +      Select gmac0 or gmac1 to be used as SGMII controller.
> +
> +  "#phy-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - rockchip,pipe-grf
> +  - rockchip,pipe-phy-grf
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +
> +    pipegrf: syscon@fdc50000 {
> +      compatible = "rockchip,rk3568-pipe-grf", "syscon";
> +      reg = <0xfdc50000 0x1000>;
> +    };
> +
> +    pipe_phy_grf0: syscon@fdc70000 {
> +      compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
> +      reg = <0xfdc70000 0x1000>;
> +    };
> +
> +    combphy0: phy@fe820000 {
> +      compatible = "rockchip,rk3568-naneng-combphy";
> +      reg = <0xfe820000 0x100>;
> +      clocks = <&pmucru CLK_PCIEPHY0_REF>,
> +               <&cru PCLK_PIPEPHY0>,
> +               <&cru PCLK_PIPE>;
> +      clock-names = "ref", "apb", "pipe";
> +      assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
> +      assigned-clock-rates = <100000000>;
> +      resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;
> +      rockchip,pipe-grf = <&pipegrf>;
> +      rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
> +      #phy-cells = <1>;
> +    };
> -- 
> 2.20.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
