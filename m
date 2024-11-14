Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 491DDD68B12
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 13:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CER5ThZcgFZUq4DOtoBg1DIfv+jL4cZmihEHrvEuXIY=; b=R8Ys9Xlrdi8XW0
	NpUP0/UlyC78h8I5AaX98g/xk/DQDq4JyiKMsV0ntf21Z/T/Gx9ZvHpsDJ0+yfDeYWHughb5ucTdl
	PCTG7G97Qn2sKCezzIL/EMJnYBircLdXwJA84IALQKOkSX1+I18ZJjUXoJnOS2FAj3FdEV+wGAmiF
	ugKJ2Kt39tkuwEHfitC3HcZJox9mMdfn6n/1OBtjF8qqzX1662kbeoH3FKTwWAVP+FL68J2OilnGu
	y8Hd7O4SRqIIBM4mm9FWsyP4UgSACAJjhqucDiVs+o4lexjYlKcUjWFfSzYQS/CDyqHRjwmbjhZZj
	+P/o9OcqQan0ZbmumJsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZtz-0000000A3OV-3aLl;
	Thu, 14 Nov 2024 13:28:51 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBZtx-0000000A3Nz-05px
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 13:28:50 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-6ea07d119b7so5406627b3.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 05:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731590927; x=1732195727; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mcQ5UiOW6mD+0cy+sSW1sUJ7XuSBho0hmBvy+z6MjTw=;
        b=LReesQix6ynIPFjxoiOCVKzjX2y6c2+sVjc3g1PlqmnznwbEgafAZvl91DVCKWQA5a
         X2puiDEbUt9CWmnGgOzUakYbhML0ykwIeDpOdfQgES11IASXwqnyaj5RY4Fe2iVurIRH
         CQuk9wQ6qXzPuW6LXd00ZVT6cQpbtK+NLBOp9KSW3l8RtxmgkGCxk0Yylgf2TWZ1+mMM
         4Fh/3KatiCv08Uzpebhi35HYmEAjsk0jh+Cg2AkMC8vn3iompyBKd+aca1J1sfMFB58y
         +b5jJoif490rA0T/aPpjMgqAYpJPlmtYmnsb8L6jH09mv3mXRdcP6a+xokNH0PbITwGA
         qLBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731590927; x=1732195727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mcQ5UiOW6mD+0cy+sSW1sUJ7XuSBho0hmBvy+z6MjTw=;
        b=ArQhc1FORUcP0d2g9RcKBixW+jvNsetjpcTWPhDJR5SyDZbqJxfNzsy16F0QPAV1B2
         OGhiPlji7XUZQqQ8enDXkMfqMwZnTlAfh0mu7Yg/38QuZ9nWAtrMU0mhp1QIV1Ygy3W5
         BQ7Z1TJS4OX3ZK/1JHJIhzY+azjrQZvGzzxEnQxZYkitBTWY/pfe27s33aplfM+Qr2Ef
         pM5ANABgVYcK0lFH6Gv8w8eC/0v0tHU2d1UURmMg0Sk+hSwjLDuYxK5Je8eHPZ9N17x9
         XpGkuWyiBVEvXtnaDqCcu7U0cf74s/fTfbakJsejJc66vUypSPWURGYXgvgnvH8Vi1AM
         KUYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkXCnjhqIfK7rgQPbecvabeEkBW7+2bLgfz0JKjSIaqjA8BP6xvq5NBTLQWUEIWWTKaywRh2AWieo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAZHK4JqOT1awa2Mp+zT6bqi2fxYbBR7X6W7uwtjlHWZWVEuey
	q+9A/CQVdnr/wTpSgczLt2852hXvQ8FGIXGgAKfh+sQWyoVk+SZXCXpYHjGs8auereYsp4zKb/E
	vy3QICH9pLnK6cllRWYv5IzhpjN1ZahRafcbFxw==
X-Google-Smtp-Source: AGHT+IEugYhO3qu2pI5GTy+5MNobr83Oj1LIe7KV1mNroQS/7Hdfjqfs3RZ2KahktWJFX5bf8Yw2oc7xssKAL6x6h1s=
X-Received: by 2002:a05:690c:2501:b0:6dd:cdd7:ce49 with SMTP id
 00721157ae682-6eca4640ff7mr126602127b3.6.1731590927516; Thu, 14 Nov 2024
 05:28:47 -0800 (PST)
MIME-Version: 1.0
References: <20241114074722.4085319-1-quic_varada@quicinc.com> <20241114074722.4085319-7-quic_varada@quicinc.com>
In-Reply-To: <20241114074722.4085319-7-quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Nov 2024 15:28:36 +0200
Message-ID: <CAA8EJpr6xb=TPPgk7ERhKVp7OnYdPGCK6+1_2TBRLBt_eWM43A@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: Add USB controller and phy nodes
 for IPQ5424
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, andersson@kernel.org, 
	konradybcio@kernel.org, mantas@8devices.com, quic_kbajaj@quicinc.com, 
	quic_kriskura@quicinc.com, quic_rohiagar@quicinc.com, abel.vesa@linaro.org, 
	quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_052849_142099_E7EE6ADB 
