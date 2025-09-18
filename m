Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0704CCA1013
	for <linux-phy@archiver.kernel.org>; Thu, 18 Sep 2025 20:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9T7nYXTpKdsMSvzxdNTyeIVYIyBhVk8NviQ1rTnWNyw=; b=eLenwJzpknWu6F
	txtovO5JLtJyMAxlejrN2LAl3R5kQ6sU9vsAk0pkvCK9TdyiTgYGmfwFFve5IiqhWtMfkoJhR7rQX
	/ypGoEBjvHb3CwGO77TQwVD4pYgqRSGYvNc/OAo2PuehrsjFbnoCP4XCNESvLcG3XyAtujbZ3mQdY
	IBhvXcO852aO4Lt18311JglicoffboF913Q/44MkABPikeomCoWiIJ7C3yF0jwSVCtuzgaKIoPBqR
	PrNIHdzSTNo1h6mI93YuF2FQUqJp4cbA6mVMSAd9EJ0CC5G9ZjW4dkqKXVVNCQWSNIGS53Sdszjhh
	wp4uUTx67PC9Muy/zPkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzL1W-000000015Sp-2fmD;
	Thu, 18 Sep 2025 20:14:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzL1U-000000015SE-0bd1
	for linux-phy@lists.infradead.org;
	Thu, 18 Sep 2025 20:14:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C1EE644889;
	Thu, 18 Sep 2025 20:14:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68955C4CEF0;
	Thu, 18 Sep 2025 20:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758226471;
	bh=O5wQLmWrqsWflWIq1hbTefCtmSzwhyOY86w/cK+ayWM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=vLIp2JviNDdoeJs5bzgcw9toagt6JcspQdZSI2/VUGY4b2P2T/XPi7jNDi7Ob3ixu
	 wtW5/TiXPX8Y6C4WgRQ/Ao7SZmG3oWkR0gzgrW5hq2+h9JX0h8BIjE/J8fWsEiVRGF
	 9wZX3a1sZO6huUr8iHt4d5HpQbJTGMLS1fiBwekPSyD5705VQTDoIHPg7/clJ9mYaP
	 QYuRQolbLD+8lRS19zwwMBN4CWd1nqIFzZxNNGQpDf6hy8zNmZ3D47gdJkgLo65yfe
	 0SUA8ReXk1iO2pnIL1HeAqCnfBS44SpCxBZaJZcq3WQkeBshG0T9DdpT/UP2Uh+1NL
	 SJfSIWqbQ/YNg==
Date: Thu, 18 Sep 2025 15:14:30 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: [PATCH v13 0/5] pci: qcom: Add QCS8300 PCIe support
Message-ID: <20250918201430.GA1919478@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f16f14ab-ff11-42a2-b63b-ed28e85d620b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_131432_229061_46B6B302 
X-CRM114-Status: GOOD (  26.66  )
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

On Thu, Sep 18, 2025 at 10:51:22AM +0800, Ziyue Zhang wrote:
> On 9/8/2025 3:38 PM, Ziyue Zhang wrote:
> > This series depend on this patch
> > https://lore.kernel.org/all/20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com/

That patch ("PCI: qcom: Restrict port parsing only to pci child
nodes") is currently in the pci/controller/qcom branch:

  https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/log/?h=controller/qcom

and won't be merged upstream until the v6.18 merge window.  This will
probably be between Sep 28 and Oct 12.

I don't know what that means for the dt-binding and arm64 dts changes
in this series, but typically changes like this series are merged via
a different tree than the PCI changes, so the ordering isn't
guaranteed until one of them is pulled by Linus.

> > This series adds document, phy, configs support for PCIe in QCS8300.
> > It also adds 'link_down' reset for sa8775p.
> > 
> > Have follwing changes:
> > 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> > 	- Add compatible for qcs8300 platform.
> > 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> > 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
> > 
> > Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> > ---
> > Changes in v13:
> > - Fix dtb error
> > - Link to v12: https://lore.kernel.org/all/20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com/
> > 
> > Changes in v12:
> > - rebased pcie phy bindings
> > - Link to v11: https://lore.kernel.org/all/20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com/
> > 
> > Changes in v11:
> > - move phy/perst/wake to pcie bridge node (Mani)
> > - Link to v10: https://lore.kernel.org/all/20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com/
> > 
> > Changes in v10:
> > - Update PHY max_items (Johan)
> > - Link to v9: https://lore.kernel.org/all/20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com/
> > 
> > Changes in v9:
> > - Fix DTB error (Vinod)
> > - Link to v8: https://lore.kernel.org/all/20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com/
> > 
> > Changes in v8:
> > - rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
> > - Add Fixes tag to phy change (Johan)
> > - Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/
> > 
> > Changes in v7:
> > - rebase qcs8300-ride.dtsi change to solve conflicts.
> > - Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/
> > 
> > Changes in v6:
> > - move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
> > - Update QCS8300 and sa8775p phy dt, remove aux clock.
> > - Fixed compile error found by kernel test robot
> > - Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/
> > 
> > Changes in v5:
> > - Add QCOM PCIe controller version in commit msg (Mani)
> > - Modify platform dts change subject (Dmitry)
> > - Fixed compile error found by kernel test robot
> > - Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/
> > 
> > Changes in v4:
> > - Add received tag
> > - Fixed compile error found by kernel test robot
> > - Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7
> > 
> > Changes in v3:
> > - Add received tag(Rob & Dmitry)
> > - Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
> > - remove pcieprot0 node(Konrad & Mani)
> > - Fix format comments(Konrad)
> > - Update base-commit to tag: next-20241213(Bjorn)
> > - Corrected of_device_id.data from 1.9.0 to 1.34.0.
> > - Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/
> > 
> > Changes in v2:
> > - Fix some format comments and match the style in x1e80100(Konrad)
> > - Add global interrupt for PCIe0 and PCIe1(Konrad)
> > - split the soc dtsi and the platform dts into two changes(Konrad)
> > - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
> > 
> > Ziyue Zhang (5):
> >    dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
> >      for qcs8300
> >    arm64: dts: qcom: qcs8300: enable pcie0
> >    arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
> >    arm64: dts: qcom: qcs8300: enable pcie1
> >    arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
> > 
> >   .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  17 +-
> >   arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  84 +++++
> >   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 310 +++++++++++++++++-
> >   3 files changed, 394 insertions(+), 17 deletions(-)
> > 
> > 
> > base-commit: be5d4872e528796df9d7425f2bd9b3893eb3a42c
> Hi Maintainers,
> 
> It seems the patches get reviewed tag for a long time, can you give this
> 
> series further comment or help me to merge them ?
> Thanks very much.
> 
> BRs
> Ziyue
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
