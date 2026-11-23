Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9417606A332
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 17:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=X1kIRxeg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DNok/Xj+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Unsubscribe-Post:List-Owner;
	bh=hcxe8pubpEkv8ow3ae2t7W61Dprnebk2TYxhOWyTBlg=; b=X1kIRxegjETHF+E5jqNbtuWXZR
	hIecGUHjrbFHAkjCd4LjZJZ0xNdO3jpCIy4P3oqSRB0AsTN346k7p7gck5rs7h1LIPSumy6/ezO9M
	gCU39kLxM7Au01VkCC0rI+B/5wGXyZ1w1MvElXRNArR2HdmRjbiYUSTz8ITeFM0zGUbby0v7G0Evn
	XDu6bpP1W5pLSS/WOPEfw4GjUyFIWz/itso3lq2fNBoNm5VIbYC15LU1i6zPQHGpZijsjeMbUbId8
	YkMezFMQXj8A+9Gb/7haax2AyrmlurQaV2SOJiOFF3pibokPuAsSWnZ+J603JdsqAb8A05FKhb9YM
	bF0OmsFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVY6F-00000004PnF-3oeN;
	Mon, 23 Nov 2026 17:45:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVY6E-00000004Plw-3Nay
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 17:45:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 35AA841976;
	Mon, 23 Nov 2026 17:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 357AA1F000E1;
	Mon, 23 Nov 2026 17:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795455906;
	bh=nLNqxhvAVwdAw8dAHf99r/lF3vOgN6havsFWG39HPFs=;
	h=Date:From:To:Cc:Subject;
	b=DNok/Xj+as6Zve1Lal2pZqqRF4jL50kBlQ4/vZkt8zMNeyNRa0F7+6GP3UOdevG2W
	 r7qhs9X/PT2HQ3BtCjGM4HYQ59VNImMso8YxEBe+YhClSSH9UJGRRwkHkeKkhCf5sw
	 7XfHbOVkEU1KOFwKMSkG9KrP5fxijy6iCbE1WmOCIc2VVTDvk5Cmj8mVFNIk+lQQmA
	 03UbM0geD86nZZ6btyT5IVdGpvA8hHSWJ08Q7JSttWhY8Ryz6R1JV4Ko8sAg7A7Mva
	 nm82i2zvGRcpMgUALh6FSc+DHFdTMrhKBTrdyXEBzJ1SdQqvdHUMkl+4I76cql0/rp
	 wAA1o6FrAh8Ew==
Date: Mon, 23 Nov 2026 17:45:01 +0000
From: Mark Brown <broonie@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: linux-next: build failure in the final build
Message-ID: <awR7nSOWkxRm-iP6@sirena.org.uk>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3177825236158878677=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============3177825236158878677==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Vve03y81vknTHsUY"
Content-Disposition: inline


--Vve03y81vknTHsUY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

Today's -next has a build failure in the final build for arm64
allyesconfig:

In file included from /tmp/next/build/include/linux/phy/phy.h:25,
                 from /tmp/next/build/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:15:
/tmp/next/build/include/dt-bindings/phy/phy.h:15:33: error: expected identifier before numeric constant
   15 | #define PHY_TYPE_PCIE           2
      |                                 ^
/tmp/next/build/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:47:9: note: in expansion of macro 'PHY_TYPE_PCIE'
   47 |         PHY_TYPE_PCIE = 1,
      |         ^~~~~~~~~~~~~
/tmp/next/build/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:127:27: error: 'PHY_TYPE_PCIE_GEN2' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
  127 |         .phy_type       = PHY_TYPE_PCIE_GEN2,
      |                           ^~~~~~~~~~~~~~~~~~
      |                           PHY_TYPE_PCIE
/tmp/next/build/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:135:27: error: 'PHY_TYPE_PCIE_GEN3' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
  135 |         .phy_type       = PHY_TYPE_PCIE_GEN3,
      |                           ^~~~~~~~~~~~~~~~~~
      |                           PHY_TYPE_PCIE

I did not specifically identify the commit that triggered this, it will
be some include file reorganisation which causes PHY_TYPE_PCIE from the
DT headers to become visible to the driver, clearly there is a
namespacing issue going on here.  I have ignored this for today.

--Vve03y81vknTHsUY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmsEe5wACgkQJNaLcl1U
h9CHYwf7BluoM2ZZkp7ju7XWqJPpH5doRn8uawa/wjWWNvbQIETwbjA0HP4RcjG0
iylw9YZk4+Zh5da2lV1vCPRKZN86JAU5QQYcs1XYb04KyU3uPOSurh7EBNFVrI+B
N4rt8wnYvqd8IImHy2Zb3O6tXuPk5X5X3t9rynM8XDklrkdFsJQYUjQ6/el9Z5wf
hT5uppcWUDF0H1e+eFnMbK/+1NH3jXl7+9qurBUTyuT11lUqo0g9vxDmAvxuzmbp
ft6Qjki6OnNAex1qH/7eAQvm2X3omAbb+f+9NjhRiHZkeARqfEomWG0JF2/73Vnb
JDKec3bF8uELGhjSzTH1O48hmaTnFw==
=udOF
-----END PGP SIGNATURE-----

--Vve03y81vknTHsUY--


--===============3177825236158878677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3177825236158878677==--

