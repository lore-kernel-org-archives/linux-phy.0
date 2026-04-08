Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8396FD5F8C
	for <linux-phy@archiver.kernel.org>; Wed,  8 Apr 2026 07:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHJ4ejsbnmNfl0ANWEmkPANbrJnkJqonRZuOto2KmEo=; b=S+vk37+2mR9laC
	HQiO+OonKUhLoeOaiSE/kx4KPi/m2w3A6qHr+gSGXvCCsttRX+fyEbwmfqqhK7ivZ0xRVYSRyKByx
	aXkiGcG6iD1d/RIycnFVykp56GBlF6TOwe11k6/JPqO1WOwdJ70QVVPW2FzBRg8aHVBnGc0dQ6xVK
	6OvD/TIPVPBFy/wjnLyVk7EAAgqyi0Ppm3cDOq0qix/mFGZtpfN2l9l9ZOeoQ8keC7fFUGptPbsCz
	GeLO3plKDSP2s4lgMZ2fG+okNeDOiSZ/1G9KPi0TfQsdWMyfFqXur/RuA1qMQTZqHZDzTupQVfI+r
	Wrb5IGbDSjRKBKuWqMoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAN0B-00000008OPS-1PgM;
	Wed, 08 Apr 2026 07:07:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAN09-00000008OO4-03gz;
	Wed, 08 Apr 2026 07:07:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5E5AC438CC;
	Wed,  8 Apr 2026 07:07:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 593A0C19424;
	Wed,  8 Apr 2026 07:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775632020;
	bh=VAqtM596fTkblqBx3Tz9ML/ae1nqwvaQNrNp6yDtM8c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f7WioZITLb7TUZbaCmvNgfZSxzDFscADhCwHweiyBI0mPDleF+9+FkGbAzTd0+ofx
	 0+8wBQvAqIDQaMiWAgnaHBz9uq7NBPBbCXloOBIeMILNX3UQc63pe4dYt2v40c7caX
	 gk7JYjJuubcWlaxnz5o6FMNS2bWRaeA5qgGPjedDbJy+n5JcsUqtqAyx/Aoy8IckCk
	 xi7iqEFGH1z7mCpkYS7NXtcv2SKVe8+463vgmf25N44cd18QWCqkkkiHZtx01popOi
	 0oNvwcywv0QZP1TLrqa85k30ofyobzeFQE4VUyMwHBTSsqTxqBdywv9sCafepZDzf9
	 /Hb0h7ngh2czQ==
Date: Wed, 8 Apr 2026 09:06:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH v4 2/5] dt-bindings: phy: ti: phy-gmii-sel: Add
 ti,j722s-phy-gmii-sel compatible
Message-ID: <20260408-umber-boa-of-expression-09a29c@quoll>
References: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
 <b67c8b0bc9cc918667e9329d79f617d033d025d5.1775559102.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b67c8b0bc9cc918667e9329d79f617d033d025d5.1775559102.git.nora.schiffer@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_000701_066482_399D8E2A 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

On Tue, Apr 07, 2026 at 01:42:34PM +0200, Nora Schiffer wrote:
> The J722S gmii-sel is mostly identical to the AM64's, but additionally
> supports SGMII. The AM64 compatible ti,am654-phy-gmii-sel is used as a
> fallback.
> 
> Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
> ---
>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 23 +++++++++++--------
>  1 file changed, 14 insertions(+), 9 deletions(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
