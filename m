Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC45C83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 12:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FM7KWlQFqrz1JcQkw3aKCrGRZFPZvbIrCUS0OjHG/2Y=; b=y9i5NuI/B4ocui
	OMCsKBXqY/ms64B5/5sMSa+sB7m0K3TBAwKPsFtUb9NUfs+kZYfDxEUygqZ1ko6Z77eTGzw3DIRbF
	Y55G6d1U4mo9LBsTUXSfx3Q4dVaIX3/GTZwcxrZnlrasEfAG1c6+5UTnjPz0dO8vd34Ns/aPV8VcG
	ZXsnZlKCvzy79uLUyIrw/xIjSgJ/X4ur7Xla8fT6eyzkz+C8ZYTDhJYzP+dDxYDQcJENJFEt7xHan
	8WdUL73BmxkHi5DA/2MuHDw0O6LHz8T9b0Q8vIrsipil3jd9Nos+Ipf0oZKMsRpujo5WDEsANDGHN
	jg2XJf3sBHW7yQTNesxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqUn-0000000Bn2H-3f8Q;
	Thu, 10 Jul 2025 12:35:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZp7b-0000000BaDK-0fcr
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 11:07:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 97E6F6146C;
	Thu, 10 Jul 2025 11:07:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D291FC4CEE3;
	Thu, 10 Jul 2025 11:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752145642;
	bh=cP0YccyJ7Yk/7NkZ0wkAWEv1jfHKscTcSiPWI1OSaEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HubwSBRYx9IEb9EKj8DZFkbR21tO2VOA+6fqxxJ5OF2hK0PkWBlnlachA9wlCk7WE
	 +kQ/jEblR1G04I4sWZDFGCQXJNT0zWDdxw4ZnFwUWgiJRS3GKIwSqf5bnf93r3DmKP
	 3VOGJ3Lk9i/j3f+rMAbx/fTgPhK6IyjwHCk1t3gNHqEQdN0H65qF74jKcsDuzk8t3Z
	 fxQ6iv7mnU8TBpCLbiVrJMtpaabtHy8gbPC89bBFffiEHSmUb3tdg/Vn+TP36EVohP
	 sWjHQhhs3f9oh4yOh/q+SAAtMqi8NSRSDUbvuM7ofeNRgvG8LMzCvfAUUqDH6xd7rP
	 n+FzMYlyjx5Fg==
Date: Thu, 10 Jul 2025 13:07:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,snps-eusb2: document the
 Milos Synopsys eUSB2 PHY
Message-ID: <20250710-little-zebra-of-priority-f1fdaa@krzk-bin>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
 <20250709-sm7635-eusb-phy-v2-2-4790eeee7ae0@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250709-sm7635-eusb-phy-v2-2-4790eeee7ae0@fairphone.com>
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

On Wed, Jul 09, 2025 at 11:18:16AM +0200, Luca Weiss wrote:
> Document the Synopsys eUSB2 PHY on the Milos SoC by using the SM8550 as
> fallback.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
