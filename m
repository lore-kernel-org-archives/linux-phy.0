Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32ACFC28B2F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 08:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHn9aQVpPiSMeJusAD69x2TTQ+SlqHEqzzkBQiO4hJg=; b=vpLj79h4mYgbho
	VdVrvVPUYIM8VmKG946IjKyZYdGRQHYK3CiXymvaNGjtiZaT/vCL5r6iYtpEkkUFWjY1gts3H+QRX
	uUVInP4M6mT2fGa+yHYhi/xxtjw9wTuZIs8Us1vroTsDqQpSJxJ4BsUQ/krq8kueUHPmAhs+YIHJY
	b4vabWa7rAk9CO53lAJll6RJIUPet8n08/XH8sY6c8ZQCaXgPIWpYTAghW9i8zwvzE0UJxWollCJ/
	Bpvf/08lc4bZlYAfL9JCGk2a9TMhtEy39+hDa9H+QYmpS6Ry5zavC+vgeUnkvb8KLVL9vmGmg4OBH
	7+xlm94O4szOTt420f+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt0NP-0000000DSOw-3yRB;
	Fri, 14 Mar 2025 08:26:43 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt0Hr-0000000DR6M-3L54
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 08:21:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 19966A48865;
	Fri, 14 Mar 2025 08:15:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE206C4CEE5;
	Fri, 14 Mar 2025 08:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741940458;
	bh=/9Cg9kqhR9YMfKzyRY8A1lAV2O/WdaBXMSuS45Wh5Hk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s/6CT7drnf2lyr/FUF5clP+re7piIqacdm0sZqSXxngUmPHKA9slQIPMJwnMP7v9f
	 nZbwvG+9hwb8fX1Jz9urzyit16vewMSGTKW4rgzYEqVzpb7HUtvVmC/ET/XyTwBVgx
	 dOEB/VkmXustLdncKq5je8upSBdt/S2eHshFlfB6hpnCd1KTq0j0yNV3rOaWQKuhHi
	 c61D9XkfItQ4hb7rXWehQQdgQudDfabAIEAEglm7RScuL4XKaUKiuKRktp7kX1QwvI
	 W19dV6oHGGRMzUfFWtwwqyMF0VMBsmOGiIyP6jB5RDMPTQng+jbn8C8gMUN6HiO+eP
	 50+ZYXwhkj0kQ==
Date: Fri, 14 Mar 2025 09:20:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, andersson@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	lumag@kernel.org, kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	kw@linux.com, lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com, 
	vkoul@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v4 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
Message-ID: <20250314-greedy-tested-flamingo-59ae28@krzk-bin>
References: <DS7PR19MB8883F2538AA7D047E13C102B9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
 <20250314055644.32705-1-george.moussalem@outlook.com>
 <DS7PR19MB88834CAC414A0C2B4D71D57C9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DS7PR19MB88834CAC414A0C2B4D71D57C9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_012059_972706_687B3F21 
X-CRM114-Status: GOOD (  15.74  )
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

On Fri, Mar 14, 2025 at 09:56:41AM +0400, George Moussalem wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add support for the PCIe controller on the Qualcomm
> IPQ5108 SoC to the bindings.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index 8f628939209e..d8befaa558e2 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -21,6 +21,7 @@ properties:
>            - qcom,pcie-apq8064
>            - qcom,pcie-apq8084
>            - qcom,pcie-ipq4019
> +          - qcom,pcie-ipq5018
>            - qcom,pcie-ipq6018
>            - qcom,pcie-ipq8064
>            - qcom,pcie-ipq8064-v2
> @@ -322,6 +323,63 @@ allOf:
>              - const: ahb # AHB reset
>              - const: phy_ahb # PHY AHB reset
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,pcie-ipq5018
> +    then:
> +      properties:
> +        reg:
> +          minItems: 5
> +          maxItems: 5
> +        reg-names:
> +          items:
> +            - const: parf # Qualcomm specific registers
> +            - const: dbi # DesignWare PCIe registers
> +            - const: elbi # External local bus interface registers
> +            - const: atu # ATU address space
> +            - const: config # PCIe configuration space

Keep the same order as other IPQ, so dbi+elbi+atu+parf+config. Same for
everything else, so standard rule applies: devices are supposed to use
ordering from existing variants.

There is some huge mess with IPQ PCI bindings, including things on the
list. Apparently it became my job to oversee Qualcomm PCI work... well,
I do not have time for that, so rather I expect contributors to
cooperate in this matter.

Don't throw your patches over the wall.

If you need to rework the patch, take the ownership and rework it.





> +        clocks:
> +          minItems: 6
> +          maxItems: 6
> +        clock-names:
> +          items:
> +            - const: iface # PCIe to SysNOC BIU clock
> +            - const: axi_m # AXI Master clock
> +            - const: axi_s # AXI Slave clock
> +            - const: ahb # AHB clock
> +            - const: aux # Auxiliary clock
> +            - const: axi_bridge # AXI bridge clock
> +        resets:
> +          minItems: 8
> +          maxItems: 8
> +        reset-names:
> +          items:
> +            - const: pipe # PIPE reset
> +            - const: sleep # Sleep reset
> +            - const: sticky # Core sticky reset
> +            - const: axi_m # AXI master reset
> +            - const: axi_s # AXI slave reset
> +            - const: ahb # AHB reset
> +            - const: axi_m_sticky # AXI master sticky reset
> +            - const: axi_s_sticky # AXI slave sticky reset
> +        interrupts:
> +          minItems: 8
> +          maxItems: 8

8 items...

> +        interrupt-names:
> +          items:
> +            - const: msi0
> +            - const: msi1
> +            - const: msi2
> +            - const: msi3
> +            - const: msi4
> +            - const: msi5
> +            - const: msi6
> +            - const: msi7
> +            - const: global

And here 9 items. You got comment on this. What's more, I doubt that DTS
was tsted.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
