Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93DD8C5473A
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 12:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mnaRncWHvHhxQ/34v1fJnohKpIlXkZZKR8vfyGA1QMk=; b=OsWOGptsC3eh1FlEvRaEXSK1gy
	IPtmIcFO+oWv7/WiCg4TIkjjWS1qNwn0DMfPEKj4uKJT6eDGTIcLgayAQg+ggiRjvIkh1ia2SUCtx
	N4mFX0IyuJlwTmnst1h+h1wrz2rhbbIMITx47G6naFCB+iGzaI8ADMW/8IH4dHzGU2a4mddUgUorg
	+ZAPYJ2/QR0DKBFM2wab7m40FcA/TCJ4pOSuNWHT3fFu8D9HfImbmnzSYBH87iU8HSxL6akCEHErn
	KeUYyRqCNjE2vcrZgqS5caUsCqenH+NzktXmroLPdTEHBNWWBD45qGFE4ZSam4zjlO2XEx2oqLh3y
	4izM01Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sivPE-0000000BGB5-3wF3;
	Tue, 27 Aug 2024 12:34:40 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sivMO-0000000BF7F-1Pv5
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 12:31:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AD93CA4190E;
	Tue, 27 Aug 2024 12:31:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FCAAC6104D;
	Tue, 27 Aug 2024 12:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724761903;
	bh=qmMzGnC28ZCDh31+2GefMmB0QMXAHDZVokWKSX+jKyU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=gNMjNWhoZffSOv1un8ggYbJD221iCDLPRhGXySnV4I9D0LpvMrLudiopVGiQHN41h
	 sIBQFWvONGMXeFUFsvTLZ4Ug1Jk986Qn8V/R0P6HPX4mCfVarAnDYwW0/qkFeI52C5
	 01CzjlyjSbdqLE57f0Z7YxxcQUqPP+SMMfHtgYmXU+gqDJ+wswLxRVol2yYOpC351t
	 qK2N/HKBi6FJkb2HVNv6vR1SOwo3hokVVhnBRqlcjvuQSR4QX+OeVvg7kT6TdWJvpy
	 1+b9n3YM4Im9LXRIM2j4UWAmCnOVb797kw4jDDohWQHpwNRuMGm0w7oCdc+o7+8r3l
	 FWDFBNRa0Xctw==
Date: Tue, 27 Aug 2024 07:31:41 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com, vkoul@kernel.org, 
 dmitry.baryshkov@linaro.org, sboyd@kernel.org, neil.armstrong@linaro.org, 
 linux-clk@vger.kernel.org, conor+dt@kernel.org, 
 linux-arm-msm@vger.kernel.org, andersson@kernel.org, kw@linux.com, 
 manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, 
 konradybcio@kernel.org, abel.vesa@linaro.org, quic_devipriy@quicinc.com, 
 linux-pci@vger.kernel.org, quic_msarkar@quicinc.com, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kishon@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
Message-Id: <172476183902.3553327.3757950028426438486.robh@kernel.org>
Subject: Re: [PATCH 0/8] Add support for PCIe3 on x1e80100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_053144_547999_7158F635 
X-CRM114-Status: GOOD (  13.66  )
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


On Mon, 26 Aug 2024 23:36:23 -0700, Qiang Yu wrote:
> This series add support for PCIe3 on x1e80100.
> 
> PCIe3 needs additional set of clocks, regulators and new set of PCIe QMP
> PHY configuration compare other PCIe instances on x1e80100. Hence add
> required resource configuration and usage for PCIe3.
> 
> Qiang Yu (8):
>   phy: qcom-qmp: pcs-pcie: Add v6.30 register offsets
>   phy: qcom-qmp: pcs: Add v6.30 register offsets
>   phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3
>   arm64: dts: qcom: x1e80100: Add support for PCIe3 on x1e80100
>   dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100
>     QMP PCIe PHY Gen4 x8
>   clk: qcom: gcc-x1e80100: Fix halt_check for pipediv2 clocks
>   arm64: dts: qcom: x1e80100-qcp: Add power supply and sideband signal
>     for pcie3
>   PCI: qcom: Add support to PCIe slot power supplies
> 
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  18 +-
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts     | 116 +++++++++
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi        | 205 +++++++++++++++-
>  drivers/clk/qcom/gcc-x1e80100.c               |  10 +-
>  drivers/pci/controller/dwc/pcie-qcom.c        |  52 +++-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 222 +++++++++++++++++-
>  .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h    |  25 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h |  19 ++
>  8 files changed, 657 insertions(+), 10 deletions(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_30.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_30.h
> 
> --
> 2.34.1
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y qcom/x1e80100-qcp.dtb' for 20240827063631.3932971-1-quic_qianyu@quicinc.com:

arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: reg: [[0, 29163520, 0, 12288], [0, 2013265920, 0, 3869], [0, 2013269824, 0, 168], [0, 2013270016, 0, 4096], [0, 2014314496, 0, 1048576]] is too short
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: reg-names: ['parf', 'dbi', 'elbi', 'atu', 'config'] is too short
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clocks: [[53, 348], [53, 84], [53, 86], [53, 87], [53, 94], [53, 95], [53, 22], [53, 33]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clock-names:0: 'aux' was expected
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clock-names:1: 'cfg' was expected
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clock-names:2: 'bus_master' was expected
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clock-names:3: 'bus_slave' was expected
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clock-names:4: 'slave_q2a' was expected
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clock-names:5: 'noc_aggr' was expected
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clock-names:6: 'cnoc_sf_axi' was expected
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: clock-names: ['pipe_clk_src', 'aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'noc_aggr', 'cnoc_sf_axi'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pci@1bd0000: Unevaluated properties are not allowed ('operating-points-v2', 'opp-table' were unexpected)
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-x1e80100.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: phy@1be0000: clock-names:4: 'pipe' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: phy@1be0000: clock-names:5: 'pipediv2' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: phy@1be0000: clock-names:6: 'phy_aux' was expected
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pmic@3: gpio@8800: 'pm_sde7_aux_3p3', 'pm_sde7_main_3p3' do not match any of the regexes: '-hog(-[0-9]+)?$', '-state$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: gpio@8800: 'pm_sde7_aux_3p3', 'pm_sde7_main_3p3' do not match any of the regexes: '-hog(-[0-9]+)?$', '-state$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/pinctrl/qcom,pmic-gpio.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: pmic@8: gpio@8800: 'pcie_x8_12v_on' does not match any of the regexes: '-hog(-[0-9]+)?$', '-state$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
arch/arm64/boot/dts/qcom/x1e80100-qcp.dtb: gpio@8800: 'pcie_x8_12v_on' does not match any of the regexes: '-hog(-[0-9]+)?$', '-state$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/pinctrl/qcom,pmic-gpio.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
