Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E7BEF34C62
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 15:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qzQVz888tgnIqohL47br3pY65D9DnsAJeOTX7uquSx8=; b=xGk3za6TCAHZRiJeW9NJBk1Kr4
	r305enUGjqO433jFPjiBq2q41MCJztZWEag5aJgH98PKPomYTNAyveOaUThk3Qjq2GJahsO2SiBPq
	TvKGkwij0TrEXuHW8jU3DKEbr2igCOTD1Gj3Kr1uYhyZDtUgaTZpnddIsjmnd7Xi1BuVd1O5U646d
	W4pOzxAVbax0n7Rdp/zcBKwSUmDxdVfL5uNx2YbydIQOXQTjHq6Zi8eYO3dL79Yz1mMXwLLi3Cym4
	dhz4rumE+z9Bg89F5HQv9IQdLacpa1zgzPjetOQgyJQl5PJqOXr269ZJlme1RJ4xEcKPJMJakW9Tv
	PgRdMIQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCJOd-0000000FzOU-2Gja;
	Mon, 13 Apr 2026 15:40:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCJOb-0000000FzMc-2PD3;
	Mon, 13 Apr 2026 15:40:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 87AF36132F;
	Mon, 13 Apr 2026 15:40:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF8ECC2BCB0;
	Mon, 13 Apr 2026 15:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776094816;
	bh=aHXOlXLBnV7UlZptakys60ytQxlgey+InItFueoAcSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fgoiIU9YXAMhhNLWe3EcROUjkJ92dAczKRrGN8x818+HdXazyrKifc4vPovBPpc2q
	 z4f2t3yT7t3mpN1nJX1oRYGQMEIDoP/kZkbPonOdsTBrdyelYXeKaoQsk+QbGc+J4F
	 BeveV17gfW/AZhLZ7kkdHgqP4sLatl+34CIB6wvKBxKEAlYzUJY/0jGCb3okCh1r0V
	 eF0KFFeDSEjh5Q8EaBi9Gj18dVGr5o7/OT6+3cpAvHa8/OQR+W12GEznPNSZJ8rIrU
	 WGrYdigOz8U1o4UawHqQ4QdzW2AZmtDV2MR2gu815MoH4OM6s95wt4xg+fMhw3LZ/0
	 6aAwj8jtTnCBg==
Date: Mon, 13 Apr 2026 16:40:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 RESEND 1/2] dt-bindings: phy: mediatek,xsphy: add
 property to set disconnect threshold
Message-ID: <20260413-disorder-quote-8d8ee49c97eb@spud>
References: <20260413122836.4848-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20260413122836.4848-1-chunfeng.yun@mediatek.com>
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
Content-Type: multipart/mixed; boundary="===============8945353851793136875=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8945353851793136875==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zOeBsFTfE7j7c4kz"
Content-Disposition: inline


--zOeBsFTfE7j7c4kz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 13, 2026 at 08:28:35PM +0800, Chunfeng Yun wrote:
> Add a property to tune usb2 phy's disconnect threshold.
> And add a compatible for mt8196.
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2: change property name
> ---
>  Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/=
Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> index 0bed847bb4ad..9017a9c93eb9 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> @@ -50,6 +50,7 @@ properties:
>            - mediatek,mt3611-xsphy
>            - mediatek,mt3612-xsphy
>            - mediatek,mt7988-xsphy
> +          - mediatek,mt8196-xsphy
>        - const: mediatek,xsphy
> =20
>    reg:
> @@ -130,6 +131,13 @@ patternProperties:
>          minimum: 1
>          maximum: 7
> =20
> +      mediatek,disconnect-threshold:
> +        description:
> +          The selection of disconnect threshold (U2 phy)

Why is this unitless? What does the threshold represent? Time? Voltage?
Something else?

> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 1
> +        maximum: 15
> +
>        mediatek,efuse-intr:
>          description:
>            The selection of Internal Resistor (U2/U3 phy)
> --=20
> 2.45.2
>=20

--zOeBsFTfE7j7c4kz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCad0OWwAKCRB4tDGHoIJi
0iK6AP4y8shTRP4IN/Atsh6JGHHKZgJ2BIXF2x//7klI+p459QD+PzeOECp3Gcpt
89sWMn/MpBwodYWGyX6lMwuCOCM6MQ8=
=kOMk
-----END PGP SIGNATURE-----

--zOeBsFTfE7j7c4kz--


--===============8945353851793136875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8945353851793136875==--

