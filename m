Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA3D3C369AB
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 21:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwUmx8rryZhLri4UW3GEatE1qIdtYwgVSnp4ZUgOscg=; b=WTD/k9RGW+zk43
	/xFbMhXyAzixN6YeHrlvtkgePfTPvXeGReh+OiRiWPzLXVotzUvcUorAXm8FPymEilcaupg5XX282
	BZNfM8x4rlt9Zf7KADD6MZt76EeWChvsnyqdQqvPN3mPTU6o3ymq6C6CJkX+NI72wFn06rDl3ykp/
	VIuMwDYGOzriMBWDAN6i0aZnIdBTAHTSxK/Kj1PcSop7QdY1DepNdvNnE01UBpd2o9bGjbV5vEozn
	U7mcpGq+IrNxsP8ZEhxG/9jfmVsiUWYNhURCYxDltJboAKHmA/IOumaKSXit1WeZ2gDmRABMFVU4A
	O5LhNZlbypfxdrcMdXcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6ymA-00000005BiC-0ISR;
	Mon, 21 Apr 2025 21:34:02 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6yky-00000005BWA-0slz
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 21:32:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 35F9B6115F;
	Mon, 21 Apr 2025 21:32:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF39DC4CEE4;
	Mon, 21 Apr 2025 21:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745271167;
	bh=QLIGv6BbptEPQr0f4i4xGAOTh8BsPkZbgBrT/SzcXm8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T8ULaN64PeXZQfBJisV9YtKLO1q59790zkrdA9tu9dIiLfgg8a5sgJL01BjAbTgZK
	 EJZ0fgjVKs11DANCdMkauVLrzKoEZh/fE2+MS686/81nFOeTUpSOo2mojV/YRGHiXF
	 7oIeOkTWu4ODnomiC6t0j1J4iHu8EEbGdd32b3coyVRUkkHPkZgfXM9+5aAoVptbvc
	 ZAuYxJCf6Z/LHV1oGY3cbTBuiqH5IgEQph5bmbi3+glaNovUJf1mzWQ28RRMMZg8cG
	 PiPNWNli+BQ234DC9YXPXt8WpPG2eZtEAs4ekMWpzZGxrSzisv2KAxg3wMJWp4/0MZ
	 xY3Tm5tiaMxHg==
Date: Mon, 21 Apr 2025 16:32:44 -0500
From: Rob Herring <robh@kernel.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 more tuning overrides
Message-ID: <20250421213244.GA2725065-robh@kernel.org>
References: <20250416120201.244133-1-mitltlatltl@gmail.com>
 <20250416120201.244133-2-mitltlatltl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250416120201.244133-2-mitltlatltl@gmail.com>
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

On Wed, Apr 16, 2025 at 08:02:00PM +0800, Pengyu Luo wrote:
> In downstream tree, many registers need to be overridden, it varies
> from devices and platforms, not only HS trasmit amplitude(0x51),

spelling

> HS disconnect threshold(0x53), Tx pre-emphasis tuning(0x57). And
> some devices require different overrides for different dr_mode. So
> add property entries for host mode, original entries will be used
> for device mode.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../phy/qcom,snps-eusb2-repeater.yaml         | 41 +++++++++++++++++--
>  1 file changed, 38 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index d16a543a7..d0f5e770d 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -36,25 +36,60 @@ properties:
>  
>    qcom,tune-usb2-disc-thres:
>      $ref: /schemas/types.yaml#/definitions/uint8
> -    description: High-Speed disconnect threshold
> +    description: High-Speed disconnect threshold for device mode
>      minimum: 0
>      maximum: 7
>      default: 0
>  
>    qcom,tune-usb2-amplitude:
>      $ref: /schemas/types.yaml#/definitions/uint8
> -    description: High-Speed transmit amplitude
> +    description: High-Speed transmit amplitude for device mode
>      minimum: 0
>      maximum: 15
>      default: 8
>  
>    qcom,tune-usb2-preem:
>      $ref: /schemas/types.yaml#/definitions/uint8
> -    description: High-Speed TX pre-emphasis tuning
> +    description: High-Speed TX pre-emphasis tuning for device mode
>      minimum: 0
>      maximum: 7
>      default: 5
>  
> +  qcom,tune-usb2-squelch:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: Squelch detection threshold tuning for device mode
> +    minimum: 0
> +    maximum: 7
> +    default: 3
> +
> +  qcom,tune-usb2-disc-thres-host:

Put this and the others after each existing property (for device mode). 
Ideally, these would all be in alphabetical order.

> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed disconnect threshold for host mode
> +    minimum: 0
> +    maximum: 7
> +    default: 0
> +
> +  qcom,tune-usb2-amplitude-host:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed transmit amplitude for host mode
> +    minimum: 0
> +    maximum: 15
> +    default: 8
> +
> +  qcom,tune-usb2-preem-host:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed TX pre-emphasis tuning for host mode
> +    minimum: 0
> +    maximum: 7
> +    default: 5
> +
> +  qcom,tune-usb2-squelch-host:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: Squelch detection threshold tuning for host mode
> +    minimum: 0
> +    maximum: 7
> +    default: 3
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.49.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
