Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9963C2BD09
	for <linux-phy@archiver.kernel.org>; Mon,  1 Jul 2024 15:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v4y/5y1R+H+Yk24VPJqUbvZsoXeCahTxhTiwmiqqKFg=; b=nybv12e2VU+FF1LMkOD6Jt9y2/
	KcdzxNJnwbshLNOZrqTaz8wqSVGmRFb465I+JDQQU69rio5zSWu3FzGzxxn2OHbDbSCjP/fPm6wT6
	q0GI3Z2Wq2Hpdc9tDjUZvijTmrA44Slarz4XJeo9J1WUm0EeZ/We0O5BuxI7muDPhdiI947H7DG10
	tfxBLnq7GWWzZN/D64UZip1kh5aQxrw+ayw+D4lOkPS9AzyCoVgypbwr7hQvJEZFTi1NFjmOdJqHm
	N0fPUlvksNoIqhX+Ufwdh65q1s7xYGMIMYOuBudVDuXbWXRE2B8MrbiQxBYdMZo/Pd/sL2M86QdiI
	jMs8sKJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOIbB-00000003rWG-1vOt;
	Mon, 01 Jul 2024 15:05:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOIZl-00000003qjK-3apl;
	Mon, 01 Jul 2024 15:04:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 06E666148D;
	Mon,  1 Jul 2024 15:04:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AE23C116B1;
	Mon,  1 Jul 2024 15:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719846255;
	bh=1827LFemuiUVmYMPnNFZh664roipuU0O0f2WDmUYEwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ro/RLUyEs/7TOJBLAxBtW9+L7zA2Z2liaFgitLWOegt4rpdXZVEGrOlzLBTwYQdjZ
	 5I/80aPdIf738Sha/5DCk5gA8F7WGcDIbF/pX5ZAWLEYegixPFAp0pxYN7WVNDra9G
	 KwNlV3rhNRaA8Fln7hBqqaKpsLtaNehz8IXxI7uYuvTq6PTPK7z8OG4hve8nJqTm21
	 ZiVgM92DCYUO3gb5h0jjjLVJjSjqhPh8Q44Q58NwfqEKZ4xFQ5QQM3IwT3xXgJ2wcC
	 7CyOg5OYCNmHSeQacaX8cIqZAfjqx5lY2Uns974vlSbEi+PoRRmFF8UI1oV58ixlEB
	 +Ubcp2raorPHg==
Date: Mon, 1 Jul 2024 16:04:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, nbd@nbd.name,
	john@phrozen.org, dd@embedd.com, catalin.marinas@arm.com,
	will@kernel.org, upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: Re: [PATCH 1/2] dt-bindings: phy: airoha: Add dtime and Rx AEQ IO
 registers
Message-ID: <20240701-tubular-registry-e6f47ab2d7ca@spud>
References: <cover.1719682943.git.lorenzo@kernel.org>
 <a018329ff9678f3360bc6381294f95c62d34f3e3.1719682943.git.lorenzo@kernel.org>
MIME-Version: 1.0
In-Reply-To: <a018329ff9678f3360bc6381294f95c62d34f3e3.1719682943.git.lorenzo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_080418_048749_0471C2DF 
X-CRM114-Status: UNSURE (   7.38  )
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
Content-Type: multipart/mixed; boundary="===============8429176878378398595=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8429176878378398595==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HqN/OI93YBYXRfOt"
Content-Disposition: inline


--HqN/OI93YBYXRfOt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 29, 2024 at 07:51:48PM +0200, Lorenzo Bianconi wrote:
> Introduce Tx-Rx detection time and Rx AEQ mappings in Airoha EN7581
> PCIe-PHY binding. This change is not introducing any backward compatibili=
ty
> issue since the EN7581 dts is not upstream yet.
>=20
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--HqN/OI93YBYXRfOt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZoLFagAKCRB4tDGHoIJi
0tSVAP9ShcRHDmhVey1oQg7Qc0se/z/6mFzcJm/AuW1g1zO2AQEAkmqHCL4l9824
TY6qgXFKVYMRKz1yAsN6ncG71C+vSgQ=
=CSWz
-----END PGP SIGNATURE-----

--HqN/OI93YBYXRfOt--


--===============8429176878378398595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8429176878378398595==--

