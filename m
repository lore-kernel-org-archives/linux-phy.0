Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6562BC02188
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 19:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCX4UgMwxGBZ/e4YsiVPCRoAVfe1txATB/W7/5QTvSc=; b=jsTW839Liqmtl2
	l5XcPKf8JfNZzJyzu5oW5fis9gnRvnh8udjewRnamlcpX4tcHYWe902z+4eqi6o99FYKUBuQrtyMZ
	QQTDvE3/WScKyu6ZIRFVnBki1TLBP9jvkBPzFMcQEeLkBlJDUjOB9m8yCmjHX3GnKUBSX0aajmAr1
	6MIGCLlpH5sj4oNNYdn/XFBkzF8DR2S6VeN07QyUVCX4RYtXCLzG0c2GG/kLMFESmS8+/rNBTtwGY
	89MflfjjTEC6+I9bsUhpRdK+Re6ej82sZiuB5MqBh52AqxeIfH36RZXY9hSYaQf+upZGtMKHeo94K
	Ivo5UJPwAX5edadYzTeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcUdb-000000036hE-2e5I;
	Mon, 27 Jan 2025 19:19:11 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcUdY-000000036gu-3lQD
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 19:19:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3F79FA41A07;
	Mon, 27 Jan 2025 19:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9ACEC4CED2;
	Mon, 27 Jan 2025 19:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738005547;
	bh=SqI1KbVFdalLEwk0SH3vc66dMLl3ElqNrXqEzL5h/HM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BJtK6kBZpRiUGZfqgbJTc/udEd1XWuf9oMolAVnW/3MUyzr/VpFnPVC5/7Z+C2ZW5
	 H4xZFEKHvEL65IT298wqlKAk3od1QxNgzouDgBSEeezkJbzO8kmxz9+NxJTx6B4tW7
	 sMPLHejjRK8U2J4OwZ61VrWD9wWrOA2NfkU2kByBK8PffuDP1uFcznH4clbYjJEZx/
	 F6I1dI+eNv6P4r5ejps4HQ4IN2q8nzIcnt32TPj5Rhf8JOwkT2YqxGvad8PCYYksIz
	 xXMPOS3cEykoIugGXphW0ZcZhtLKSzPkYBsstJiJq7GcxhKdNyYUseaBsC3ASg/OlG
	 zRQSVTyOCzqiQ==
Date: Mon, 27 Jan 2025 13:19:06 -0600
From: Rob Herring <robh@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v8 5/7] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
Message-ID: <20250127191906.GA704182-robh@kernel.org>
References: <20250127072850.3777975-1-quic_varada@quicinc.com>
 <20250127072850.3777975-6-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250127072850.3777975-6-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_111909_063497_EAC0B8E3 
X-CRM114-Status: GOOD (  15.71  )
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

On Mon, Jan 27, 2025 at 12:58:48PM +0530, Varadarajan Narayanan wrote:
> Document the PCIe controller on IPQ5332 platform. IPQ5332 will
> use IPQ9574 as the fall back compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v8: Use ipq9574 as fallback compatible for ipq5332 along with ipq5424
> 
> v7: Moved ipq9574 related changes to a separate patch
>     Add 'global' interrupt
> 
> v6: Commit message update only. Add info regarding the moving of
>     ipq9574 from 5 "reg" definition to 5 or 6 reg definition.
> 
> v5: Re-arrange 5332 and 9574 compatibles to handle fallback usage in dts
> 
> v4: * v3 reused ipq9574 bindings for ipq5332. Instead add one for ipq5332
>     * DTS uses ipq9574 compatible as fallback. Hence move ipq9574 to be able
>       to use the 'reg' section for both ipq5332 and ipq9574. Else, dtbs_check
>       and dt_binding_check flag errors.
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index 4b4927178abc..2ffa8480a665 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -33,6 +33,7 @@ properties:
>            - qcom,pcie-sdx55
>        - items:
>            - enum:
> +              - qcom,pcie-ipq5332
>                - qcom,pcie-ipq5424
>            - const: qcom,pcie-ipq9574
>        - items:
> @@ -49,11 +50,11 @@ properties:
>  
>    interrupts:
>      minItems: 1
> -    maxItems: 8
> +    maxItems: 9
>  
>    interrupt-names:
>      minItems: 1
> -    maxItems: 8
> +    maxItems: 9
>  
>    iommu-map:
>      minItems: 1
> @@ -209,6 +210,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,pcie-ipq5332
>                - qcom,pcie-ipq9574

As both of these compatibles will be present, you don't need to add 
ipq5332 here.

>                - qcom,pcie-sdx55
>      then:
> @@ -411,6 +413,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,pcie-ipq5332
>                - qcom,pcie-ipq9574

Same here.

>      then:
>        properties:
> @@ -443,6 +446,7 @@ allOf:
>          interrupts:
>            minItems: 8
>          interrupt-names:
> +          minItems: 8
>            items:
>              - const: msi0
>              - const: msi1
> @@ -452,6 +456,7 @@ allOf:
>              - const: msi5
>              - const: msi6
>              - const: msi7
> +            - const: global
>  
>    - if:
>        properties:
> @@ -559,6 +564,7 @@ allOf:
>                enum:
>                  - qcom,pcie-apq8064
>                  - qcom,pcie-ipq4019
> +                - qcom,pcie-ipq5332
>                  - qcom,pcie-ipq8064
>                  - qcom,pcie-ipq8064v2
>                  - qcom,pcie-ipq8074
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
