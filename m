Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E2ACC2D0CD
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 21:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EVIZLX3Dtv+G2ni7evyxcGBkB3LkVz7nx7JSCYLcxIA=; b=QVwDTpEhP9yHlUS9OAPdl/13Sl
	6dFGRTgUaM+xVmGvc0clj0Vyzp9xf0Ul32GSIWLfIwjpjwVhFNomwSy/1o8A1UpJtDJ9inxA1eh87
	fdPN/VPU9WxiPuPB1+DFFdFNLKsEgmGQZEiRML8q3l2yDIOOOi0QH7rUgJLkLSQq0eo7Oa7uEhmzO
	B+XeY94abydXSEnaYT1ZNyGoQ+shJN2u0rE76lG8oqnNDNAy7BIybvPB10n/DGpbcKLbBNl+W1D+R
	UyYG6l5jBKNIDs8MWlvr5NufnC9YxBAyyEJNl8dhQyOdx5FPqrihNKUm2tE7M5Wx6+626zZzFIXMp
	1tPI5wrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH7i9-0000000AUQf-1Acv;
	Mon, 19 May 2025 21:07:49 +0000
Received: from out-176.mta1.migadu.com ([2001:41d0:203:375::b0])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH684-0000000AEMs-3CoH
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 19:26:30 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1747682776;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vuUlAmDRBSytvhFm2XclkPaQ94NRtAHmwr3/FFfPJoQ=;
	b=XrELmC+UJ8mUJBgVn0/L59hyEE6WUEIdLlJxAukaMJa36AQvXRVSfJQ7tyTFe++Iht1kL2
	KOuGzDSmObVEt+rA+0upu16kzyZRNyJN1O4KDKHCmtuv87o3Bngik7yxnLg92wzFTqMLoC
	pZEOnQwapEzKE9JxWoDbgWcjnZsgsajxo0dJzQ3yacnHrmtyJuY0o2dTRNZMZw8tD7edZ5
	KWM160jF+B1MClkc/2Ez3hxEOSAJ8EqJVwfJamyId1B+69gYH+NiVKPLredqA3WZepO/Z6
	D5upKgSejAa6cnobzl2VE08ZgKpF6IMmjemySaZ409OTNiXJ/psP8ppZUbWkQw==
Date: Mon, 19 May 2025 21:26:05 +0200
Message-Id: <DA0DU2P8UWSV.3U07EFFLKBPXQ@cknow.org>
To: "Yao Zi" <ziyao@disroot.org>, "Vinod Koul" <vkoul@kernel.org>, "Kishon
 Vijay Abraham I" <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Frank Wang"
 <frank.wang@rock-chips.com>, "Andy Yan" <andy.yan@rock-chips.com>,
 "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, "Shresth Prasad"
 <shresthprasad7@gmail.com>, "Chukun Pan" <amadeus@jmu.edu.cn>, "Jonas
 Karlman" <jonas@kwiboo.se>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 3/5] phy: rockchip: naneng-combphy: Add SoC prefix to
 register definitions
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250519161612.14261-1-ziyao@disroot.org>
 <20250519161612.14261-4-ziyao@disroot.org>
