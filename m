Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19D21C6FD1C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 14:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9z9E5OePxfAYDloSSp4xgXHCAMUEwcLW4AGNyAhEwJc=; b=WXn38777KOCF86
	usgG8h7Gk/LVSk5lm1F4WpER+/obU+GM+z+3C4gIrVBMlB1XJ008RFow12/Pcb2eFS7BzQTAkCPDX
	z5kOp3DNOwI54SxiJ/Zwgm/LJxJ3LmPBiQLJb1fFgHRdoKFsxCy58Ng2ANUyJJmHunX6Yy7wdDNa1
	WnNvLOk9L5/ekGM5WaehractTOAGmjjm1rfbF6/gmaCAZZ4A2XnkXH2irmmcwjJt3AYu1yMBkEP2h
	Jr14XdKzW6k+GOzgTAlXLfCZLCEAyiL6ha/7l7zD1ozieJ7YMhXGSYcssY2usjmsrOZt0I+hDYqUx
	UudcQJMNR4360d9nLvOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pezeS-00GL0o-0k;
	Wed, 22 Mar 2023 14:41:20 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pezeP-00GL08-2X
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 14:41:19 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id e65so21245579ybh.10
        for <linux-phy@lists.infradead.org>; Wed, 22 Mar 2023 07:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679496072;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dwrWFBfwB9kGIHdKOm9I7XrkyLQMCrqtoZsi4Z0QdbM=;
        b=F0w5e6ZMX4ejR5QsVQiqxR3dcGhYhLoC0lZNvEZOA0Q7DL2mOy3SrO7dbV15fGayLP
         OyXmKujQ0zcDkkemYCGNsyf75hLK6LlpbxIh5GVqde2o0sjQo2lRTFwIGGSvLk/nvdTr
         lkuNFvcuE+FNrR6LuFS5EuCM4/ZRCbnvpW7opbAWoh13a9QP8sFpw36WEdUMsREEIpK1
         adCs+5hzP7cWPvxU5pwPwkG1I6W24jY2fEoKgMWEPbDVIJVbGAWAbRg3G3t/ua30bcE2
         Bp3nUoo3S5yMaczrYsbO+6tNLgweA9mdFDVwZwLvJGeb/9kGlJVSb/ZNdehyTelgUAc2
         gNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679496072;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dwrWFBfwB9kGIHdKOm9I7XrkyLQMCrqtoZsi4Z0QdbM=;
        b=KLX9MvOsBMVquVx9nGGA81Z6k3BOL+OAedZSKfe6qfY0i63kt24ujnSj6hoi+NfsNA
         JQxY1FY7o690hp5jhBDCm+s7r7Vx37kOYkqe4cGUrlrqebvY68CrLlhzGRC9ZmlAyRxW
         r6FN3aB40rmY3Gw58lwwOmeHm5Ar8goMmtfr1WC40UQJsfTQTfX5XiU4lEf8GLVt0JfG
         g8TxaHIX6tsdFQOCF8nsI+ZvvsJVUvH0kv35Qiv9XpCs0wcYcTFqQMTBAXhjOo/wIiIA
         q27dxUfsBFuZrc5YnWIx80E+AMffYy0nF+S2y99p8eVptDOOdke8YSSz96cYTKfKBbm1
         +0OQ==
X-Gm-Message-State: AAQBX9cLQRCegN7lqxNo/CMH280RxMct7l6uL+Lxdsp14o9Se9jyLc4X
	50CYhhJitH1xIxvBBMEEYK31FLEfZlLyeHKJJd78Hw==
X-Google-Smtp-Source: AKy350brfn7Z6o8S2/0vpnavmEx1927OK55K5Jv3TrdYOcq2VC9PIKusWzICyXRr17lUOcIb7jQf8MvaL8LUkwY93es=
X-Received: by 2002:a25:7456:0:b0:b6b:79a2:8cff with SMTP id
 p83-20020a257456000000b00b6b79a28cffmr12890ybc.9.1679496072367; Wed, 22 Mar
 2023 07:41:12 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1679479634.git.quic_varada@quicinc.com> <5b7213a4c402ee334ff48f2efe2b920858637ac5.1679479634.git.quic_varada@quicinc.com>
