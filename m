Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21623C83F10
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 06:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jr70VSNbix0tPdYfWsxlGS7uz9V1e/RTKp+ZAdkgDFo=; b=ItUgIME4cbCWn7
	i+V3eDcgPsBcRcgKKp7Ne/wG/ac1Fb+Y6+UVMJZdG6DQNU9PpoaYu79gACKUC6+Rh1NnI19sK5hAv
	hJYBJjKDG4S6ZJJ3YLU7zGeFEiTQRm1G0L8M8uI5GV89Boot1/hpc85eYaxM+tSiKI6E0OfAlW/Cc
	hqu+lwvc4Ytx999Ow1Ee1kgWo0C6lc7pMCZ+gI4NPjhRJXvd2T9ElaNiEfXk5QjgKZ3BIVGeodT/2
	33xscVAur7+BPZcA8ZKMDfa5bNoN5CgbVeqeNAy41SOEWSyjLqDC653yVUj51PzH30jdO82SRluUd
	y/7lUZvZGjCCO+Qt1KGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbaq0-00EjUf-2e;
	Thu, 31 Aug 2023 06:07:28 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbapy-00EjSy-13
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 06:07:27 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d746ea563f9so259713276.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 23:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693462042; x=1694066842; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1po/VyT6CW/FcG+zIoswNK/rMTYjq0FDJTy3vZvpoPU=;
        b=Y9mOJn7zHur8D7WyLU1GPAmKKZMYNsMR7QqpeusKrfkgM/+NzaDUQQpRdya3o3VUzk
         w+bjAtEZ76vOMEJuHn/ZfcURPbb4ZUQ4MB15Q1CJUtwc6zGwPxdI9fNhqVYKo2CEmSui
         /B9zPrTx7k9sW152zIR+jXQqtlT8iSU4i1xgv2bZ0BFdTdWqDJE7wUG2I9fA3B/Xs4UZ
         WFTEfkjmCvDSnn3K/84xzy/9Ra4icRz/N+uN1EICUg+dZDgkcRSkqFodml5wDgY4fPkv
         lz7WlVXj73g+6Bmhp4SnKJ6ooQyj/3TxMTXUMKX4VT1iXZaAVMEu4Keevk1DXwnYDWwI
         lMHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693462042; x=1694066842;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1po/VyT6CW/FcG+zIoswNK/rMTYjq0FDJTy3vZvpoPU=;
        b=cYkOlP48BiygGV2aIFkLnud3BxjQGeusPrqPlNnxTVt9wEfYUl45P6hhNc+nidCNVm
         u244sEzBNyc4GpjY2Ea7b82e53uzLjzKxIfyjyUuhQO/fj60GC/jsHiUcBuGtEgQA3Qt
         Bk9nmQyt0rSuk0Mmn7AbyPtW+Z+HmDws5ZDMGxCy8SUSg1hcdL+w8PMYkyU+v/cL0GjJ
         fwjIb2kuUpMrLRGnzpVEJMT+xCgNo0pRifBSoE3zLctSKi9YXltDanq2DoNy+F3z6M3x
         tiud1Go9N2OfETzoih+/cVl790CYQBkKlPCC3E0PIMy2aGrWyBAc3I0bPhXsahk5LI/Y
         D7BA==
X-Gm-Message-State: AOJu0YzsuqmQ7C/8Mk5w3bcp7ZxdAUtk9Qt5cvLv4YIBuNmGMcgSPZ82
	LYABqTOcaFPnJbYVUvBg066N1lEw/zOuxioVE9OZXA==
X-Google-Smtp-Source: AGHT+IGulseHwScThc3GA3p1UbyuFfZB7vLDPIIRlpt10tOewAolI9c+b8dZgUmCzK/Ra6yIpEiIpBuImZC0m1BhJWA=
X-Received: by 2002:a25:4655:0:b0:cfd:58aa:b36e with SMTP id
 t82-20020a254655000000b00cfd58aab36emr3944362yba.9.1693462042294; Wed, 30 Aug
 2023 23:07:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1693459976.git.quic_varada@quicinc.com> <c914b91c82ce51023571b701a5b91606a0791025.1693459976.git.quic_varada@quicinc.com>
