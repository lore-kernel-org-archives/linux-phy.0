Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 057ECCD6E79
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 08:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/dICNGFMcA5EAq9iu800v2O+j2IQ0b1wpMVkVCdop4=; b=Hmy1Avbw4a997t
	Uz5Y/Yyukont8i/HGV/tFne69GgxExhO+J2R3+QX310nXEN69MvqFEoTCotxh8gfaTni2EB3dnVY3
	HMIc9rqHex9Km9Uc4VggxJqA8DsN4VXx9jzpwsldd+/0o7uxP3TzoqtU6efmt4xKP5OMqiOJgN8b4
	DxNlRI1UXn5Z8r1FpkZY6D2FmemIjoIlwljN4qAFgFdWDD+w1BR+N7rXnHGU/u5dcg1tqbZPF94V+
	9KpT8/ykIsWgUcGwtpZdFER9gTIG81eY9csobZOdx436rYO131/c5FUwtDLdo+pQZFozHpWZed90I
	oOZTLyMkA06y/fYGN0Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsIa-0000000584u-2b2p;
	Tue, 09 Jun 2026 08:59:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsIZ-0000000584Y-2Iof
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 08:59:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0A62D4396B;
	Tue,  9 Jun 2026 08:59:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B238A1F00893;
	Tue,  9 Jun 2026 08:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780995542;
	bh=6pDUabs7/gUhZjsFM2LQBImVyXUMF5qnHoThUXm5aaY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hshcncq7twzWJqwX53p+T8Xga3DJoQDg6PlLMy/NDp9xUfXc2RxG7bfkjHvn4tKQB
	 YmYnzIXzQWAtorw3gV2wqFGgEdMRX8OB6yVWXQBg2NxOo1iSIdZ6tQQoVfyL1Nu8aM
	 m/fHrgs0mMW+2NgJPhk+FLpWL9PaBDam4Fy6KXSqA15lgwbOujZfLOjdfv6MoGD42b
	 XjKG2BM2udutmat6/Ah1iR5sGnFfBcs8hjMzJam6CFDzDlthT3wWS2JUTfXOaOYhTd
	 DCxhROpca7Foghn7oIGU82HGXfj6CrCBUKIJZhBfzL+8agRLKT186Rkile5JVlzRaY
	 C2tqLp2DBK7mw==
Date: Tue, 9 Jun 2026 10:58:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
Message-ID: <20260609-bouncy-guan-of-mastery-bf78e4@quoll>
References: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
 <20260608-eliza-v3-2-9bdeb7434b28@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260608-eliza-v3-2-9bdeb7434b28@oss.qualcomm.com>
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

On Mon, Jun 08, 2026 at 02:18:14PM +0530, Krishna Chaitanya Chundru wrote:
> PCIe controller present in Eliza SoC is backwards compatible with the
> controller present in SM8550 SoC. Hence, add the compatible with SM8550
> fallback.
> 
> Eliza requires 6 reg entries, 8 clocks and 9 interrupts, so add the
> corresponding allOf constraints.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  | 50 ++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
> index 3a94a9c1bb15..fb706b1397a3 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
> @@ -20,6 +20,7 @@ properties:
>        - const: qcom,pcie-sm8550
>        - items:
>            - enum:
> +              - qcom,eliza-pcie
>                - qcom,kaanapali-pcie
>                - qcom,sar2130p-pcie
>                - qcom,pcie-sm8650
> @@ -91,6 +92,55 @@ required:
>  
>  allOf:
>    - $ref: qcom,pcie-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,eliza-pcie
> +    then:
> +      properties:
> +        reg:
> +          minItems: 6
> +        reg-names:
> +          minItems: 6
> +

This could be just one if:. Much less code, but I don't mind this
approach.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
