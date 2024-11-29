Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65802D729FB
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 19:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=sjo2Jeb9hDAq6mQ8CMNxQ+LIIi+vVy0B9+AnpVRK+MI=; b=CcwSz0NUvXxdTs
	/CbBeXPGbg49VvHv7+6q/jZpIQu2CkAvQKzIw8P6ovUk+I01U4FC5P4wDOEHh70kSfDKqD/KET7T/
	ocABHqEQ+9ieJqJe2w9xNDKOkJu+wcEHN3eklsos7pLF1+1lFT4k4jtOZB2A6++lC8HTAY1Nf7IMi
	vvXwOXyezK4TW2ncErKsrbvEyx0G2fbeAQ3pinMZZ7C4KeDYu0ev5Vk1ZAmFSoF2KGmf8JnAuvrQI
	r7Zk9Ci8qJb0y31caLEZBnu1KoWvLPzzrdVe7p38/MNfXlGDooD0QJjHLYFYhQo+J6T0razFBKmuN
	qCwJgvF/3Iah/QxkwlTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH6hj-00000000qVA-0A6V;
	Fri, 29 Nov 2024 19:31:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH6hg-00000000qUo-469w
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 19:31:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2A5265C5A1C;
	Fri, 29 Nov 2024 19:30:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD23EC4CECF;
	Fri, 29 Nov 2024 19:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732908660;
	bh=KpVMTGiqief/k7ZDZ3M0pog58b/xHD5DS4kjzxjN+5M=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=LKAMReOgI8FkfVSHqQEHRd5ukAcj9KPJGb1lIrhRN76LtdJDqfkdmOJAifHWYAXBW
	 oY8LxhrSCUwEBXVbJomxUeM+jksTuNAkV03ktliSPwM3cof+xWgQQWaWfAvzKFg9am
	 hNyIwI2X0bov+pDmsyVu16RvAhofdF0BOPEKimbeF2UB1jjzhR91L9roPTA5eBSICt
	 +4H4t6QVJ5nh7x3kofJATGTPDVm0qaTcvHSmMVfJ2Y1L1ZX9LgwBdclvao+boq8Fgo
	 Eue5n5Yw6fqnMyJvw0phr/umA4yoAEBvlTv1u4zzY+3c+G+GJa6atJFXLl1OGS3glZ
	 CYFfL0pkMe+8w==
Date: Fri, 29 Nov 2024 13:30:58 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
	lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
	neil.armstrong@linaro.org, andersson@kernel.org,
	konradybcio@kernel.org, quic_tsoni@quicinc.com,
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
	quic_tdas@quicinc.com, quic_tingweiz@quicinc.com,
	quic_aiquny@quicinc.com, kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 0/8] pci: qcom: Add QCS8300 PCIe support
Message-ID: <20241129193058.GA2769178@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_113101_097133_9BD5D1BF 
X-CRM114-Status: GOOD (  15.22  )
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

[+cc linux-pci; odd to have a series labeled "pci: ..." but without
copying linux-pci]
 
On Thu, Nov 28, 2024 at 04:10:48PM +0800, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS8300.
> The series depend on the following devicetree.
> 
> Base DT:
> https://lore.kernel.org/all/20240925-qcs8300_initial_dtsi-v2-0-494c40fa2a42@quicinc.com/
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Have follwing changes:
> 	- Document the QMP PCIe PHY on the QCS8300 platform.
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
> 
> Changes in v2:
> - Fix some format comments
> - Add global interrupt for PCIe0 and PCIe1
> - split the soc dtsi and the platform dts into two changes
> - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
> 
> Ziyue Zhang (8):
>   dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP
>     PCIe PHY Gen4 x2
>   phy: qcom-qmp-pcie: add dual lane PHY support for QCS8300
>   dt-bindings: PCI: qcom,pcie-sa8775p: document qcs8300
>   PCI: qcom: Add QCS8300 PCIe support
>   arm64: dts: qcom: qcs8300: enable pcie0 for qcs8300 platform
>   arm64: dts: qcom: qcs8300: enable pcie0 for qcs8300 soc
>   arm64: dts: qcom: qcs8300: enable pcie1 for qcs8300 soc
>   arm64: dts: qcom: qcs8300: enable pcie1 for qcs8300 platform
> 
>  .../bindings/pci/qcom,pcie-sa8775p.yaml       |   7 +-
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  86 ++++-
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 352 ++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  89 +++++
>  6 files changed, 534 insertions(+), 3 deletions(-)
> 
> 
> base-commit: eb6a0b56032c62351a59a12915a89428bce68d1d
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
