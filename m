Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71DB6C36000
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 15:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5difdbl7ZQi7tynRege29FggN1WpLzMAn9j8bP1r8IY=; b=onwMOT/qMwE1O0srrxFRcYQvfh
	3CHMFdR7bYsYAkUGW10NO6kY9lfwg5utcxf6otkfs+rImOjGY0UmovrzS3voa/msQOfbj+04sBHXX
	BujETuuW0eys/XqArgtjnl+sqdaJ7L2fU24qr6gUFAZ/rxoLbaeYN2TIfPbTq2/QVg/allMgxqSEI
	3D/TdLrVHb/RAYiwv23Ik2X0VajELsin3Q7GAPc6POLnfFSp4MWv+nI5liUrOV+3+4m5bQGjRzecL
	gFgXd0MybGnEou0ptBqjWDzLGjN7KnxGf+dYH5jG9JxsIqDKmbWgm6KyLwIP9ncPYXWDz1xPbHsEa
	5hmhRYww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdyJ-0000000FFcM-0713;
	Fri, 21 Mar 2025 15:07:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdwG-0000000FFD8-1Ndz
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 15:05:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 698AB43DE1;
	Fri, 21 Mar 2025 15:05:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CCD3C4CEE3;
	Fri, 21 Mar 2025 15:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742569535;
	bh=LDK5i2JsWcIPqbJqtViwb+7u1TmV0WXlcCRoTF0x1ks=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=APwaGSfdOEZrLVz5s3iLIusVTnKNqhTX6atbo8GEnSd/YOyeb04Bc8bgUQ1oxbRE/
	 r9zNcRcV9lbtb/V3eXCaZZwaQqc9o5d5js5Bup1jPoR69+wzM9SwBfFAJwM4IymAaR
	 G41weHV5ez+olm0xsIB3vIb7nmDoQ6tru4GSboK7TCIhZHnS8bbirWxn6qvGCQ8gry
	 LUCfa83Cv8aQk3qp3Oua8U46noRp2YuWCaw4fA3730xOquBLgd6WpxO9s0lvNyGyrl
	 5U0mQDzaJKDHnCq/2QANzTpK0a59FQs2sc9tHcZ3wVh9SbjObtio6ygYYluqOXoqKT
	 vTHQhJl6C+D9A==
Date: Fri, 21 Mar 2025 10:05:34 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, linux-phy@lists.infradead.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 20250317100029.881286-2-quic_varada@quicinc.com, 
 Conor Dooley <conor+dt@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
In-Reply-To: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
Message-Id: <174256796512.3336836.9071668590061212281.robh@kernel.org>
Subject: Re: [PATCH v6 0/6] Enable IPQ5018 PCI support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_080536_412059_085EA6A0 
X-CRM114-Status: GOOD (  23.15  )
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


