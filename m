Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC0C3C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  8 Nov 2023 15:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wQHXqUDruwk1RhsGqCi5Nu8kjSrv1GVfBTLnugYqmpU=; b=fYVKxwXMRrym6g6I3luzoiv8IV
	wNl0pYeP3VMn8mzKFcfLwyjiqz9HDnodcu1kmzPnOoxeGmh476XaUkuuF1c9XoEJVjxi8iscLpWy+
	StjRcjBFKq6KVPbX3M+o6F31bMgq9NInG84DNmMt+3qImdfKu5VxPSTehUFmxxbvaPYu7uN9O0EOW
	GWvPQrnvFNuiavOIMWP8hYojvyfbIaaMXdxpZ/RlVXXGAnGuXyKC7Enkb8d0L3eQoiiuSwApr5Pij
	l2MA8EHscCCmO93oQH2g5JU+CZkWIpvqQeCUB6fYi25XZkTn7PMej7jTNCLkvJde/1j3RorIn5u5W
	LAKVqdSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0kqu-004E1R-1j;
	Wed, 08 Nov 2023 15:52:24 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0kqq-004DzI-26
	for linux-phy@lists.infradead.org;
	Wed, 08 Nov 2023 15:52:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 87CF0CE111D;
	Wed,  8 Nov 2023 15:52:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64294C433C7;
	Wed,  8 Nov 2023 15:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699458737;
	bh=PyJnUw52xaJdt+qorcyNyHLF7M540bcPNwMFJlwFyck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L8TQ6UhZsA/bjyxC4AJbD6rPwTX6WVEchB2F775eU8/kTYNTDGJ+WSg6ZPbwIjMGz
	 aJOc3osG0JITpvpDm9jUybHOvPkXQmIOJoe7FyWLbBcGG5iDcIqjBS9IXYHE4DeNdc
	 zVI/VpBTa8KQj9O6AGibuLqnCIvgtXAU3+wz8Z43sNQUpUZ9hnL51ENJjCuXlrk37q
	 6vAwwgBrMIO0TcU+foI8dQF3+O1CMzklQ7ujYIN6iJVeDykyUgScDkINBQiWY0bOUw
	 wGrIkWA6mwne15L4T12Lwm8+aVLahU7gndkH9zsu8P6H/gN8Ay+NADlS/Iv/MFb4a4
	 U53hiMSHmCmNw==
Date: Wed, 8 Nov 2023 15:52:11 +0000
From: Conor Dooley <conor@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231108-surgical-yelling-7314b68c0289@spud>
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
 <20231107-refclk_always_on-v2-1-de23962fc4b3@quicinc.com>
 <CAA8EJpqvCJsft3Y-m2ZYORBg=6P7EhT-PsCSkuQ4xaxuf3KOwA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA8EJpqvCJsft3Y-m2ZYORBg=6P7EhT-PsCSkuQ4xaxuf3KOwA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_075221_111562_6EF84F01 
X-CRM114-Status: GOOD (  22.32  )
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
Content-Type: multipart/mixed; boundary="===============8750559096953347993=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8750559096953347993==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="I6wTmWiXLXK+QyIQ"
Content-Disposition: inline


--I6wTmWiXLXK+QyIQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 07, 2023 at 03:01:47PM +0200, Dmitry Baryshkov wrote:
> On Tue, 7 Nov 2023 at 14:26, Krishna chaitanya chundru
> <quic_krichai@quicinc.com> wrote:
> >
> > Document qcom,refclk-always-on property which is needed in some platfor=
ms
> > to supply refclk even in PCIe low power states.
> >
> > Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > ---
> >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 7=
 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pc=
ie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-=
phy.yaml
> > index 2c3d6553a7ba..263291447a5b 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.=
yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.=
yaml
> > @@ -93,6 +93,13 @@ properties:
> >    "#phy-cells":
> >      const: 0
> >
> > +  qcom,refclk-always-on:
> > +    type: boolean
> > +    description: If there is some issues in platform with clkreq signal
>=20
> nit: there are some
>=20
> However this still doesn't describe what kind of issues with clkreq
> you observe. I mean, clkreq is just a GPIO pin.
>=20
> > +      propagation to the host and due to that host will not send refcl=
k, which
> > +      results in linkdown in L1.2 or L1.1 exit initiated by EP. This p=
roperty
> > +      if set keeps refclk always on even in Low power states (optional=
).

Dimitry's issues with the property aside, putting "(optional)" in the
description is meaningless - qcom,refclk-always-on isn't listed in the
required properties section, so therefore has to be optional.

Cheers,
Conor.

> > +
> >  required:
> >    - compatible
> >    - reg
> >
> > --
> > 2.42.0
> >
> >
>=20
>=20
> --=20
> With best wishes
> Dmitry

--I6wTmWiXLXK+QyIQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUuuqgAKCRB4tDGHoIJi
0ovuAP9SjB4TsXVP8krtEq82yxlmdE8R8V9/Q2naFBd1Ga9iywD/fwj/ihvpTrtK
dvKdXSys+LPMPUK6nrpMhwYZkqMJTg0=
=kRX+
-----END PGP SIGNATURE-----

--I6wTmWiXLXK+QyIQ--


--===============8750559096953347993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8750559096953347993==--