In-Reply-To: <20250519161612.14261-4-ziyao@disroot.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_122629_090111_C792E5A4 
X-CRM114-Status: GOOD (  16.16  )
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
Content-Type: multipart/mixed; boundary="===============5882946733582306391=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============5882946733582306391==
Content-Type: multipart/signed;
 boundary=8dd83334b58b8d38d65870f3433f5a85df4823174746e18d7e6cf5265eed;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--8dd83334b58b8d38d65870f3433f5a85df4823174746e18d7e6cf5265eed
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon May 19, 2025 at 6:16 PM CEST, Yao Zi wrote:
> All supported variants of naneng-combphy follow a register layout
> similar to the RK3568 variant with some exceptions of SoC-specific
> registers.
>
> Add RK3568 prefix for the common set of registers and the corresponding
> SoC prefix for SoC-specific registers, making usage of definitions clear
> and preparing for future COMBPHY variants with a different register
> layout.
>
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../rockchip/phy-rockchip-naneng-combphy.c    | 560 +++++++++---------
>  1 file changed, 288 insertions(+), 272 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers=
/phy/rockchip/phy-rockchip-naneng-combphy.c
> index ce91fb1d5167..1d1c7723584b 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -21,78 +21,80 @@
>  #define REF_CLOCK_100MHz		(100 * HZ_PER_MHZ)
> =20
>  /* COMBO PHY REG */
> <snip>
> -#define PHYREG33_PLL_KVCO_VALUE_RK3576	4
> +#define RK3568_PHYREG6				0x14
> +#define RK3568_PHYREG6_PLL_DIV_MASK		GENMASK(7, 6)
> +#define RK3568_PHYREG6_PLL_DIV_SHIFT		6
> +#define RK3568_PHYREG6_PLL_DIV_2		1
> +
> +#define RK3568_PHYREG7				0x18
> +#define RK3568_PHYREG7_TX_RTERM_MASK		GENMASK(7, 4)
> +#define RK3568_PHYREG7_TX_RTERM_SHIFT		4
> +#define RK3568_PHYREG7_TX_RTERM_50OHM		8
> +#define RK3568_PHYREG7_RX_RTERM_MASK		GENMASK(3, 0)
> +#define RK3568_PHYREG7_RX_RTERM_SHIFT		0
> +#define RK3568_PHYREG7_RX_RTERM_44OHM		15
> +
> +#define RK3568_PHYREG8				0x1C
> +#define RK3568_PHYREG8_SSC_EN			BIT(4)
> +
> +#define RK3568_PHYREG11				0x28
> +#define RK3568_PHYREG11_SU_TRIM_0_7		0xF0
> +
> +#define RK3568_PHYREG12				0x2C
> +#define RK3568_PHYREG12_PLL_LPF_ADJ_VALUE	4
> +
> +#define RK3568_PHYREG13				0x30
> +#define RK3568_PHYREG13_RESISTER_MASK		GENMASK(5, 4)
> +#define RK3568_PHYREG13_RESISTER_SHIFT		0x4
> +#define RK3568_PHYREG13_RESISTER_HIGH_Z		3
> +#define RK3568_PHYREG13_CKRCV_AMP0		BIT(7)
> +
> +#define RK3568_PHYREG14				0x34
> +#define RK3568_PHYREG14_CKRCV_AMP1		BIT(0)
> +
> +#define RK3568_PHYREG15				0x38
> +#define RK3568_PHYREG15_CTLE_EN			BIT(0)
> +#define RK3568_PHYREG15_SSC_CNT_MASK		GENMASK(7, 6)
> +#define RK3568_PHYREG15_SSC_CNT_SHIFT		6
> +#define RK3568_PHYREG15_SSC_CNT_VALUE		1
> +
> +#define RK3568_PHYREG16				0x3C
> +#define RK3568_PHYREG16_SSC_CNT_VALUE		0x5f
> +
> +#define RK3568_PHYREG18				0x44
> +#define RK3568_PHYREG18_PLL_LOOP		0x32
> +
> +#define RK3568_PHYREG32				0x7C
> +#define RK3568_PHYREG32_SSC_MASK		GENMASK(7, 4)
> +#define RK3568_PHYREG32_SSC_DIR_MASK		GENMASK(5, 4)
> +#define RK3568_PHYREG32_SSC_DIR_SHIFT		4
> +#define RK3568_PHYREG32_SSC_UPWARD		0
> +#define RK3568_PHYREG32_SSC_DOWNWARD		1
> +#define RK3568_PHYREG32_SSC_OFFSET_MASK	GENMASK(7, 6)
> +#define RK3568_PHYREG32_SSC_OFFSET_SHIFT	6
> +#define RK3568_PHYREG32_SSC_OFFSET_500PPM	1
> +
> +#define RK3568_PHYREG33				0x80
> +#define RK3568_PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
> +#define RK3568_PHYREG33_PLL_KVCO_SHIFT		2
> +#define RK3568_PHYREG33_PLL_KVCO_VALUE		2
> +#define RK3576_PHYREG33_PLL_KVCO_VALUE		4
> +
> +/* RK3588 COMBO PHY registers */
> +#define RK3588_PHYREG27				0x6C
> +#define RK3588_PHYREG27_RX_TRIM			0x4C

Would it be better if RK3588_PHYREG* comes after RK3576_PHYREG*?

Cheers,
  Diederik

> +
> +/* RK3576 COMBO PHY registers */
> +#define RK3576_PHYREG10				0x24
> +#define RK3576_PHYREG10_SSC_PCM_MASK		GENMASK(3, 0)
> +#define RK3576_PHYREG10_SSC_PCM_3500PPM		7
> +
> +#define RK3576_PHYREG17				0x40
> +
> +#define RK3576_PHYREG21				0x50
> +#define RK3576_PHYREG21_RX_SQUELCH_VAL		0x0D
> +
> +#define RK3576_PHYREG30				0x74
> =20
>  struct rockchip_combphy_priv;
> <snip>

--8dd83334b58b8d38d65870f3433f5a85df4823174746e18d7e6cf5265eed
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaCuF0QAKCRDXblvOeH7b
bj5XAP4jFaF15+nLInr2xXsIkAJvJHReF7T6Z5VecsqAGvvQnAEAj3LoVwch8QJx
Nav7s88qF+lAQivzYzh8QtxQeo+kKA0=
=HcuL
-----END PGP SIGNATURE-----

--8dd83334b58b8d38d65870f3433f5a85df4823174746e18d7e6cf5265eed--


--===============5882946733582306391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5882946733582306391==--

