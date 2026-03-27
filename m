Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AD8910BA439
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 08:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFHIGb2b2NNhiaIr9YFySQ5sA85x1aSdVTEeUjPvNoQ=; b=IVplFGScbRd1k3
	DST33uyQrSoD4QYtE45WWFxRQcjJp5Jq+b4qkLtLUK5GdlkvUmzEooMVRfy9G4QtbchpoEcGu0qvM
	Ceu99eKtBOT/GD14x2dldAvxryVXVDh7BiVpOvv0njDKWxuIAVoa1DjwAcoy1O2DBYeOzdjaeQxoL
	PPtdCszi6OS7MZzXPVncFmEFYIS184g0TPxnLrfgPbfqdlVsQW/iulLST0YOMmHsPH9komdqhyZCE
	P05PVVkUzXRePDeF3x4T/sXKAEwqtCaGzhLNVNg+GG9/KhzJ3aYyBvKdoWm/rlYEIxtilDftH33Qm
	xMTchQ0f4PF4+YQKb0Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w62Yw-00000006yEX-49Pw;
	Fri, 27 Mar 2026 08:29:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w62Yw-00000006yEN-0QF3
	for linux-phy@bombadil.infradead.org;
	Fri, 27 Mar 2026 08:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=1PEunTsDyRQ4H48fHC9IUM7wUGcuFLkA9p4jWUBQ+GU=; b=POXR1lm9UyReoZLGxhDxQsVsu0
	QWYAoj6ILsUBnB6EHQ17rXnJm/QtUfIg4YZtmmUUHuZ/M2bXO/O8h/0oB5t3gD86t/i4i8d4JBKLa
	13bFe18f4w+32nnSQSPpaqcJBQoTrBWcSnIeW3+1vUtIdM89bkrzd8d6phGHL1SmLxU/LeLm0K6Vq
	HOPX/uMnEEQxwSHTZ/xETFJ1VK6B2y1Qi6VVOCl7nAUfFH4PIEH6baZJqWEHMvnH0CKlneCle7EL0
	i5ungP+pfyU42e93g0T4uTz+qry9Dy9+WBmITiLAh/S72UwEjEYJuI0JatTZQml02DNKNp9X6J6kP
	BYwoNt7A==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w62Yt-00000009xxQ-07kZ
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 08:29:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5307C40A45;
	Fri, 27 Mar 2026 08:28:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2AD2C19423;
	Fri, 27 Mar 2026 08:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774600137;
	bh=aX3T5HqlHVFDXpCojT5Kga3nSDgSpxMzAsP25toZvf4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J9d/D/k9DZCR2xoru2YNoVx5+cGNkmX4sBvk4N2LZONHULOBSMJNyBUBqmT8KkNXC
	 DjUrkFHSHKzabNc8wrMhTpweCuWg0hVXGTUhkEYdsOgDgri3a5q97+CSnbLKxpcWfs
	 h8LZnVx79QV6x7eTza+YZYjFBn8RKMiqL/YfW0TYy3Y8hPpCK97RlI9UBTZ7gvFZaE
	 vL21DxlzLXfytELBLfoOVijLe8wDMENLgRjb3IWpCbvh7esATkW81D8Mn+9zxuewqT
	 iVbXtYbNyYUh1jg3MF/6fRSYaw24Kb+O+eRR9ssOOhqeyXA9642+cqamCpfu3z0xXv
	 jMBOnHsk6slSg==
Date: Fri, 27 Mar 2026 09:28:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend for
 resets and RTL9607C support
Message-ID: <20260327-berserk-roaring-quetzal-24dd7e@quoll>
References: <20260326193419.48419-1-adilov@disroot.org>
 <20260326193419.48419-4-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260326193419.48419-4-adilov@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_082859_367799_A86F48C3 
X-CRM114-Status: GOOD (  10.44  )
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

On Fri, Mar 27, 2026 at 12:34:16AM +0500, Rustam Adilov wrote:
>  description: |
> -  Realtek USB 2.0 PHY support the digital home center (DHC) RTD series SoCs.
> +  Realtek USB 2.0 PHY support the digital home center (DHC) RTD and
> +  RTL9607C series SoCs.
>    The USB 2.0 PHY driver is designed to support the XHCI controller. The SoCs
>    support multiple XHCI controllers. One PHY device node maps to one XHCI
>    controller.
> +  This driver also supports the OCHI and EHCI controllers.

Hardware is fixed, does not change. Don't reference your driver changes
here.

>  
>    RTD1295/RTD1619 SoCs USB
>    The USB architecture includes three XHCI controllers.
> @@ -57,6 +59,12 @@ description: |
>    XHCI controller#1 -- usb2phy -- phy#0
>    XHCI controller#2 -- usb2phy -- phy#0
>  
> +  RTL9607C SoCs USB
> +  The USB architecture includes OHCI and EHCI controllers.
> +  Both of them map to one USB2.0 PHY.
> +  OHCI controller#0 -- usb2phy -- phy#0
> +  EHCI controller#0 -- usb2phy -- phy#0
> +
>  properties:
>    compatible:
>      enum:
> @@ -69,6 +77,7 @@ properties:
>        - realtek,rtd1395-usb2phy-2port
>        - realtek,rtd1619-usb2phy
>        - realtek,rtd1619b-usb2phy
> +      - realtek,rtl9607-usb2phy
>  
>    reg:
>      items:
> @@ -130,6 +139,9 @@ properties:
>      minimum: -8
>      maximum: 8
>  
> +  resets:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
> @@ -157,6 +169,15 @@ allOf:
>      then:
>        properties:
>          realtek,driving-level-compensate: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - realtek,rtl9607-usb2phy
> +    then:
> +      required:
> +        - resets

If it is unclear, they might not have it so,

else: ... :false

see example-schema.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
