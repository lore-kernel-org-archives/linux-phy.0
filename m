Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5669DC001B0
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 17:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iV3/vygG2yTy41dRjR3oyWvkPUi31+OcFx9hkTTpYtg=; b=wKe2yh24umyXYt5OuBXdUQq/5r
	69fOaJXy8f9JV5M5KBjU00Kp0LS4vbhFdHdW2a0wuq1MCC3a/pfjsHGoq2eYVdiLh/1ircS8Ce2CU
	zuGiFuZ/7McT3qq8rI5vnwcqYbru9DqUs0ea0sPjKY3ROjFi/18p/MK17Wi/fOSpzlcTRzV2izY8r
	5Xq9OlXXHCvDV3/5NjniWhipvHQWH3/3r8Ynj3FUIITB1n+anvi09LabbU/GOffZcZ69FKrQpK3WT
	+JA8SW4oGEi5P0AMOzDsRmNCb9VZ2DG/Nn2OXVuSfONniYAA6yUPxhel5eifMtWUl5X2IGcVhEVqH
	/298jw4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNznL-00581j-3B;
	Mon, 24 Jul 2023 17:56:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNznJ-00580S-2b
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 17:56:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 39F446134F;
	Mon, 24 Jul 2023 17:56:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDC6AC433C8;
	Mon, 24 Jul 2023 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690221388;
	bh=EoU2mL1gtuuaXdfBR+KnZtr/Rqd1NuPOSOhdR1Blljk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CTnSuqCqUVG+82HZjo6wV812xv8w1NbG6WQHw95JxygLo14Qz+c4PgKXuG68X/Qx2
	 Pz0d+mPUDuA2NaE+PW/8ROfoT7jbSN3Dhqo1RpGV+ldyvy7BUge/9aw6WFT0BGFdQ1
	 6y91KAtvww1+n3lh/Z4sDEN6Zfeq4U0t5TK91W8b503xeIG+bCD8FvrBNjXYxZwoEc
	 +c4orP4G81N/KUPCuSg7UeRiduSRsBWdOcYEyPWx0RVo/jGsRVY1fJuabeMgOr/B1N
	 4nmlA3Pqzc+BQbM0WB7AUV2Pdk7/9iqZqPSNpetZzxk0y9PmY3nDeojno9Zf5M0eYa
	 6SmniY7KQXFzA==
Date: Mon, 24 Jul 2023 18:56:23 +0100
From: Conor Dooley <conor@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, mparab@cadence.com, rogerq@kernel.org,
	s-vadapalli@ti.com
Subject: Re: [PATCH 4/5] dt-bindings: phy: cadence-torrent: Add a separate
 compatible for TI J7200
Message-ID: <20230724-shampoo-junior-f9e0bb095668@spud>
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-5-sjakhade@cadence.com>
MIME-Version: 1.0
In-Reply-To: <20230724150002.5645-5-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_105629_887618_F723AD8E 
X-CRM114-Status: GOOD (  14.69  )
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
Content-Type: multipart/mixed; boundary="===============4245666556696781219=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4245666556696781219==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bGIJ911Wz6RGVT1e"
Content-Disposition: inline


--bGIJ911Wz6RGVT1e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 24, 2023 at 05:00:01PM +0200, Swapnil Jakhade wrote:
> TI J7200 uses Torrent SD0805 version which is a special version
> derived from SD0801 that has an additional input reference clock.
> Add a separate compatible for TI J7200 platforms.
>=20
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.ya=
ml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> index ddb86ee0cebf..e3a1efd61033 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> @@ -20,6 +20,7 @@ properties:
>    compatible:
>      enum:
>        - cdns,torrent-phy
> +      - ti,j7200-serdes-10g
>        - ti,j721e-serdes-10g

Should the number of clocks not be restricted dynamically based on the
compatible, since only the 7200 requires the extra refclk?


--bGIJ911Wz6RGVT1e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZL67RwAKCRB4tDGHoIJi
0vcMAP4noEcvSdlF5E1v6dNB2dJ9iZHEzf31j10soPGA7MlG9wEA8lZWSCFG+Vcx
cmh3GJkbkHg7ET7cZgc52F/k+9xMGAI=
=nuHG
-----END PGP SIGNATURE-----

--bGIJ911Wz6RGVT1e--


--===============4245666556696781219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4245666556696781219==--

