Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A45E9C27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 14:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7zp2SIbf5yIFCzVMPtTVULDHQWB83icbeFdqKfswPnA=; b=iWpU69lulksqOEQ9xtRGzHnOvi
	QfrlW8siB6B3b8JVA9jxO4yFsUXiJX4kH8OPqoyF+Ej3HkMk1KgrmzssZdAJKILKD62XAjZN4JMw/
	uCCVMFMhS/KNl52iKhrx4VLoOBQH+YtdbsRqxJPTsObkP7OjYDNP4bEAswK19XHyzfN8I4s3RT0ge
	8ly2Z1tQTxkWcVgHWYwK1GvC4VgX/8FJFGpsca4M19+WdK2VF84oitrWpqo7+9x6qZ7tapwvXgi5v
	Od8ujbJsq7RdSHr8jy7+vmSMqCOr++g5COOmcyeYsi+TPbukbeVMwoEj9egctJ/S+SVmpxq2tWqz1
	qIct7ZQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI7y6-000000032FR-0q05;
	Fri, 14 Jun 2024 14:31:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI7y2-000000032Ez-0wpv
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 14:31:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AC66061F63;
	Fri, 14 Jun 2024 14:31:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D483C2BD10;
	Fri, 14 Jun 2024 14:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718375509;
	bh=AW1z+gl+oeKjTe4GvT99ogDWt4IRrSVZcPLIPpAqsm4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h2/JkoUxtNjUvTfAWxSI7vwU5K8bFxjDMrF63rXl+rCX7vgKzK5yQFnwGri9Duvwf
	 Aij5kmKi+P4MSXS+uxM+7mDEXI71kx2pnp2Oy1vidk13g0UL1sgFst7NVSh5cokfpw
	 U+XhoFk0cqgSDWR/tUikMCUWaTyq0tDhIaQz873BB5QwHKcyOIvSdYS1/qz299GgvY
	 YlaE8+nFV7qHyKjxMSaoQ/dmjmgsnuTbmSYxoFSE64r4LALN9evUZ1x8hsQJWdK+xd
	 Mj5KsKRrlTHCNaQK4LEVyz6JbYWnRwt51DUg71F+K8lGHkJDjPU8j/qsD549jaOelT
	 ARxy0F9O2QHjw==
Date: Fri, 14 Jun 2024 15:31:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
	"linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	"biju.das.au" <biju.das.au@gmail.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v3 3/6] regulator: core: Add helper for allow access to
 enable register
Message-ID: <ZmxUUbpGZiZMlHVE@finisterre.sirena.org.uk>
References: <20240611110402.58104-1-biju.das.jz@bp.renesas.com>
 <20240611110402.58104-4-biju.das.jz@bp.renesas.com>
 <ZmhmWrvyQiCzzeYi@finisterre.sirena.org.uk>
 <TY3PR01MB11346B807820F681E7EEF7A6786C72@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <ZmnDwKUlXCWFJ8W0@finisterre.sirena.org.uk>
 <TY3PR01MB113467AD31470F72C75DBF41986C22@TY3PR01MB11346.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <TY3PR01MB113467AD31470F72C75DBF41986C22@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-Cookie: Your love life will be... interesting.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_073151_406195_0E6B6254 
X-CRM114-Status: GOOD (  13.60  )
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
Content-Type: multipart/mixed; boundary="===============8058544912916459053=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8058544912916459053==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ois24WsttoXepZBR"
Content-Disposition: inline


--Ois24WsttoXepZBR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 14, 2024 at 11:43:39AM +0000, Biju Das wrote:

> To access the hardware register for enabling/disabling the regulator,
> consumers must use regulator_get_exclusive(), as it can't work if there's
> more than one consumer. To enable/disable regulator use::

>        int regulator_hardware_enable(struct regulator *regulator, bool enable);

We should also enforce this.

> OK, will remove the restriction

> -       if (enable) {
> -               if (ops->enable == regulator_enable_regmap)
> -                       ret = ops->enable(rdev);
> -       } else {
> -               if (ops->disable == regulator_disable_regmap)
> -                       ret = rdev->desc->ops->disable(rdev);
> -       }
> +       if (enable)
> +               ret = ops->enable(rdev);
> +       else
> +               ret = ops->disable(rdev);

> Please let me know if anything wrong.

Sure.

--Ois24WsttoXepZBR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZsVFAACgkQJNaLcl1U
h9CpXAf/a6pVjdmFuqfVIs8/VbMeT2v0gancEFoB/8TnUVXKt99DCyJrnPRgI1qL
NPPs2Br6otvvVQFCoDIefCPlD2sex+j0Sp5oweC/5SOCYiqm60A/CyK30Zvt67c2
gfHcE5qxKuI6zHEHuYmaJHBxmyKvvOi54eepDW78+xmbT1+Z+dykZ5PhrKdaPGQC
ylKeHsEspsy8deQ3ohQWXejUQ4oNx8uboXDK0eoffxrRMeAg6l5btX73eZmRvb+m
o2BrhlA6UJUgIxwxx6SEs8fkG/gjBSHATKIZFM1MyDSblwls7BGCNYjnYA3cn//+
WszyzfZG4cIRu1C8eyRRklR9cX1SSg==
=r8RQ
-----END PGP SIGNATURE-----

--Ois24WsttoXepZBR--


--===============8058544912916459053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8058544912916459053==--

