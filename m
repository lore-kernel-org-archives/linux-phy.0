Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372DDE69188
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YzLJy/n5SIMvkCl5XIJ38eVMP/fa2xJKCJDTvPAJcUA=; b=bOttQ47XI8zvoFy8hGLuyFB1KY
	9HDkfBgJ/S8ioh40sTPNjxX0p6OSsasK3q/+DcBWk09wP0wTnwZWPwl0hCQWJH3vR0egHnZ0gGTTD
	/7emWOYuEkKknyVEaC1GZWMHWiYx1qSNnfpjNTQpNft00v/uyps24Dr3W0EBDryL5FHd9DxS7Rn5b
	Hf/AZzflhCqlGjUnmNOReBFvNoKHJ3+ocRNdL1/5Wm6JItm9knhJNxudPsk8xmMcx6ZBJugSwF2Pu
	eBIvIMiZplCwE5OEus3yJxcLvOU6vwEZ3vcDCEL/TYJdmaMz1MKLm9diqwsEJO5c/sAlR3fEIaGJ6
	8oYzn4Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEYjg-000000039Ak-2TJ9;
	Fri, 22 Nov 2024 18:50:32 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEYii-0000000396C-3kQR;
	Fri, 22 Nov 2024 18:49:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1732301366; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=moKpI0Y1wfyp0zDTN+J7fb0RabdMywL/MPTswotmSA+KTZJOEPvVZBYQ6zlN8apO60/z20bkDuHLQxJubWsP7jRoV4xsV7QNCqg+80jltLdjdDda0kTAIZL3vDMQHPlV2WFnDD2LWuBbRhsVCShsnpHUtN2VdzQEjpbu7m2hVTI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1732301366; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pXXGQ+H4K+o+xkKJh/Eib8vedMAVJhzcT61sVNMDK18=; 
	b=etErkPXOgA/o2PY0rmoNMNz5lETz28KLwWLF5s/Rw1o3luzgxPET4Dgn0jEHziDzE6ttWFJ6o8r3A3xNMwPA8kO3k4Wqc9Y2wGyjfxEo6t0sGz7UYHdKLEB0q5q4o67kD2mOD512rFtdfWGPIPcONMXpEKkZ8+2HtLBPtgVL7Nc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1732301366;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=pXXGQ+H4K+o+xkKJh/Eib8vedMAVJhzcT61sVNMDK18=;
	b=DWMis2ORyFa/Pf0JrjQCTPO8S503ZcLD+FfkCKMKyij0evInMtsSAmy5fdKNNYGL
	iNdrxoVmBcowkrEe4U6TW1J044EnZKsdr4spTFkzL6Co2fTJU7vLCgHY059ZVFpB5mq
	Qmq3JANa/lN+q8A4wTGp9SCU5s62xvQeokqdYkCM=
Received: by mx.zohomail.com with SMTPS id 1732301365255675.6070960311865;
	Fri, 22 Nov 2024 10:49:25 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id BF04A10604B0; Fri, 22 Nov 2024 19:49:20 +0100 (CET)
Date: Fri, 22 Nov 2024 19:49:20 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Heiko Stuebner <heiko.stuebner@cherry.de>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Add Rockchip MIPI CSI/DSI PHY
 schema
Message-ID: <udad4qf3o7kt45nuz6gxsvsmprh4rnyfxfogopmih6ucznizih@7oj2jrnlfonz>
References: <20241113221018.62150-1-heiko@sntech.de>
 <20241113221018.62150-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20241113221018.62150-2-heiko@sntech.de>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/232.230.92
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_104933_017361_40790B97 
X-CRM114-Status: GOOD (  21.72  )
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
Content-Type: multipart/mixed; boundary="===============0560330747138511219=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0560330747138511219==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ziaozgegtmqy67sl"
Content-Disposition: inline


--ziaozgegtmqy67sl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Add Rockchip MIPI CSI/DSI PHY
 schema
MIME-Version: 1.0

Hi,

