Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8189CC71153
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 14:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3RAl+vdQzPUeQd+o061dIMK9Qcd+rXA3W6LbR9bE54=; b=gH1VkPCZm0agG5
	0F3Z/kKMS+FQIRtj5MoN9XYbO7fYXWmxjB0/yKFheyhulybBXDqM7Kx2dotmi/EuhW1YspQVvmI47
	xVxftGLzGMnB1tIf3qg2y29jTqYDFyeVgeBW0VF0/zADiNivZi//JAMu46HiUPEZJQtGS015dc602
	2V4DZKRYBNxZ9goWX63bCxcoq5qjaaqw3No+tXeAVLAY2EtQXUJahBElNAPxDIHu/xPCurMDRwjZB
	PCOx0hAhnSCRG8BECGPbFFF7mrpsBgHuQKMppx8zNRiFykn6M8sFFbJHaVDmMK8jbfnj+zmL2KXwU
	RnAmhHCyhfQ/fOLM3r8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazzd-00Biyl-0k;
	Tue, 29 Aug 2023 14:46:57 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazza-00Bixf-1i
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 14:46:56 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-58cd9d9dbf5so61169457b3.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 07:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693320412; x=1693925212;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Mfw6V7LFqYsw0ItItmPglDYqzrcWxbzlv2UHVUeAG74=;
        b=Qv1HHbYet7wTAy3rg11WkrEiujtXYr/rlXOQu0l/gJM940a/S9fmxO0RASnbW3GEq8
         BxnN5niAf4gYx1bi4jkz+kDIMDSqckjcgHuTDZtLtrQgfbVu0Tebk2+ODGUaC76H6Nhq
         3WA/EyQ89de/fbUR0V3a7CbRHTjQU7r+XeqeMwklyHBDYgsfduboGxtsRm0+chL5yhuT
         nlZCJloJAGoX20Od0JYNDbLAhAAaMVS5gvbl9DShDeVWPbrmrJVY1cpxVZWL+7CLHhf7
         mVCCSZ1GaK/6cR3LP9QUO3S1oR9Ya8sCxVMLkYNzYzgWAs15/b1y1ePcCEHBg5PoBXSx
         YUpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693320412; x=1693925212;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mfw6V7LFqYsw0ItItmPglDYqzrcWxbzlv2UHVUeAG74=;
        b=PJdQXPrjakN8GpSfMRWyxTdjv3AECFxUELGxryCKqec00Fsvb8+m0lAYlNHXx2LoRK
         OgHYIDSwCTqKdi8YN2ADp5AQEAkM/z3K6t51kqmREB27C6rqbr7PgkqYCd7DDFo8C9YM
         /N1TmKzng+lXsSapoWr77ZLHDy3Dikg20aKEufmbePIgOzxDaxqWEGD/wPlJtWJvAXvW
         XTSF1CiRJY4Gcthz6jx6Shqbeh8WcZVTduxPtkHLlaktZJvIuCQo9UAlZUuyZA6Pchnd
         rJr0ZA99rTaFbYp9pl64pN1OCtJsLhg6ZWs3eZcv+ebl+C0cYrmKu3VkJZX4zVi8f2GC
         T7IQ==
X-Gm-Message-State: AOJu0YzJ1tz/NWbBplRv6D2mNwHmaxMUFr/4MVesjHh7ggJROAFz3Fwq
	d2c9bVCYgTWIst53psed22drQfAbDPZqcBGaIAn/HA==
X-Google-Smtp-Source: AGHT+IEKmemJLC0tOe8DvGL0hEpWvrphbIpLY5kTOZufedvsfBX+7jKL52HwA0mwZ4wzjwkLvezDYDq17DF7cpctlO4=
X-Received: by 2002:a0d:eb0a:0:b0:581:7958:5bda with SMTP id
 u10-20020a0deb0a000000b0058179585bdamr2974154ywe.1.1693320411878; Tue, 29 Aug
 2023 07:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com> <20230829135818.2219438-7-quic_ipkumar@quicinc.com>
