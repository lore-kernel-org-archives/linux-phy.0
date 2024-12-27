Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9150CE7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 08:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sG7jmrLQMW4OXzdwXAs9S6/h0w7+VqVNKjjC8Ofrh6s=; b=3Fo3hTjL6puDzw
	CPbR/so2/gx+c46V2iQO4Wsf58yMHVkA2MxXdtKOC4PfKE9ubGzugcgNCSPECxM8qItbHmAQQiCDV
	Ac2nFJTgRckIj9Iy/04N7Ne/QvRpN9G8ye9XDTh0X6B2fJBiOsehVscnoeOg8mk37GnUBYWXyJ6EB
	kRvh9dNnKB3AKW/c2HTC7rn9Z5JtsVElrIW2Yok29/8MLxfmZq8T9DkGtplc2UKREpXffGSb0TXnZ
	b3U5tsbl+2LLQ8NgKKHaLLkVMc1p1UxgXqY4UP8dJBxcM8Uhs0xZgIQPDKHPA4nYwTCdRUiYPHCw5
	qgKfxOsBfTgVIJs8iZaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5Nt-0000000HKsJ-1RDi;
	Fri, 27 Dec 2024 08:07:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5Nq-0000000HKrZ-1NG8
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 08:07:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E46435C61D8;
	Fri, 27 Dec 2024 08:07:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A90E7C4CED0;
	Fri, 27 Dec 2024 08:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735286864;
	bh=5uGD9JmhENJUTkkXUjo38hUph4jreLFDJYh6d6nEc8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GylMH3EEdyFZf724uJ+cFisgFv0FpCcKvY5S3bXf0j99JHvDppz65cMy0hIuKKqSf
	 7IQxwUi7aJChSXR+RGF+ycR1Vrt7F1F+WRyiFCh1uqziaZnsKCPy25AlV7kCldI+m/
	 QwzmDi5mnigCZMc2/kenDQWCfhu8PbSCpVvvycgqWtktKWkF826VCHNuyocT6uWsHO
	 ljVxnhU07nOg080txQMtP6OhDIolA43PO3QKSaWJwMKLj5TXUvWTR1RAK01X1W3jHm
	 3KB2dlNBUQsRZyZ7chIkEjzWVETk/D2qOHp0B/zq4rPsMCmvFfXqkjze2qbTzo60n/
	 qcR2aYPhumPOA==
Date: Fri, 27 Dec 2024 09:07:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 3/5] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
Message-ID: <lbyvf7rwsr5j67nu42d4vemuzamfalvjyx6xebwjhwwce5gy7e@tclayb7gb6x6>
References: <20241226102432.3193366-1-quic_varada@quicinc.com>
 <20241226102432.3193366-4-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226102432.3193366-4-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_000746_415189_38E661E8 
X-CRM114-Status: GOOD (  14.75  )
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

On Thu, Dec 26, 2024 at 03:54:30PM +0530, Varadarajan Narayanan wrote:
> Document the PCIe controller on IPQ5332 platform.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v4: * v3 reused ipq9574 bindings for ipq5332. Instead add one for ipq5332
>     * DTS uses ipq9574 compatible as fallback. Hence move ipq9574 to be able
>       to use the 'reg' section for both ipq5332 and ipq9574. Else, dtbs_check
>       and dt_binding_check flag errors.
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index bd87f6b49d68..ac920e435c73 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -21,6 +21,7 @@ properties:
>            - qcom,pcie-apq8064
>            - qcom,pcie-apq8084
>            - qcom,pcie-ipq4019
> +          - qcom,pcie-ipq5332
>            - qcom,pcie-ipq6018
>            - qcom,pcie-ipq8064
>            - qcom,pcie-ipq8064-v2
> @@ -165,7 +166,6 @@ allOf:
>              enum:
>                - qcom,pcie-ipq6018
>                - qcom,pcie-ipq8074-gen3
> -              - qcom,pcie-ipq9574


I don't see how this is related to ipq5332 and nothing in commit msg
even mentions this.

>      then:
>        properties:
>          reg:
> @@ -206,6 +206,8 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,pcie-ipq5332
> +              - qcom,pcie-ipq9574


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