On Fri, 21 Mar 2025 16:14:38 +0400, George Moussalem wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling PCI gen2 support
> on IPQ5018. IPQ5018 has two phys and two controllers,
> one dual-lane and one single-lane.
> 
> Last patch series (v3) submitted dates back to August 30, 2024.
> As I've worked to add IPQ5018 platform support in OpenWrt, I'm
> continuing the efforts to add Linux kernel support.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
> Changes in v6:
> - Fixed issues reported by 'make dt_bindings_check' as per Rob's bot
> - Removed Krzysztof's Ack-tag on
> - Link to v5: https://lore.kernel.org/r/20250321-ipq5018-pcie-v5-0-aae2caa1f418@outlook.com
> 
> Changes in v5:
> - Re-ordered reg and reg-names in dt-bindings and dts to align with
>   other IPQ SoCs
> - Corrected nr of interrupts in dt-bindings: phy: qcom: Add IPQ5018 SoC
> - Corrected ranges property of pcie controller nodes
> - Removed newlines between cells properties in pcie phy nodes
> - Modified dt bindings to add descriptions and separate conditions for
>   ipq5018 and ipq5332 as they have different nr of clocks and resets
>   As such, also removed Krzysztof's RB tag for validation
> - Ran dtbs_check and fixed:
>   interrupt-map property in pcie nodes:
>   /soc@0/pcie@80000000:interrupt-map: Cell 13 is not a phandle(0)
>   /soc@0/pcie@a0000000:interrupt-map: Cell 13 is not a phandle(0)
> - Added missing gpio header file to ipq5018-rdp432-c2.dts
> - Added MHI register requirement to bindings and to PCIe nodes as per:
>   Depends-on: <20250317100029.881286-2-quic_varada@quicinc.com>
> - Link to v4: https://lore.kernel.org/all/DS7PR19MB8883F2538AA7D047E13C102B9DD22@DS7PR19MB8883.namprd19.prod.outlook.com/
> 
> Changes in v4:
> - removed dependency as the following have been applied:
> 	dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
> 	phy: qcom: Introduce PCIe UNIPHY 28LP driver
> 	dt-bindings: PCI: qcom: Document the IPQ5332 PCIe controller
>   Link: https://lore.kernel.org/all/20250313080600.1719505-1-quic_varada@quicinc.com/
> - added Mani's RB tag to: PCI: qcom: Add support for IPQ5018
> - Removed power-domains property requirement in dt-bindings for IPQ5018
>   and removed Krzysztof's RB tag from:
>   dt-bindings: PCI: qcom: Add IPQ5018 SoC
> - fixed author chain and retained Sricharan Ramabadhran in SoB tags and
>   kept Nitheesh Sekar as the original author
> - Removed comments as per Konrad's comment in:
>   arm64: dts: qcom: ipq5018: Add PCIe related nodes
> - Link to v3 submitted by Sricharan Ramabadhran:
>   Link: https://lore.kernel.org/all/20240830081132.4016860-1-quic_srichara@quicinc.com/
> - Link to v3, incorrectly versioned:
>   Link: https://lore.kernel.org/all/DS7PR19MB8883BC190797BECAA78EC50F9DCB2@DS7PR19MB8883.namprd19.prod.outlook.com/
> 
> Changes in v3 (incorrectly versioned):
> - Depends on
>   Link: https://patchwork.kernel.org/project/linux-arm-msm/cover/20250220094251.230936-1-quic_varada@quicinc.com/
> - Added 8 MSI SPI and 1 global interrupts (Thanks Mani for confirming)
> - Added hw revision (internal/synopsys) and nr of lanes in patch 4
>   commit msg
> - Sorted reg addresses and moved PCIe nodes accordingly
> - Moved to GIC based interrupts
> - Added rootport node in controller nodes
> - Tested on Linksys devices (MX5500/SPNMX56)
> - Link to v2: https://lore.kernel.org/all/20240827045757.1101194-1-quic_srichara com/
> 
> Changes in v3:
>  - Added Reviewed-by tag for patch#1.
>  - Fixed dev_err_probe usage in patch#3.
>  - Added pinctrl/wak pins for pcie1 in patch#6.
> 
> Changes in v2:
>  - Fixed all review comments from Krzysztof, Robert Marko,
>    Dmitry Baryshkov, Manivannan Sadhasivam, Konrad Dybcio.
>  - Updated the respective patches for their changes.
>  - Link to v1: https://lore.kernel.org/lkml/32389b66-48f3-8ee8-e2f1-1613feed3cc7@gmail.com/T/
> 
> ---
> Nitheesh Sekar (6):
>       dt-bindings: phy: qcom: uniphy-pcie: Add ipq5018 compatible
>       phy: qualcomm: qcom-uniphy-pcie 28LP add support for IPQ5018
>       dt-bindings: PCI: qcom: Add IPQ5018 SoC
>       PCI: qcom: Add support for IPQ5018
>       arm64: dts: qcom: ipq5018: Add PCIe related nodes
>       arm64: dts: qcom: ipq5018: Enable PCIe
> 
>  .../devicetree/bindings/pci/qcom,pcie.yaml         |  50 +++++
>  .../bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml |  49 ++++-
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts     |  40 ++++
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi              | 234 ++++++++++++++++++++-
>  drivers/pci/controller/dwc/pcie-qcom.c             |   1 +
>  drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c   |  45 ++++
>  6 files changed, 409 insertions(+), 10 deletions(-)
> ---
> base-commit: 5744a64fddfc33629f3bcc9a06a646f7443077a7
> change-id: 20250321-ipq5018-pcie-1d44abf0e2f5
> 
> Best regards,
> --
> George Moussalem <george.moussalem@outlook.com>
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


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com:

arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dtb: pcie@80000000: reg: [[2147483648, 3869], [2147487520, 168], [2147487744, 4096], [491520, 12288], [2148532224, 4096], [503808, 4096]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dtb: pcie@80000000: reg-names: ['dbi', 'elbi', 'atu', 'parf', 'config', 'mhi'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dtb: pcie@a0000000: reg: [[2684354560, 3869], [2684358432, 168], [2684358656, 4096], [524288, 12288], [2685403136, 4096], [536576, 4096]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dtb: pcie@a0000000: reg-names: ['dbi', 'elbi', 'atu', 'parf', 'config', 'mhi'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
arch/arm64/boot/dts/qcom/ipq5018-tplink-archer-ax55-v1.dtb: pcie@80000000: reg: [[2147483648, 3869], [2147487520, 168], [2147487744, 4096], [491520, 12288], [2148532224, 4096], [503808, 4096]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
arch/arm64/boot/dts/qcom/ipq5018-tplink-archer-ax55-v1.dtb: pcie@80000000: reg-names: ['dbi', 'elbi', 'atu', 'parf', 'config', 'mhi'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
arch/arm64/boot/dts/qcom/ipq5018-tplink-archer-ax55-v1.dtb: pcie@a0000000: reg: [[2684354560, 3869], [2684358432, 168], [2684358656, 4096], [524288, 12288], [2685403136, 4096], [536576, 4096]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#
arch/arm64/boot/dts/qcom/ipq5018-tplink-archer-ax55-v1.dtb: pcie@a0000000: reg-names: ['dbi', 'elbi', 'atu', 'parf', 'config', 'mhi'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
