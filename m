Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C776C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 12 Dec 2021 21:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILdhL73F2DSQWD6NPqdivW9mhRwgtt3L3roZDl2DtGQ=; b=N9Ctlln94GOW6n
	hlVwvYbr4JdSoYnrB/U5myCOyQll+wRGSdqCOJHpuuzXeUlesj9BI4Whna9mcmY/FiC0CnhknK1ja
	TjKCDBSBfr3rAPlpfQ69FvZ8KFV/uhspOk4PQ6Mrf0p+XIyzDOa7xYkK0CWb8bEIgo+XoFI6GEDmB
	IXaVwcNGLCqnptoa0OldBR4zCL2by2kqTT3An2V2gZQ//e2LqF7FlsUW4y56A27p7TWdOi2hGEx+0
	dY92FixFFw5XUUQm6WiaEGLXZvLcA+9/ASf4zNm4bfE+XiVfQ/koqtoQtu/f09DIwRnnMzqOZ5wgH
	cN7q4dqwVhTI3qwWeqNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwWV4-007MGJ-Pz; Sun, 12 Dec 2021 21:35:18 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwWUz-007MD1-Pt
 for linux-phy@lists.infradead.org; Sun, 12 Dec 2021 21:35:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 10BB4CE09E5
 for <linux-phy@lists.infradead.org>; Sun, 12 Dec 2021 21:35:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E7B6C341C6
 for <linux-phy@lists.infradead.org>; Sun, 12 Dec 2021 21:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639344909;
 bh=R64tI2obkn7D7ySHmCBqe8ERpEC1vgc5+gMcn2gXCyQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VCStpCbdtQLeBBXpPGGNddTVoIseGMsPCb5lmBU211PHB7CrkORpHBekoZXCatwc3
 2UHNMofHvhdwljSU/+n/NMLxG6fxpCoTTlcqNVan2hw4e6KlbJye4BBOEbF51hg0QC
 fsu8hCqsIo8tQAwBpstPQZ2ncdiedETu53QQ0kCtehQvB+5AhBPeS5iZwpiu2dzBI7
 BiDpijsVj+jCtqB7z2OFDCUzoZh1hSZnA+4Q9H2g40dII1U4t8oTDjVqX3cy64cfKf
 SUR1zQ5oSxW4Ex9Wa26gtS6TRewE5d6WY22dtfCP9C15YOZHdDYhaxIBdSjPQI/wft
 YHMU9T/XDXGvQ==
Received: by mail-ed1-f46.google.com with SMTP id v1so46679295edx.2
 for <linux-phy@lists.infradead.org>; Sun, 12 Dec 2021 13:35:09 -0800 (PST)
X-Gm-Message-State: AOAM532NWSSrfwFUIaAjx+0y45uEk86Rm5wJIG5eNWPsUgSsNG6IAkpC
 /O9IlmI3wL3BHvK4ZO8mZBPRPH+v9j8mJ+DfSg==
X-Google-Smtp-Source: ABdhPJy8jBV8Z7Zm670HYzJ6GiPP9GdoIEKXiQCXJy+EoSSoHt9vu9UNSWi++JgvLz6Vozp0wbphEs/18l5vDT5cOMg=
X-Received: by 2002:a17:906:5e14:: with SMTP id
 n20mr39429708eju.466.1639344907565; 
 Sun, 12 Dec 2021 13:35:07 -0800 (PST)
MIME-Version: 1.0
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
 <20211208171442.1327689-9-dmitry.baryshkov@linaro.org>
In-Reply-To: <20211208171442.1327689-9-dmitry.baryshkov@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Sun, 12 Dec 2021 15:34:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLiRPy7App3ooWKOeb87DXN2HpirO0-vEoAOfFx-4FbDw@mail.gmail.com>
Message-ID: <CAL_JsqLiRPy7App3ooWKOeb87DXN2HpirO0-vEoAOfFx-4FbDw@mail.gmail.com>
Subject: Re: [PATCH v2 08/10] arm64: dts: qcom: sm8450: add PCIe0 RC device
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, PCI <linux-pci@vger.kernel.org>,
 devicetree@vger.kernel.org, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211212_133514_281431_2E34A7BD 
X-CRM114-Status: GOOD (  15.79  )
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

On Wed, Dec 8, 2021 at 11:15 AM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Add device tree node for the first PCIe host found on the Qualcomm
> SM8450 platform.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 101 +++++++++++++++++++++++++++
>  1 file changed, 101 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index a047d8a22897..09087a34a007 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -627,6 +627,84 @@ i2c14: i2c@a98000 {
>                                 #size-cells = <0>;
>                                 status = "disabled";
>                         };
> +               ];
> +
> +               pcie0: pci@1c00000 {
> +                       compatible = "qcom,pcie-sm8450";
> +                       reg = <0 0x01c00000 0 0x3000>,
> +                             <0 0x60000000 0 0xf1d>,
> +                             <0 0x60000f20 0 0xa8>,
> +                             <0 0x60001000 0 0x1000>,
> +                             <0 0x60100000 0 0x100000>;
> +                       reg-names = "parf", "dbi", "elbi", "atu", "config";
> +                       device_type = "pci";
> +                       linux,pci-domain = <0>;
> +                       bus-range = <0x00 0xff>;
> +                       num-lanes = <1>;
> +
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +
> +                       ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
> +                                <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
> +
> +                       interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "msi";
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 0x7>;
> +                       interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +                                       <0 0 0 2 &intc 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +                                       <0 0 0 3 &intc 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +                                       <0 0 0 4 &intc 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +                       clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
> +                                <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
> +                                <&pcie0_lane>,
> +                                <&rpmhcc RPMH_CXO_CLK>,
> +                                <&gcc GCC_PCIE_0_AUX_CLK>,
> +                                <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +                                <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +                                <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +                                <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
> +                                <&gcc GCC_DDRSS_PCIE_SF_TBU_CLK>,
> +                                <&gcc GCC_AGGRE_NOC_PCIE_0_AXI_CLK>,
> +                                <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>;
> +                       clock-names = "pipe",
> +                                     "pipe_mux",
> +                                     "phy_pipe",
> +                                     "ref",
> +                                     "aux",
> +                                     "cfg",
> +                                     "bus_master",
> +                                     "bus_slave",
> +                                     "slave_q2a",
> +                                     "ddrss_sf_tbu",
> +                                     "aggre0",
> +                                     "aggre1";
> +
> +                       iommus = <&apps_smmu 0x1c00 0x7f>;
> +                       iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
> +                                   <0x100 &apps_smmu 0x1c01 0x1>;
> +
> +                       resets = <&gcc GCC_PCIE_0_BCR>;
> +                       reset-names = "pci";
> +
> +                       power-domains = <&gcc PCIE_0_GDSC>;
> +                       power-domain-names = "gdsc";
> +
> +                       phys = <&pcie0_lane>;
> +                       phy-names = "pciephy";
> +
> +                       perst-gpio = <&tlmm 94 GPIO_ACTIVE_LOW>;
> +                       enable-gpio = <&tlmm 96 GPIO_ACTIVE_HIGH>;

-gpios is the preferred form.

And 'enable-gpios' is not documented.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
