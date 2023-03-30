Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B64A8C6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 09:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXHDDMglgktVuk2PbcUpB6XPYIbaqJbz4pOFuE3Zhpo=; b=oRVoB3hANBoRSb
	KQzk1hpF4PjmHwrtsIcLmX7NPIQn1XwikG5wLzzKr1Ue/8rQPYOm57htVWRgY5OFLsf1vHSJVB+EU
	1TN7NRL9QHE1TloMzrt5e1wGqNe/NB0zW3h5OPTAusIRiy7NVUubpVkv8Mn2d/iI6fGIc3znndPcJ
	c4kfUVqx9XLNCYakzYCwOeZhyzBPA108pkrTq31UkMQUma0eL1e/Dmv0gwEiz4zVkNy517QQuAc9C
	Cpgqr4GX99qfrGZ2vYNf/nUe8FUjlS62zTmgsNDHiB+q2JTsFhb40oWrL2BsnN5zWTyL3KH5gurCD
	bjragpTfvGu+8WRueX2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phoq0-003K3i-1B;
	Thu, 30 Mar 2023 09:44:56 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phopx-003K2q-0z
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 09:44:54 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5463fa0c2bfso13498547b3.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Mar 2023 02:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680169491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D5QhRmDJcF4XcN+YN/wMUr5xeRsIP0q2NHf6Lg2WSCU=;
        b=rTytkproI4ZeYbf79ItQhzklZhvcyt1yC5XYKgZe0dIhEll6PC2xTx9HgbbCm3IRnq
         YiBC0+N8Zg79EaS2SBKB+Lq6+DM/mBctgOMjgwHh8272j3J22OQOYpDviYU29Zwl3LJT
         PdRhL7pLas02bTYcYPoxLpRG0lQ8rg+4baZ6KuaejUe+F4E4oxuTsHJFhVP/9ROHPsV3
         Du+GTrKY9ungEXaKXuWcb8Q/qjRsnW/GaM+lJ/L8SZOTIYkf2ovvTQtzu4c3tH5cBgHI
         AU/J320dB0t1i65FoXcyELdrMaF8W8XssqADPM3o3DCXMyW26MRVe/4vhaKpx8hRpL8J
         XZ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680169491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D5QhRmDJcF4XcN+YN/wMUr5xeRsIP0q2NHf6Lg2WSCU=;
        b=JpVYlOARLgYF5QXgYgIN2s1PhrUxXoLuGeX+lZov5iY04QWLwCxSHKOPO29gn9BtJZ
         BouWVEc8hZ87SHzamWkvs5T1Y2vvaYxApTYbL1JxdbTzruZBBjdUkk90u7NUgyF1g36l
         hozPBVABRNwjqMJ8pD4OhCLcc/CVFuYAZIBUj38Q8N5kBZd1eJ8wtr0mYi4wIm/Mj1+c
         Yf4XLx8p7203O0xPYW4T5oqh4zWrsQBzgTeOQTGs7XfbGm5sZaiUkwrHaHk2t26gYkrH
         5wGF6brJiiL4yYi35AfSn9atVtONK1ftqzIOJJ8dqJfsT8noDHhsBp7EE9Vbyv4X+ULk
         cJ5g==
X-Gm-Message-State: AAQBX9f6C7D0tW8Z2Jg7OE1geDadHk4mDnpRdMSvbNrzGwotb8hOY1zx
	mnguLOno/xKlD3rVaFJzvWNG/KAG5djCFiPGp7CJ0A==
X-Google-Smtp-Source: AKy350ZT55VVqmvU2dy3SDJwH+Sxn92AQif8rp45ZViwv5FDX92TYrmgN4KcoHsSxDwuItx9VzmbCUYV/wiH71Th1UU=
X-Received: by 2002:a81:441e:0:b0:546:3252:385d with SMTP id
 r30-20020a81441e000000b005463252385dmr2256127ywa.5.1680169491491; Thu, 30 Mar
 2023 02:44:51 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680162377.git.quic_varada@quicinc.com> <c46b542b112b59002ab965be1d3fcae8c372d545.1680162377.git.quic_varada@quicinc.com>
