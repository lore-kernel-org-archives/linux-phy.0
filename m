Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB29AECE579
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 12:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sQO7QM3TUrrS6Pm/FMOp7GHeQWZSjFMabhRkCYe2jP4=; b=X1feA/OCIv6WY1Ybkn6Wat+xIt
	VnK69Oblat9u0BRie2OvADbxWnLg9ZARXX46iWgLKAkvu9jiow9vuGBmL75B5HnJYI2B6+D9EEkRh
	OdTxnoz+p0XXfbrd0+mitnqpaOUeMe+z+pZq33ZATlUv0H9o7jIOsN1Fa+YJKFfr4EHAL93qG41sq
	WFiKC/UGxqNwPIFm3+QYT4/afDpstae5Gi8BvCksbZWNtY/cJ3wRDf/0uUHPm/7ODV11XVJUj2Hkl
	9/Um52adiq+mPsH6ve30pJ+rHlmP30cHABgoX59aDbPN7IA5n+DHgO6jH79FvHCTq/np6ixuPDzpL
	/VbfbXhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sndm0-00000001sns-2BMH;
	Mon, 09 Sep 2024 12:45:40 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sncB9-00000001bPy-1Q9t
	for linux-phy@lists.infradead.org;
	Mon, 09 Sep 2024 11:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725879811; x=1757415811;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zxqrtgg8N3MLqE09QLa/5QUpra3H4/9rmhKJTagM0+E=;
  b=kpgD2uwAnEjXzGtXzzCBh0XxOFQ3G4keqxYGnun7j4Yg9Fq61/l1ZmKV
   CPCjjgwEC6UCEQ9BbP0prS+JF13PNZ8zmgzoTZW7gD9EmWJwkYbwoah0B
   H/6qoqwoPqRgkphWb/kcv6tU7pqTYzCobdqxTj4DnwWig4DS71ZfzXB0V
   P7Vm4V2S/Z7YJhr/WXv4k0yDtQBYn0VVvqxziRWPD8a7Jx4sp7yoCsvWu
   v/LjqDsUz1vF8eF8yDWkVXWnV9Iu9iG6qFZ7rnN4SRlwEZ7l6/D6fDRvU
   wTWJuuwPRVX0knbZ4V4fZj4HAEeHaZSFak/nNssauRPi8vPLihpT7GmJ1
   g==;
X-CSE-ConnectionGUID: 4dJ/0+VGSpWfEj1lld7pJA==
X-CSE-MsgGUID: 3psar7/NQRmZko+2y/Yudw==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="asc'?scan'208";a="32143414"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 04:03:29 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 04:03:24 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Mon, 9 Sep 2024 04:03:22 -0700
Date: Mon, 9 Sep 2024 12:02:49 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Minda Chen <minda.chen@starfivetech.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Jan Kiszka <jan.kiszka@siemens.com>, <linux-phy@lists.infradead.org>, Emil
 Renner Berthing <emil.renner.berthing@canonical.com>, Rob Herring
	<robh+dt@kernel.org>, Conor Dooley <conor@kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/1] phy: starfive: jh7110-usb: Fix link configuration
 to controller
Message-ID: <20240909-drizzle-hydroxide-dd405c4c3a6d@wendy>
References: <20240902111127.15155-1-minda.chen@starfivetech.com>
 <20240902111127.15155-2-minda.chen@starfivetech.com>
MIME-Version: 1.0
In-Reply-To: <20240902111127.15155-2-minda.chen@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_040331_463765_980C3CF7 
X-CRM114-Status: GOOD (  11.22  )
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
Content-Type: multipart/mixed; boundary="===============1668043928942100487=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============1668043928942100487==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qjEwf94R/mUYYeCE"
Content-Disposition: inline

--qjEwf94R/mUYYeCE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 02, 2024 at 07:11:27PM +0800, Minda Chen wrote:
> From: Jan Kiszka <jan.kiszka@siemens.com>
>=20
> In order to connect the USB 2.0 PHY to its controller, we also need to
> set "u0_pdrstn_split_sw_usbpipe_plugen" [1]. Some downstream U-Boot
> versions did that, but upstream firmware does not, and the kernel must
> not rely on such behavior anyway. Failing to set this left the USB
> gadget port invisible to connected hosts behind.
>=20
> Link: https://doc-en.rvspace.org/JH7110/TRM/JH7110_TRM/sys_syscon.html#sy=
s_syscon__section_b3l_fqs_wsb [1]
> Fixes: 16d3a71c20cf ("phy: starfive: Add JH7110 USB 2.0 PHY driver")
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

--qjEwf94R/mUYYeCE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZt7V2AAKCRB4tDGHoIJi
0juLAP0Sv4xZPU/+NpNoVLsi4fsM0XhHNLn4YcKwtjCD6dPgzgD+KH7/Z3GzArn4
IjuEL7terWYP/AVVmz7hHyJkh7+vKwA=
=X8B3
-----END PGP SIGNATURE-----

--qjEwf94R/mUYYeCE--


--===============1668043928942100487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1668043928942100487==--

