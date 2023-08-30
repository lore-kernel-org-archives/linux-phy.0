Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D60FAC83F15
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 19:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beeQVYVk9ZqZl9UXz4w8Z5+oBuDUHNGMB2ZJfrTK9vo=; b=mFyC5K2aE0Sasd
	Q11cT4PxJRc570kWu25+0JlQKUrRnt7kNKYbnSNrfNxOVlLYfCMcaBIEo9CdOCWFkkeGXamUBfVWM
	V/sNRo5KkboXDnrn1GFdcxYLi1dGyTbC9niD3CEv698hXks4gfBluzYTEr2z10PxWf5ZTJM5Ck+qA
	9x3bPbUzTiX4vvCOsp8p0UgIXi6TcHaI+6+NmJzaoJadcnu/ovYvXqlOuo+pQu/4pw+xO6fJ6PxBF
	u25R4mkZY0HXzhtEsWlqWh3DAjJToCHJcSPU2ktR162yPooPEzDC1lL5Q/bww7omY4HEzzMIGk0eT
	q8P1i7X8UrnWXEpHIEzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbR6T-00E4eF-1c;
	Wed, 30 Aug 2023 19:43:49 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbR6Q-00E4dv-2P
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 19:43:48 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5921a962adfso1923317b3.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 12:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693424624; x=1694029424; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VJiEYvthVUOcpYJPy9yFGFD2aO5cf2VHnVMOssUOmRg=;
        b=yE0QfRlfoM5WT9XSFXoBc0JfFHD6LZxUUaPgBCimUQD1HmMdZeS1yUpapAV7MKG7ue
         pPVPFcUBGCPFfnmGcbLe0nWgSTiSWK3+4D+1ssdHqho4Q+Zn2FwEYNI4RF6P8OslWdOo
         Jt8GjxArNNrn6yEfTqKq8HFpV1LYPb6tBmyctSylFr3OpEyg7Upfqc6GifqOZ8qdPWNV
         Yusud0h3ykwmNWKcVMByAupyl1E42Ibm0XBrj9coejFXST0jJhDNknwaJdb5Tw4xC9fk
         KMSQTh5Jz9YbFqoPDRkqIi+gSnuPLwq8oVYQ4UtedYqwJUhEtko5vcBBfZ7fLp+k2aoT
         EIjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693424624; x=1694029424;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VJiEYvthVUOcpYJPy9yFGFD2aO5cf2VHnVMOssUOmRg=;
        b=lpeOc1k6XWI9u5MZcxx27g0Q5fSbyuhybyeHFd9VsInRL5yAZU0csZgj5OBv9seuVK
         igtnX49KNIy+0NmssbFxRTGkcBUJdHWa/hmzKvIiC7jFSmWshzig4QMK4P+OX90+ePQd
         PsRFjFsMY+8m7xeLy4VfHysBV0NUeVRKZ/+evCW1OJBndJEcGqGJ1PnA6nwLIyHoet7g
         EbA4snxSh2EfS0zaFtyA4aigOsHYa6VkDiaIIKcK+qeAid3oeXwY4DGTbl8WwRZJvtVg
         9RK7dRPxuIvxpTEdIwzp/WqJqiHRIQXcQWEETdT6y7FwLi2z4bCry8nrZlO+gZOTEd6+
         3QyQ==
X-Gm-Message-State: AOJu0YwZJP0aXlzAj8rUujoqZx+Y42LLaHDT7tvJ9a40js/kLrZke/bO
	w2nfTGswnSA9LdR7kx26+/yy3aQCSJKx3z1E+0ivcQ==
X-Google-Smtp-Source: AGHT+IE2iDDTjFTVDoB3gZ4fX5lg6uyzcQRItrwWgsQ3B9T43cbbiyZMI0KSJ+aavpFonXZjy3iNu1t/WvVG3AWOXxc=
X-Received: by 2002:a05:6902:18cd:b0:d78:48b0:21d2 with SMTP id
 ck13-20020a05690218cd00b00d7848b021d2mr3630806ybb.3.1693424624644; Wed, 30
 Aug 2023 12:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230830111722.19380-1-quic_nsekar@quicinc.com> <20230830111722.19380-4-quic_nsekar@quicinc.com>
In-Reply-To: <20230830111722.19380-4-quic_nsekar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 30 Aug 2023 22:43:33 +0300
Message-ID: <CAA8EJpr3SnEXRENAgzdemANnYWvwM7Z-xyZYe335O45Jps91kg@mail.gmail.com>
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: ipq5018: Add USB related nodes
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, quic_srichara@quicinc.com, 
	quic_varada@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amandeep Singh <quic_amansing@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_124346_812746_14353008 
X-CRM114-Status: GOOD (  17.45  )
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

On Wed, 30 Aug 2023 at 21:30, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Add USB phy and controller nodes.
>
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
> V2:
>         Fix ordering of the USB related nodes and use
>         generic node names.
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 54 +++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 9f13d2dcdfd5..917e4a2d8e64 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -93,6 +93,19 @@
>                 #size-cells = <1>;
>                 ranges = <0 0 0 0xffffffff>;
>
> +               usbphy0: phy@5b000 {
> +                       compatible = "qcom,ipq5018-usb-hsphy";
> +                       reg = <0x0005b000 0x120>;
> +
> +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +
> +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +
> +                       #phy-cells = <0>;
> +
> +                       status = "disabled";
> +               };
> +
>                 tlmm: pinctrl@1000000 {
>                         compatible = "qcom,ipq5018-tlmm";
>                         reg = <0x01000000 0x300000>;
> @@ -155,6 +168,47 @@
>                         status = "disabled";
>                 };
>
> +               usb: usb@8af8800 {
> +                       compatible = "qcom,ipq5018-dwc3", "qcom,dwc3";
> +                       reg = <0x08af8800 0x400>;
> +
> +                       interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "hs_phy_irq";
> +
> +                       clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +                                <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
> +                                <&gcc GCC_USB0_SLEEP_CLK>,
> +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                       clock-names = "core",
> +                                     "iface",
> +                                     "sleep",
> +                                     "mock_utmi";
> +
> +                       resets = <&gcc GCC_USB0_BCR>;
> +
> +                       qcom,select-utmi-as-pipe-clk;
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges;
> +
> +                       status = "disabled";
> +
> +                       usb2_0_dwc: usb@8a00000 {

As we have seen from the next patchset, this host supports USB 3.0.
Can you please drop the 2_0 part of the label?

> +                               compatible = "snps,dwc3";
> +                               reg = <0x08a00000 0xe000>;
> +                               clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                               clock-names = "ref";
> +                               interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +                               phy-names = "usb2-phy";
> +                               phys = <&usbphy0>;
> +                               tx-fifo-resize;
> +                               snps,is-utmi-l1-suspend;
> +                               snps,hird-threshold = /bits/ 8 <0x0>;
> +                               snps,dis_u2_susphy_quirk;
> +                               snps,dis_u3_susphy_quirk;
> +                       };
> +               };
> +
>                 intc: interrupt-controller@b000000 {
>                         compatible = "qcom,msm-qgic2";
>                         reg = <0x0b000000 0x1000>,  /* GICD */
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
