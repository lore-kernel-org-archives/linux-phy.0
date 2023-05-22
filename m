Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7A72C7EE2D
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 19:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PxxX993T0rJteSo3iG/AgD9cEbxnNQRaqt8utkhbSk0=; b=rCcPjQML2hSX+gLOrgGvUG3dX2
	bJQapG1+CDEN4RQqT+j29WsepZQlPVjlQueRNL8Qy2Z8SIDkMzGRNfX93deOg0H9RpJSpBImjAUS9
	/TcaZJ5m68AMh/PnrH1F25K8ZqQ5no/DmF4Gu2Jml8EBJh29xZJbkBiEFoKC6pCKfQVrFIQa1DXv7
	fl/liL2DNkKTC2507L2wrnzPQA/RiI5bkKkwHpgo5GwWNDK/nQfTZF5dfv7ezcaHPfI1/bcOXz4Fs
	gMeRa+52i2Ppc7XRkd8zCr8dk3zfjzVu+5khXd2tvT72sDpKyPOZZ8IRzLXdxitG8ktBKN+l1xjZa
	ul2FxXEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1BHb-007hGd-12;
	Mon, 22 May 2023 19:33:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1BHY-007hFW-32;
	Mon, 22 May 2023 19:33:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7A95362969;
	Mon, 22 May 2023 19:33:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2850AC433D2;
	Mon, 22 May 2023 19:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684784003;
	bh=OVB40/WHQmDIjb/DP6ihCpAXDmmjOaFyfPqOk8udXkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k3vpqGL0sV2TWfVhqCnmyUrnG6I/z5KBssBlelU9CEM7dUbF7w3OGBbgldXa9cdEj
	 9kJrVWQ6y/xb6jzB3Ws+NZFEQICjzMMegmAeDDr3aezcYShiIM/9Ctad04B8cHmK6V
	 x8nPAfiTbnDq1NrPe/1aWO3smf6ZyNSTrVSsa2ClnQuY91+R6pcdgjgFIp91piT+//
	 P39zUi2bLT5UrzjpBjEJIb1+iGk3lUzod10Pc4PvaVG8j4tZML890GkKNwAHx3InP0
	 7e70XHsI8qVZuUxUHXYb71LigYE5qGoen63qu0IgTEsZJ49XwEnPix6mlkxBhDJXvH
	 /6g+Z5MRWmyiQ==
Date: Mon, 22 May 2023 20:33:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/6] dt-bindings: ata: ahci: add RK3588 AHCI controller
Message-ID: <20230522-galore-unchain-12ad8d5a8536@spud>
References: <20230522173423.64691-1-sebastian.reichel@collabora.com>
 <20230522173423.64691-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230522173423.64691-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_123325_064359_AFA0B28F 
X-CRM114-Status: GOOD (  18.18  )
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
Content-Type: multipart/mixed; boundary="===============5627721342486480370=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5627721342486480370==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Kp1Yl3qJOKQBgdGX"
Content-Disposition: inline


--Kp1Yl3qJOKQBgdGX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 22, 2023 at 07:34:19PM +0200, Sebastian Reichel wrote:
> Just like RK3568, the RK3588 has a DWC based AHCI controller.
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
>  Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml  | 6 ++++--
>  2 files changed, 10 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.y=
aml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> index c1457910520b..34c5bf65b02d 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> @@ -31,11 +31,11 @@ properties:
>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx=
/Tx)
>        clock, etc.
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
> =20
>    clock-names:
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>      items:
>        oneOf:
>          - description: Application APB/AHB/AXI BIU clock
> @@ -48,6 +48,10 @@ properties:
>            const: pmalive
>          - description: RxOOB detection clock
>            const: rxoob
> +        - description: PHY Transmit Clock
> +          const: asic
> +        - description: PHY Receive Clock
> +          const: rbc
>          - description: SATA Ports reference clock
>            const: ref

My brain is failing me at the moment, what is the reason for adding
these into the middle of the list, as opposed to tacking them onto the
end? Apologies if this came up on some past version that Rob or
Krzysztof had a look at.

Cheers,
Conor.

--Kp1Yl3qJOKQBgdGX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGvDfgAKCRB4tDGHoIJi
0nVOAQD94ejc8l5+1xjHan4Ua+e+wRMTehHBJS5M56GhMBexdQEA9Hamo6L62AT0
g7YVVh9AtaMJexkFYBlyskG+OZkTrQs=
=fGnh
-----END PGP SIGNATURE-----

--Kp1Yl3qJOKQBgdGX--


--===============5627721342486480370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5627721342486480370==--

