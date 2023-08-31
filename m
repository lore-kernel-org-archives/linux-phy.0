Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9A9EC83F35
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 15:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WnjK7TyEMoVicnalOESJtbPMJj/DndARxyVOHNbZMxY=; b=EuNd14x/8Ct5Ot1S86sM3pzHHP
	BzxKQ4+TIdhyngYxvDyOlnaROMbLpLivnTUYqPFsBwxV8JdOTEZpOFx+9kOEJPLRJwcFoI9ONlHTF
	ag0hShfajx6Pg3VOFmc5Fce8vGXv2AYp9qwdPJAnzuqK4vFLdTbl1tQ1NgqP8T83ylI6EJlV7+wHe
	DcSupP/Qu4S+PYSoN8x7UMm0epaKYRj8OuXjnmgck4mZegdjmP+lGNSHUulXnQzNI1mFBGnnONVfM
	d5d1u05D+tXjHcvCLbCsdHObOFjvI/jde4aamZ7VaW+Nb9kxsdsswDuygZ5kZy5ytl9QIm65v3Jqk
	9Eh5Y5JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbjte-00FWwC-1I;
	Thu, 31 Aug 2023 15:47:50 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbjtb-00FWvh-1x
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 15:47:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 41ED0B8233C;
	Thu, 31 Aug 2023 15:47:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24ED3C433C7;
	Thu, 31 Aug 2023 15:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693496864;
	bh=5mQXYKt6vGAv9319MthmUhxTFPuM6XRnJS1sdwqwBB0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=byDFihe2+iK0CORw/mKsL0Y2hRd5XulSDVEduYeIv3NpQvpNuVJy9V1V4dNtsD0wO
	 8aGI4E+L5UxtqUFBCqNqNJC0obGY/pJfZKR28ABTMXVNf6QbIroM94O4pz6ZGCjTQy
	 yqldoUbyxJflxoPfBG6OanGcqELTkP2Hawg90PYjd697uiLch/TO/GOCAv3ovcOEb4
	 Gva/o1fd58zHf+SI41K1ogecu1ucbrjd4F+elitaSo0kYqu456RDHO5h6T4GGBwVCo
	 AYcijWddsPSFJ22IGw4/G4rwoFY4YrUGBgJwOCalb2LGT8izwwlnDkyUc0l+r7Ub18
	 GQvWdMqoPMGAg==
Date: Thu, 31 Aug 2023 16:47:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add REFGEN
 regulator
Message-ID: <20230831-asleep-revisable-17e16524f886@spud>
References: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
 <20230830-topic-refgenphy-v1-1-892db196a1c0@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230830-topic-refgenphy-v1-1-892db196a1c0@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_084747_784747_8FF97DCA 
X-CRM114-Status: GOOD (  17.41  )
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
Content-Type: multipart/mixed; boundary="===============7991688959989050963=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7991688959989050963==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0wmHf2n6L8Edbw7d"
Content-Disposition: inline


--0wmHf2n6L8Edbw7d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 30, 2023 at 11:13:51PM +0200, Konrad Dybcio wrote:
> The HSPHY is (or at least can be) one of the users of the reference
> voltage generating regulator. Ensure that dependency is described
> properly.
>=20
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2=
=2Eyaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 0f200e3f97a9..e895b6c4ee49 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -53,6 +53,9 @@ properties:
>      items:
>        - description: PHY core reset
> =20
> +  refgen-supply:
> +    description: phandle to the REFGEN regulator node
> +
>    vdda-pll-supply:
>      description: phandle to the regulator VDD supply node.

My OCD isn't keen on the inconsistent full stop usage but that's a
nitpick of the context, not of the patch itself.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor,

> =20
>=20
> --=20
> 2.42.0
>=20

--0wmHf2n6L8Edbw7d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZPC2GwAKCRB4tDGHoIJi
0vJaAP9rRzGpps5j5CxJkm7BgsWK5+zfGZT7HUjJD7fwv1yhHwD42Ji6OwShQoNl
BWABX5M3jTUiImtdZq+sIulqU7bKDA==
=s7w1
-----END PGP SIGNATURE-----

--0wmHf2n6L8Edbw7d--


--===============7991688959989050963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7991688959989050963==--

