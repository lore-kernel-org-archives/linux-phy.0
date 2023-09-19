Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C7FBCD54AB
	for <linux-phy@archiver.kernel.org>; Tue, 19 Sep 2023 08:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SQfY7twL3uKfvQs6fLeCnnDWWZYTCc5SE0ZtMnpQwis=; b=QHWoUtNqIW6hxN9Fgc2JZD/NiU
	TgwkkdU6ZEM/OoVSXgu302NdtLWsp8vhDj6S7HR1AB6Aw11awU40durwtI2dQzMT1nQk7rb9XicZH
	vXQQbWBIsec1IaDg3LdeihjzBZvbcRD2xjiHfnq5vfqzg01Zj1WlbCgL8elrbgZPWnFsUDrdEHG0i
	hK1nUg6WOu8lw/WJkgGKhN/jH57MypxEnu8B9aWR90rxIbHLqiSZGu6jyOfeMRLwdUk7dkiJYuPt9
	wDxLMoqYRpMVxzF+XLkmpV8+bHTVt8HZprR5xjZj+iYoKP/98RagzgNMEQSCfGf3lK17VRkFQUheo
	ZMGAheSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiWPt-00HOS9-0Y;
	Tue, 19 Sep 2023 08:49:09 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiWPq-00HORT-2h
	for linux-phy@lists.infradead.org;
	Tue, 19 Sep 2023 08:49:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 2835CCE1288;
	Tue, 19 Sep 2023 08:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6066C433C8;
	Tue, 19 Sep 2023 08:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695113343;
	bh=ZDqFz515SDyLoYhDtvajPu9nG5pjPzTdqzRnLr3foyc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KURv/cnQGrc7BzW1zes213O+fmTB3ZqS79BAydZ9FKa8aDa5iyGnVFa3eASOC4wvj
	 KTeWIdlqzpxyxmwBI5heVP1qqyrnczsklvOdsjKXc+6zMjOoudzoBUe3wwQaMmB89p
	 nkM3eZScNbsp7yGkTZcR60TNkmVmLjjikO2RF675dAUbM6sjAXy+DF+fS6bHvGn6LE
	 T2TRcKIkxbDOrF756DMP0azWQT9StF80mVlEqpzY2Yqga3C2GWIqUAqAVND4/KXKBj
	 RdTa0NkoDvqNEuAO8QzCLHzIkwUSPzCaiq9cCGuDJPb9bdFPCQL9hExaoHGUrV0ORq
	 rZZsrz3V72lBw==
Date: Tue, 19 Sep 2023 09:48:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V4 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for
 SC7280
Message-ID: <20230919-c2a5521d840f4c238b02b26f@fedora>
References: <20230918205037.25658-1-quic_nitirawa@quicinc.com>
 <20230918205037.25658-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <20230918205037.25658-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_014907_053887_BF1BA992 
X-CRM114-Status: GOOD (  14.31  )
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
Content-Type: multipart/mixed; boundary="===============4445458590269234216=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4445458590269234216==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XTPnFVF3xntyWeLv"
Content-Disposition: inline


--XTPnFVF3xntyWeLv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 19, 2023 at 02:20:36AM +0530, Nitin Rawat wrote:
> Document the QMP UFS PHY compatible for SC7280.
>=20
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-=
phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.=
yaml
> index d981d77e82e4..f3a3296c811c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - qcom,msm8996-qmp-ufs-phy
>        - qcom,msm8998-qmp-ufs-phy
>        - qcom,sa8775p-qmp-ufs-phy
> +      - qcom,sc7280-qmp-ufs-phy
>        - qcom,sc8180x-qmp-ufs-phy
>        - qcom,sc8280xp-qmp-ufs-phy
>        - qcom,sdm845-qmp-ufs-phy
> @@ -85,6 +86,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,sa8775p-qmp-ufs-phy
> +              - qcom,sc7280-qmp-ufs-phy
>                - qcom,sm8450-qmp-ufs-phy
>      then:
>        properties:
> --
> 2.17.1
>=20

--XTPnFVF3xntyWeLv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQlgcwAKCRB4tDGHoIJi
0rumAQDTYAtxyXoMwqyYmON3XROCQC7lq3XVIsz6mQJ5BMEPNwEAyO14FVWmEN9w
zhQlGOkCpm+F2GIng9CSsKfVNMrzJwo=
=rTnQ
-----END PGP SIGNATURE-----

--XTPnFVF3xntyWeLv--


--===============4445458590269234216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4445458590269234216==--

