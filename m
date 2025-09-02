Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E66BCCA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 07:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcupXe1tzwxdz3w7ZBtBoask95MF/rf+Zs//sTgaCmQ=; b=k0XoS1cjyHTcRh
	eyvK4oZ+/yJ2dj0FX/kul7hDoser8DFgW933IqoDCzSDJSLMdj2JBMYvpSAnKlmlJkvCZbKvYTQt0
	G+m03xr7zpWPp6BEzT8dx9qzdr+wkv5anivmcTJcQeJvS9rNnqUXVAkSCdvvnDOHtKcPmXSd4gdjJ
	7gJaw8BzYN8HIMyuhCN7gTbyy6Cki9QgPug7ov993iu8XCkZlNAe/YI+fDjXyZ7WiWECm5l/MAITN
	hpGaBGkN00UJ5EGEwvYP+UsgKHd1FiNTdylP0bCYCTkhf057hAzI43O8wCK9DQ1mHObaCMvMirR/u
	Y6RtGAebIg/P+KVeXOCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utLuf-0000000FsH8-2gl7;
	Tue, 02 Sep 2025 07:58:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utLqI-0000000Fqhs-2lCJ;
	Tue, 02 Sep 2025 07:54:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 671F843DDC;
	Tue,  2 Sep 2025 07:54:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EDD7C4CEF7;
	Tue,  2 Sep 2025 07:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756799654;
	bh=3nc/wkBY2bIc1bkSOsEmjMvNtgdGFa44cp61YSHyt68=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J+9aQw9ulXkFfxweHD0usIU9tUka6m/saOX7lfURvNS73/s+vZUjXpPiwvIF0aPs9
	 kMLLegURfcv+TrpfzoGri1z3EELyoDPZTwLlumruzT4Fg+71EWCh3/KqtjQM+nO+5O
	 WA39kPdE4IiGiY/L1BCXWnJ6etZuDIqW3nZ27GXvyUGBAjbKtYmDWY02Lj+OteWC/+
	 UTmSurQWJz12coiGLFdRx21aeS1Zu61/y8B5sgauy4bW/kXhH6rf5GliYRFALACxP7
	 gWN+LYta+UqsP667bGMEMOzWMGDIofIa1g12JVsHTsdlx2kpD/IO9C6Ps14ZUVIiSC
	 UztVm3kqf4aCA==
Date: Tue, 2 Sep 2025 09:54:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@amarulasolutions.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Collabora Kernel Team <kernel@collabora.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	stable@kernel.org
Subject: Re: [PATCH v3 2/7] dt-bindings: phy: rockchip-inno-csi-dphy: make
 power-domains non-required
Message-ID: <20250902-diligent-satisfied-oxpecker-10ea0e@kuoka>
References: <20250616-rk3588-csi-dphy-v3-0-a5ccd5f1f438@collabora.com>
 <20250616-rk3588-csi-dphy-v3-2-a5ccd5f1f438@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250616-rk3588-csi-dphy-v3-2-a5ccd5f1f438@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_005414_721613_869D3A3D 
X-CRM114-Status: GOOD (  15.06  )
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

On Mon, Sep 01, 2025 at 10:47:43PM +0200, Michael Riesch wrote:
> There are variants of the Rockchip Innosilicon CSI DPHY (e.g., the RK3568
> variant) that are powered on by default as they are part of the ALIVE power
> domain.
> Remove 'power-domains' from the required properties in order to avoid false
> negatives.
> 
> Fixes: 22c8e0a69b7f ("dt-bindings: phy: add compatible for rk356x to rockchip-inno-csi-dphy")
> Cc: stable@kernel.org
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  .../devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml   | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> index 5ac994b3c0aa..9ad72518e6da 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> @@ -51,13 +51,26 @@ properties:
>      description:
>        Some additional phy settings are access through GRF regs.
>  
> +allOf:

Please move it after required: block.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
