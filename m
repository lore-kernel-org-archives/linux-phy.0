Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8168CE7AD72
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 15:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gajyB0PT9OR+K66QxGmMLifak+yG/azzWn9hdZ1sZW4=; b=Cdh4YBgpXFeO4I
	im9vKAg1lqQfh+7ddVwjOUYwRWN+zriHgBAlx25oWE4aX+QuaLr89u+HJa1UE978p+YD7bGC6K4VK
	C5lPLsLHan4sKjiTGoTGIU+JSLYlP6Ku+owe82H5yzyxpzRMj6gGdCv/4lL9J7qcEJDR3ztm7Y1W8
	xQWCNqdMzsGsXpPrt89n6uIeehJQLUwt2yWflPv2blipW3qf1tXkb6nw9biZsS0HfB+6p4iobRXx/
	90tKALQDBiUBds4nrTGYmyAIY8aZV++LNW3e4BCjqcYawGHseWAgqDk1jsiqSY+K4COGyRydMiIfc
	Ei8QYTBpgqo6+TkHjcKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnhEx-00Es9X-0k;
	Tue, 03 Oct 2023 15:23:15 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnhEv-00Es9B-05
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 15:23:14 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-59f4bc88f9fso11914457b3.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Oct 2023 08:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696346591; x=1696951391; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AyCUhxsC/xRzFI1DSiEJgfkyYQMNQ9zjzH0+8vXmLBg=;
        b=H3cZptE9EEG7zFtqot1GJDiZzMiwA2MA0RodriOfSlsjFYiiOrTLqogculyfvLfNNH
         FGLYCaP+5Y/i/NjHvGMg77jizqSwweT8Dck6dfYBCBU87Ti2PTcY8G8TC55AGN8MgoJL
         s6dqyZwU4V3EwlUnJgmtq3zc7EVV8/yYrvVEiWUpz6DoX36SN9qaH0c8nYML8tZfNy/z
         lXgD8iCQ0fFsKBvA2CAZ9Xa8eXuydQ5mHXw6JkYfX4cK1gu6dWx0mATqCuuOvTK2FHN2
         gGtoCYtNbX9EC9MwB7exRCa2SE4hfr5ikY8/UxXokxXPP8GrCWlRtEp7F9JTDXGTxexT
         lykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696346591; x=1696951391;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AyCUhxsC/xRzFI1DSiEJgfkyYQMNQ9zjzH0+8vXmLBg=;
        b=b0KFmEtJ9YmTkehFzDY+4z0LK9O3W7UHvGEMrYEAcABaTUjvp5vScPRyFXO5xa0uzp
         e5LrQUu+xDF9NwcRvCsRJ9cKQz/L8iZ/7Uh9XodRGEqhF4+vccJYAaP7JzUPN/zSATFy
         asqGfHl/XwRv8l36tJggHkRHmJudz9oKtJaym6sPpIgl4L87E4aDNXM//zKuMTY0MXMG
         KSA5eWCTDxpfpMRsAES8tY++EBBAIiTcU1Sey9oWNRBBkete9GuvQJJ69LyVkbRGejMz
         x5pZrX3QK2CE2Rj/kY1bMaQMWlhk83ZhaaSYMKAli0RydqKLCySywJQTcfSmwRvuCipn
         5N8Q==
X-Gm-Message-State: AOJu0YwD59Gl0JCL+AHLM5r4BBG0z+wDwwIwbxkW/3P10eVWyj15TQ1h
	KLZnO3QXQyHNXfLuBs744tI2iDi1HUfNVVZ5wcAFBQ==
X-Google-Smtp-Source: AGHT+IH+PZ35FemJUWRj0WSQP7VIqgEZCKVT1MRfpltpmQOh6qjNq2qjOeZ0AIBw73huKepSXzObXMFSiH+lvZk+70A=
X-Received: by 2002:a0d:d587:0:b0:59f:4c52:2f5d with SMTP id
 x129-20020a0dd587000000b0059f4c522f5dmr14784646ywd.2.1696346591660; Tue, 03
 Oct 2023 08:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <20231003120846.28626-1-quic_nsekar@quicinc.com> <20231003120846.28626-6-quic_nsekar@quicinc.com>
In-Reply-To: <20231003120846.28626-6-quic_nsekar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 3 Oct 2023 18:23:00 +0300
Message-ID: <CAA8EJpoKq4TVzNHKLjgezTk9je-3OPv4g852anr7SnECJNw2xQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, bhelgaas@google.com, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, mani@kernel.org, p.zabel@pengutronix.de, 
	quic_srichara@quicinc.com, quic_varada@quicinc.com, quic_ipkumar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_082313_094893_C8A6B67B 
