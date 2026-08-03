Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C15AC55179
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 11:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojAfgs2OjChFQzPxljxZcyqDcR2nevIn3xmWPrakvlg=; b=TxyJ3c5kQcs5Vg
	CWTPTbbg7da5bt24RJ60XWfcknKoCcyDfn4bMp8zt4ADr/cwRRqgqJqEjMuJ9ln0O1wFekPuxt6th
	LgXqLdz370GaSVWRdmueKrd+yQmhb98B1GUSz/F6EPaYJY+QHdktJH+Y8xBDirrCFSMJ4jIplvPYH
	1lr1ydlmbU9lWfLdkKdBPp3qVgvqeUya5D8GTanL7+zOE1mimJkoE48uYTU7U1tzM5078eRTA1WQZ
	C1PSwgD3zxlDog956mKJp8ltMOL/GcSs+fQsb4Pn9wqXIQUO0WRRgnDntPOpTNK+fSV4yCD9XUPDH
	Ofwo/cv/QaqJPxCV7A2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqqfY-0000000Gvlj-3Ig9;
	Mon, 03 Aug 2026 11:17:20 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqqfV-0000000GvlG-1ldC;
	Mon, 03 Aug 2026 11:17:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1785755833; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=N6ywSwxLEFb9gG8oYttpQkVhScP+WvoU/6wJZ3gWbc+DXC20neefgnMbzCQW8brUjrXkB8iNGwYfJcSm1l6NmkbPKinyFVFAiM5JDw2D6C83GBGSZ+a6yIFWNcSVIqHPoCsKd16evyYoLO1m0/V0TLewUu/xE5gI7mO/CX0Marc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1785755833; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NuRyFBwN1SC24uRuk/3QyHtck+ihNVdASdTlKyM/F1U=; 
	b=oIn67671C5ZXQQdsJ3QoxBw4H1P2QyluVcIOuIDTe8485DMhxQBgt0d5y+F82eEpoxBoGuPEgYrpo1hwToBHgErN8j7yEq4S/zTLUBDtsG1dTAY9mfJBD5PDl0vEf9caTB06FYsSukNZzWnh99PfinDAX6q1YajfgyXwghJWtRA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1785755833;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=NuRyFBwN1SC24uRuk/3QyHtck+ihNVdASdTlKyM/F1U=;
	b=fECO9WpQVTjWD/nDF1WL9T/MlLRiA+KHJyFV5E4f90l3hlfDNYrqkYqu4x0v3NkM
	u6AHZRTycWtHTtWJ0pt/F5wgDp27Qt/vxRMhu2eSmj/ZpZkmc+j8h/MI22i6Sd4GG6x
	IXH4QojZEtbaolLZVVwdHAcXaCgqd78daBEYnzJs=
Received: by mx.zohomail.com with SMTPS id 1785755829967932.0627661158444;
	Mon, 3 Aug 2026 04:17:09 -0700 (PDT)
Message-ID: <82da3622-9c3a-454c-87bc-fb4ec7adb68d@collabora.com>
Date: Mon, 3 Aug 2026 13:17:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 support per-direction phys
To: jason98166@gmail.com, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_041717_492148_70A56FA1 
X-CRM114-Status: GOOD (  24.71  )
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

Hi Jason,

Thanks for your patches!

On 7/26/26 16:55, Jason Yang via B4 Relay wrote:
> From: Jason Yang <jason98166@gmail.com>
> 
> The Samsung MIPI D-/C-PHY block on RK3588 drives a MIPI DSI transmitter
> and, on the same PHY, can receive a MIPI CSI camera. Describing both as
> independent consumers of one PHY requires the direction to be expressed
> in the devicetree.
> 
> Allow "#phy-cells" to be 1 or 2. The existing single-cell form still
> selects the PHY type and refers to the transmitter, so shipped DSI
> device trees stay valid; bumping the cell count unconditionally would
> invalidate them. A second cell adds the direction, letting a DSI (TX)
> and a CSI (RX) reference the same PHY node as separate consumers.
> 
> Add include/dt-bindings/phy/rockchip,rk3588-mipi-dcphy.h for the
> RK_DCPHY_DIR_TX and RK_DCPHY_DIR_RX direction constants.
> 
> Signed-off-by: Jason Yang <jason98166@gmail.com>
> Assisted-by: Claude:claude-opus-4-8
> ---
>  .../bindings/phy/rockchip,rk3588-mipi-dcphy.yaml   | 22 ++++++++++++++++------
>  .../dt-bindings/phy/rockchip,rk3588-mipi-dcphy.h   | 13 +++++++++++++
>  2 files changed, 29 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> index c8ff5ba22a86..68a43db9c669 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> @@ -20,12 +20,22 @@ properties:
>      maxItems: 1
>  
>    "#phy-cells":
> -    const: 1
> +    enum: [1, 2]
>      description: |
> -      Argument is mode to operate in. Supported modes are:
> -        - PHY_TYPE_DPHY
> -        - PHY_TYPE_CPHY
> -      See include/dt-bindings/phy/phy.h for constants.
> +      A single cell selects the PHY type and always refers to the
> +      transmitter (DSI) direction. It is kept for backwards compatibility
> +      with existing device trees:
> +        - <PHY_TYPE_DPHY>
> +        - <PHY_TYPE_CPHY>
> +
> +      Two cells select the PHY type and the direction, so that the
> +      transmitter (DSI) and the receiver (CSI) can be described as
> +      independent consumers of the same PHY:
> +        - <PHY_TYPE_DPHY RK_DCPHY_DIR_TX>
> +        - <PHY_TYPE_DPHY RK_DCPHY_DIR_RX>

How is that Rockchip specific? As you state above this is either MIPI
CSI or MIPI DSI, two perfectly standard protocols.

@all Would it be reasonable to introduce PHY_TYPE_CSI and PHY_TYPE_DSI?

The rest of the patch LGTM.

Best regards,
Michael

> +
> +      See include/dt-bindings/phy/phy.h and
> +      include/dt-bindings/phy/rockchip,rk3588-mipi-dcphy.h for constants.
>  
>    clocks:
>      maxItems: 2
> @@ -82,6 +92,6 @@ examples:
>                   <&cru SRST_S_MIPI_DCPHY0>;
>          reset-names = "m_phy", "apb", "grf", "s_phy";
>          rockchip,grf = <&mipidcphy0_grf>;
> -        #phy-cells = <1>;
> +        #phy-cells = <2>;
>        };
>      };
> diff --git a/include/dt-bindings/phy/rockchip,rk3588-mipi-dcphy.h b/include/dt-bindings/phy/rockchip,rk3588-mipi-dcphy.h
> new file mode 100644
> index 000000000000..5029838fa275
> --- /dev/null
> +++ b/include/dt-bindings/phy/rockchip,rk3588-mipi-dcphy.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2026 Jason Yang <jason98166@gmail.com>
> + */
> +
> +#ifndef _DT_BINDINGS_PHY_ROCKCHIP_RK3588_MIPI_DCPHY_H
> +#define _DT_BINDINGS_PHY_ROCKCHIP_RK3588_MIPI_DCPHY_H
> +
> +/* Direction of a Rockchip Samsung MIPI D-/C-PHY combo block */
> +#define RK_DCPHY_DIR_TX		0
> +#define RK_DCPHY_DIR_RX		1
> +
> +#endif /* _DT_BINDINGS_PHY_ROCKCHIP_RK3588_MIPI_DCPHY_H */
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