X-CRM114-Status: GOOD (  14.98  )
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

On Thu, 14 Nov 2024 at 09:48, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
> can connect to either of USB2.0 or USB3.0 phy and operate in the
> respective mode.
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3: Regulator node names, labels and 'regulator-name' changed per review suggestions
>     Stray newline removed
>
> v2: Add dm/dp_hs_phy_irq to usb3@8a00000 node
>     Add u1/u2-entry quirks to usb@8a00000 node
> ---
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts |  66 ++++++++
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi       | 159 ++++++++++++++++++++
>  2 files changed, 225 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index d4d31026a026..859e15befb3f 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -16,12 +16,70 @@ / {
>         aliases {
>                 serial0 = &uart1;
>         };
> +
> +       vreg_misc_3p3: regulator-3300000 {

Technically these names are correct. However they don't match the
approach that Qualcomm DT files have been using up to now.
You can compare your data with the output of `git grep :.regulator-
arch/arm64/boot/dts/qcom/`

> +               compatible = "regulator-fixed";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-name = "usb_hs_vdda_3p3";
> +       };
> +
> +       vreg_misc_1p8: regulator-1800000 {
> +               compatible = "regulator-fixed";
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-name = "vdda_1p8_usb";
> +       };
> +
> +       vreg_misc_0p925: regulator-0925000 {
> +               compatible = "regulator-fixed";
> +               regulator-min-microvolt = <925000>;
> +               regulator-max-microvolt = <925000>;
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-name = "vdd_core_usb";
> +       };
> +};
> +
> +&dwc_0 {
> +       dr_mode = "host";
> +};
> +
> +&dwc_1 {
> +       dr_mode = "host";
> +};
> +
> +&qusb_phy_0 {
> +       vdd-supply = <&vreg_misc_0p925>;
> +       vdda-pll-supply = <&vreg_misc_1p8>;
> +       vdda-phy-dpdm-supply = <&vreg_misc_3p3>;
> +
> +       status = "okay";
> +};
> +
> +&qusb_phy_1 {
> +       vdd-supply = <&vreg_misc_0p925>;
> +       vdda-pll-supply = <&vreg_misc_1p8>;
> +       vdda-phy-dpdm-supply = <&vreg_misc_3p3>;
> +
> +       status = "okay";
>  };
>
>  &sleep_clk {
>         clock-frequency = <32000>;
>  };
>
> +&ssphy_0 {
> +       vdda-pll-supply = <&vreg_misc_1p8>;
> +       vdda-phy-supply = <&vreg_misc_0p925>;
> +
> +       status = "okay";
> +};
> +
>  &tlmm {
>         sdc_default_state: sdc-default-state {
>                 clk-pins {
> @@ -53,6 +111,14 @@ &uart1 {
>         status = "okay";
>  };
>
> +&usb2 {
> +       status = "okay";
> +};
> +
> +&usb3 {
> +       status = "okay";
> +};
> +
>  &xo_board {
>         clock-frequency = <24000000>;
>  };
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 5e219f900412..f8afd6f0412d 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -233,6 +233,165 @@ intc: interrupt-controller@f200000 {
>                         msi-controller;
>                 };
>
> +               qusb_phy_1: phy@71000 {
> +                       compatible = "qcom,ipq5424-qusb2-phy";
> +                       reg = <0 0x00071000 0 0x180>;
> +                       #phy-cells = <0>;
> +
> +                       clocks = <&gcc GCC_USB1_PHY_CFG_AHB_CLK>,
> +                               <&xo_board>;
> +                       clock-names = "cfg_ahb", "ref";
> +
> +                       resets = <&gcc GCC_QUSB2_1_PHY_BCR>;
> +                       status = "disabled";
> +               };
> +
> +               usb2: usb2@1e00000 {
> +                       compatible = "qcom,ipq5424-dwc3", "qcom,dwc3";
> +                       reg = <0 0x01ef8800 0 0x400>;
> +                       #address-cells = <2>;
> +                       #size-cells = <2>;
> +                       ranges;
> +
> +                       clocks = <&gcc GCC_USB1_MASTER_CLK>,
> +                                <&gcc GCC_USB1_SLEEP_CLK>,
> +                                <&gcc GCC_USB1_MOCK_UTMI_CLK>,
> +                                <&gcc GCC_USB1_PHY_CFG_AHB_CLK>,
> +                                <&gcc GCC_CNOC_USB_CLK>;
> +
> +                       clock-names = "core",
> +                                     "sleep",
> +                                     "mock_utmi",
> +                                     "iface",
> +                                     "cfg_noc";
> +
> +                       assigned-clocks = <&gcc GCC_USB1_MASTER_CLK>,
> +                                         <&gcc GCC_USB1_MOCK_UTMI_CLK>;
> +                       assigned-clock-rates = <200000000>,
> +                                              <24000000>;
> +
> +                       interrupts-extended = <&intc GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&intc GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&intc GIC_SPI 387 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&intc GIC_SPI 388 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "pwr_event",
> +                                         "qusb2_phy",
> +                                         "dm_hs_phy_irq",
> +                                         "dp_hs_phy_irq";
> +
> +                       resets = <&gcc GCC_USB1_BCR>;
> +                       qcom,select-utmi-as-pipe-clk;
> +                       status = "disabled";
> +
> +                       dwc_1: usb@1e00000 {
> +                               compatible = "snps,dwc3";
> +                               reg = <0 0x01e00000 0 0xe000>;
> +                               clocks = <&gcc GCC_USB1_MOCK_UTMI_CLK>;
> +                               clock-names = "ref";
> +                               interrupts = <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>;
> +                               phys = <&qusb_phy_1>;
> +                               phy-names = "usb2-phy";
> +                               tx-fifo-resize;
> +                               snps,is-utmi-l1-suspend;
> +                               snps,hird-threshold = /bits/ 8 <0x0>;
> +                               snps,dis_u2_susphy_quirk;
> +                               snps,dis_u3_susphy_quirk;
> +                       };
> +               };
> +
> +               qusb_phy_0: phy@7b000 {
> +                       compatible = "qcom,ipq5424-qusb2-phy";
> +                       reg = <0 0x0007b000 0 0x180>;
> +                       #phy-cells = <0>;
> +
> +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +                               <&xo_board>;
> +                       clock-names = "cfg_ahb", "ref";
> +
> +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +                       status = "disabled";
> +               };
> +
> +               ssphy_0: phy@7d000 {
> +                       compatible = "qcom,ipq5424-qmp-usb3-phy";
> +                       reg = <0 0x0007d000 0 0xa00>;
> +                       #phy-cells = <0>;
> +
> +                       clocks = <&gcc GCC_USB0_AUX_CLK>,
> +                                <&xo_board>,
> +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +                                <&gcc GCC_USB0_PIPE_CLK>;
> +                       clock-names = "aux",
> +                                     "ref",
> +                                     "cfg_ahb",
> +                                     "pipe";
> +
> +                       resets = <&gcc GCC_USB0_PHY_BCR>,
> +                                <&gcc GCC_USB3PHY_0_PHY_BCR>;
> +                       reset-names = "phy",
> +                                     "phy_phy";
> +
> +                       #clock-cells = <0>;
> +                       clock-output-names = "usb0_pipe_clk";
> +
> +                       status = "disabled";
> +               };
> +
> +               usb3: usb3@8a00000 {
> +                       compatible = "qcom,ipq5424-dwc3", "qcom,dwc3";
> +                       reg = <0 0x08af8800 0 0x400>;
> +
> +                       #address-cells = <2>;
> +                       #size-cells = <2>;
> +                       ranges;
> +
> +                       clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +                                <&gcc GCC_USB0_SLEEP_CLK>,
> +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>,
> +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +                                <&gcc GCC_CNOC_USB_CLK>;
> +
> +                       clock-names = "core",
> +                                     "sleep",
> +                                     "mock_utmi",
> +                                     "iface",
> +                                     "cfg_noc";
> +
> +                       assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +                                         <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                       assigned-clock-rates = <200000000>,
> +                                              <24000000>;
> +
> +                       interrupts-extended = <&intc GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&intc GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&intc GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&intc GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "pwr_event",
> +                                         "qusb2_phy",
> +                                         "dm_hs_phy_irq",
> +                                         "dp_hs_phy_irq";
> +
> +                       resets = <&gcc GCC_USB_BCR>;
> +                       status = "disabled";
> +
> +                       dwc_0: usb@8a00000 {
> +                               compatible = "snps,dwc3";
> +                               reg = <0 0x08a00000 0 0xcd00>;
> +                               clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                               clock-names = "ref";
> +                               interrupts = <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>;
> +                               phys = <&qusb_phy_0>, <&ssphy_0>;
> +                               phy-names = "usb2-phy", "usb3-phy";
> +                               tx-fifo-resize;
> +                               snps,is-utmi-l1-suspend;
> +                               snps,hird-threshold = /bits/ 8 <0x0>;
> +                               snps,dis_u2_susphy_quirk;
> +                               snps,dis_u3_susphy_quirk;
> +                               snps,dis-u1-entry-quirk;
> +                               snps,dis-u2-entry-quirk;
> +                       };
> +               };
> +
>                 timer@f420000 {
>                         compatible = "arm,armv7-timer-mem";
>                         reg = <0 0xf420000 0 0x1000>;
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
