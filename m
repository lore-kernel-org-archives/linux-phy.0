Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 537CCC677F1
	for <linux-phy@archiver.kernel.org>; Thu, 23 Feb 2023 13:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZE+b3JpOZ/lyncnXYe0+NUS1Fz4FFvDZP12DMKhND0=; b=Oz4Ppb3D0tbk9F
	E+UtD/92SOXcZUG7VQq8NPm8HwQsHg7KGFBtq4yQgzhyNWUW1wYg3nHi9AebhYCxtwl012fFK9yDg
	ohPwOuEH5ogbNev7Yk6PanCsyHu5Ch6xhrthYJJlHM8FsCZsYR9v4rSkvAEp49VIlxsNvD1Yoirrd
	WdrqOC4CJLKkP6Wdh5iv2d5FKxMuzEKzICqz25Vy4J23fRM03lq46JoqqkMqcISSgMJalZDYwjPxq
	REArLvtvkZl4LlNY+dogIX2bPElhFitGtxGKS9nDkGXMSZRv+UXg+LuO9Y4HBnOgBXIv5k4rnwg5e
	Bc5EBfbwVgbvpGkpS/6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVBHH-00GOsm-Lf; Thu, 23 Feb 2023 13:04:51 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVBHE-00GOrq-8h
	for linux-phy@lists.infradead.org; Thu, 23 Feb 2023 13:04:50 +0000
Received: by mail-pj1-x1031.google.com with SMTP id y2so8608537pjg.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Feb 2023 05:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDkAyTl4e5Pg7c9IntJyDDk2YT+I/mT8i4BOda6y2xY=;
        b=nBsez7fHRRIiINSdFLPvlrg8TZchD4wKhnS1nlLN1Hk9OXSJ19hvMaV/2ZF/XX0WDk
         kdCw9easfSZyFfb0Qu51theWgnSRm54ROwWtJySpxSlhhJhx0xfU2u1zT54zrOWdmc9Y
         a9AUkEp2t4ZRy2QeSiEOTNCmQDJwGqBLgSFTL9YfTZYp57i8r1l/W+1EA01VDVkLeHJw
         3zHh3UaTFkbrlT+chwl/6mOIumbi/97rhE4pntxkc/T1cZ9lXW4MeCQQkvacJwzbB7Pf
         pZkCyU2uT3Y5Ed9s5swPMNScYpw8LY4G9MORJ/huzHTesbnSRvVs2IRnGyq/11VFR4cv
         UQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JDkAyTl4e5Pg7c9IntJyDDk2YT+I/mT8i4BOda6y2xY=;
        b=A2gdXzrurlg+2ELY+LZlrMGZCKDJ/ZAW3fToNiZKLaD9SLmZcXRM1/PPQkFx3PA/lk
         yOQu+qAzT7kEMjqTUoVH0oT5JDez7fIEz9YcY41k7NvdjuEN9Q/CG/L/6A3o2jNysiqs
         oIVFfpzTGFu5CkkWdCatj30/dNj6fz2zDfNk8pQv1mKaoUDZXeuj+RPAlSVIjZN2fXk+
         kHhDaz/Sj6JLTT7om1nU/lfoLREDz6rRJHGAw+KKbzcRARru2p2zTNI5r7vMv+QmIP4s
         ieM8V4SaOnc8aHZLnu10didiBrO4AMuLR0WEGgyiD8Vp4E4WjtpiegvBDSy2Oz+a3erG
         Hb7A==
X-Gm-Message-State: AO0yUKU/oa7QpzGNmEiNDv3jG5NLcH/B3FxaUCijCtF3/YeUsHLOmnd/
	ol2/deUkbrQiReTBcJJHcgzd
X-Google-Smtp-Source: AK7set9yzaubAFiFFmxHybxYsis4ROkd2GJ3XyKkK0PglYAtJDCPH1KeLOw8n7C3jddbCjDO/uWWjw==
X-Received: by 2002:a17:902:dac7:b0:19a:aa9c:c66f with SMTP id q7-20020a170902dac700b0019aaa9cc66fmr14188841plx.21.1677157486080;
        Thu, 23 Feb 2023 05:04:46 -0800 (PST)
Received: from workstation ([59.97.53.124])
        by smtp.gmail.com with ESMTPSA id e1-20020a170902b78100b001967580f60fsm8675022pls.260.2023.02.23.05.04.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 Feb 2023 05:04:45 -0800 (PST)
Date: Thu, 23 Feb 2023 18:34:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
	kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
	bhelgaas@google.com, kishon@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 05/11] ARM: dts: qcom: sdx55: Fix the unit address of
 PCIe EP node
Message-ID: <20230223130440.GB6422@workstation>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
 <20230222153251.254492-6-manivannan.sadhasivam@linaro.org>
 <4e61522d-075d-c77d-b1f6-c9f4c25e1cf2@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e61522d-075d-c77d-b1f6-c9f4c25e1cf2@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_050448_705520_312EA15A 