On Wed, Nov 13, 2024 at 11:10:17PM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>=20
> Add dt-binding schema for the MIPI CSI/DSI PHY found on
> Rockchip RK3588 SoCs.
>=20
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  .../phy/rockchip,rk3588-mipi-dcphy.yaml       | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588=
-mipi-dcphy.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-d=
cphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcph=
y.yaml
> new file mode 100644
> index 000000000000..5ee8d7246fa0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.ya=
ml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,rk3588-mipi-dcphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip MIPI CSI/DSI PHY with Samsung IP block
> +
> +maintainers:
> +  - Guochun Huang <hero.huang@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3576-mipi-dcphy
> +      - rockchip,rk3588-mipi-dcphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0

I would expect an argument to select between D-PHY and C-PHY mode,
so that the binding is ready for it even when the driver does not
yet support it. E.g. something like

  '#phy-cells':
    const: 1
    description: |
      Supported modes are:
        - PHY_TYPE_DPHY
        - PHY_TYPE_CPHY
      See include/dt-bindings/phy/phy.h for constants.

This would match how it works for the naneng Combo PHY to switch
between PCIe/SATA/USB3. Also Mediatek CSI DC-PHY handles it that
way upstream (with just D-PHY being supported). I see that the
driver stack you send upstream expects, that the PHY user (e.g.
the DSI controller) instead manually calls phy_set_mode(phy, <mode>).
To me it seems more sensible to just get this automaically from DT.

Otherwise the whole series LGTM.

Greetings,

-- Sebastian

> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: ref
> +
> +  resets:
> +    maxItems: 4
> +
> +  reset-names:
> +    items:
> +      - const: m_phy
> +      - const: apb
> +      - const: grf
> +      - const: s_phy
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the 'mipi dcphy general register fi=
les'.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> +
> +    soc {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +
> +      phy@feda0000 {
> +        compatible =3D "rockchip,rk3588-mipi-dcphy";
> +        reg =3D <0x0 0xfeda0000 0x0 0x10000>;
> +        clocks =3D <&cru PCLK_MIPI_DCPHY0>,
> +                 <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>;
> +        clock-names =3D "pclk", "ref";
> +        resets =3D <&cru SRST_M_MIPI_DCPHY0>,
> +                 <&cru SRST_P_MIPI_DCPHY0>,
> +                 <&cru SRST_P_MIPI_DCPHY0_GRF>,
> +                 <&cru SRST_S_MIPI_DCPHY0>;
> +        reset-names =3D "m_phy", "apb", "grf", "s_phy";
> +        rockchip,grf =3D <&mipidcphy0_grf>;
> +        #phy-cells =3D <0>;
> +      };
> +    };
> --=20
> 2.45.2
>=20
>=20

--ziaozgegtmqy67sl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdA0iYACgkQ2O7X88g7
+pqCVxAAjfX56csgOp+pRFu/Lzsmgy2PJnA+ahOcXVFpjer1P7y6mePQgwN4QfRt
njnHJ9CdSLqwpOoBH3igShSlZ7Udd1gXzgigk3LsjpLOLqOe66L7Yzq/pS9LDPM0
O6o5sAlvkDCMBwZx+NFzBK3FsVZ8w+yHPFw6pcIqBATAMsT5iC+7L6v1+VKbJ0Hj
Rc9btYfxmUfUPGUvM/fDTEoAxK3b/R6hrrIzbp6mh+IFmU0Jg8pzCxdBbAJvHclP
CTAFeXzNZ7t2mO20zp/ErvhR71e1zKsqVhddQWg5FkEb2hVAh6QqmdYaJmhzDSqN
/7VC0nRX9Ck9Uj/XMAOo+u/QaVSrJp8uSfygtt8xjKac4KSbi8I1K8zUcPBhnESr
LlsbjLKOYiXL9mDOcWcsNRwQCjofWviPUz571uchvhUNnDmZAS5tgD5AmI2Bfpor
bfF63gY1/i+eAghsyIua091anZGpZfpUhghHHz9WP7Kr3ZrhIhe3fww29H0Z0gLa
+pIS0BLCXjlzx/OYEV6JPou2zuFrMHIX4N4XaCx4oAi7S9Fh4c05yt4VljWMB0mr
Kn4FHuM9Hf6z6ZrR70IeCtElmK/gXPXag5olucUIKy/x/cso++EDu05tXX7Rys6e
USpG+9j6rfzZh49dTkgNU2ijnwpovTblFjae10YAMBVNlGturPk=
=D23f
-----END PGP SIGNATURE-----

--ziaozgegtmqy67sl--


--===============0560330747138511219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0560330747138511219==--