X-CRM114-Status: GOOD (  17.13  )
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

On Tue, 3 Oct 2023 at 15:10, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Add phy and controller nodes for PCIe_x2 and PCIe_x1.
> PCIe_x2 is 2-lane Gen2 and PCIe_x1 is 1-lane Gen2.
>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 186 +++++++++++++++++++++++++-
>  1 file changed, 184 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 38ffdc3cbdcd..0818fdd1e693 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,gcc-ipq5018.h>
>  #include <dt-bindings/reset/qcom,gcc-ipq5018.h>
> +#include <dt-bindings/gpio/gpio.h>
>
>  / {
>         interrupt-parent = <&intc>;
> @@ -94,6 +95,38 @@
>                 #size-cells = <1>;
>                 ranges = <0 0 0 0xffffffff>;
>
> +               pcie_x1phy: phy@7e000{
> +                       compatible = "qcom,ipq5018-uniphy-pcie-gen2x1";
> +                       reg = <0x0007e000 0x800>;
> +                       #phy-cells = <0>;
> +                       #clock-cells = <0>;
> +                       clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> +                       clock-names = "pipe_clk";
> +                       clock-output-names = "pcie1_pipe_clk";
> +                       assigned-clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> +                       assigned-clock-rates = <125000000>;
> +                       resets = <&gcc GCC_PCIE1_PHY_BCR>,
> +                                <&gcc GCC_PCIE1PHY_PHY_BCR>;
> +                       reset-names = "phy", "phy_phy";
> +                       status = "disabled";
> +               };
> +
> +               pcie_x2phy: phy@86000{
> +                       compatible = "qcom,ipq5018-uniphy-pcie-gen2x2";
> +                       reg = <0x00086000 0x800>;
> +                       #phy-cells = <0>;
> +                       #clock-cells = <0>;
> +                       clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> +                       clock-names = "pipe_clk";
> +                       clock-output-names = "pcie0_pipe_clk";
> +                       assigned-clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> +                       assigned-clock-rates = <125000000>;

Can this go into the PHY driver?

> +                       resets = <&gcc GCC_PCIE0_PHY_BCR>,
> +                                <&gcc GCC_PCIE0PHY_PHY_BCR>;
> +                       reset-names = "phy", "phy_phy";
> +                       status = "disabled";
> +               };
> +
>                 tlmm: pinctrl@1000000 {
>                         compatible = "qcom,ipq5018-tlmm";
>                         reg = <0x01000000 0x300000>;
> @@ -117,8 +150,8 @@
>                         reg = <0x01800000 0x80000>;
>                         clocks = <&xo_board_clk>,
>                                  <&sleep_clk>,
> -                                <0>,
> -                                <0>,
> +                                <&pcie_x2phy>,
> +                                <&pcie_x1phy>,
>                                  <0>,
>                                  <0>,
>                                  <0>,
> @@ -246,6 +279,155 @@
>                                 status = "disabled";
>                         };
>                 };
> +
> +               pcie_x1: pci@80000000 {
> +                       compatible = "qcom,pcie-ipq5018";
> +                       reg =  <0x80000000 0xf1d

Each address/size tuple should be a separate <> entry.

> +                               0x80000F20 0xa8

lowercase

> +                               0x80001000 0x1000
> +                               0x78000 0x3000

Would you notice why this line stands away from the rest of entries here?

> +                               0x80100000 0x1000>;
> +                       reg-names = "dbi", "elbi", "atu", "parf", "config";
> +                       device_type = "pci";
> +                       linux,pci-domain = <0>;
> +                       bus-range = <0x00 0xff>;
> +                       num-lanes = <1>;
> +                       max-link-speed = <2>;
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +
> +                       phys = <&pcie_x1phy>;
> +                       phy-names ="pciephy";
> +
> +                       ranges = <0x81000000 0 0x80200000 0x80200000
> +                                 0 0x00100000   /* downstream I/O */
> +                                 0x82000000 0 0x80300000 0x80300000
> +                                 0 0x10000000>; /* non-prefetchable memory */
> +
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 0x7>;
> +                       interrupt-map = <0 0 0 1 &intc 0 142
> +                                        IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +                                       <0 0 0 2 &intc 0 143
> +                                        IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +                                       <0 0 0 3 &intc 0 144
> +                                        IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +                                       <0 0 0 4 &intc 0 145
> +                                        IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +                       interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "global_irq";
> +
> +                       clocks = <&gcc GCC_SYS_NOC_PCIE1_AXI_CLK>,
> +                                <&gcc GCC_PCIE1_AXI_M_CLK>,
> +                                <&gcc GCC_PCIE1_AXI_S_CLK>,
> +                                <&gcc GCC_PCIE1_AHB_CLK>,
> +                                <&gcc GCC_PCIE1_AUX_CLK>,
> +                                <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>;
> +
> +                       clock-names = "iface",
> +                                     "axi_m",
> +                                     "axi_s",
> +                                     "ahb",
> +                                     "aux",
> +                                     "axi_bridge";
> +
> +                       resets = <&gcc GCC_PCIE1_PIPE_ARES>,
> +                                <&gcc GCC_PCIE1_SLEEP_ARES>,
> +                                <&gcc GCC_PCIE1_CORE_STICKY_ARES>,
> +                                <&gcc GCC_PCIE1_AXI_MASTER_ARES>,
> +                                <&gcc GCC_PCIE1_AXI_SLAVE_ARES>,
> +                                <&gcc GCC_PCIE1_AHB_ARES>,
> +                                <&gcc GCC_PCIE1_AXI_MASTER_STICKY_ARES>,
> +                                <&gcc GCC_PCIE1_AXI_SLAVE_STICKY_ARES>;
> +
> +                       reset-names = "pipe",
> +                                     "sleep",
> +                                     "sticky",
> +                                     "axi_m",
> +                                     "axi_s",
> +                                     "ahb",
> +                                     "axi_m_sticky",
> +                                     "axi_s_sticky";
> +
> +                       msi-map = <0x0 &v2m0 0x0 0xff8>;
> +                       status = "disabled";
> +               };
> +
> +               pcie_x2: pci@a0000000 {
> +                       compatible = "qcom,pcie-ipq5018";
> +                       reg =  <0xa0000000 0xf1d
> +                               0xa0000F20 0xa8
> +                               0xa0001000 0x1000
> +                               0x80000 0x3000
> +                               0xa0100000 0x1000>;
> +                       reg-names = "dbi", "elbi", "atu", "parf", "config";
> +                       device_type = "pci";
> +                       linux,pci-domain = <1>;
> +                       bus-range = <0x00 0xff>;
> +                       num-lanes = <2>;
> +                       max-link-speed = <2>;
> +                       #address-cells = <3>;
> +                       #size-cells = <2>;
> +
> +                       phys = <&pcie_x2phy>;
> +                       phy-names ="pciephy";
> +
> +                       ranges = <0x81000000 0 0xa0200000 0xa0200000
> +                                 0 0x00100000   /* downstream I/O */
> +                                 0x82000000 0 0xa0300000 0xa0300000
> +                                 0 0x10000000>; /* non-prefetchable memory */
> +
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 0x7>;
> +                       interrupt-map = <0 0 0 1 &intc 0 75
> +                                        IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +                                       <0 0 0 2 &intc 0 78
> +                                        IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +                                       <0 0 0 3 &intc 0 79
> +                                        IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +                                       <0 0 0 4 &intc 0 83
> +                                        IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +                       interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "global_irq";
> +
> +                       clocks = <&gcc GCC_SYS_NOC_PCIE0_AXI_CLK>,
> +                                <&gcc GCC_PCIE0_AXI_M_CLK>,
> +                                <&gcc GCC_PCIE0_AXI_S_CLK>,
> +                                <&gcc GCC_PCIE0_AHB_CLK>,
> +                                <&gcc GCC_PCIE0_AUX_CLK>,
> +                                <&gcc GCC_PCIE0_AXI_S_BRIDGE_CLK>;
> +
> +                       clock-names = "iface",
> +                                     "axi_m",
> +                                     "axi_s",
> +                                     "ahb",
> +                                     "aux",
> +                                     "axi_bridge";
> +
> +                       resets = <&gcc GCC_PCIE0_PIPE_ARES>,
> +                                <&gcc GCC_PCIE0_SLEEP_ARES>,
> +                                <&gcc GCC_PCIE0_CORE_STICKY_ARES>,
> +                                <&gcc GCC_PCIE0_AXI_MASTER_ARES>,
> +                                <&gcc GCC_PCIE0_AXI_SLAVE_ARES>,
> +                                <&gcc GCC_PCIE0_AHB_ARES>,
> +                                <&gcc GCC_PCIE0_AXI_MASTER_STICKY_ARES>,
> +                                <&gcc GCC_PCIE0_AXI_SLAVE_STICKY_ARES>;
> +
> +                       reset-names = "pipe",
> +                                     "sleep",
> +                                     "sticky",
> +                                     "axi_m",
> +                                     "axi_s",
> +                                     "ahb",
> +                                     "axi_m_sticky",
> +                                     "axi_s_sticky";
> +
> +                       msi-map = <0x0 &v2m0 0x0 0xff8>;
> +                       status = "disabled";
> +               };
> +
>         };
>
>         timer {
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
