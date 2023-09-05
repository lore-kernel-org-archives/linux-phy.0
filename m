Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F08E5C83F2C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 16:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rY7e42a7kVWuqdWbDQM7Lr8OoUC6/1+dVkkyAmtbcmo=; b=Q0Kwizv2OxWldR
	WlOVzkhAuITg2bjLLdgxGi0FUQszFcWi0Q6nyODr0nzkn93npVyu2V4G3efieyMj8Sa5r571qcPY8
	PYt0ftlpP23yngFoLW6CTIGgyQl1JEBKra3vnbtI2jJRTuek5g/2En/DuNI0lXT33AoMU4UY4IsMi
	RuZsMHPSx2MRZsyaqk8d5Prszt4QCHlDH1qy8b9sFLCDD+My7dPMsYafs5I7adVnB/9OSrFT6Rtwn
	sYmUs/Eq5x0XmNak7eNV6HuvglykjDSZVW1zhcpWuCIzCYsR+Qa+ihTt/YOGyf8GFs2t+sysCGPYf
	33GhH/1ppiZ2N0OzLYlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdZ4Q-006Ndx-2F;
	Tue, 05 Sep 2023 16:38:30 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdZ4N-006NdJ-1l
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 16:38:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id BA483CE1260;
	Tue,  5 Sep 2023 16:38:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7C59C433C8;
	Tue,  5 Sep 2023 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693931904;
	bh=j0OeAERZBXx25b1hoC5tIs/7DWLipKf6KPeTFzeNQqM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n2wjmcDbgPR3HVXF7xu8JC0qwJ7SOArNWbVujiPhOCLzDFlEFdYpQ/BDI0hiXEg9E
	 mP0uivQRa7BmpqmWaCpmIwc8wPSMRMZEnbnT53FnkYIQ094Yy9mhepJxqFXqY3Zb16
	 r6jaRvKXlYDDIgKNk4wD8uT1f95MLjWxKuDmmv7w0AOvIs+fXMJA2yy6o48O1EfhaO
	 MVMZ9d7dykmQkpeHt0sVqJycBmmkm481DcrkOfa+NYOcSpNwrv1Hxgmw38dSn4tgYe
	 MWD0+wQNRrLkn0B6ljWWY8TkJalLqRjL60tfyCzEzc9GbkaklxcmoGrIlYlrAV4oTW
	 u+fvGoaSrinNQ==
Received: (nullmailer pid 3505213 invoked by uid 1000);
	Tue, 05 Sep 2023 16:38:21 -0000
Date: Tue, 5 Sep 2023 11:38:21 -0500
From: Rob Herring <robh@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 magic tuning overrides
Message-ID: <20230905163821.GA3500273-robh@kernel.org>
References: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
 <20230830-topic-eusb2_override-v1-1-ab23825385a8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230830-topic-eusb2_override-v1-1-ab23825385a8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_093827_766417_20668FDA 
X-CRM114-Status: GOOD (  17.76  )
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

On Wed, Aug 30, 2023 at 04:40:15AM +0200, Konrad Dybcio wrote:
> The EUSB2 repeater requires some alterations to its init sequence,
> depending on board design.
> 
> Add support for making the necessary changes to that sequence to make USB
> functional on SM8550-based Xperia 1 V.
> 
> They all have lackluster description due to lack of information.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../bindings/phy/qcom,snps-eusb2-repeater.yaml      | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 029569d5fcf3..83fd6f936bf9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -32,6 +32,27 @@ properties:
>  
>    vdd3-supply: true
>  
> +  qcom,tune-hsdisc-value:

Is '-value' redundant?

'-thres' or '-threshold' would be more descriptive.

> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed disconnect threshold
> +    minimum: 0
> +    maximum: 7
> +    default: 0
> +
> +  qcom,tune-iusb2-value:

-amplitude?

> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed trasmit amplitude
> +    minimum: 0
> +    maximum: 15
> +    default: 8
> +
> +  qcom,tune-usb2-preem-value:

We have 'hs', 'iusb2', and 'usb2'. Can you be consistent?

> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: TX pre-emphasis tuning
> +    minimum: 0
> +    maximum: 7
> +    default: 5
> +
>  required:
>    - compatible
>    - reg
> 
> -- 
> 2.42.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
