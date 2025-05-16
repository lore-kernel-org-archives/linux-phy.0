Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44D04C5475C
	for <linux-phy@archiver.kernel.org>; Fri, 16 May 2025 15:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=872MctEAFRVQM3E/YWt46A68GcoJrAh/s8BLrbIyFrQ=; b=36bQUIAtuwOMKo3UF6a57eWMin
	CcVg5nWLX+j44wU7D8BdIzBARfqGwNec14n+cH08nhHo+hDG9eGP3IIZ+Hn/f9EYJkxfNsee/3QN8
	hzZMrv8bzkdSwTsM0lEPnOYXGvgm71bexRQqbe5G7FuUlFc/0A25azdBNHT9Lx3hCUgylpArn40Um
	eZeX715LfDUzVKKB5WgTTSDIxnz+W+KUyE8IpKzBkNBBTCukKLNCGlX2dpt8NkffCNPm7cAalAqYW
	yC3CtiY1vZgarms98t4YDNPArHf/9sBUwYgrjIicUaudgf46ZpbxmMkJC8S4fgBVq1ZohQLAUM5uF
	AZL5fsXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFxQP-00000003vUd-1M9W;
	Fri, 16 May 2025 15:56:41 +0000
Received: from out-172.mta1.migadu.com ([2001:41d0:203:375::ac])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFx7u-00000003sOP-0XGk
	for linux-phy@lists.infradead.org;
	Fri, 16 May 2025 15:37:35 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1747409781;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/xLpzXLDxZFznf7ZK/2dQevdcoaxfl4Bbl5Mnla1OJ8=;
	b=Ugkppw6RmCnoJd2DKDWZzPVEZEjDn/9hCK4qnI0TpOLPLUuvfQNCHHUdOvuh6kFs4vv+t9
	Ves3EJ0SVqZLKsCS6kMDn1YDUZN7zQKNUk1wDbh6tHYmAwsZfdfUNXG3Hr48coYp3Vghq2
	GvbVYhA6VrZb88xTK9AMA8hygyIXfgu7SCZn7JgrQTHISZ4CztzgUEBZEfv5MXLAoik5yG
	OYYkvMfl/avknVDq7qSom2skyBUSW64yMxYmANF54aZsX99Kl4KDcKzz7i7oTzyY1wfhdT
	BKdP3RqlXn77sPVIeukYM9dKk+Oh3Tf4LbsjHfogqvf38DcbjZs1PIxn3o5Lvw==
Date: Fri, 16 May 2025 17:36:03 +0200
Message-Id: <D9XP2BH2CU02.1R9E1GSXQD9JB@cknow.org>
Cc: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output
 50.25MHz error
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Algea Cao" <algea.cao@rock-chips.com>, <vkoul@kernel.org>,
 <kishon@kernel.org>, <heiko@sntech.de>, <cristian.ciocaltea@collabora.com>,
 <andy.yan@rock-chips.com>
References: <20250427095124.3354439-1-algea.cao@rock-chips.com>
In-Reply-To: <20250427095124.3354439-1-algea.cao@rock-chips.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_083734_298126_0545C7A2 
X-CRM114-Status: GOOD (  16.25  )
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
Content-Type: multipart/mixed; boundary="===============8385898844280530846=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============8385898844280530846==
Content-Type: multipart/signed;
 boundary=e3f6915d507f3921306840e72f19538d4bf9137df94a047009cab4a1be07;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--e3f6915d507f3921306840e72f19538d4bf9137df94a047009cab4a1be07
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Sun Apr 27, 2025 at 11:51 AM CEST, Algea Cao wrote:
> When using HDMI PLL frequency division coefficient at 50.25MHz
> that is calculated by rk_hdptx_phy_clk_pll_calc(), it fails to
> get PHY LANE lock. Although the calculated values are within the
> allowable range of PHY PLL configuration.
>
> In order to fix the PHY LANE lock error and provide the expected
> 50.25MHz output, manually compute the required PHY PLL frequency
> division coefficient and add it to ropll_tmds_cfg configuration
> table.
>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/=
phy/rockchip/phy-rockchip-samsung-hdptx.c
> index fe7c05748356..77236f012a1f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -476,6 +476,8 @@ static const struct ropll_config ropll_tmds_cfg[] =3D=
 {
>  	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
>  	{ 650000, 162, 162, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 54, 0, 16, 4, 1,
>  	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
> +	{ 502500, 84, 84, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 11, 1, 4, 5,
> +	  4, 11, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
>  	{ 337500, 0x70, 0x70, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 0x2, 0, 0x01, 5,
>  	  1, 1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
>  	{ 400000, 100, 100, 1, 1, 11, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,

I found this patch in the 'fixes' branch in linux-phy:
https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/?h=
=3Dfixes&id=3Df9475055b11c0c70979bd1667a76b2ebae638eb7

In the 'next' branch in linux-phy, I found this commit:
0edf9d2bb9b4 ("phy: rockchip: samsung-hdptx: Avoid Hz<->hHz unit conversion=
 overhead")
https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/?h=
=3Dnext&id=3D0edf9d2bb9b4ba7566dfdc7605883e04575129d9

Where the values in ropll_tmds_cfg are converted from hHz to Hz and the
data type changes from u32 to unsigned long long.
But AFAICT it does NOT convert this '502500' value, which IIUC means
most values are in Hz, while this one is in hHz.

Am I missing something or should this new value also be converted?

Cheers,
  Diederik

--e3f6915d507f3921306840e72f19538d4bf9137df94a047009cab4a1be07
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaCdbbgAKCRDXblvOeH7b
bpKdAP9nbGhd2ZklAuFhWkPyfq1E751VrBYpaG2s6vej3MuJ/AEA+2ctn4xQ8Sql
3eLb23byWcZ+57mBEnn1lCzKXoFTrAg=
=A/lr
-----END PGP SIGNATURE-----

--e3f6915d507f3921306840e72f19538d4bf9137df94a047009cab4a1be07--


--===============8385898844280530846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8385898844280530846==--

