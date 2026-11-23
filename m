Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118CC606A321
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 18:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ffaw4nyl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BtICSjZC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Q5siY/3Ljh+4Dxy+95JqiVEbpA8M3fpaWddZ0FwvSsw=; b=Ffaw4nyl2A2ldtvwRdO0Qu6YP3
	3qWu7/gukzvOFhRw1p/aq/tSCeYRVPiZS+VpHMwl39Gx1A+CuSWxGQjRslLl1S9MRVzwXQCNB+HrA
	JbV2Aanf0QQQzONysqjcLarSFG5WNfUrjUF2f83qFy0xO9QDutDMvDNNv98Tce0QnTfSERU3jg2CZ
	5YHb75HVOQUUkxIU/XwTyok4RWegnPd0Ri+hCUSVhEjct7lW1qXB358fQHhi2jz38BmLPZcwtz/eK
	XjlHoUZ2aKXMMBWft3AOZd1A95SBcipnzQ2Tq1xZeIRXVqzZ7ICrKjHUnmQv+KpYmjUP5cYMYvKd0
	nXGvmKVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVYud-00000004Vni-2fdU;
	Mon, 23 Nov 2026 18:37:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVYub-00000004VnM-2ivN
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 18:37:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4CE8B6243E;
	Mon, 23 Nov 2026 18:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C9E81F000C0;
	Mon, 23 Nov 2026 18:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795459027;
	bh=looxWG/+q5/Vw/t7DxJr6OInAYdJMZv4YPrI/xd5DsM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BtICSjZCnUxpVNbhjaiGsFc6azflAvQIYz3MxIpoCEKPJIQuMK2PkO7nnGRDAUJIi
	 wSLPa8xGB5STGau4MD3W95LoeHR0WnM/vl0L7nRvR2NRqEx82KQpOZfYXDWzZHreAO
	 vOFwO+6XRjXF8KE7M4flLAezMX4l8SW6dRCfEEpVYd4BX5Lx6t9NOkBXXcNQcZgHVM
	 1485RTb/IL/rccnVtG457EM7rbHwHH1WDzp8fqJB7MnxzFo6h3GOsrDYgnkDB9kThA
	 HV0uX/uGsQiQj/0FqprwH2l2mXf4YdQB9GdueUqygFczRkbO8KPToYLHBDjZAS2sSB
	 cPQPO51xHVZxA==
Date: Mon, 23 Nov 2026 18:37:02 +0000
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build failure in the final build
Message-ID: <b7fda918-8355-46da-b7f4-40e1a104279b@sirena.org.uk>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
 <c631c19d-4fcc-4881-a6ec-9dad24419fe4@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <c631c19d-4fcc-4881-a6ec-9dad24419fe4@kernel.org>
X-Cookie: Brain off-line, please wait.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6088780184579190404=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============6088780184579190404==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lnXm83msk9DjZBfg"
Content-Disposition: inline


--lnXm83msk9DjZBfg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 23, 2026 at 07:29:57PM +0100, Krzysztof Kozlowski wrote:
> On 23/11/2026 18:45, Mark Brown wrote:

> > I did not specifically identify the commit that triggered this, it will
> > be some include file reorganisation which causes PHY_TYPE_PCIE from the
> > DT headers to become visible to the driver, clearly there is a
> > namespacing issue going on here.  I have ignored this for today.

> Commit b28eecc89399e5371483f03fecded33a26a8e655 was not really built and
> exposed all drivers to DT bindings headers. Referencing other headers,
> including bindings, from kernel-wide headers is another suboptimal
> choice here.

b28eecc89399e (include: linux: phy: Add phy attribute "type" and associated helpers)

> Greg, that's commit in your tree, how about dropping
> b28eecc89399e5371483f03fecded33a26a8e655? Authors probably built only
> defconfig and thought they are done...

The PHY driver is bool and depends on ARCH_QCOM too which doesn't help,
people would need to do a specifically arm/arm64 all*config to hit
issues.

--lnXm83msk9DjZBfg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmsEh80ACgkQJNaLcl1U
h9Dl2gf9FCt7MFuVWqJ2QuA0uGRmg4tYheJXab2Tfeq/ssU9WbF9GWal1gKWxWIf
8oPxsX90GwEkJkPRQpJ6UjmPkHH8rbv5WjCNj4lJJjohObVTgiwoqdhsyHLgRe5v
qd3OfnJef1m9ZMMqPgSgwfzOCmsDPdDzOIirX7TLrJqfM7Xem4dcAJfS1yJcm0Xd
IR5pH9o1DyTyAM/vOa/lGT7H1kbm/wVXq1AtwwPyfyx/WwGC3DXiOfXpoPn4POss
tvr09T8051n/ZJzlHtFZ/rwjrTlFslhAGfDI532M1GUk0MI1Cjay5JB591LbnwwO
Y0PVIelL30OBocbwkmUJC83Tn3U8NA==
=c+yn
-----END PGP SIGNATURE-----

--lnXm83msk9DjZBfg--


--===============6088780184579190404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6088780184579190404==--

