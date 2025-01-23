Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1105AC02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 07:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXfPHUkbEspf9ucfzzN6/PTBfqrIR8Ckzxi0qTrrtBo=; b=ytOIW/0cxmI1ck
	6Nl9ZZner/z21ZV/RtkXOMVIj0bU3iJXPCHj2PCj+ibo6h0a+8ZTYoAE4RTwdm6GqjIWFhxInCGdu
	YEJ6ZuYjKwA5vHB81ccpMQyAYep9oA6h7cS2p7brxKhAhvofeUXLMIG+i/rGKZHsDWMwDNijQeXY3
	hej3xZiM6m5/WFYFVUkd6w7YZzTRu7U3FfQD0AAHrgRJOonRT3oHckEw4KFn+qMUPVlmMTioYYpYI
	e7nkINDBTAfdHs2ZzDqgi60mGd+WCizlOqKTAXVnWWt6GR9CVECimtF+rsNF+cAYOLrgfNWGRyejN
	a2JMzwVtYaRaIMGlO55w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tas6m-0000000BvKT-2jdx;
	Thu, 23 Jan 2025 07:58:36 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tas6k-0000000BvK6-1EwR
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 07:58:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E511EA403EA;
	Thu, 23 Jan 2025 07:56:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AA38C4CEE0;
	Thu, 23 Jan 2025 07:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737619112;
	bh=vRVpTTzm2HBffJ77o4hXyb5EpuW+31OmOBfJ3t9pLnk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RqiibJS2JWQVpGfikZv1qrYNfL0ZaDHd3xqQQ8tmRGnXLa91v8g5PcmmP2cnfDzky
	 704SMxZSGBgCfLpbqkJSmK9Fp+/XN+UrnZUa08ngFIh15plxOMvPh35CsfqsTdA/fh
	 K26OuDipKw6eoVJCl2fZOwowsohfhUsgsyjNi3vFEfbSDAHgxDGskiZpR+qArUZTWa
	 SmRUBMFdetFYzsMNQdz6obF3JFh1UT55mKBFQ4jhGv0/7JW70yq9qp8Mp40cvS1ivJ
	 kGQ9xvLEjtCgZJA6MrPHvIs0RoeAlOvDMRdj33tqvLmp5xNC4RRMrpAeOIMK5n70H9
	 gCCNtDEx+TWYQ==
Date: Thu, 23 Jan 2025 08:58:29 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 5/7] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
Message-ID: <20250123-red-unicorn-of-piety-3c7de5@krzk-bin>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-6-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250122063411.3503097-6-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_235834_401611_CC76D9B7 
X-CRM114-Status: GOOD (  15.42  )
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

On Wed, Jan 22, 2025 at 12:04:09PM +0530, Varadarajan Narayanan wrote:
> Document the PCIe controller on IPQ5332 platform. IPQ5332 will
> use IPQ9574 as the fall back compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
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
>  .../devicetree/bindings/pci/qcom,pcie.yaml          | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index 413c6b76c26c..ead97286fd41 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -34,6 +34,10 @@ properties:
>        - items:
>            - const: qcom,pcie-msm8998
>            - const: qcom,pcie-msm8996
> +      - items:
> +          - enum:
> +              - qcom,pcie-ipq5332
> +          - const: qcom,pcie-ipq9574

Repeated many times on reviews to qcom: don't add to the end of the
lists. In case of multiple items, these are ordered by fallback, so this
goes next to other ipq entry... wait, that's already qcom,pcie-ipq9574,
so why are you duplicating?

On what tree are you working?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