In-Reply-To: <5b7213a4c402ee334ff48f2efe2b920858637ac5.1679479634.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Mar 2023 16:41:01 +0200
Message-ID: <CAA8EJppXuaGx4VhZ9fOBUkD8fECngzJ8pubNC4bm_0M9+64ZqQ@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_074117_866282_6A0DFE9C 
X-CRM114-Status: GOOD (  17.10  )
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

On Wed, 22 Mar 2023 at 12:46, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Add USB phy and controller related nodes
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v3:
>         - Insert the nodes at proper location
>
>  Changes in v2:
>         - Fixed issues flagged by Krzysztof
>         - Fix issues reported by make dtbs_check
>         - Remove NOC related clocks (to be added with proper
>           interconnect support)
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 86 +++++++++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 2bb4053..0943901 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -215,6 +215,48 @@
>                 #size-cells = <1>;
>                 ranges = <0 0 0 0xffffffff>;
>
> +               qusb_phy_0: phy@7b000 {
> +                       compatible = "qcom,ipq9574-qusb2-phy";
> +                       reg = <0x07b000 0x180>;

Please pad addresses to 8 hex digits.


> +                       #phy-cells = <0>;
> +
> +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +                               <&xo_board_clk>;
> +                       clock-names = "cfg_ahb", "ref";
> +
> +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +                       status = "disabled";
> +               };
> +
> +               ssphy_0: phy@7d000 {
> +                       compatible = "qcom,ipq9574-qmp-usb3-phy";
> +                       reg = <0x7d000 0x1c4>;
> +                       #clock-cells = <1>;
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges;
> +
> +                       clocks = <&gcc GCC_USB0_AUX_CLK>,
> +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;

Could you please check the indentation here? Vertical lists should be aligned

> +                       clock-names = "aux", "cfg_ahb";

One item per line

> +
> +                       resets =  <&gcc GCC_USB0_PHY_BCR>,
> +                                <&gcc GCC_USB3PHY_0_PHY_BCR>;
> +                       reset-names = "phy","common";
> +                       status = "disabled";
> +
> +                       usb0_ssphy: phy@7d200 {

Newer bindings please, without subnodes.

> +                               reg = <0x0007d200 0x130>,       /* tx */
> +                                     <0x0007d400 0x200>,       /* rx */
> +                                     <0x0007d800 0x1f8>,       /* pcs  */
> +                                     <0x0007d600 0x044>;       /* pcs misc */
> +                               #phy-cells = <0>;
> +                               clocks = <&gcc GCC_USB0_PIPE_CLK>;
> +                               clock-names = "pipe0";
> +                               clock-output-names = "usb0_pipe_clk";
> +                       };
> +               };
> +
>                 pcie0_phy: phy@84000 {
>                         compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
>                         reg = <0x00084000 0x1bc>; /* Serdes PLL */
> @@ -436,6 +478,50 @@
>                         status = "disabled";
>                 };
>
> +               usb3: usb3@8a00000 {
> +                       compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
> +                       reg = <0x8af8800 0x400>;
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

Indentation?

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
> +                               phys = <&qusb_phy_0>, <&usb0_ssphy>;
> +                               phy-names = "usb2-phy", "usb3-phy";
> +                               tx-fifo-resize;
> +                               snps,is-utmi-l1-suspend;
> +                               snps,hird-threshold = /bits/ 8 <0x0>;
> +                               snps,dis_u2_susphy_quirk;
> +                               snps,dis_u3_susphy_quirk;
> +                               dr_mode = "host";

Is dr_mode a property of the host or of the board?

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
