Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA0EBC678D5
	for <linux-phy@archiver.kernel.org>; Sat,  4 Mar 2023 20:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JcuAvq8AmsTFxQWAtYkYpjdoymUpX2R3nUEsyb7+6TE=; b=iN9XffMnFmlTxKeeFSQQC0SdOC
	d1v+bEMwOWQ52D7HGKNF/2nwgDowD8/MN2G4C8xCb8lAcGoxgu+XZMHf900U8s04wpugN2jEwJMVL
	bSyCv28RpJR9LAS7BenMuOPEmZ5AZ5oDYUKgL46yQa2q6jF0Y5mhx+Xzngr3ZuXVDz5oTfIsY8zpl
	zb04JrEcTvhAOe0OAXG/KA4bgTHF0eEjqEA0v9lO2MfHL2fzVteEvb+VFrdPhzRsqEDIVgS22F7qB
	Q+t6eqpuX5mJ5AZWwk7Bx4ITgXOYjunWt7D5Dt7WfKqqsYE3Rdp/CREHbGIxaghTxhk4hklGRWv/S
	GsqmMZiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYYHf-009UkL-Oj; Sat, 04 Mar 2023 20:15:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYYHS-009Uh6-6z; Sat, 04 Mar 2023 20:14:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3D8A960A55;
	Sat,  4 Mar 2023 20:14:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21BEFC433EF;
	Sat,  4 Mar 2023 20:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677960896;
	bh=3r578BL7TwpWHlpQ0on74A4ds7yYrKerlhknBqHE0IQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Of74lGgrQfr/3MT85Mry+dk98AnwqBx/+IKkV8dz7hpunpG/juil6jblXMxLIcXBH
	 otDFXzf26WX1vIQfjtEdOfRcHdWgRJ6boGHh/XsJsH/L1/dtv7Z5jnzlaj2op2B4o4
	 nGMfOtYx0YzF4FQmz+EBu9ckLQPtV3mUYeJDCdB5elK/H55dP2tJpt/pvCT6I8ESZS
	 EYIJw0pgzfvvru+19Oo2drthgeVkF5beApFrnmEAqghgBqsbpzQmm5hoht9HFoxh3N
	 3kN6/VWB+pginmwR+OoqxqA0Q70T/VI0WywY3cn/oA7H6RmGx2NYH+NcaRO0HJUqAa
	 NE+vFF1/bWCDg==
Date: Sat, 4 Mar 2023 20:14:53 +0000
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>, Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-media@vger.kernel.org, netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-gpio@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-riscv@lists.infradead.org, linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: yamllint: Require a space after a comment
 '#'
Message-ID: <ZAOmvQMn+7R9KcVx@sirena.org.uk>
References: <20230303214223.49451-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230303214223.49451-1-robh@kernel.org>
X-Cookie: Single tasking: Just Say No.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230304_121458_316666_0F9F6B6E 
X-CRM114-Status: GOOD (  13.10  )
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
Content-Type: multipart/mixed; boundary="===============5891817355513871194=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5891817355513871194==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DpC9JxmBtx/VM1Dr"
Content-Disposition: inline


--DpC9JxmBtx/VM1Dr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 03, 2023 at 03:42:23PM -0600, Rob Herring wrote:
> Enable yamllint to check the prefered commenting style of requiring a
> space after a comment character '#'. Fix the cases in the tree which
> have a warning with this enabled. Most cases just need a space after the
> '#'. A couple of cases with comments which were not intended to be
> comments are revealed. Those were in ti,sa2ul.yaml, ti,cal.yaml, and
> brcm,bcmgenet.yaml.

Acked-by: Mark Brown <broonie@kernel.org>

--DpC9JxmBtx/VM1Dr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmQDprwACgkQJNaLcl1U
h9AqEQf+Ki9N0115CHG31rvFs9RFMaV3z2FBkTIO1Zs9u9jJ0UFONa8aS8bq8aPQ
gm3UuhyofZ4p+tqg6Y6nKHVWZalcU4N95+sNm/ZzjCvDKR66x0O+uPlCXd8pfREU
kNoKd5CFtP+fjtXf0oEscR6C4Pu/I20EuDWUyrfNii3oFMAuDeVS2wgXadAxOJ6d
fSPFcja3GW9gJ4EE0LacuhUM5ZUtW25HeTc7vmBynRd7tTqjc4FQgPSyt8tvUe0Y
VodxCsoIvcS9vx94nDyo1USMh/HFKAtRlJNuuWj1+kWcrRUfBuJVlSSzZt6o9M+k
6cA73SE3SJ8RJIFe8Bz9r6ULWYSY6A==
=/n6h
-----END PGP SIGNATURE-----

--DpC9JxmBtx/VM1Dr--


--===============5891817355513871194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5891817355513871194==--

