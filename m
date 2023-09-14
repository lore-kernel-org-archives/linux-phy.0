Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95689EEAA53
	for <linux-phy@archiver.kernel.org>; Thu, 14 Sep 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEpEMg7JHhvVFzA3CwgIIqlFfC9zr9zNFmxuJ2sOAjs=; b=PIQTy7jYtUf4Zu
	+NJJe9jJxDD6UHZh1AohiiUa/jZpcs6yfvXak07qd5kL+W7aHK+7z6xvazzSUijPTwDPiP3xZderV
	SUsuKslT8bTej/TcDek3fvLqAvCRLrh6p1F77AX7ebJZd4sZN6a1jAvJSQ5EpGZj+wCfBXIqt/t5s
	XSsj9kKPwTuwTKsaTRZYdW/nsd1Mg9Cdr8L4IeCV5K1DaaA0GnFEeiZR59E6EKbanLEKTf9fGktPT
	M9R0pHepcOGN5ap0kEdVwFZuHDLaIE27dsesQBIfHnQVhU8x6o2BdGQ2gyZJ36DwaSTmPlXsfo5Kh
	OKpJwbY6QGiwHgH0D2OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgndg-008gIP-14;
	Thu, 14 Sep 2023 14:48:16 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgndd-008gFv-0i
	for linux-phy@lists.infradead.org;
	Thu, 14 Sep 2023 14:48:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id C887ECE2674;
	Thu, 14 Sep 2023 14:48:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FDCBC433C9;
	Thu, 14 Sep 2023 14:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694702889;
	bh=y75UZV7IrEfaRshsSKNFVB5QqnbIpnAX2/2OZFpAm1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZO9RHGVbtpfHNXzviqAu345MBTfgs3Mj0JvziDHVFd6VP7DHN8BXPZl8fQlMTSUv3
	 VdGNxQLmXJceXc5QounrVyFFRQFSIQt8Y3AxrVvQm2hN+5/PncJhz7SQavQkdtpW+6
	 ZbKUY3ZNT8Z6U+MhhNxxxkgbdsWLlLI3nWA/KKU2tCrX4DNJzNi8mg/QeqEm2SeI+Q
	 6TNPDoWo87fv4nYUjLQ7A/aq6IYGNwR/ziTksXiOcjMmSjU/pwaopBjq00MGFWLLm4
	 Z09dOwpHXjB/rdY5QPnW1uHMkb63BLy6GJTyjEOhSuwYl675BCY2+w0Tqc7yFtXuOu
	 p/lP27OPtGgww==
Received: (nullmailer pid 1271313 invoked by uid 1000);
	Thu, 14 Sep 2023 14:48:07 -0000
Date: Thu, 14 Sep 2023 09:48:07 -0500
From: Rob Herring <robh@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 magic tuning overrides
Message-ID: <20230914144807.GA1267899-robh@kernel.org>
References: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
 <20230830-topic-eusb2_override-v2-1-7d8c893d93f6@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230830-topic-eusb2_override-v2-1-7d8c893d93f6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_074813_466662_243A5754 
X-CRM114-Status: GOOD (  16.43  )
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

On Wed, Sep 13, 2023 at 11:53:23AM +0200, Konrad Dybcio wrote:
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
> index 029569d5fcf3..24c733c10e0e 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -32,6 +32,27 @@ properties:
>  
>    vdd3-supply: true
>  
> +  qcom,tune-usb2-disc-thres:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed disconnect threshold
> +    minimum: 0
> +    maximum: 7
> +    default: 0
> +
> +  qcom,tune-usb2-amplitude:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed trasmit amplitude
> +    minimum: 0
> +    maximum: 15
> +    default: 8
> +
> +  qcom,tune-usb2-preem:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed TX pre-emphasis tuning
> +    minimum: 0
> +    maximum: 7
> +    default: 5

For what it is worth, the mediatek,tphy.yaml binding has the same 
properties...

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
