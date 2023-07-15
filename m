Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F83CC0015E
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jul 2023 10:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Db8npBn/P3MiGAzY74stmNbAovHpgNqE05xuKvBQw5g=; b=32tG1O1jX7i7fFXuAGuCogAMFa
	zmASyphwGR7qHGMxCbwWstJT8101vu4+nMtO6BE3uYHwOiati7ymU2GGd8CyRALoHZaMOSvFVB/YW
	+u8WSP6vXt0fJjrilT7hglzRN+77yRwR5rF8867ZX2SeWCChrbxSPZcRtASjxdNMh9lDF7mk/GDjO
	8HgVOiZDhZQ2UPCtRjnlO62/Z0hnoWPoWSMZnDvjeFNHtHdXOdWcT9fBxY00v6VJ06mLT6gCl7QMP
	sFZZYeLTzb1+JaYgNJx4MTC8vX2PcJoggkvZM2LgEcOL7B+u1KdVTVyY6clZCVZXg/3A2c0RMd6M8
	fGfkcgGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKcXF-008N40-1t;
	Sat, 15 Jul 2023 10:29:57 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKcXC-008N36-0q;
	Sat, 15 Jul 2023 10:29:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E1A0760B06;
	Sat, 15 Jul 2023 10:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9C87C433C8;
	Sat, 15 Jul 2023 10:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689416991;
	bh=CH/l+e3PeGDEEGxcizi8F/Qwtn5DnbYB9Arg2+4cEzU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BS7tNxA4PhjrLdLFPXcSc/hOWx2p+Q5Y3/gWbVbGoEL07TdkjGj7pPdGkdoLJPCU9
	 efQ4LK9E+DgYJI+4rFb6XFartpO56lpPaf261HnpICqDHppIbdxZ1DKLDfZLg+4EIs
	 tJFXn3VzSc/Sg3Swv0XdccXFce8PH5bHpjL38PopjMwrEYLvOioSb0n73CyOcxun93
	 TatS8CrNJmxux8zpjpNLY6fZThxN8QFp6lvroh7NIllI4YCIPh3K1A8OBJ6GaeKA5J
	 IbVtzrc7Se2vRdSYvKvZ1Y5sTuvuuLu61QuXVbiPt3WRRoy46fMHZpMYbT7Jd5b+Mr
	 TEtLSTLgYihoA==
Date: Sat, 15 Jul 2023 11:29:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 1/2] dt-bindings: phy: rockchip: add RK3588 PCIe v3 phy
Message-ID: <20230715-rudder-unbent-ff7754bec4b4@spud>
References: <20230714175331.112923-1-sebastian.reichel@collabora.com>
 <20230714175331.112923-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230714175331.112923-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230715_032954_366533_C22749AE 
X-CRM114-Status: GOOD (  10.11  )
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
Content-Type: multipart/mixed; boundary="===============2234832460885438088=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2234832460885438088==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="A9wMCNuEv+mNAcmd"
Content-Disposition: inline


--A9wMCNuEv+mNAcmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 14, 2023 at 07:53:30PM +0200, Sebastian Reichel wrote:
> When the RK3568 PCIe v3 PHY supported has been upstreamed, RK3588
> support was included, but the DT binding does not reflect this.
> This adds the missing bits.

Thanks for rectifying that!

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--A9wMCNuEv+mNAcmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZLJ1GAAKCRB4tDGHoIJi
0qC2AQDLhuOu8q2be4MO3J7WuzO0cCDIq88igm6teBgavhzglQD/S0kOknT+dRpF
RgFKkdHBfEi2/D6JSy9HXCkHgpbkdAM=
=cYpP
-----END PGP SIGNATURE-----

--A9wMCNuEv+mNAcmd--


--===============2234832460885438088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2234832460885438088==--

