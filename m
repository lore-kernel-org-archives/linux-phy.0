Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C88BCF2594
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 07:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKVvY6AyQI8ybZuZCE3kq7+f6PokxfL7cqrux7GNmsQ=; b=tzRV0E8tmYAer9
	1UBHBJ6ir832SaqFEA3nDEglkX3SgsRYXXSoUdklDWzAYeEk3AAl0uF7bANJ+d7D0ggdAaEDHFewI
	kHZ5jC1s7ET+YWMuxVnvww0NHrwCXVCu6ifsZ/IIQGuYSvA4vCDRPoAr0I5cnATaXO1ovV8rWrbGW
	AY8v2Tl5l7zubk/GIZgE8w6SKd3rrY/4YafpswmQxd08je47FQxgT2MLU8IW35ZtqnFwgDrhliHft
	DRk0bMEb9+rNUj+myAf29HyY/TPb3MSxcAy0HVeQ0vPl4wKgS7nQylkq347EBoCC+kUtVWfEq0AH8
	npbLgomRwgEN+rUPVcTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLcz2-00000002kDO-18SX;
	Wed, 19 Nov 2025 07:52:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLcyz-00000002kD0-1Vzx
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 07:52:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 71AB343BE8;
	Wed, 19 Nov 2025 07:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B96AC19425;
	Wed, 19 Nov 2025 07:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763538724;
	bh=Aw6GuoBmIoOOfi/HNJCDnLrjZoQLsB7SutRhWhTrfE4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UNLo8YZ9V8kgiNZaqDJx+RexWzgCTk/eKpXbU3Iw9oy65IQRwlCxkRswDj0WH9zod
	 +oxiHTqRtvM2AddQN/pYPuJ97wcy6UDbDNY6l0UU+pJT9C84b87+W3Td4EaD7pVTQT
	 GE9yXdl0KQ7XBfIgtZa03AKhuRH63tVxwMfcFt4olJDCq500QVGiW1LYqT3qooSSua
	 z98i+9XvWjki47moPp6RhHp9hfwqSKqWw242k3DpNvbpbmbQVl7zvxZRVGLop6PCRL
	 UkzbBTGHpXR99f5KXKfBApoGprkneROwMCFMIhB7dMrKbTAJevpthH9izySDOJeW7m
	 xSp0mNuPJLPEQ==
Date: Wed, 19 Nov 2025 08:52:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,rzg3e-usb3-phy: Add RZ/V2H(P)
 and RZ/V2N support
Message-ID: <20251119-calculating-vague-crane-feed81@kuoka>
References: <20251118180712.4191384-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251118180712.4191384-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_235205_426421_419DF945 
X-CRM114-Status: GOOD (  10.77  )
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

On Tue, Nov 18, 2025 at 06:07:12PM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add compatibles for the USB3.0 PHY used in the RZ/V2H(P) and RZ/V2N SoCs.
> These SoCs integrate the same USB3 PHY IP block as the RZ/G3E, so the
> RZ/G3E compatible is used as a fallback for both.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml  | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
