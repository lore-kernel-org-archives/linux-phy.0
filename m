Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 447C4C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 29 Apr 2024 14:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UuGodmHzEDegKEEseqcEoJP/WeMwLSd/gpT40zc844o=; b=XNJ9ltwK0LKSPZaCk6mKdTfDLF
	NYv95PuaopWyGIaRfIz0M633QT5N+vu1jCT3Kq0ne0t8BK4olMin6BnhDCm08kml1qqlZBqXdTxFI
	IGNcZkoca7PB090Yt2PfGMFAg0QONTSvLaHxwfY3SMc1OQokx7iiEJ50/wdM13u5GJGVeF813mxzo
	25rzEOvN8AuA3KhnAm/n/HnauxDtTmMKob4UlTwpyflhGlOpgR7TCv2501rWIqHkRflUXTn5Ghru7
	cVqiGSc2sQPbNcMyGviSE8OFSkuP9L9j9WCWl4Bag5G2+0zDLdGTNobcRCoNfbPd9kNADrDaLNR0g
	PHZ4BlhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1SGH-00000003Asc-41Po;
	Mon, 29 Apr 2024 14:45:45 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1SGE-00000003Apb-1W1k;
	Mon, 29 Apr 2024 14:45:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 60B05CE0C07;
	Mon, 29 Apr 2024 14:45:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0810C4AF1C;
	Mon, 29 Apr 2024 14:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714401939;
	bh=HQFQVk/aUt7EGazaH6NoJ7OsnpPabPfhVzUB2hmzT9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gB8vs2w9acQgZ/W/pBv8sEYf7kYQGoGXQovwX3dDNem++Cui0NbKVh4o/aYcv7XDa
	 P7ImS8mIsQ3AsX9dg1B9pMcdpx0qwB0jRUKGiNfLyPa4LeCLLgpSmsCjGjYEvAGsmD
	 pYnz2FZBhzpjuso7K1IcCl9tXJUwajF12cphURy+GQllvrTlY9WivRNJ4b1+tJMpCA
	 d2Q4cUEZNJi4kPGzqvQksLxhpCK0CDODJPuIOLH8bAh+k8wCGxpy8ZfaXCge2mYRzA
	 6DP/nekSmWlgKjO33JkecU++lLEdoGSUJ6iIbVJ07eHdCUrP6WhBqBh4ELR5iH0SeV
	 z6agpkn7PqvdQ==
Date: Mon, 29 Apr 2024 23:45:36 +0900
From: Mark Brown <broonie@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Drop unnecessary quotes on keys
Message-ID: <Zi-ykPmrPqBxiHNz@finisterre.sirena.org.uk>
References: <20240426202239.2837516-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240426202239.2837516-1-robh@kernel.org>
X-Cookie: TANSTAAFL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_074542_925530_1DD8634B 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============0987434530417887353=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0987434530417887353==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BUMTG6XEkN0Ut87X"
Content-Disposition: inline


--BUMTG6XEkN0Ut87X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 26, 2024 at 03:22:37PM -0500, Rob Herring (Arm) wrote:
> The yamllint quoted-strings check wasn't checking keys for quotes, but
> support for checking keys was added in 1.34 release. Fix all the errors
> found when enabling the check.

Acked-by: Mark Brown <broonie@kernel.org>

--BUMTG6XEkN0Ut87X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmYvspAACgkQJNaLcl1U
h9AK6gf/Xc+HslmuppG3Hp8ImYKauCbY+zuC48rT6Z0ZCBxjrjhiGQ1U1+BJdVkZ
FZGn1bnIqVJ+yOq8uAy7L7v6DZs3NuPGLMAUJofSho2NZow1jZwDxH0Dt7L4DqRh
SErFMkHo8rTw7YGdwLp3HI0XFlkm02oJz3HJ2v+O4RLkMgkGCRgvV5iOYjupfau/
NscyXAgaFlf7wRz2rfHIP7xCsRmSNMf8M1Z4fK7miUk6iDnK6g/8CbXUMyPcrLfd
f3S5/7ZM+MjizWf5ZLYoIxPTfhoX2BfRdjb6Upu9il2gZjoLDIlrtyyJL8XZJ2Tx
FvUc+ybdxp4Ggo1kEUDK1LgU13YYOQ==
=F/JM
-----END PGP SIGNATURE-----

--BUMTG6XEkN0Ut87X--


--===============0987434530417887353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0987434530417887353==--

