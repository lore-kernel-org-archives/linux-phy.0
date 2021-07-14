Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 057E3C11F68
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 11:15:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D03C5613B6
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 11:15:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D03C5613B6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xtRMaImkAZII/U8yMCiG4qfpecrSkm5vOezHgxmLDgY=; b=HHqP+NnLr1aSwOik6D0qeXsgCm
	z1Ocf4da7odNep6jobX0u3mE3g06ALId6XC4t4xT4KW2HvXN0qbb4heKlisDlaj/yJcUwtelDfwAR
	VlVQEAM5AFk/AND+n/xpLH8qGHPXJ99EVHW2ycOEXnHH+L/TxJfQkuHFUZnTMAuC8Hb+hwo8fFr5m
	f93vsy5zxPAH/te8Btuhqf1XlKCgq2AnuhqbJTepdm5wPbL/QNMZFfS0bCZcw32NzuDDy6T1nKr+c
	GKjK0mnlSXHx7Q6SQ+MxjRsaKMGbOFRfGek4xYKHKAL2EpZJFYMvadgbBiLKi6mQGuCt9FRYva86x
	TiogGbkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3crU-00DJ1E-C4; Wed, 14 Jul 2021 11:15:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3crS-00DJ0n-Fr
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 11:15:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A72A8613B2;
 Wed, 14 Jul 2021 11:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626261330;
 bh=gln4o9RYzRUbHOmzZqjlvV9yan+8+ZdEpUYMAg5gL/o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oKMWmnZStjX2CGk2zjgDWd8X8ttujb7VrM/P4zovZfZH35IfrCIvb91yoG84Wx2aW
 MgKYD8aBlwy0J/5fxgNEQqLUSC/McZ265/AOgb64FzufAe1o6PeeawnZFcI+cIVzyY
 saubQqi4nY2uFzaCX3mrKcbrFYYMOKIkYFkORC+hvXhmHhf/FvpqAHNlB60tBsjat5
 8KpvKz8V/B0TAUPxFDcg667k9h5U5EZO6OOtOUxiqSr4iCjJO6SkKO1EWfVu7EO9Q0
 hRj2eie/pM4Zc28xgIlhj6Fda21Dep2ZcCfRv4xCjdPsL/cojUselnyrXbXK7eC5UT
 KDG1DMBkciKOQ==
Date: Wed, 14 Jul 2021 12:14:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 linux-hwmon@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Move fixed string 'patternProperties' to
 'properties'
Message-ID: <20210714111453.GA4719@sirena.org.uk>
References: <20210713193514.690894-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20210713193514.690894-1-robh@kernel.org>
X-Cookie: C for yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_041530_583426_53BFC33E 
X-CRM114-Status: UNSURE (   7.35  )
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
Content-Type: multipart/mixed; boundary="===============0876072561434079303=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0876072561434079303==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline


--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 13, 2021 at 01:35:14PM -0600, Rob Herring wrote:
> There's no need for fixed strings to be under 'patternProperties', so move
> them under 'properties' instead.

Acked-by: Mark Brown <broonie@kernel.org>

--Kj7319i9nmIyA2yE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmDuxywACgkQJNaLcl1U
h9Bc7wf/VFIPyyWWMsNINwBGSVPcM1hXRLA6fZcXy+7sLbycWy8SufjBoG59RLn/
C4HNt7T8YDEdRgHUu7T0wfXxdfObm8W2RleX8FPEZ7IjD1e7/tY1+cNBBOQNdTdT
T4s9TLh4c0aVjTXwB6TGAANL9kk7kS/bNwpxtnpb1P1rHAvcGyk/vkYNPs9m97MO
KKkpVAzJoJpX9nQxUq+u/xdXkLawzGwA4lv+2Y2XPC0DwWLVGNB6al6tiU/sPlry
pJ+ndFbDfT0lFWG8ZQbnpNW7aDy+ez12Lz6Fksi6s1eEKTCkmNd8FElGbJyAwiIR
m6LUlCuJM3gflOnm28ExPSQjRXv9Qg==
=583K
-----END PGP SIGNATURE-----

--Kj7319i9nmIyA2yE--


--===============0876072561434079303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0876072561434079303==--

