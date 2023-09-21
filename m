Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4254DE7D0A4
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 18:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHodIUxxaGtokxPxME/QTkgcrblJwhW1sikHh4wCuF8=; b=o7WZFBU+VfeSL1
	ygL7Ibf3EXs7cbG3tbuojsBY/76pVQGHiGgUE6mOICQA/m1jU2X+87LR/84tqtZm2G/Jrz2VyQgnD
	qpSD/cP1zU6zqJQHqm4M4XeV/jz/HCKwT7OQrXbo7W9OqDs+cuWt8z5F5zaPbrJCQznrMFpxrecYF
	fxhlw+6pqtWUZjYhNC+HuxnayCSeA4HAlcF3Zztl0wzc838UjwCGVXoz1rqK2KhlO2C+F3E12UcXd
	2d5lgbau0ikqLa01X33EKNa0w2nV3nwC0RI/8jH/MGik7BBqzmBz0j1fPRyKrSSokZJhF0qr0AwUL
	s4VxMHqoEOsPyM1PeCQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjOZo-006q7j-2x;
	Thu, 21 Sep 2023 18:39:00 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjOZl-006q7H-33
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 18:38:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 76009CE22C5;
	Thu, 21 Sep 2023 18:38:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89A46C433C7;
	Thu, 21 Sep 2023 18:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695321533;
	bh=Jo3M7JtBDMiHK2zM7MVLMg4fZ9vIWVE8KTJC0QLndO8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BcnsYo6A8D09XBG+riw76rhi9G0pfINMuDAzNBm524D+q7PUAIk1b3wUl5vL4ug18
	 hgJfsn8lAIay59okmDzzZwjUKxpAnKyoGIxQ9Q1cvfaRd0ZnV3LchtOZi8alhoZtkl
	 QLpEEFlUpgggXoSESoS1Scm1qIBqt6Cfnj7rzPUkGzvPjAbQI4LHFFeD7AqJpwSD21
	 PIeVEK+LegHr1y88bqx+U9dXi70CoZA9tjFag7pxUk/GRgGVpsVtV9Yzv2VD232p8w
	 QqTO8HIV5FhRxbPI84b2rnjLD23VMFddu64fvvrJBWf5XrNIsrOaur8YH/XXrVRyAk
	 Duge0PLfpwgZA==
Received: (nullmailer pid 782544 invoked by uid 1000);
	Thu, 21 Sep 2023 18:38:50 -0000
Date: Thu, 21 Sep 2023 13:38:50 -0500
From: Rob Herring <robh@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, quic_parass@quicinc.com, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, mhi@lists.linux.dev, linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 1/5] dt-bindings: PCI: qcom-ep: Add support for
 SA8775P SoC
Message-ID: <20230921183850.GA762694-robh@kernel.org>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_113858_324099_EE2DB778 
X-CRM114-Status: GOOD (  13.10  )
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

On Wed, Sep 20, 2023 at 07:25:08PM +0530, Mrinmay Sarkar wrote:
> Add devicetree bindings support for SA8775P SoC.
> Define reg and interrupt per platform.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 130 +++++++++++++++++----
>  1 file changed, 108 insertions(+), 22 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index a223ce0..e860e8f 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -13,6 +13,7 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - qcom,sa8775p-pcie-ep
>            - qcom,sdx55-pcie-ep
>            - qcom,sm8450-pcie-ep
>        - items:
> @@ -20,29 +21,19 @@ properties:
>            - const: qcom,sdx55-pcie-ep
>  
>    reg:
> -    items:
> -      - description: Qualcomm-specific PARF configuration registers
> -      - description: DesignWare PCIe registers
> -      - description: External local bus interface registers
> -      - description: Address Translation Unit (ATU) registers
> -      - description: Memory region used to map remote RC address space
> -      - description: BAR memory region
> +    minItems: 6
> +    maxItems: 7
>  
>    reg-names:
> -    items:
> -      - const: parf
> -      - const: dbi
> -      - const: elbi
> -      - const: atu
> -      - const: addr_space
> -      - const: mmio
> +    minItems: 6
> +    maxItems: 7

Don't move these into if/then schemas. Then we are duplicating the 
names, and there is no reason to keep them aligned for new compatibles.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
