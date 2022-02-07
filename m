Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B03C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 09:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/mL9h0smh3t5fk3+0B3EnsVbJlevWOYZAj7jZJLV/uU=; b=VDAGINUV2S1ml671AImx9EZDQ2
	QmrlxSiUnwR6lefzy76Lq/0hHej36DH3AuEc8O779xv5WGU9uiikH8SHSq1ykxYa0HaGsK7tBHfQU
	aKOokuY7eIKKkHKF0lWMqZXxkRYCLDKwEW87spwMQhnzXV/rAMXfG5fOGbWgiHnuAmZbFBzPp0+Hu
	2/OL7LMXwq/rbaD9NzztoMss0CiZBLuiQm32ZaVaDRpuUcXbHa5aY/XLOUy5GI2TPNu/xaqNn0w0U
	KkuSi25NI27bWPKNDNGpZyN9rnell2bEpdH8vtdAjms63dJKyGbCkEhCuX55X3a6uE+dYMsQW144D
	rkONSSUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0lm-009hFa-35; Mon, 07 Feb 2022 09:57:14 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0lD-009h0o-Rg; Mon, 07 Feb 2022 09:56:41 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 19A9B5801B1;
 Mon,  7 Feb 2022 04:56:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 07 Feb 2022 04:56:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=kGIMVYhKNCUOPYuVWpsXpzFka3m2RK9MnBQ1Zh
 CUJw0=; b=W/NE6I+eNlpjh6UO5VSgb7pJjCD4kgvHSRxmCyUQY2alPdd9ud2Csy
 Rg/0mLwlxFzml9FA630Z6UN9/dJZ91di1AxwMoBIGnWAuRClF1r2OeTPCpgbTCL/
 sGntx8DNrjEvHA0fg8E/vayRNBgHIjg2LTgo1wLh/HiXAjF/wjQUoX3BrNcb3aJw
 yHlo387UzHeAE0cQ6Fyk8x3spQ2JRjjJ1QNn6qn5Zyu0wm+w8nVL2ukxHkEFBTGR
 mN5xk4oocy3yGeordrzMszSH/AfSeR5y3T42Pxhk99OngnAXUcXHazqBDAQ8zdUw
 /HS7UNGbuq6jfRgEmIXK4CnJN4qoiDpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=kGIMVYhKNCUOPYuVW
 psXpzFka3m2RK9MnBQ1ZhCUJw0=; b=T4pixUTz9EGQeZ5nMxygyybJID341dNQu
 9gvL3iVHPDruyI9/kNiLP/nmgNaVSmfpYKO7vQlbscnu1dF0K+wDaRNy/E0C0Ean
 MM5eONfdQdFs6MD19CZhVH2Vfa1Puj8WfM+iOpLHz394w0+L6m1Rt46mr4Xd2KJ2
 VRsGxh8Us0ve+cd7IVv9YJk4CTBNTBIEH/YiLyB5bkoEewG4sExvMqLHU/pl1MAL
 rli8hB1Ksd4n4wW5JV0G9ratwqf8kRY3oWx3bt5VqssspLJ1Ww0Ut/PBF2mgHDNY
 l2HH7aZHSjOP1HiFqbVsgymDWbi1eO7GhS2+Mu5BxGyq9w9+uJO5w==
X-ME-Sender: <xms:1uwAYmCd4dWfTFwbmZMzaIzU4qwW7XvrdOok8Iz7_VDd1yJjluPsHA>
 <xme:1uwAYghe6mBViOZMM9FzfrDrQkNvnPc9jwihc497M-lCkvJ-I1EwB4NKwqe8oT5TU
 dfyE6ZtJVeVGA4WT9A>
X-ME-Received: <xmr:1uwAYpmRBWuemiFFlQvB3RgOILvxo-1O0Pbw0BISlKnp1tUxUhtxfJQ-cuAaQcptH1tkAWFLs3I9DXSk4ugb2qd_augvSuTL_eA0smA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrheehgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
 igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:1uwAYkzgHb5EfN9-i9d458PWYAM8GUHuZ-rFIOsa3oIRsMtjYKWN8g>
 <xmx:1uwAYrSMkLR0RcApVpl6j1G6eqwy2SN0Rl010dxnffzbn7LlSQE94Q>
 <xmx:1uwAYvY8zA4DTe3_dQjXZ5bjFVEn7ZdbAalQtAvCB0jkjdHGwWwF9g>
 <xmx:1-wAYsJjFnQwWw7aXHbVGFPdqU3iO8pJbDfGoUbBz4VlDSG1Kj_1Lw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 7 Feb 2022 04:56:38 -0500 (EST)
Date: Mon, 7 Feb 2022 10:56:36 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 24/66] media: sun6i-csi: Tidy up video code
Message-ID: <20220207095636.qoqagsavskhlrng7@houat>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-25-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20220205185429.2278860-25-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_015640_017952_A718D018 
X-CRM114-Status: UNSURE (   9.05  )
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
Content-Type: multipart/mixed; boundary="===============2488957944579050403=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2488957944579050403==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pyrsjzli2thxv5dg"
Content-Disposition: inline


--pyrsjzli2thxv5dg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 05, 2022 at 07:53:47PM +0100, Paul Kocialkowski wrote:
> Some code cleanups, renames, variable lowerings and moving things around =
for
> better organization. No functional change intended.
>=20
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Reviewed-by: Maxime Ripard <maxime@cerno.tech>

Maxime

--pyrsjzli2thxv5dg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYgDs1AAKCRDj7w1vZxhR
xQKnAQCMUjpfUgamt9vxCE20zE0gPD6E4cQ4Qn5ABCapBEwBMAEAvy8vHSWgmZqd
l7MgNjmOqkikWP952Y5ku+UaAbTVFA0=
=XZPY
-----END PGP SIGNATURE-----

--pyrsjzli2thxv5dg--


--===============2488957944579050403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2488957944579050403==--