In-Reply-To: <20230829135818.2219438-7-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Aug 2023 17:46:41 +0300
Message-ID: <CAA8EJpp1+iHndFO5NVDvn2TxSxCmPG1Oa5o4-aYhQGCSQz8gbQ@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: qcom: ipq5332: Add USB3 related nodes
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: robert.marko@sartura.hr, luka.perkov@sartura.hr, agross@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, 
	will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, 
	geert+renesas@glider.be, nfraprado@collabora.com, rafal@milecki.pl, 
	peng.fan@nxp.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_varada@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_074654_567125_5060EE61 
X-CRM114-Status: GOOD (  17.12  )
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

On Tue, 29 Aug 2023 at 17:00, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> Add SS UNIPHY and update controller node for USB3.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
> This patch depends on the below series which adds support for USB2 in
> IPQ5332
> https://lore.kernel.org/all/cover.1692699472.git.quic_varada@quicinc.com/
>
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 39 ++++++++++++++++++++++-----
>  1 file changed, 32 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index e6baf694488c..7fbe6c9f4784 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -158,6 +158,27 @@ usbphy0: phy@7b000 {
>                         status = "disabled";
>                 };
>
> +               ssuniphy0: ssuniphy@4b0000 {
> +                       compatible = "qcom,ipq5332-usb-ssphy";
> +                       reg = <0x4b0000 0x800>;
> +                       clocks = <&gcc GCC_USB0_PIPE_CLK>,
> +                                <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +                                <&gcc GCC_PCIE3X1_PHY_AHB_CLK>;
> +
> +                       #clock-cells = <0>;
> +                       clock-output-names = "usb_pcie_wrapper_pipe_clk";
> +
> +                       clock-names = "pipe",
> +                                     "phy_cfg_ahb",
> +                                     "phy_ahb";
> +
> +                       resets =  <&gcc GCC_USB0_PHY_BCR>;
> +                       reset-names = "por_rst";
> +                       #phy-cells = <0>;
> +                       qcom,phy-mux-sel = <&tcsr 0x10540 0x1>;
> +                       status = "disabled";
> +               };
> +
>                 qfprom: efuse@a4000 {
>                         compatible = "qcom,ipq5332-qfprom", "qcom,qfprom";
>                         reg = <0x000a4000 0x721>;
> @@ -313,30 +334,34 @@ usb: usb@8a00000 {
>                         clocks = <&gcc GCC_USB0_MASTER_CLK>,
>                                  <&gcc GCC_SNOC_USB_CLK>,
>                                  <&gcc GCC_USB0_SLEEP_CLK>,
> -                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>,
> +                                <&gcc GCC_USB0_AUX_CLK>,
> +                                <&gcc GCC_USB0_LFPS_CLK>;
> +
>                         clock-names = "core",
>                                       "iface",
>                                       "sleep",
> -                                     "mock_utmi";
> +                                     "mock_utmi",
> +                                     "aux",
> +                                     "lfps";
>
>                         resets = <&gcc GCC_USB_BCR>;
>
> -                       qcom,select-utmi-as-pipe-clk;
> -
>                         #address-cells = <1>;
>                         #size-cells = <1>;
>                         ranges;
>
>                         status = "disabled";
>
> -                       usb2_0_dwc: usb@8a00000 {
> +                       usb3_0_dwc: usb@8a00000 {

At this point you have broken compilation of all ipq5332 DT files.
Don't. The kernel should be bisectable. At each point, after each
commit it should compile and work.

>                                 compatible = "snps,dwc3";
>                                 reg = <0x08a00000 0xe000>;
>                                 clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
>                                 clock-names = "ref";
>                                 interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> -                               phy-names = "usb2-phy";
> -                               phys = <&usbphy0>;
> +                               phy-names = "usb2-phy", "usb3-phy";
> +                               phys = <&usbphy0>, <&ssuniphy0>;
> +
>                                 tx-fifo-resize;
>                                 snps,is-utmi-l1-suspend;
>                                 snps,hird-threshold = /bits/ 8 <0x0>;
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
