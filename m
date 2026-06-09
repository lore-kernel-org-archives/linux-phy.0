Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C81BFCD8CB2
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 16:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ZhFY/KnO/17cjYke+9gjlxJuYQO8kLOSzhfEI5veSs=; b=QcRJ+Mb0L6yop4vXeyfpTQRmav
	q7mbpkhB/Y+7dtB/N6G/WdDL/YzKLbe+XQcs3xp2CczmhrqaeA0BvHiE6Ut22HWdyaGK0fceswfDA
	opFcCPMVkP0W1n3roFpJAb6uVouK0uzwR7rbMmel6AvyfS9YWpjK7oYt0P7vShi8VZCLBC/SVamcq
	oaecE9H5NL7wdQk7rpqio96+epnFDvmAIluAwn9wgFQPXQMTJKq3FQIDxnTu8G58oSIymXzGbtoMA
	MKDpJctKFU+Xx7iXnJxAAGCuzGY9RGtez6f1We4VYRAkI721M6TZ53P9cec3+GYPOlrWCaxlO+V7s
	IhBt+4yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWzHW-000000062Qd-02fw;
	Tue, 09 Jun 2026 16:26:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWzHT-000000062QN-17k2
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 16:26:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5B6B66020B;
	Tue,  9 Jun 2026 16:26:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8BB21F00893;
	Tue,  9 Jun 2026 16:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781022382;
	bh=Ol5XbJ8Zll0CGaz5YdwTchaIYuSN27ZB4cVvs2GbZxo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WervNruMOhp8kWFLgb+KZRoO0/uzjImYY7uLRhngsSKWnyRznBCOVFLVNB3GXFJNR
	 upDnTL/mOG0Thq3kcX7SmgvBkzorqL6+4roigtYhGp8+MH1CzIq+05RjFwqi30BQrk
	 m1QM7kPmWg41gIqzL7lBtNEMXanb5Awc6hF4HbPFNUTlZmMoT2+/UwyXTyDd4zcuZI
	 O474/6SjTMn2/5o3sRs4wtNXSCVN/meq2rza0lI0tTEL6PsNyVdxFt6FbelqqsRxHQ
	 7PMihrdTXkuzk8GIt3WWoP3NtR0KIfywGjlYZNFd8pvw5pa2rmBkGA74XLtCN1Tpx/
	 F0IZ+mMtdawLQ==
Date: Tue, 9 Jun 2026 17:26:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v4 phy-next 14/16] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <20260609-panda-breeding-c34f8c9224bd@spud>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
 <20260608221710.1572971-15-vladimir.oltean@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20260608221710.1572971-15-vladimir.oltean@nxp.com>
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
Content-Type: multipart/mixed; boundary="===============8200200462356276171=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8200200462356276171==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m8BBJA6NFrMDRSF/"
Content-Disposition: inline


--m8BBJA6NFrMDRSF/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 09, 2026 at 01:17:08AM +0300, Vladimir Oltean wrote:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,ls1046a-serdes1
> +              - fsl,ls1046a-serdes2
> +    then:

> +      properties:
> +        big-endian: true

This should have stayed at the top-level FWIW, and here you would do
then:
  required:
    - big-endian
else:
  properties:
    big-endian: false

> +      required:
> +        - big-endian

--m8BBJA6NFrMDRSF/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaig+qQAKCRB4tDGHoIJi
0o7DAP4yScVIPXugWhiqjJ8kFpHIXCbphg8hp58c3+sEWfy1gAEAqQi4Tnoc6AaT
0+w9WaImVLO9zW26zWwAI8v4tc9tvAg=
=R2ta
-----END PGP SIGNATURE-----

--m8BBJA6NFrMDRSF/--


--===============8200200462356276171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8200200462356276171==--

