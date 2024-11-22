Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68EE0E65D2C
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 07:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NG1PGbs8ArW4h/sZvzrrX94RoDQc58ZGIj96vhtbm3A=; b=CEPwWLepMOxHBP
	ULsKtcd01x1yCROCjqF+r1RG/aPH9Thc3Chn7faCuEpYiGMj2OkYCEdZKXiTAmPbLTOGeOQRnxtNN
	r2UTRFJ0+ajQ39CCtAlt03e3jC604Rg6xkXv03zUffDAY9ZB0tS+kX9YSBXLsH2L7jQfVUMxAWNp6
	pyE1oytUOeNwX0eEUnFuoQmIdmhCOaBmXTmVwXmAiYX2hi3k9SHGP9FftzmdvAFcMIsyX95gsOweg
	UKAv+8HX0DofhEgUO4YRupDDeLQa9qktmL1ljIbUCC/ZYx8l/7itDCgky+1GT75ADmatxPsHCjS1G
	Z5oAFx/5SwjYyURitNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tENu7-00000001n9L-1cWm;
	Fri, 22 Nov 2024 07:16:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tENu4-00000001n8u-21k8
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 07:16:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 222DD5C5947;
	Fri, 22 Nov 2024 07:15:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5FF9C4CECE;
	Fri, 22 Nov 2024 07:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732259791;
	bh=Wd3TXSildFXJxXQZobSC5oDGUdglHsoTXiln84ITaKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DkXu7s0Zojjn7os3jSywBf0ToISgeC0scHniO9ruy6OKMHz+e2etmCruxfUQy7Hkz
	 eGo0gXIk2Hp0fi7QIhF8LD0z+BnDPaatvLNI/imSUS8JPAA9pteWxLNoz3qzOXAz7N
	 0Mj6wVPX0tRKRbbaoXCYBOsjbwQ0G40UcExzz3RNcKeFkhjlxaJE9TjybW+CvCnwFO
	 i4gxjkMH/3LKOrcFcbOhpitjL7MsN+7SKa65AvsY1at6NA0m1873dxbfsb7fpryiId
	 IKiKHfdTzrATF3iUAM3UO5/sOx4W6UAR0wpJzp1jz2wom9dbriVaQp+gQPuAZtumNP
	 amq9gpxdlS0CQ==
Date: Fri, 22 Nov 2024 08:16:28 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_tsoni@quicinc.com, 
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
Message-ID: <nxje65jbp6tmgskq765zeiy6ojnadyuh56wabk2g6kfq7bwfwl@vaoxhtu7si3a>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-4-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_231632_568269_D1A96725 
X-CRM114-Status: GOOD (  14.19  )
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

On Fri, Nov 22, 2024 at 10:33:11AM +0800, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add dedicated schema for the PCIe controllers found on QCS615.
> Due to qcs615's clock-names do not match any of the existing
> dt-bindings, a new compatible for qcs615 is needed.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../bindings/pci/qcom,pcie-qcs615.yaml        | 161 ++++++++++++++++++
>  1 file changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml

I propose qcom,qcs615-pcie

> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> new file mode 100644
> index 000000000000..8f7571538d23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml
> @@ -0,0 +1,161 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/qcom,pcie-qcs615.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QCS615 PCI Express Root Complex
> +
> +maintainers:
> +  - Bjorn Andersson <andersson@kernel.org>
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +description:
> +  Qualcomm QCS615 SoC (and compatible) PCIe root complex controller is based on
> +  the Synopsys DesignWare PCIe IP.
> +
> +properties:
> +  compatible:
> +    const: qcom,pcie-qcs615

I propose qcom,qcs615-pcie

> +
> +  reg:
> +    minItems: 6
> +    maxItems: 6
> +
> +

...

> +  resets:
> +    minItems: 1

Use existing code as template, e.g. sm8550, instead of coming with own stuff. Drop.

> +    maxItems: 1

This fails tests.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
