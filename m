Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69E5AE77170
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 09:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDQNnUve43kGgDzDfAW+AD9qqFv0Fa99PTyg/K4X+zo=; b=17lJH7WD37HvIw
	fEYCdtwTkRunWq8izrfCjcE7oG9A0O6FchYOIPlRnZLaRwaFT4ogyBDAaxz/YkLfZN3K2YPMV21mo
	u/IJMV4+Zxjchgn2eb+0QHvU3sv7CgWz4lWMol0F0e8npflB/FdhYu4jdgvpkH4Cpf36ICXuZC15G
	KyH8D9VqEOxDr7M9IP+UcjE0Chakg6hqiXpirJ7PtLkez8nrXn1lX2DaZ2sFY5U8S8qJqOw5Uy19A
	gG7vJ8K1RMpK1Sqgm/yisGgBM8ZMXCHpKa1nn9Pu/O+d9iBFrmWTofixA6Xr7/aLFgre1W2EmucnN
	gr3YxC96TEFpS7rmiDFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ8JI-0000000FO9K-06ac;
	Thu, 05 Dec 2024 09:38:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ8JF-0000000FO8m-0YUf
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 09:38:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B744F5C725A;
	Thu,  5 Dec 2024 09:37:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B35C8C4CED1;
	Thu,  5 Dec 2024 09:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733391488;
	bh=HRontmhpAXB7zdihojZafgOYClH6jtz6uOSjDmx3JAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tFoBwUq9bZELbs1gPcSWPBGsHkmsk3f/29dSssqqA6F50wGecvEPVdaSEEafRy5uN
	 P+2gXv0Voh/tJKZjq/0TGWE/TwzmSrh6GpidUcRJ+e2ELuzMNuLMhHq/oObNZUfc7i
	 2q5eaf4mVO1EdZssgcAxOvWdaLTHXUg605ovkVilAqH4xjRooGfLTwRF/axKPrAGxx
	 YU5B0hZGViS+Zn8ww2JN7cXN6lE4QtEas6qllxk/0P62nNJFmHvHOWW0h3GqFCuud5
	 5e+vZZjBNTRiwfgr+SDtznU0f33DxLzlaTymhGp8/v90+rB3RbSdKdyCLj0rMId3CE
	 +mo4+LgVOkg8w==
Date: Thu, 5 Dec 2024 10:38:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Message-ID: <7js7lswzde67izdradhuzgvlixwiblgf7aosdvavknbclbtjew@6w3y2e2k3mtk>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-2-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204113329.3195627-2-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_013809_259928_3602768E 
X-CRM114-Status: GOOD (  16.98  )
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

On Wed, Dec 04, 2024 at 05:03:24PM +0530, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5332.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Rename the file to match the compatible

Either I look at wrong v1 from your cover letter or there was no such
file in v1, so how it can be a rename?

What happened here?


>     Drop 'driver' from title
>     Dropped 'clock-names'
>     Fixed 'reset-names'
> --
>  .../bindings/phy/qcom,uniphy-pcie.yaml        | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml
> new file mode 100644
> index 000000000000..e0ad98a9f324
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml

This does not match compatible, so I don't see how it even matches your
changelog.

> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,uniphy-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm UNIPHY PCIe 28LP PHY
> +
> +maintainers:
> +  - Nitheesh Sekar <quic_nsekar@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.com>
> +
> +description:
> +  PCIe and USB combo PHY found in Qualcomm IPQ5332 SoC
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq5332-uniphy-pcie-gen3x1

Odd naming. Did anyone suggest this? I would expect something matches
like everything else recent (see X1 for example).


> +      - qcom,ipq5332-uniphy-pcie-gen3x2
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2

What happened here? This cannot be minItems and it never was.

> +
> +  resets:
> +    minItems: 2
> +    maxItems: 3

Why this varies?

This patch is odd. Confusing changelog, v1 entirely different and not
matching what is here, unusual and incorrect code in the binding itself.

Provide changelog explaining WHY you did such odd changes.

Open *LATEST* existing Qcom bindings and look how they do it. Do not
implement things differently.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
