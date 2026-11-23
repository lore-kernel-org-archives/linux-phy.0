Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13340606A33B
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 11:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qCwDMX4d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BckXcxSR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Mxw/+Rul4hdsB+ydow4WQX4U8wuN5kLTDRXlQ6TAO9Q=; b=qCwDMX4dadZYrNrbIVpG6ZB5BJ
	GoUVXJ8Ok8YNKJa5EaR3oXO/BBOon5DmcDWPLPp1euARG4/7XF6i5kHL/Dc0xFYCEzerU1yD4oo/C
	XqpwoOjlXm3KwsmoEaRyrY5bEZRCPPFplgW36mtJZIzx5mS1Ua6ObVmhdxy6dqdWtL9/7gh+5+d5f
	ujUUr2uwYCia2qNWgMJenn2oiQVurMP8oBRN8A2gvIXnYMwPLRUMrbhEwpStTF81p+gAsix116eEf
	NlcKfwm+86Ib5042BsvYevN54wImp0Is4JamG902vRzAuEGNA813Wyp1b9dM8ziR/TQAXZP93Vq2I
	QxQg2uDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRyx-000000035wz-2moY;
	Mon, 23 Nov 2026 11:13:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRyr-000000035vW-0C49;
	Mon, 23 Nov 2026 11:13:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1952061DB7;
	Mon, 23 Nov 2026 11:13:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5AD81F000D0;
	Mon, 23 Nov 2026 11:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795432383;
	bh=gXtppw2VGScP46e4T0icLwB377Wg2zh32ul4GnIcj4c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BckXcxSREsY3Qbjdy957VDgJhhX1RVhHqnPr862zpPKKKrcUQY/1VWBhjtG5X++AY
	 a8C6GIICTykhk2LkMAPSCdNWR4j/zAo/wT1jjJEMMnaM5Xp6rDVk6+7eRKFrQMh68S
	 U87xtYe3KgvXuzzIP29PdMyrR0HBVOQRHlRDe2ooIYSn4i2W2KXqjDvmvfGGq4TGW5
	 hCtHfc1efqCF4PrmX9EcKS0zYnOAd9xRVQU4Rbes/TMX0/mnf4ZRh7ML3420zlTXLZ
	 RX9XEptbT/qwY0O/k6b7qExgcGzSYWCkKBaw7mfPzvSMamnrL25q0PtYtqLZ5aGYcS
	 +L8r+Rg9S+QKA==
Date: Mon, 23 Nov 2026 12:13:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Andre Przywara <andre.przywara@arm.com>, Xu Rao <raoxu@uniontech.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: document Allwinner A733 USB-2.0
 PHY
Message-ID: <20261123-international-brown-kakapo-257aec@quoll>
References: <20261116105544.669029-1-vinicius.eduardo.pedrosa@gmail.com>
 <20261116105544.669029-2-vinicius.eduardo.pedrosa@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261116105544.669029-2-vinicius.eduardo.pedrosa@gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 16, 2026 at 07:55:43AM -0300, Vinicius Pedrosa wrote:
> The Allwinner A733 USB 2.0 PHY uses the same configuration as the D1,
> so add its compatible with the D1 fallback. The A733-specific
> compatible lets the driver clear SIDDQ before releasing the PHY reset,
> without changing the PHY configuration.
> 
> Signed-off-by: Vinicius Pedrosa <vinicius.eduardo.pedrosa@gmail.com>
> ---
>  .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml    | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
