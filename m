Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9167C369DC
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 05:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBshwBvoTgZquE6R7PVoJn+LUBSJ0WWqxchleZ1rjPs=; b=EgCuMQpVLM6ZLg
	s9BbgKq81ejiDRHqH78OCVM6eASAFi+wmFx52VvT0ouRAoSGoluWRoUvcUtK3GTRE0B0w7OSdMZU4
	KVM/1dJxYJ2UBja70hcclLWM8Tx4DWAb4x/xAOzKUcH4zBiOEcJQq3M3+nt6hsqx08lY14cviNVD8
	hPkNTt0aA+DpSTPhoaBClET165xmEhN7Xx40LtY3OtErwWKLB+rCe+lAwclTKzTatwqiVjDx8t9d9
	os4IdFXZBzn2vHwTyTFWcC6f5IR9wbYDbWdYZmIN1iXa/bh2cVYeIJYJmLgWfZ6WWtyWLhhuaBwjT
	YyHXU7NQ97rFQYDwewYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCX9i-0000000EFU2-1Wv7;
	Wed, 07 May 2025 05:17:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCX3K-0000000EEVM-2QN5
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 05:10:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id ADD62A4D1D0;
	Wed,  7 May 2025 05:10:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8DDDC4CEE7;
	Wed,  7 May 2025 05:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746594641;
	bh=5odRdJ07Ml5qMHbEG+4H2PSjFC+LdSsdnp8qj5VA8iM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s1fDJt9KXmnMjjA3kCrhLyAbyBiLxxPl2n1Dk1pYjTwCBi7uJcP6a9g0UzWmF50Je
	 XLMHY0z/uABoi8qi4t/cjCEGgs77oaZrx5sbpYa5EfPq4hxoKpTCaP5Fj2aW8dP11Q
	 O4rek0pVViM+UpbRYX2KmCrlkKivmOsfb59K8mB92Tmtnxrxxz+L6Im54FdjOp1K0g
	 eF2C1aSyt+7mGoC9SiebPCiO9dJGcjimJxkXyJyxV1VWo+C1u00ehI2z2q6Gr8Sspb
	 yJQXIY8M6zTwOrzwhTjuVdyQoiyxQ0MO9psmC+yPu7jje/hInKfQGG+nS4aiX+z5xz
	 Z8ThWFBWNAGIw==
Date: Wed, 7 May 2025 07:10:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, manivannan.sadhasivam@linaro.org, 
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, andersson@kernel.org, 
	konradybcio@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v5 2/6] dt-bindings: PCI: qcom,pcie-sa8775p: document
 qcs8300
Message-ID: <20250507-quixotic-handsome-wallaby-4560e3@kuoka>
References: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
 <20250507031019.4080541-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507031019.4080541-3-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_221042_675081_F753BDD4 
X-CRM114-Status: GOOD (  11.34  )
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

On Wed, May 07, 2025 at 11:10:15AM GMT, Ziyue Zhang wrote:
> Add compatible for qcs8300 platform, with sa8775p as the fallback.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../bindings/pci/qcom,pcie-sa8775p.yaml       | 26 ++++++++++++++-----
>  1 file changed, 19 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> index efde49d1bef8..154bb60be402 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
> @@ -16,7 +16,12 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,pcie-sa8775p
> +    oneOf:
> +      - const: qcom,pcie-sa8775p
> +      - items:
> +          - enum:
> +              - qcom,pcie-qcs8300
> +          - const: qcom,pcie-sa8775p
>  
>    reg:
>      minItems: 6
> @@ -45,7 +50,7 @@ properties:
>  
>    interrupts:
>      minItems: 8
> -    maxItems: 8
> +    maxItems: 9

I don't understand why this is flexible for sa8775p. I assume this
wasn't tested or finished, just like your previous patch suggested.

Please send complete bindings once you finish them or explain what
exactly changed in the meantime.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
