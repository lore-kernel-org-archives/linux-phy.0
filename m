Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59FB5CD4851
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 08:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVDeHwVVlfDa1IuctF2qC9/PgNgbLz8wP9osVrb32Uw=; b=BmgT3mvFBMBhjE
	4MV4ZI/AXCEuIf7uYKHg8lIwjitv5NmJIKjTbxUkpsbMXHF149elpM3W5gvOxDnB6zh7XuWZI8w4u
	7Ndg74JKsFcNfP9pDPeDgRoJllX9GEere+Jye2O6ad1T9mMxsJJv6fC6Pqt6a9EPeMrZ7W0bN1omt
	Qr7VtT272yfQxdTsZvCnHuYn2LyNTJYOUd1W8z+Vqh7dsvJ/NwGWcIFoly+PhM1y1M5ZaSkW/OaX5
	tYmnkvCBQWLrzswL1MhMqMgbP213MbxUYD6XnJjytiVAiXEIYp2+CUsqMO0N89/x+4nMAb4xr93jn
	wa0mXnbYv5rjdX84oVBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNnkx-00000007iY6-0Uk5;
	Fri, 15 May 2026 08:18:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNnkw-00000007iXs-2bZE
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 08:18:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D98C660008;
	Fri, 15 May 2026 08:18:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07B1DC2BCB0;
	Fri, 15 May 2026 08:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778833129;
	bh=2oizVG4O3uoNeGTVjU8VPZdS7sVqMY19d5r731hQAzU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pUuAIplfHLWThVdLLDFjzdWYisgqOY7Irqx+VtYdA5NZ7cfUrufOHKfcWAbo99GhW
	 Q8l4r/VQEFccdNdrslxyOpuGEI1yAfhmbfWDq/go8XgADNdNS9uSHhLplAoGcL0cbv
	 UvUPPJY7R24gFA11uhhik/Zn0RnwOGPlO0Q6fiyM2yA1oGYymirbfUfWCD7v+AEpAl
	 483JPCNE7GGVVHPYKekv9RhQEjjl5XfokVqcqqzLmK7RhnoHoVRTpRbV/CKTBmDrVs
	 azZ9KQTwre0iUC5VoymRNQaVfgc/sraBdkCV/9cFt8J5GCZzxvlLmYDpD/ZkCGUcWG
	 r+HvLzeVka4GQ==
Date: Fri, 15 May 2026 10:18:47 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen <peter.chen@kernel.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 3/6] dt-bindings: net: Document Infineon/Intel XMM6260
 modem
Message-ID: <20260515-precious-ginger-lori-d1fde7@quoll>
References: <20260511135703.62470-1-clamor95@gmail.com>
 <20260511135703.62470-4-clamor95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260511135703.62470-4-clamor95@gmail.com>
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

On Mon, May 11, 2026 at 04:56:58PM +0300, Svyatoslav Ryhel wrote:
> +  ap-wake-gpios:
> +    description: GPIO connected to the EINT3 pin
> +    maxItems: 1
> +
> +  cp-wake-gpios:
> +    description: GPIO connected to the EINT2 pin
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +
> +  vbat-supply:
> +    description: Supply connected to the VBAT lines.

This should be rather name of the pin on this device, not the provider
name. VBAT suggests the latter. Please double check.

Rest looks fine, with respect to Sashiko comment on description:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
