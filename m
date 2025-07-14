Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70FF9C83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 17:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YTDuSDAjHjiElFA6zedDvNZmoxWEuS/ZwNSfFtAM5Yg=; b=aODcDtNluDuB7ksNvCCfIVaJp1
	cXLsAAaKNpxo8xqHhwuGKbXNHiE1T+kjLRtd6wKF5x1JLuvww4RZaAgIpoJ9Zv4XPDz2UfGcoPK3a
	LanrCuoWkgKU1wBigU8wBPtqPFE1LkN/RRvXbO+R7s5+GzWxQ74qH8VWLJ5ip5aM9RqyrOrjKZQOb
	+n7mChy/9CrYqCLpCQjWOwVJBRrbZSRrfHgvgdnQIQK3vlmDj89nDzmcdudgni/r+s1q9fs7F1HS2
	ZC7vvijoAyxsk8WzdDQmrwZyhLEu4ATgq19iU9MxU7IGySYGVgdTw+LYmUP8h31/4Tm0n2hOl/ykg
	eQm9bafA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubMhW-00000002vU8-0ueK;
	Mon, 14 Jul 2025 17:10:50 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubL2g-00000002eot-3c9I
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 15:24:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 32261A571E9;
	Mon, 14 Jul 2025 15:24:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC20EC4CEF0;
	Mon, 14 Jul 2025 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752506673;
	bh=0cN73o2yYiCiXCp/p9M0zuVbz++37qgqTvQ6ZjDqtEY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=LK8SGKLrKtSedVixTGKOrpesyxF/Rur6+7jCC5sJ+VQayZVxMRGVgZGMDc61XfpxU
	 n8xpgFfxNMrUXXwc9VMh+zWtxhBusZcYtxC+nxka5WUluk87JLYpyYvsljxZlQ74MO
	 6kulwGTS5eXbTST0sTGe26OriyP/AqJBrgnUspJn3P7xAcLtDV9tDlszE94+lKM6Hc
	 UlnIATFpiY8Dw69pfRrzf0mABKoHTHbMxZLM0VPWjacZXe4/Ynajr37cQKfXipz3GQ
	 IlWu+qnaraklF5X9Ol9lh+0luFw7xgRjj/iKQXM/N+vfzd2hyyMVXvVCHWJ/eyMuz7
	 E6bOZu8miiQyQ==
Date: Mon, 14 Jul 2025 10:24:32 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: jingoohan1@gmail.com, Ziyue Zhang <quic_ziyuzhan@quicinc.com>, 
 quic_vbadigan@quicinc.com, abel.vesa@linaro.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, kw@linux.com, 
 konradybcio@kernel.org, kwilczynski@kernel.org, linux-pci@vger.kernel.org, 
 andersson@kernel.org, krzk+dt@kernel.org, kishon@kernel.org, 
 linux-phy@lists.infradead.org, johan+linaro@kernel.org, bhelgaas@google.com, 
 quic_krichai@quicinc.com, devicetree@vger.kernel.org, lpieralisi@kernel.org, 
 mani@kernel.org, vkoul@kernel.org, qiang.yu@oss.qualcomm.com, 
 neil.armstrong@linaro.org, conor+dt@kernel.org
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com>
References: <20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com>
Message-Id: <175250104197.2052778.9197055030236211122.robh@kernel.org>
Subject: Re: [PATCH v8 0/5] pci: qcom: Add QCS8300 PCIe support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_082435_033144_EDC174D6 
X-CRM114-Status: GOOD (  20.03  )
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


On Mon, 14 Jul 2025 16:15:24 +0800, Ziyue Zhang wrote:
> This series depend on the sa8775p gcc_aux_clock and link_down reset change
> https://lore.kernel.org/all/20250529035416.4159963-1-quic_ziyuzhan@quicinc.com/
> 
> This series adds document, phy, configs support for PCIe in QCS8300.
> It also adds 'link_down' reset for sa8775p.
> 
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Changes in v8:
> - rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
> - Add Fixes tag to phy change (Johan)
> - Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v7:
> - rebase qcs8300-ride.dtsi change to solve conflicts.
> - Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v6:
> - move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
> - Update QCS8300 and sa8775p phy dt, remove aux clock.
> - Fixed compile error found by kernel test robot
> - Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v5:
> - Add QCOM PCIe controller version in commit msg (Mani)
> - Modify platform dts change subject (Dmitry)
> - Fixed compile error found by kernel test robot
> - Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v4:
> - Add received tag
> - Fixed compile error found by kernel test robot
> - Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7
> 
> Changes in v3:
> - Add received tag(Rob & Dmitry)
> - Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
> - remove pcieprot0 node(Konrad & Mani)
> - Fix format comments(Konrad)
> - Update base-commit to tag: next-20241213(Bjorn)
> - Corrected of_device_id.data from 1.9.0 to 1.34.0.
> - Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v2:
> - Fix some format comments and match the style in x1e80100(Konrad)
> - Add global interrupt for PCIe0 and PCIe1(Konrad)
> - split the soc dtsi and the platform dts into two changes(Konrad)
> - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
> 
> 
> 
> Ziyue Zhang (5):
>   dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>     for qcs8300
>   arm64: dts: qcom: qcs8300: enable pcie0
>   arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
>   arm64: dts: qcom: qcs8300: enable pcie1
>   arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
> 
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +-
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  80 +++++
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 296 +++++++++++++++++-
>  3 files changed, 375 insertions(+), 3 deletions(-)
> 
> 
> base-commit: b551c4e2a98a177a06148cf16505643cd2108386
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


This patch series was applied (using b4) to base:
 Base: using specified base-commit b551c4e2a98a177a06148cf16505643cd2108386

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com:

arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c00000 (qcom,pcie-qcs8300): reset-names: ['pci', 'link_down'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c00000 (qcom,pcie-qcs8300): resets: [[50, 1], [50, 2]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c10000 (qcom,pcie-qcs8300): reset-names: ['pci', 'link_down'] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: pci@1c10000 (qcom,pcie-qcs8300): resets: [[50, 6], [50, 7]] is too long
	from schema $id: http://devicetree.org/schemas/pci/qcom,pcie-sa8775p.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clocks: [[50, 70], [50, 68], [50, 80], [50, 72], [50, 74], [50, 77]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
