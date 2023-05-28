Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7706C7EE2C
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YAgHdyfTQWrty2dTmyneCxGU/H1JrjntDkq+h25Fe1M=; b=4nA32+2UcJayJb1+kQ7enGd6I+
	5I5iZ5qFabIkPYPe9GN15mvPtSCHwN6SMu6frnIBUukyMhIDK9rR++VZsGsw3s3WvM+yGPUjqRutL
	7NkFyTt51vvTIElAmXaOgsugETe/tG/ndEPg/Cvb4Vsf4CtXD71XyuOkaiIotBQ5rNizgIiXQC+s3
	pFnIqShfuVbgxxTCZoIWIlvGHd5GxNO16e0wBdXoDavDbEjEWBn513+swXMxQnpKV6ZwnVw+31xIi
	6PncKtlh8Xck5YQReJndmIse/FBOySDCYwUJpn4ePyp436jSfJzXi94GZU19wM8CJxm/5Gsuz9geH
	K5sHZTjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3C82-007Dp9-1v;
	Sun, 28 May 2023 08:51:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3C7z-007Do4-1x;
	Sun, 28 May 2023 08:51:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E8CAC611BF;
	Sun, 28 May 2023 08:51:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 189B7C433D2;
	Sun, 28 May 2023 08:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685263910;
	bh=+JJGmDILeZCdzp5xrsMpB3VNksO9zZon8ug9gJyhAAU=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=PA94TnAAXDGGMXlPqNMeD/CjU0PyUqwg3PG458NWTbMbVD4pH31TeQDAvIVC3a67U
	 ganAoHHwMRFENrVKAXbEnKc49mco8qhG83srX10LYuXCTImHCz3vtAi+/KPNxy/ChK
	 g4qiQPTIlmxVykq8w3av3CSwkaz6JO7y5GCcewk8hJuDw4+VlkIf29vVVu7k1FdE9W
	 HxPbna0XjdHVpyzjyBq1JPfEP15mG1I+4JwbUV25C3xYOWy+R4mKll5G75FfJcVeVl
	 F1tQXHXjkLseepT0NwuLZf8gV66OFSsdnjkbFo10vrL2b6rHEHgAues3JPiySf4yQY
	 LsoenmYaGh/PQ==
Date: Sun, 28 May 2023 09:51:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
	soc@kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Message-ID: <20230528-decode-creasing-f5b3996163e5@spud>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230528001010.47868-2-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_015151_685279_128FBABF 
X-CRM114-Status: GOOD (  15.73  )
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
Content-Type: multipart/mixed; boundary="===============1226398316114932598=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1226398316114932598==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="CasUnVJJofa3Njq7"
Content-Disposition: inline


--CasUnVJJofa3Njq7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 27, 2023 at 08:10:06PM -0400, Rudraksha Gupta wrote:
> Add a compatible for Samsung Galaxy Express SGH-I437.
>=20
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentat=
ion/devicetree/bindings/arm/qcom.yaml
> index d9dd25695c3d..133d69b2b73d 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -191,6 +191,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,msm8960-cdp
> +              - samsung,expressatt

Where did the "att" come from in the compatible. Is this some carrier
specific model of the phone?

Cheers,
Conor.

--CasUnVJJofa3Njq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHMWIAAKCRB4tDGHoIJi
0lY5AQDQEJQGBbC+hv3Zo3Aaw95yEgTDYzpNy//WY0pvFWlk6AD/cynxwXs8o1CA
aCdYIatc6UhTzLJRbwlqUyiL9wI9Lgw=
=7giL
-----END PGP SIGNATURE-----

--CasUnVJJofa3Njq7--


--===============1226398316114932598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1226398316114932598==--

