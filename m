Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1B2BC7618E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Apr 2023 11:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOUwWXoINDzu+y/CzxC/CfIDcxuB2xx8YNQ5+rt3fNQ=; b=bhLN5NX2iALQ+x
	U3GC+lEKyn+5A4dJjTXDedeXePNWdLc5i68boCN5SKKE0YyqjlGn76mfTl1iYgz6+6YAJ0C35lKKr
	pMWj94EDVKRFBepdC/RBdar8IzfVxWKz9I7oJ2XnovE78LZsjKuB6IKbqPZZdbj+SVem1hKGwPApX
	/P32tVQBGOA7qJdLRvbNzCgcmZtdzRWoArJt4Wg4gr/xeu4VESESkOCNMZ3C5WIhkgAur/0S9SyHf
	6xCFJbjVs5Lq9ED8DlPm0yKYXGvyEANQOv8WB/f/KrpUmMalMKmPGNM2DqhnLrnTytRaiRXRU/OAt
	YoBzxd3pafR7TUxQ2dPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pquCB-00GAIZ-1k;
	Mon, 24 Apr 2023 11:17:23 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pquC8-00GAHq-0n
	for linux-phy@lists.infradead.org;
	Mon, 24 Apr 2023 11:17:22 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-b992e28c141so4993506276.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Apr 2023 04:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682335037; x=1684927037;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iaX8xsPGl4rslxp6ho/AchvXG89eWPF4+LjwLKPk3Q0=;
        b=PjF+k3XpknjTI7vcWJKwUWfFS+VCgLz/H1srKu1Hhq6NRjbIziu7HYWCwPHns/hCK9
         rlMKZ5aGNpcuZDdYQEdE7x5ed3atiOFOYwwDna13UuuFoeEaJPUqw6efAxvVKU+eFiVG
         uLBG9q5M5YX08kkJCzhtwY2TSguOjvxMkv6xX+9oKQq1O6LNx4QFM5r+GE71HtplyYKT
         A1GiRKyTukMkRU7Pu1zDtX91ER3BcBOAicPq2ab46lQ/D6UO0mzfHeFl+DfLfmtf4Kvt
         XPHIePWEvnxMoSFkSYRBVGrvzbOB6LuNyW2CZ4fUZeHujaDFP9CNRaJj9NOb6WZhg4RO
         PiCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682335037; x=1684927037;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iaX8xsPGl4rslxp6ho/AchvXG89eWPF4+LjwLKPk3Q0=;
        b=gkkH5IbBAuPXYyTiZKbb1UFBtWYY4+Zi/581J5Yo2Su8mnn+2Z/U51lGIopJl5P5Yh
         tai5US3JVf0SFrnxO2O9Jp1aimN+Y2Gg1yL4lb9o5zg5L63Mx2d/uf0etKjHjUTXecYW
         GduOwPCoDJ72ycMZeXABPXQOFn4AN8WsHAG+sp7vgcc6pP+ybpUReuPrk6uRFUfGTdUa
         c9qXejFEO8yE6S6RencSA/1ylMmTnS2+x10BE89v7fJhLtwW15vITVT0L3QJ1KjuxIQI
         /WSYg0T8i1FvlK0yN7mNBIuOKv/d+MzZqars0MUGcrBTw+tSJbhY/dtoPFdY6OQWBaQ1
         mOGA==
X-Gm-Message-State: AAQBX9dr9ys87OMvT6BwwpjJ62xINhcqdar/fGHFAiMGHHQSlebHbLci
	XXeHSj6iHHUhVGUUFrih8YvpTWX92Wkk1fJvgxsPFA==
X-Google-Smtp-Source: AKy350bW1CBxsge2Wn46uHD3D4/voh1BiG85nt/HNpSdQU1MdQwI+nEPHhfHyq0OqmXbZqbZ6fnfVz6e3TAMzWRsC9I=
X-Received: by 2002:a25:aaa4:0:b0:b8e:cb88:1b69 with SMTP id
 t33-20020a25aaa4000000b00b8ecb881b69mr9636527ybi.34.1682335037478; Mon, 24
 Apr 2023 04:17:17 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680693149.git.quic_varada@quicinc.com> <55db8487a7cbf3354749dd2d3a35c05bfd9fa4fc.1680693149.git.quic_varada@quicinc.com>
 <e142ff5d-543f-80bb-94f9-3f1fb90f1b83@linaro.org> <20230424090402.GB21232@varda-linux.qualcomm.com>
