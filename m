Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAC1AC83F0F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Jul 2025 08:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGDbpJY2OzEVNbqui39KhNWlLc3pjrg0GD5OhrW9l7s=; b=A0ZGTmkyO4Wv8T
	9X+j/dNr10450CY0RNrn8B6EBMuLpqVBx9rPyfleCAn2rEczXO+5RRw24XL1ZD58CrQivWfwpGOvV
	5JRF9EPG84k0UM49c6yEBeSVl7DPKgdINy22jGE8gmm/7qbpHTwYmrDw4T8hqfVBW8XgEvchFXisY
	5JnwjKFY/btyJsB1EKQjD359OZwVrauXX61O/M71J79WQ5zu/n8kKVXDqQVZJWFJ7TAZePPE/ruBO
	rpYqCGGyTphTT7Tq+qIMSnk0XfkB5sH1uRDVY4qCaQH3Iv0E7RX2Nv9UzMxQzXI0xzO3j65R7T3uy
	UqtbsEvYEFlhK2Ut1bYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3SE-00000004i7l-1jUs;
	Tue, 08 Jul 2025 08:13:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3SC-00000004i6Y-1QSQ
	for linux-phy@lists.infradead.org;
	Tue, 08 Jul 2025 08:13:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 13EE65C62BC;
	Tue,  8 Jul 2025 08:13:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61DF1C4CEED;
	Tue,  8 Jul 2025 08:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751962406;
	bh=IdEEqJgpLKbcD7sTVbhaftdzJWqxKOBVJK3x+y+VwFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QxvoE/464GhLEIcXv9+UpERUaYoXdEvY5UPkSzKbcXrTx1hpxW24jlLLzgUWdGNGJ
	 T6Utld4A0nBBlZtsXZdssxrdGzUtWsxGRM6A1WnVucznAo0zsGriIMlmPw1WkGzT5p
	 bmizdgE0azGBVtoFsBPuEA6N/A4+nyxnTFzqvxbkofa7AJRZsE3Jf4veoxO6+/0bSB
	 lzTuZG06juX5Bmqp7LUQ3x9ep5pAwGUBcET9OASXXNVnmgRDwNIq2vy/YM0aBzPhhO
	 5LL47dQFz2uTXpbw3WNKZmXPlFa6ZQ47Q4MNDZC0icjT0MZa9q8efKtuSE0Vc8bGUx
	 qvkIUbkHb8PBw==
Date: Tue, 8 Jul 2025 10:13:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Document
 qcom,tune-res-fsdif
Message-ID: <20250708-unicorn-of-ancient-excellence-e8945c@krzk-bin>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_011328_414478_805F5360 
X-CRM114-Status: GOOD (  12.81  )
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

On Wed, Jun 25, 2025 at 11:14:56AM +0200, Luca Weiss wrote:
> Document the FS Differential TX Output Resistance Tuning value found on
> the eUSB2 repeater on Qualcomm PMICs.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e2992735998063b3ca390e04a03930d 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -52,6 +52,12 @@ properties:
>      minimum: 0
>      maximum: 7
>  
> +  qcom,tune-res-fsdif:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: FS Differential TX Output Resistance Tuning

Resistance is in Ohms, tuning could be in dB, so I wonder what are the
actual units here. Neither commit msg nor this description helps me to
understand that.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
