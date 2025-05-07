Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C736DC3ABC5
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 17:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EW0dFlhpuGLfgBHUQZ8MydYnOZBuuUhV/sCUzmk6Ovw=; b=n2NecmMQWl4rXvOU1ko6eeVyh5
	PlV1EAKq67MpbuYn3DjspNSo48NTFY8NmNJL0teV3C9zN38b4PKEu11w9BdqiKJadufm/6AsQje2T
	MEG6hoGSNawcbiZCk2Oc3ulf+UWSTFzQmIS2xYRW8vI8kKIE9ayFh1fwl94AvvWzcG6VvbfkYVypA
	+Uh9A2xIa/U+sAcT069frMIrJ3zJBfFx1MZMQZjD7Lq2MiQcjbyEFW3R7IFMGzGCMEGJYRQ/y9LoC
	81z1iiYTs1uWJAhEKSmfsQDzijQ15kKuUwjYclaGudcsvCMzgzweYcBTXktExfZAg7H7XBdwbeeQQ
	7DGUJlfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCiWX-0000000GHuk-1hdK;
	Wed, 07 May 2025 17:25:37 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCguF-0000000G0tr-3IqO
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 15:42:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C04C9A4D977;
	Wed,  7 May 2025 15:41:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3330BC4CEE2;
	Wed,  7 May 2025 15:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746632517;
	bh=ldA8r2aeb/fFWFw6fBUtA81qiav2AaAcQ+SLAQOixjI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QuLC7MCQc5sHxyfd5kBx784WfApjtRBZHTvpHe/9zOZeM+8Mw8goD8GedZ3lYcpVD
	 1M2777lTptg5UatoyTFbVufiuWHCQ0es3RV1vvDVRRqpYxBN0p2x6PGjMhpj9iAQ28
	 Sv1Ctkzfm7CJjTFKBX+jhaeGlAmW2tQKfwMLny4yGa5uZxIR8VOUmqx22ANzZ+9O3/
	 KgS22TO596zh92Yy6Cf6w4/2ESg6KRGtQ6wMrTY6nSs+9ZXIiLJqnDQbXK1tYSL1s5
	 APSKzoWzcMXI5VU6td8qTZV6Btv/Evg7j02H5M62HQjPY3pgqn9ISzmmFcNdOCZpe2
	 o6TDtgxceybdA==
Date: Wed, 07 May 2025 10:41:55 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, krzk+dt@kernel.org, 
 kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, 
 andersson@kernel.org, devicetree@vger.kernel.org, konradybcio@kernel.org, 
 quic_qianyu@quicinc.com, kw@linux.com, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dmitry.baryshkov@linaro.org, quic_vbadigan@quicinc.com, 
 manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, vkoul@kernel.org, 
 bhelgaas@google.com, quic_krichai@quicinc.com
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
References: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
Message-Id: <174663232869.1557279.17959008688697969533.robh@kernel.org>
Subject: Re: [PATCH v4 0/5] pci: qcom: Add QCS615 PCIe support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_084159_967485_01658DD7 
X-CRM114-Status: GOOD (  20.39  )
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


On Wed, 07 May 2025 11:15:54 +0800, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS615.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Have following changes:
> 	- Add a new Document the QCS615 PCIe Controller
> 	- Add configurations in devicetree for PCIe, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe, platform related gpios, PMIC regulators, etc.
> 
> Changes in v4:
> - Fixed compile error found by kernel test robot(Krzysztof)
> - Update DT format (Konrad & Krzysztof)
> - Remove QCS8550 compatible use QCS615 compatible only (Konrad)
> - Update phy dt bindings to fix the dtb check errors.
> - Link to v3: https://lore.kernel.org/all/20250310065613.151598-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v3:
> - Update qcs615 dt-bindings to fit the qcom-soc.yaml (Krzysztof & Dmitry)
> - Removed the driver patch and using fallback method (Mani)
> - Update DT format, keep it same with the x1e801000.dtsi (Konrad)
> - Update DT commit message (Bojor)
> - Link to v2: https://lore.kernel.org/all/20241122023314.1616353-1-quic_ziyuzhan@quicinc.com/
> 
> Changes in v2:
> - Update commit message for qcs615 phy
> - Update qcs615 phy, using lowercase hex
> - Removed redundant function
> - split the soc dtsi and the platform dts into two changes
> - Link to v1: https://lore.kernel.org/all/20241118082619.177201-1-quic_ziyuzhan@quicinc.com/
> 
> Krishna chaitanya chundru (3):
>   dt-bindings: PCI: qcom: Document the QCS615 PCIe Controller
>   arm64: dts: qcom: qcs615: enable pcie
>   arm64: dts: qcom: qcs615-ride: Enable PCIe interface
> 
> Ziyue Zhang (2):
>   dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>     for QCS615
>   PCI: qcom: Add support for QCS615 SoC
> 
>  .../bindings/pci/qcom,qcs615-pcie.yaml        | 165 ++++++++++++++++++
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +-
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  42 +++++
>  arch/arm64/boot/dts/qcom/qcs615.dtsi          | 146 ++++++++++++++++
>  drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
>  5 files changed, 355 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/qcom,qcs615-pcie.yaml
> 
> 
> base-commit: 8fd51b270d58f8b05aa58841ec38c8a6b4ab09ca
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
 Base: base-commit 8fd51b270d58f8b05aa58841ec38c8a6b4ab09ca not known, ignoring
 Base: attempting to guess base-commit...
 Base: tags/next-20250507 (best guess, 3/4 blobs matched)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20250507031559.4085159-1-quic_ziyuzhan@quicinc.com:

arch/arm64/boot/dts/qcom/qcs615.dtsi:1062.4-1065.34: Warning (interrupt_map): /soc@0/pcie@1c08000:interrupt-map: Cell 12 is not a phandle(0)






-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