In-Reply-To: <20230424090402.GB21232@varda-linux.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 24 Apr 2023 14:17:06 +0300
Message-ID: <CAA8EJprqH5esxQkH3v-1i539OO3jQG9fN-YOqjZTwEqqgUfUyg@mail.gmail.com>
Subject: Re: [PATCH v8 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_041720_303156_094CA337 
X-CRM114-Status: GOOD (  25.88  )
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

On Mon, 24 Apr 2023 at 12:04, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> On Sat, Apr 22, 2023 at 12:07:01AM +0300, Dmitry Baryshkov wrote:
> > On 05/04/2023 14:41, Varadarajan Narayanan wrote:
> > >Add USB phy and controller related nodes
> > >
> > >Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > >---
> > >  Changes in v8:
> > >     - Change clocks order to match the bindings
> > >  Changes in v7:
> > >     - Change com_aux -> cfg_ahb
> > >  Changes in v6:
> > >     - Introduce fixed regulators for the phy
> > >     - Resolved all 'make dtbs_check' messages
> > >
> > >  Changes in v5:
> > >     - Fix additional comments
> > >     - Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > >     - 'make dtbs_check' giving the following messages since
> > >       ipq9574 doesn't have power domains. Hope this is ok
> > >
> > >             /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
> > >             From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > >             /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
> > >             From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> > >
> > >  Changes in v4:
> > >     - Use newer bindings without subnodes
> > >     - Fix coding style issues
> > >
> > >  Changes in v3:
> > >     - Insert the nodes at proper location
> > >
> > >  Changes in v2:
> > >     - Fixed issues flagged by Krzysztof
> > >     - Fix issues reported by make dtbs_check
> > >     - Remove NOC related clocks (to be added with proper
> > >       interconnect support)
> > >---
> > >  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 120 ++++++++++++++++++++++++++++++++++
> > >  1 file changed, 120 insertions(+)
> > >
> > >diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > >index 43a3dbe..1242382 100644
> > >--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > >+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> > >@@ -150,6 +150,33 @@
> > >             method = "smc";
> > >     };
> > >+    reg_usb_3p3: s3300 {
> >
> > The node names do not look generic enough. Please take a look at other
> > platforms.
>
> Please see below.
>
> > >+            compatible = "regulator-fixed";
> > >+            regulator-min-microvolt = <3300000>;
> > >+            regulator-max-microvolt = <3300000>;
> > >+            regulator-boot-on;
> > >+            regulator-always-on;
> > >+            regulator-name = "usb-phy-vdd-dummy";
> >
> > This also doesn't look correct. This regulator should not just fill the gap.
> > Does it represent a generic voltage network on the board?
> >
> > Please do not add 'dummy' voltage regulators if there is no real voltage
> > wire.
>
> These are real voltage wires. I used dummy since they are
> always-on and cannot be increased/decreased (i.e. fixed).
> Would something along the following lines be appropriate?

Still not fully correct. Please use regulator name that corresponds to
the power grid on the board schematics. I don't think that you have a
separate power grids for USB PHY.

>
>         vreg_ae10_3p3: s3300 {

Naming suggests that these voltages are generated by some PMIC. Is
this correct? If so, please describe the PMIC instead.

>                 compatible = "regulator-fixed";
>                 regulator-min-microvolt = <3300000>;
>                 regulator-max-microvolt = <3300000>;
>                 regulator-boot-on;
>                 regulator-always-on;
>                 regulator-name = "usb-phy-vdd";
>         };
>
>         vreg_ad8_1p8: s1800 {
>                 compatible = "regulator-fixed";
>                 regulator-min-microvolt = <1800000>;
>                 regulator-max-microvolt = <1800000>;
>                 regulator-boot-on;
>                 regulator-always-on;
>                 regulator-name = "usb-phy-pll";
>         };
>
>         vreg_ad9_0p925: s0925 {
>                 compatible = "regulator-fixed";
>                 regulator-min-microvolt = <925000>;
>                 regulator-max-microvolt = <925000>;
>                 regulator-boot-on;
>                 regulator-always-on;
>                 regulator-name = "usb-phy";
>         };
>
> Thanks
> Varada
>
> > >+    };
> > >+
> > >+    reg_usb_1p8: s1800 {
> > >+            compatible = "regulator-fixed";
> > >+            regulator-min-microvolt = <1800000>;
> > >+            regulator-max-microvolt = <1800000>;
> > >+            regulator-boot-on;
> > >+            regulator-always-on;
> > >+            regulator-name = "usb-phy-pll-dummy";
> > >+    };
> > >+
> > >+    reg_usb_0p925: s0925 {
> > >+            compatible = "regulator-fixed";
> > >+            regulator-min-microvolt = <925000>;
> > >+            regulator-max-microvolt = <925000>;
> > >+            regulator-boot-on;
> > >+            regulator-always-on;
> > >+            regulator-name = "usb-phy-dummy";
> > >+    };
> > >+
> > >     reserved-memory {
> > >             #address-cells = <2>;
> > >             #size-cells = <2>;
> > >@@ -179,6 +206,52 @@
> > >             #size-cells = <1>;
> > >             ranges = <0 0 0 0xffffffff>;
> > >+            usb_0_qusbphy: phy@7b000 {
> > >+                    compatible = "qcom,ipq9574-qusb2-phy";
> > >+                    reg = <0x0007b000 0x180>;
> > >+                    #phy-cells = <0>;
> > >+
> > >+                    clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > >+                             <&xo_board_clk>;
> > >+                    clock-names = "cfg_ahb",
> > >+                                  "ref";
> > >+
> > >+                    vdd-supply = <&reg_usb_0p925>;
> > >+                    vdda-pll-supply = <&reg_usb_1p8>;
> > >+                    vdda-phy-dpdm-supply = <&reg_usb_3p3>;
> > >+
> > >+                    resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > >+                    status = "disabled";
> > >+            };
> > >+
> > >+            usb_0_qmpphy: phy@7d000 {
> > >+                    compatible = "qcom,ipq9574-qmp-usb3-phy";
> > >+                    reg = <0x0007d000 0xa00>;
> > >+                    #phy-cells = <0>;
> > >+
> > >+                    clocks = <&gcc GCC_USB0_AUX_CLK>,
> > >+                             <&xo_board_clk>,
> > >+                             <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> > >+                             <&gcc GCC_USB0_PIPE_CLK>;
> > >+                    clock-names = "aux",
> > >+                                  "ref",
> > >+                                  "cfg_ahb",
> > >+                                  "pipe";
> > >+
> > >+                    resets = <&gcc GCC_USB0_PHY_BCR>,
> > >+                             <&gcc GCC_USB3PHY_0_PHY_BCR>;
> > >+                    reset-names = "phy",
> > >+                                  "phy_phy";
> > >+
> > >+                    vdda-pll-supply = <&reg_usb_1p8>;
> > >+                    vdda-phy-supply = <&reg_usb_0p925>;
> > >+
> > >+                    status = "disabled";
> > >+
> > >+                    #clock-cells = <0>;
> > >+                    clock-output-names = "usb0_pipe_clk";
> > >+            };
> > >+
> > >             pcie0_phy: phy@84000 {
> > >                     compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> > >                     reg = <0x00084000 0x1000>;
> > >@@ -548,6 +621,53 @@
> > >                     status = "disabled";
> > >             };
> > >+            usb3: usb@8a00000 {
> > >+                    compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
> > >+                    reg = <0x08af8800 0x400>;
> > >+                    #address-cells = <1>;
> > >+                    #size-cells = <1>;
> > >+                    ranges;
> > >+
> > >+                    clocks = <&gcc GCC_SNOC_USB_CLK>,
> > >+                             <&gcc GCC_USB0_MASTER_CLK>,
> > >+                             <&gcc GCC_ANOC_USB_AXI_CLK>,
> > >+                             <&gcc GCC_USB0_SLEEP_CLK>,
> > >+                             <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > >+
> > >+                    clock-names = "cfg_noc",
> > >+                                  "core",
> > >+                                  "iface",
> > >+                                  "sleep",
> > >+                                  "mock_utmi";
> > >+
> > >+                    assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> > >+                                      <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > >+                    assigned-clock-rates = <200000000>,
> > >+                                           <24000000>;
> > >+
> > >+                    interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> > >+                    interrupt-names = "pwr_event";
> > >+
> > >+                    resets = <&gcc GCC_USB_BCR>;
> > >+                    status = "disabled";
> > >+
> > >+                    dwc_0: usb@8a00000 {
> > >+                            compatible = "snps,dwc3";
> > >+                            reg = <0x8a00000 0xcd00>;
> > >+                            clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> > >+                            clock-names = "ref";
> > >+                            interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> > >+                            phys = <&usb_0_qusbphy>, <&usb_0_qmpphy>;
> > >+                            phy-names = "usb2-phy", "usb3-phy";
> > >+                            tx-fifo-resize;
> > >+                            snps,is-utmi-l1-suspend;
> > >+                            snps,hird-threshold = /bits/ 8 <0x0>;
> > >+                            snps,dis_u2_susphy_quirk;
> > >+                            snps,dis_u3_susphy_quirk;
> > >+                            dr_mode = "host";
> > >+                    };
> > >+            };
> > >+
> > >             intc: interrupt-controller@b000000 {
> > >                     compatible = "qcom,msm-qgic2";
> > >                     reg = <0x0b000000 0x1000>,  /* GICD */
> >
> > --
> > With best wishes
> > Dmitry
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
