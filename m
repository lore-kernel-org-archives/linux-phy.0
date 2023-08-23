Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 471E2C3DA6F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 18:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Fh2I09DgmBX3Y3b7RqUFy9Yw3d2kPaXEKatpen9IIo=; b=u0ZxYuv7wSQmcw
	WDyJHqFdovrU9PIiLnNKbU1JjpX+VXbLxmAkV+GOgZzwq1HUUymnFMa2P5y8liyac/+Tv+spxJRlf
	6LMv0ztOjGUnVCsFtb4aM5FIXripykDp9Uj3CDp0JXNzb72HwOGNgbG8cgjOBZusQ7KO4eGYIpPC3
	1QaA+KbJSiT0HzjJAgwfUZLrzXTND5bBGUDtZHlLwISn4i4gABqD1D2mtJt7PPbryjlHOureTl25A
	KDDNsgvpWHN4eJd5hRO1JRsKSbTNmHP4pdXd4Av4P3Al6JuamUjHNc54bIhjK61r5soJut4hRpVoT
	KrGpVymBF3gQBRnA0c2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYsSr-001J59-01;
	Wed, 23 Aug 2023 18:20:21 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYsSm-001J4W-2x
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 18:20:19 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d6fcffce486so5660114276.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Aug 2023 11:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692814815; x=1693419615;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fSDj1dXcAD8NlSepMgGO1DihK5nCgCrHfiJNMHtpO4o=;
        b=y/Nh6TI7FN/zIk4Uswx3lPHydEZUeQUWuCl6L/QQmnwVWVOZB03bZ9df6hNOs1UrIX
         eWtPUX7H5S6pNwFae4n+a6f2oYZLGMVM3Jyvp3QkMkvvYqw6o2HOE1ra5y99F2b2dg4j
         4xxfqfX4pfprGUnd8Id4acEtjPc92JEehlZpRL38VzLtDS3vfj44Oj9msAHCdo8uSkUX
         vJd0ASWBAnubJDlGLAzh8NM6Q6o1S6JZ2ZmXn5KYHcxpz9zQN0fqVtG6IT84iok22n5H
         fyYiwvuBNfWn+u6P3GVM/GLLDPmqwny2iHKws5QKDhHOvWWymaZk7Is/P5MjCDQ/X0KD
         QL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692814815; x=1693419615;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fSDj1dXcAD8NlSepMgGO1DihK5nCgCrHfiJNMHtpO4o=;
        b=iTwE5ZNflGrWxgD9QJOWtiquLlzDs1wSy5i3O4AozfNN9tIThWV6gjrKiBbEKpMjS6
         vzWlZWueVV1ILM2luOaULHBmVgtE/6uHLUs6Uvg/dC1po85StMFlvxqhX9hu1jw5W1an
         GPoYtRibkBiG28yDb9mOJgJhZ9LfHVLYvZ3CUA8d/eZ5HafCFrQH5x9aMDyhmdpqPp9D
         SLcaGyyguU07RLFOfIvqWehfIJLMWBGkx9MkAVoeq5gOq5tgSDH9Q+lDk6YLy01rzn4p
         UXuBuFKEneOLDV4bm+vDbxAR8xSa+ibL8/8yAYd4AQ7nzazmvfVNElZ6ruwaqLZZUxOc
         CnbQ==
X-Gm-Message-State: AOJu0YxLrb+vB7wZlExjwDoVIOBo+p0lO8SZYvOBcPOztW9XFTikmavU
	CzqRa8Ja3BVq+RTcrG92fPJ4lGmFbrPI4/bYOC+7sg==
X-Google-Smtp-Source: AGHT+IFaNs8L0YcwtNuUSzU9bXzuwmBviw+K4v5a4jMYE5vKOLGD8ED8NJrUcHT78j9BlM4OD2Y2mq9OKPShh7mhv5E=
X-Received: by 2002:a5b:151:0:b0:d0f:972b:637 with SMTP id c17-20020a5b0151000000b00d0f972b0637mr12946686ybp.20.1692814815082;
 Wed, 23 Aug 2023 11:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org> <20230821002535.585660-11-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230821002535.585660-11-dmitry.baryshkov@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 23 Aug 2023 21:20:04 +0300
