Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2497C6379F
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 09:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ck9w6YuNRAlOHi0ov/4+5uQgnUM//3THR+VVKgz59ZE=; b=IpKrf7DDW2qxwH
	1qE4d4gfV0bQPXiNjbBbhJPK4ks5qr/ETgB7rUZM5UO5Ixc9VDT16HEIKnvtK2ESpOVWSVzfHP/JP
	6dKvdCh0Bw8ZqR2di992aTgIXFbN787Ohn7H25BLmQC455DvaYKbCDz+dXfOvuZaNpHja7zbmXUyB
	6lKWTWouL2jhQC1k1MTXvJ0CK9LRf33yKDeDvAO4Jpk1GGh/5h591/jLJS9vo6+OI66OIIhWt+doG
	8N4Jvf7KeBR51KEIvsL7XQUqko2eIbOgKqzDdha5tQEgfIf7s7ya/oc8jloaqVhMahfuaHFxnqLTS
	twKSHZ3K3AQV3+NnOaEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsnj-001GT6-8V; Fri, 03 Feb 2023 09:56:11 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNsnf-001GR8-NU
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 09:56:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 04AFBB82A2B;
	Fri,  3 Feb 2023 09:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 999E2C433D2;
	Fri,  3 Feb 2023 09:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675418164;
	bh=yPF/H334aRuYt2PAUE0Uo8r9edAIWn91teehfMtnynI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ge/JZVwJ7decyTDjG4hMAZxaLwf3c2fgVwYslq5qanp+rAkgTbVFHcX6KKJICZVir
	 eDjq6nxlNpeJx2kOI9kGnwkxRq2F4CqTYgCikpHMTvBI2vEHDk36kYTvMJcxZb/kWU
	 srH4sd6m7G4yLc6fEVgZY+eRduHDqFPfFG3kQ37wU1mM7bbM4qDD3noZCOLSugC2w3
	 i1Yh5esCfzNVRSu9LvtDgqdUFGqmht0ZXBv6skq5hk46VE9I9Apx5fam8UNria8shJ
	 gUp31ZRD1+0I6b1QIwca9PiY1qwjiQT903FAB9yP0umBn+sCJ5YDtTLF+o3gJHl8TE
	 mXoIXnYQm4FjA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pNso3-0000zZ-7v; Fri, 03 Feb 2023 10:56:31 +0100
Date: Fri, 3 Feb 2023 10:56:31 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v7 12/12] arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and
 controllers nodes
Message-ID: <Y9zaT0SA5yahuBoW@hovoldconsulting.com>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
 <20230203081807.2248625-13-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230203081807.2248625-13-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_015607_933035_91DC36EC 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

On Fri, Feb 03, 2023 at 10:18:07AM +0200, Abel Vesa wrote:
> Enable PCIe controllers and PHYs nodes on SM8550 MTP board.
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

> +&pcie_1_phy_aux_clk {
> +	clock-frequency = <1000>;
> +};
> +
> +&pcie0 {
> +	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
> +	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_default_state>;
> +
> +	status = "okay";
> +};
> +
> +&pcie0_phy {
> +	vdda-phy-supply = <&vreg_l1e_0p88>;
> +	vdda-pll-supply = <&vreg_l3e_1p2>;

Super nit: add newline for consistency.

> +	status = "okay";
> +};
> +
> +&pcie1 {
> +	wake-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
> +	perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;

Neither controller needs the new enable gpio?

> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie1_default_state>;
> +
> +	status = "okay";
> +};
> +
> +&pcie1_phy {
> +	vdda-phy-supply = <&vreg_l3c_0p91>;
> +	vdda-pll-supply = <&vreg_l3e_1p2>;
> +	vdda-qref-supply = <&vreg_l1e_0p88>;
> +
> +	status = "okay";
> +};
> +
>  &pm8550_gpios {
>  	sdc2_card_det_n: sdc2-card-det-state {
>  		pins = "gpio12";

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