X-CRM114-Status: GOOD (  17.69  )
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

On Wed, Feb 22, 2023 at 05:02:08PM +0100, Konrad Dybcio wrote:
> 
> 
> On 22.02.2023 16:32, Manivannan Sadhasivam wrote:
> > Unit address of PCIe EP node should be 0x1c00000 as it has to match the
> > first address specified in the reg property.
> > 
> > This also requires sorting the node in the ascending order.
> > 
> > Fixes: 31c9ef002580 ("dt-bindings: PCI: Add Qualcomm PCIe Endpoint controller")
> Unsure, we aren't fixing the bindings..
> 

Err... will fix the tag in next version.

Thanks,
Mani

> 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> For the dt change:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Konrad
> >  arch/arm/boot/dts/qcom-sdx55.dtsi | 78 +++++++++++++++----------------
> >  1 file changed, 39 insertions(+), 39 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
> > index 93d71aff3fab..e84ca795cae6 100644
> > --- a/arch/arm/boot/dts/qcom-sdx55.dtsi
> > +++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
> > @@ -303,6 +303,45 @@ qpic_nand: nand-controller@1b30000 {
> >  			status = "disabled";
> >  		};
> >  
> > +		pcie_ep: pcie-ep@1c00000 {
> > +			compatible = "qcom,sdx55-pcie-ep";
> > +			reg = <0x01c00000 0x3000>,
> > +			      <0x40000000 0xf1d>,
> > +			      <0x40000f20 0xc8>,
> > +			      <0x40001000 0x1000>,
> > +			      <0x40200000 0x100000>,
> > +			      <0x01c03000 0x3000>;
> > +			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> > +				    "mmio";
> > +
> > +			qcom,perst-regs = <&tcsr 0xb258 0xb270>;
> > +
> > +			clocks = <&gcc GCC_PCIE_AUX_CLK>,
> > +				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
> > +				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
> > +				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
> > +				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
> > +				 <&gcc GCC_PCIE_SLEEP_CLK>,
> > +				 <&gcc GCC_PCIE_0_CLKREF_CLK>;
> > +			clock-names = "aux", "cfg", "bus_master", "bus_slave",
> > +				      "slave_q2a", "sleep", "ref";
> > +
> > +			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "global", "doorbell";
> > +			reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
> > +			wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
> > +			resets = <&gcc GCC_PCIE_BCR>;
> > +			reset-names = "core";
> > +			power-domains = <&gcc PCIE_GDSC>;
> > +			phys = <&pcie0_lane>;
> > +			phy-names = "pciephy";
> > +			max-link-speed = <3>;
> > +			num-lanes = <2>;
> > +
> > +			status = "disabled";
> > +		};
> > +
> >  		pcie0_phy: phy@1c07000 {
> >  			compatible = "qcom,sdx55-qmp-pcie-phy";
> >  			reg = <0x01c07000 0x1c4>;
> > @@ -400,45 +439,6 @@ sdhc_1: mmc@8804000 {
> >  			status = "disabled";
> >  		};
> >  
> > -		pcie_ep: pcie-ep@40000000 {
> > -			compatible = "qcom,sdx55-pcie-ep";
> > -			reg = <0x01c00000 0x3000>,
> > -			      <0x40000000 0xf1d>,
> > -			      <0x40000f20 0xc8>,
> > -			      <0x40001000 0x1000>,
> > -			      <0x40200000 0x100000>,
> > -			      <0x01c03000 0x3000>;
> > -			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> > -				    "mmio";
> > -
> > -			qcom,perst-regs = <&tcsr 0xb258 0xb270>;
> > -
> > -			clocks = <&gcc GCC_PCIE_AUX_CLK>,
> > -				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
> > -				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
> > -				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
> > -				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
> > -				 <&gcc GCC_PCIE_SLEEP_CLK>,
> > -				 <&gcc GCC_PCIE_0_CLKREF_CLK>;
> > -			clock-names = "aux", "cfg", "bus_master", "bus_slave",
> > -				      "slave_q2a", "sleep", "ref";
> > -
> > -			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
> > -				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
> > -			interrupt-names = "global", "doorbell";
> > -			reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
> > -			wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
> > -			resets = <&gcc GCC_PCIE_BCR>;
> > -			reset-names = "core";
> > -			power-domains = <&gcc PCIE_GDSC>;
> > -			phys = <&pcie0_lane>;
> > -			phy-names = "pciephy";
> > -			max-link-speed = <3>;
> > -			num-lanes = <2>;
> > -
> > -			status = "disabled";
> > -		};
> > -
> >  		remoteproc_mpss: remoteproc@4080000 {
> >  			compatible = "qcom,sdx55-mpss-pas";
> >  			reg = <0x04080000 0x4040>;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