Message-ID: <CAA8EJpor90i93PA7=urLh0EPZLk5o5QcBW7p+xyUxu8cGH9oKg@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] arm64: dts: qcom: msm8998: switch USB QMP PHY to
 new style of bindings
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_112016_983865_3C2B6ACE 
X-CRM114-Status: GOOD (  14.66  )
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

On Mon, 21 Aug 2023 at 03:25, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Change the USB QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 39 +++++++++++----------------
>  1 file changed, 16 insertions(+), 23 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index 30d8730fa4de..46a6ef0e454b 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -979,12 +979,12 @@ pcie_phy: phy@1c06000 {
>                         status = "disabled";
>
>                         clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
> -                                <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>                                  <&gcc GCC_PCIE_CLKREF_CLK>,
> +                                <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
>                                  <&gcc GCC_PCIE_0_PIPE_CLK>;
>                         clock-names = "aux",
> -                                     "cfg_ahb",
>                                       "ref",
> +                                     "cfg_ahb",
>                                       "pipe";

This chunk changes the PCIe PHY and as such doesn't belong to this patch.

>
>                         clock-output-names = "pcie_0_pipe_clk_src";
> @@ -2138,7 +2138,7 @@ usb3_dwc3: usb@a800000 {
>                                 interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
>                                 snps,dis_u2_susphy_quirk;
>                                 snps,dis_enblslpm_quirk;
> -                               phys = <&qusb2phy>, <&usb1_ssphy>;
> +                               phys = <&qusb2phy>, <&usb3phy>;
>                                 phy-names = "usb2-phy", "usb3-phy";
>                                 snps,has-lpm-erratum;
>                                 snps,hird-threshold = /bits/ 8 <0x10>;
> @@ -2147,33 +2147,26 @@ usb3_dwc3: usb@a800000 {
>
>                 usb3phy: phy@c010000 {
>                         compatible = "qcom,msm8998-qmp-usb3-phy";
> -                       reg = <0x0c010000 0x18c>;
> -                       status = "disabled";
> -                       #address-cells = <1>;
> -                       #size-cells = <1>;
> -                       ranges;
> +                       reg = <0x0c010000 0x1000>;
>
>                         clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
> +                                <&gcc GCC_USB3_CLKREF_CLK>,
>                                  <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
> -                                <&gcc GCC_USB3_CLKREF_CLK>;
> -                       clock-names = "aux", "cfg_ahb", "ref";
> +                                <&gcc GCC_USB3_PHY_PIPE_CLK>;
> +                       clock-names = "aux",
> +                                     "ref",
> +                                     "cfg_ahb",
> +                                     "pipe";
> +                       clock-output-names = "usb3_phy_pipe_clk_src";
> +                       #clock-cells = <0>;
> +                       #phy-cells = <0>;
>
>                         resets = <&gcc GCC_USB3_PHY_BCR>,
>                                  <&gcc GCC_USB3PHY_PHY_BCR>;
> -                       reset-names = "phy", "common";
> +                       reset-names = "phy",
> +                                     "phy_phy";
>
> -                       usb1_ssphy: phy@c010200 {
> -                               reg = <0xc010200 0x128>,
> -                                     <0xc010400 0x200>,
> -                                     <0xc010c00 0x20c>,
> -                                     <0xc010600 0x128>,
> -                                     <0xc010800 0x200>;
> -                               #phy-cells = <0>;
> -                               #clock-cells = <0>;
> -                               clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
> -                               clock-names = "pipe0";
> -                               clock-output-names = "usb3_phy_pipe_clk_src";
> -                       };
> +                       status = "disabled";
>                 };
>
>                 qusb2phy: phy@c012000 {
> --
> 2.39.2
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