In-Reply-To: <c46b542b112b59002ab965be1d3fcae8c372d545.1680162377.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 30 Mar 2023 12:44:40 +0300
Message-ID: <CAA8EJpo_ckJtYV4aU613X5L6+wj-1i9vZkud5p72PLdCSnj5ng@mail.gmail.com>
Subject: Re: [PATCH v5 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_024453_355428_E59F22F8 
X-CRM114-Status: GOOD (  18.99  )
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

On Thu, 30 Mar 2023 at 11:42, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Add USB phy and controller related nodes
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v5:
>         - Fix additional comments
>         - Edit nodes to match with qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>         - 'make dtbs_check' giving the following messages since
>           ipq9574 doesn't have power domains. Hope this is ok
>
>                 /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
>                 From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>                 /local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
>                 From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml

No, I think it is not.

>
>
>  Changes in v4:
>         - Use newer bindings without subnodes
>         - Fix coding style issues
>
>  Changes in v3:
>         - Insert the nodes at proper location
>
>  Changes in v2:
>         - Fixed issues flagged by Krzysztof
>         - Fix issues reported by make dtbs_check
>         - Remove NOC related clocks (to be added with proper
>           interconnect support)
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 120 ++++++++++++++++++++++++++++++++++
>  1 file changed, 120 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 2bb4053..8fa9e1a 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -186,6 +186,33 @@
>                 method = "smc";
>         };
>
> +       reg_usb_3p3: s3300 {
> +               compatible = "regulator-fixed";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-name = "usb-phy-vdd-dummy";
> +       };
> +
> +       reg_usb_1p8: s1800 {
> +               compatible = "regulator-fixed";
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-name = "usb-phy-pll-dummy";
> +       };
> +
> +       reg_usb_0p925: s0925 {
> +               compatible = "regulator-fixed";
> +               regulator-min-microvolt = <925000>;
> +               regulator-max-microvolt = <925000>;
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-name = "usb-phy-dummy";
> +       };
> +
>         reserved-memory {
>                 #address-cells = <2>;
>                 #size-cells = <2>;
> @@ -215,6 +242,52 @@
>                 #size-cells = <1>;
>                 ranges = <0 0 0 0xffffffff>;
>
> +               qusb_phy_0: phy@7b000 {
> +                       compatible = "qcom,ipq9574-qusb2-phy";
> +                       reg = <0x0007b000 0x180>;
> +                       #phy-cells = <0>;
> +
> +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +                                <&xo_board_clk>;
> +                       clock-names = "cfg_ahb",
> +                                     "ref";
> +
> +                       vdd-supply = <&reg_usb_0p925>;
> +                       vdda-pll-supply = <&reg_usb_1p8>;
> +                       vdda-phy-dpdm-supply = <&reg_usb_3p3>;
> +
> +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +                       status = "disabled";
> +               };
> +
> +               ssphy_0: phy@7d000 {

Nit: usually the label usb_0_qmpphy

> +                       compatible = "qcom,ipq9574-qmp-usb3-phy";
> +                       reg = <0x0007d000 0xa00>;
> +                       #phy-cells = <0>;
> +
> +                       clocks = <&gcc GCC_USB0_AUX_CLK>,
> +                                <&xo_board_clk>,
> +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +                                <&gcc GCC_USB0_PIPE_CLK>;
> +                       clock-names = "aux",
> +                                     "ref",
> +                                     "com_aux",
> +                                     "pipe";
> +
> +                       resets = <&gcc GCC_USB0_PHY_BCR>,
> +                                <&gcc GCC_USB3PHY_0_PHY_BCR>;
> +                       reset-names = "phy",
> +                                     "phy_phy";
> +
> +                       vdda-pll-supply = <&reg_usb_1p8>;
> +                       vdda-phy-supply = <&reg_usb_0p925>;
> +
> +                       status = "disabled";
> +
> +                       #clock-cells = <0>;
> +                       clock-output-names = "usb0_pipe_clk";
> +               };
> +
>                 pcie0_phy: phy@84000 {
>                         compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
>                         reg = <0x00084000 0x1bc>; /* Serdes PLL */
> @@ -436,6 +509,53 @@
>                         status = "disabled";
>                 };
>
> +               usb3: usb@8a00000 {
> +                       compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
> +                       reg = <0x08af8800 0x400>;
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges;
> +
> +                       clocks = <&gcc GCC_SNOC_USB_CLK>,
> +                                <&gcc GCC_ANOC_USB_AXI_CLK>,
> +                                <&gcc GCC_USB0_MASTER_CLK>,
> +                                <&gcc GCC_USB0_SLEEP_CLK>,
> +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +
> +                       clock-names = "sys_noc_axi",
> +                                     "anoc_axi",
> +                                     "master",
> +                                     "sleep",
> +                                     "mock_utmi";
> +
> +                       assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +                                         <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                       assigned-clock-rates = <200000000>,
> +                                              <24000000>;
> +
> +                       interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "pwr_event";
> +
> +                       resets = <&gcc GCC_USB_BCR>;
> +                       status = "disabled";
> +
> +                       dwc_0: usb@8a00000 {
> +                               compatible = "snps,dwc3";
> +                               reg = <0x8a00000 0xcd00>;
> +                               clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                               clock-names = "ref";
> +                               interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +                               phys = <&qusb_phy_0>, <&ssphy_0>;
> +                               phy-names = "usb2-phy", "usb3-phy";
> +                               tx-fifo-resize;
> +                               snps,is-utmi-l1-suspend;
> +                               snps,hird-threshold = /bits/ 8 <0x0>;
> +                               snps,dis_u2_susphy_quirk;
> +                               snps,dis_u3_susphy_quirk;
> +                               dr_mode = "host";
> +                       };
> +               };
> +
>                 intc: interrupt-controller@b000000 {
>                         compatible = "qcom,msm-qgic2";
>                         reg = <0x0b000000 0x1000>,  /* GICD */
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
