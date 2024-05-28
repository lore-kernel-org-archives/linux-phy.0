Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 808F8C25B78
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 14:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O4JNJhDDBmFUbn2W5iElkhabD/cZe9tktg0QoYBQ2LM=; b=xlCJ0f72P7/Oyx9Md9yKzCUhHm
	yLUyVmzqP2rxdb7tb4Ab0Pp/0LUJEVfbaNWSbJoNYTqscPsj4RxfuHOb/hJDdIP6tmEdl1tQoRS0u
	Um7rRZ/s/CDvBzeTZ1mrkrbLYa71uEQbX/782ZDKzYY2DrBFXh1tfe6EOqXMN3V4zHm0CihMhi5Xv
	KpjvMaYsACfvdm9yUd9jc15qBfuJFgq8QWkq24wQEH4+Wp6bW1FYUNXTtQHbqc20V0NW4pvIDA/U0
	9J1KEEykvh22DzJEIo/sp9IRA5pbJp2Q5T8iSu/86p6lzTQVI3r3Lw38cJmvqFk9Y1a0FflkcKyga
	s1Elk4vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBy6y-000000015Ad-0q9Y;
	Tue, 28 May 2024 14:47:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBy6t-00000001586-3xV6;
	Tue, 28 May 2024 14:47:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 66AA861E61;
	Tue, 28 May 2024 14:47:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8024EC32782;
	Tue, 28 May 2024 14:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716907651;
	bh=75oAGp/ALt8LJghJjZRrjJGgwjH/DmPA8ZSyKZE3uaY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=deXF0UgBXtZqGCnwXbQVAU7ywUPhEcO3MKu/pyCmgbZVCSpJqU8wJpTrM27+O4JGp
	 sxWNP6247nP+k/s1BGElVOiHIZnsmU7bAGEn3yKCEbXvQjUNyWGoVTKM88GNJ+NoB4
	 22kbsdeuq42nTXIVeRczrIxrXKGirG0JGhn5mqZCkrgTzrwbERKeMjr0l2mWJWqWp7
	 a1xVn/2sfWCRYpsyQHmX9JyYww4hITelATN2FqqQvBDmNPgrddO/JCUy4TKyRpnQXz
	 IUbpPu8Ba8pMhij6lSKvt42UrKZRlTV/gWuz6Yr1vSkfI8IXjWpIfUyKJtrACrVUaV
	 undMCexnwuECg==
Date: Tue, 28 May 2024 15:47:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, frank.li@nxp.com,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY
 binding
Message-ID: <20240528-revolving-barometer-7f0559020021@spud>
References: <1716865154-25044-1-git-send-email-hongxing.zhu@nxp.com>
 <1716865154-25044-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1716865154-25044-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_074732_046573_7EBEE96A 
X-CRM114-Status: UNSURE (   8.33  )
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
Content-Type: multipart/mixed; boundary="===============6312634487898460858=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6312634487898460858==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6MUTDMyW2IA39pPQ"
Content-Disposition: inline


--6MUTDMyW2IA39pPQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 28, 2024 at 10:59:13AM +0800, Richard Zhu wrote:
> Add i.MX8QM and i.MX8QXP HSIO SerDes PHY binding.
> Introduce one HSIO configuration 'fsl,hsio-cfg', which need be set at
> initialization according to board design.

With Frank's suggestions,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--6MUTDMyW2IA39pPQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZlXufgAKCRB4tDGHoIJi
0hrpAQDtIMLWV/dPOnO/6goc25NA22vAu/uIJ2Ra0/mupzNaAQEA2dgQNokIlLju
4UGM9OXfVIq+7KWo9Vesx0JLo/HNZAc=
=olHp
-----END PGP SIGNATURE-----

--6MUTDMyW2IA39pPQ--


--===============6312634487898460858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6312634487898460858==--

