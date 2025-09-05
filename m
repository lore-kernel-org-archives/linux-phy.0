Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DC1ECAC581
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 00:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z0gYlBGIlw0eZlLEmjPF0HIWM51uvdT89DlEdJ+qcX4=; b=0QNwi4sMe59dheU/HinExhjQpN
	sT9jl1efgNzDkDtPrvpQ7W1wjFD52dF9VkTvUMKZtpOgc72d8ULY5xm66vwQn7H9Arf/QwrBneMZf
	B+UUSllpZ4Mf7mxg3/u4HNOTVoCtBamtMUtfNe5nX0Vv0vNXJOkuNM12LQCTZkGPfTX5OWZyd2q+j
	IKMtwFORZ25/yvQ3eJV2ynpuzMLiuhLIYiAJrR8NgRIbqJIlvg6hC+a2cr7Q2e6Ke1wgzj1C/D8CF
	yuNjWQonJdwgYD2mj1cr1Lo8RQ781/Rw8ExtZ40vKPzkH5i6Obv7Kzokp5KB2ftEW9jxpaNlECx6z
	fZxMN2YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugVh-00000005Rqd-0Fvk;
	Sat, 06 Sep 2025 00:10:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuaUi-00000003Z1Z-1FT7
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 17:45:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6D514601AA;
	Fri,  5 Sep 2025 17:45:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDEA9C4CEF1;
	Fri,  5 Sep 2025 17:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757094303;
	bh=JRoj6Ci9wHU172Ie2bm2KbIB7z/ZxMXoAI7uwTju8l8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=qDVR8G1cHnoOKaISEn3ILawg4lLl5ZxilJnEWSgjJRinykFT9ihy9ASczjxCypy49
	 MxncKaEWPiS6iZV76aoax8IAhqp00Wed5VmASI8vg4PkIxFBtNWzk+uYYeunxumOvA
	 2Mntv+1Tb3txhkWAoWOuTC6xl9R54QvQigtyDpA4uFu5Q4ci71agKxN8JWQ/8Rm605
	 Xx4eXNZ53V9b5rln4k32L2DV9A0sRnrK/zDR4NqJ0vtyr2sZ+AHmf09R2o956ufAA0
	 M1QIzWoD2dflMJlCo9AYlOy8XiYzRDD+aM6JHSMbnkeL7xO7jJ7Lu0CvpO+fGIdGIg
	 CWW4A88Y+q55w==
Date: Fri, 05 Sep 2025 12:45:02 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: kwilczynski@kernel.org, Ziyue Zhang <quic_ziyuzhan@quicinc.com>, 
 andersson@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 vkoul@kernel.org, conor+dt@kernel.org, quic_vbadigan@quicinc.com, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 abel.vesa@linaro.org, neil.armstrong@linaro.org, 
 linux-kernel@vger.kernel.org, mani@kernel.org, jingoohan1@gmail.com, 
 lpieralisi@kernel.org, kw@linux.com, kishon@kernel.org, bhelgaas@google.com, 
 qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com, 
 johan+linaro@kernel.org, konradybcio@kernel.org, linux-pci@vger.kernel.org
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com>
References: <20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com>
Message-Id: <175709416167.988659.7965157702094931260.robh@kernel.org>
Subject: Re: [PATCH v12 0/5] pci: qcom: Add QCS8300 PCIe support
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


On Fri, 05 Sep 2025 15:14:43 +0800, Ziyue Zhang wrote:
> This series depend on this patch
> https://lore.kernel.org/all/20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com/
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
> Changes in v12:
> - rebased pcie phy bindings
> - Link to v11: https://lore.kernel.org/all/20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com/
> 
> Changes in v11:
> - move phy/perst/wake to pcie bridge node (Mani)
> - Link to v10: https://lore.kernel.org/all/20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com/
> 
> Changes in v10:
> - Update PHY max_items (Johan)
> - Link to v9: https://lore.kernel.org/all/20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com/
> 
> Changes in v9:
> - Fix DTB error (Vinod)
> - Link to v8: https://lore.kernel.org/all/20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com/
> 
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
> Ziyue Zhang (5):
>   dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>     for qcs8300
>   arm64: dts: qcom: qcs8300: enable pcie0
>   arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
>   arm64: dts: qcom: qcs8300: enable pcie1
>   arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
> 
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   5 +-
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  84 +++++
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 310 +++++++++++++++++-
>  3 files changed, 394 insertions(+), 5 deletions(-)
> 
> 
> base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
> --
> 2.43.0
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
 Base: using specified base-commit 8f5ae30d69d7543eee0d70083daf4de8fe15d585

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com:

arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: phy@1c04000 (qcom,sa8775p-qmp-gen4x2-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: phy@1c04000 (qcom,sa8775p-qmp-gen4x2-pcie-phy): clocks: [[57, 66], [57, 68], [57, 94], [57, 72], [57, 74], [57, 77], [57, 70]] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clocks: [[57, 80], [57, 82], [57, 94], [57, 86], [57, 88], [57, 91], [57, 84]] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: phy@1c04000 (qcom,sa8775p-qmp-gen4x2-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: phy@1c04000 (qcom,sa8775p-qmp-gen4x2-pcie-phy): clocks: [[57, 66], [57, 68], [57, 94], [57, 72], [57, 74], [57, 77], [57, 70]] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clocks: [[57, 80], [57, 82], [57, 94], [57, 86], [57, 88], [57, 91], [57, 84]] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: phy@1c04000 (qcom,sa8775p-qmp-gen4x2-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: phy@1c04000 (qcom,sa8775p-qmp-gen4x2-pcie-phy): clocks: [[57, 66], [57, 68], [57, 94], [57, 72], [57, 74], [57, 77], [57, 70]] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs9100-ride-r3.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clocks: [[57, 80], [57, 82], [57, 94], [57, 86], [57, 88], [57, 91], [57, 84]] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2'] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/qcs8300-ride.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clocks: [[50, 70], [50, 68], [50, 80], [50, 72], [50, 74], [50, 77]] is too short
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: phy@1c04000 (qcom,sa8775p-qmp-gen4x2-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: phy@1c04000 (qcom,sa8775p-qmp-gen4x2-pcie-phy): clocks: [[57, 66], [57, 68], [57, 94], [57, 72], [57, 74], [57, 77], [57, 70]] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clock-names: ['aux', 'cfg_ahb', 'ref', 'rchng', 'pipe', 'pipediv2', 'phy_aux'] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#
arch/arm64/boot/dts/qcom/sa8775p-ride-r3.dtb: phy@1c14000 (qcom,sa8775p-qmp-gen4x4-pcie-phy): clocks: [[57, 80], [57, 82], [57, 94], [57, 86], [57, 88], [57, 91], [57, 84]] is too long
	from schema $id: http://devicetree.org/schemas/phy/qcom,sc8280xp-qmp-pcie-phy.yaml#






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