In-Reply-To: <c914b91c82ce51023571b701a5b91606a0791025.1693459976.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 31 Aug 2023 09:07:11 +0300
Message-ID: <CAA8EJpqRfgh5Ss696Vi=jAR-yFmBhCrpveD8txHGHoc8gRsJxQ@mail.gmail.com>
Subject: Re: [PATCH v11 2/4] arm64: dts: qcom: ipq5332: Add USB related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	arnd@arndb.de, geert+renesas@glider.be, nfraprado@collabora.com, 
	rafal@milecki.pl, peng.fan@nxp.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_230726_365490_336D14AE 
X-CRM114-Status: GOOD (  20.13  )
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

On Thu, 31 Aug 2023 at 08:39, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Add USB phy and controller nodes.
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v10:
>         usb@8a00000 -> usb@8af8800
>         "make W=1 ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
> v9:
>         usb2@8a00000 -> usb@8a00000
>         "make ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
> v6:
>         Remove clock names
>         Move the nodes to address sorted location
> v5:
>         Use generic phy instead of usb-phy
>         'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom dtbs_check' passed
>         'DT_CHECKER_FLAGS='-v -m' DT_SCHEMA_FILES=qcom dt_binding_check' passed
> v4:
>         Change node name
>         Remove blank line
>         'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom qcom/ipq5332-rdp441.dtb' passed
> v1:
>         Rename phy node
>         Change compatible from m31,ipq5332-usb-hsphy -> qcom,ipq5332-usb-hsphy
>         Remove 'qscratch' from phy node
>         Fix alignment and upper-case hex no.s
>         Add clock definition for the phy
>         Remove snps,ref-clock-period-ns as it is not used. dwc3_ref_clk_period()
>         in dwc3/core.c takes the frequency from ref clock and calculates fladj
>         as appropriate.
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 55 +++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 8bfc2db..6593865 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -145,6 +145,19 @@
>                 #size-cells = <1>;
>                 ranges = <0 0 0 0xffffffff>;
>
> +               usbphy0: phy@7b000 {
> +                       compatible = "qcom,ipq5332-usb-hsphy";
> +                       reg = <0x0007b000 0x12c>;
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
>                 qfprom: efuse@a4000 {
>                         compatible = "qcom,ipq5332-qfprom", "qcom,qfprom";
>                         reg = <0x000a4000 0x721>;
> @@ -290,6 +303,48 @@
>                         status = "disabled";
>                 };
>
> +               usb: usb@8af8800 {
> +                       compatible = "qcom,ipq5332-dwc3", "qcom,dwc3";
> +                       reg = <0x08af8800 0x400>;
> +
> +                       interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "hs_phy_irq";
> +
> +                       clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +                                <&gcc GCC_SNOC_USB_CLK>,
> +                                <&gcc GCC_USB0_SLEEP_CLK>,
> +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                       clock-names = "core",
> +                                     "iface",
> +                                     "sleep",
> +                                     "mock_utmi";
> +
> +                       resets = <&gcc GCC_USB_BCR>;
> +
> +                       qcom,select-utmi-as-pipe-clk;
> +
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges;
> +
> +                       status = "disabled";
> +
> +                       usb2_0_dwc: usb@8a00000 {

Since we have just seen a patch series adding USB 3 support to
ipq5332, we know that the host is not 2.0-only. Thus the `2_0` part of
the label doesn't make sense.

Could you please change the label to be just usb_dwc (or usb0_dwc)?

> +                               compatible = "snps,dwc3";
> +                               reg = <0x08a00000 0xe000>;
> +                               clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                               clock-names = "ref";
> +                               interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
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
>                         reg = <0x0b000000 0x1000>,      /* GICD */
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
