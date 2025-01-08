Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B707FE77188
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 18:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AFOvRYqXmUelT2KwuPFXXcICwMrvxNm66GTz50OeJTA=; b=OpoloqPSq7ogJr
	ur5gbBqKo5UVwdYcKfe5eFCXhHeaag/nh/wXlmqtsZkHAHvLnQ8kg8AZ1kPf3QcSQBL0eOcgRbBfW
	42qa0XzUK9tBN2GQZlFTAYTNoOSZv5LUBZyNYDZFoQg1APWc1VU3+ICdcZk3DYkUIrdpo5gogK+6w
	MUeymbRCK/+ShbSZ4HiRm6lHp2L371IhaEaxv0wF38glzjVi/2zwwZMgNAHvX1wipr6/JRPiRaVDA
	iMnj4qgEAONxmSCPTZq+1X7FvyN21mkeJ5qGwO6l6T5QKZsqmduKj6SYUUliBfDHo/GHPfGAhmmR8
	6twQoSgyeJPTuer3aYwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVarA-00000009XhX-23cc;
	Wed, 08 Jan 2025 18:32:40 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVar8-00000009Xgo-298i
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 18:32:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1A38CA4162F;
	Wed,  8 Jan 2025 18:30:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 552D0C4CED3;
	Wed,  8 Jan 2025 18:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736361157;
	bh=Z/FqmlnQQ8Fa68j6bChFWC2DGBjzCnP8xsatoFHrFa0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=iHD4sULtcyZpUayPhFv//GcGoNSqVRYgJYE9OKm5cbptvdlJ25utVjJ16eJHkr8q7
	 YQaZkhGDSMeS+BDw39V0F8H4M55gcqks3fNM8e+ugbd6/fv+LHq/x2SGRwHfJ1rnpn
	 iijBj0rfqdehYltGY6K2pGlFEyz1hfNGslo3V/tAdm8QMTswXGIteTclvIwz4zNKuH
	 n4kItXVF/sjHioGsqhafWgZzQP7UtYfQ2tBXTxwmjwzyVPrZD36YQJGgFcGR4w/fPy
	 MieYAlJNDLzlSAq70NftG/76gIto5sLe6w/j4KxIgHPIDMxBkO/kZhBU18/Tqppuvd
	 z+BDbheJqLOdQ==
Date: Wed, 8 Jan 2025 12:32:35 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com,
	dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: ipq5332: Add PCIe related nodes
Message-ID: <20250108183235.GA220566@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250102113019.1347068-5-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_103238_615949_0E61055A 
X-CRM114-Status: GOOD (  12.28  )
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

On Thu, Jan 02, 2025 at 05:00:18PM +0530, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add phy and controller nodes for pcie0_x1 and pcie1_x2.

> +		pcie1: pcie@18000000 {
> +			compatible = "qcom,pcie-ipq5332", "qcom,pcie-ipq9574";
> +			reg = <0x00088000 0x3000>,
> +			      <0x18000000 0xf1d>,
> +			      <0x18000f20 0xa8>,
> +			      <0x18001000 0x1000>,
> +			      <0x18100000 0x1000>,
> +			      <0x0008b000 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +			device_type = "pci";
> +			linux,pci-domain = <1>;
> +			bus-range = <0x00 0xff>;

This bus-range isn't needed, is it?  pci_parse_request_of_pci_ranges()
should default to 0x00-0xff if no bus-range property is present.

> +			num-lanes = <2>;
> +			phys = <&pcie1_phy>;
> +			phy-names = "pciephy";

I think num-lanes and PHY info are per-Root Port properties, not a
host controller properties, aren't they?  Some of the clock and reset
properties might also be per-Root Port.

Ideally, I think per-Root Port properties should be in a child device
as they are here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/pci/mvebu-pci.txt?id=v6.12#n137
but it looks like the num-lanes parsing is done in
dw_pcie_get_resources(), which can only handle a single num-lanes per
DWC controller, so maybe it's impractical to add a child device here.

But I wonder if it would be useful to at least group the per-Root Port
things together in the binding to help us start thinking about the
difference between the controller and the Root Port(s).

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
