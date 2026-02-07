Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C31B2EE0AC4
	for <linux-phy@archiver.kernel.org>; Sat,  7 Feb 2026 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lKMonvsU8L3rBnSIJbFOnJZC82X1lNVa5+/MY8iuMM=; b=PIOpJUcUb8GdZY
	YopfX9gDh8tBcgwZmATTtgfk0NnOF1Oucu/oVds80PCILPxLudbSF/7B0PshvkIaiwJE4QT9uOTVd
	KPEyp6HnWEc7l9zg9HQ0KLxMUC4yZzQ0UfGSvcoAe7d8QlkJuCQrwjFtX3nWnsc2DdEA7M1jTKMPA
	SiuTekvFkb/9pNKmnivwj3yi3UlpGCoGieu4m45VD7idvukBi4xhbFcpAxMQOkTfuzbEJmRiaNMYq
	zGdd+iIs00VwwOM/rEm/8vd8pZiWbMYAw4O8CGCTMihWXv1E7ufzEndRFaFPaaUwa/bTSUUvpAvXw
	S+aXrYA8E4BaXqB8FPIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofrM-0000000CM70-1TNp;
	Sat, 07 Feb 2026 10:48:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofrK-0000000CM6c-2DuH;
	Sat, 07 Feb 2026 10:48:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7E9B844146;
	Sat,  7 Feb 2026 10:48:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC80BC116D0;
	Sat,  7 Feb 2026 10:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461293;
	bh=xeIkHvV7X3pvMez0kiFePRC11Tm26GnXlWP39PuhWhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ksVO1FtuUTzaYWMGPzjhuSXulWE/KIuHT5l//UyeYCcEqsbaOcoXazouqbnND68zk
	 j9U+sFfkbvvZN+eZlB6DNu0JrC5vKVK37hlGPW14EZEKjmwdpkk2seElekYswT6ZbI
	 JGbmoxU1vNU0xscvmrIDGby7LIN7yQjwUz0LwMxV6YdLUlCReQU9nmAWuSSxmXDXOH
	 3Iq7dQBz+FlWE9yBO6WsUT4PyE4OzBFXLBOMpKJMFbIhJmjHg1ypYpvmdjfU7AuKU/
	 lt5CFqR+ho3L1sZ4yzABCumZkEGbbjS2bYbEPyG7DCwfv7870p16qBfL30HtMS00qe
	 w9udnIWkQDllA==
Date: Sat, 7 Feb 2026 11:48:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Ze Huang <huang.ze@linux.dev>, Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-riscv@lists.infradead.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, spacemit@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: phy: spacemit: add regulator support to
 K1 USB2 PHY
Message-ID: <20260207-dancing-finch-of-chemistry-f98cf2@quoll>
References: <20260206100009.873182-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206100009.873182-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_024814_590050_C43206FA 
X-CRM114-Status: GOOD (  14.11  )
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

On Fri, Feb 06, 2026 at 06:00:08PM +0800, Chukun Pan wrote:
> Add an optional phy-supply property to describe the regulator
> supplying for USB VBUS.

Why wasn't it there before? USB did not have VBUS?

Explanation is so incomplete I suspect you are patching broken things,
so as well this could be completely different hardware (e.g. there is no
regulator for this block but e.g. connector).


> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> index 43eaca90d88c..74a1cd5bcdbe 100644
> --- a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> @@ -19,6 +19,10 @@ properties:
>    clocks:
>      maxItems: 1
>  
> +  phy-supply:
> +    description:
> +      Phandle to a regulator that provides power to VBUS.

Drop redundant part. This cannot be anything else than phandle and
regulator.

"VBUS power supply" for example. But anyway, I don't have certainty that
this is correct hardware representation. It's your task to provide that.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
