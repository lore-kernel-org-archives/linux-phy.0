Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE35BC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 15 Dec 2023 08:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QbDS/vpthWm4zCvkFA1mFMdoHjlRpYovBucHnOwwfcc=; b=BG+xNAzAwWq3K24lUC0jDU5NYM
	iAChc6CHF6kWm7sksC93kYXdPrdLDsIQJV3wseqbmxBreZtNcnXzelxnLWSeCzU2n7TBI5bp/vG8h
	tsgykCPa/zQ2K63yAReiW7aEnhwIuV2Uzo3BoWo60C2dT4rOks1MvZh/g5JqMm6FwLQhpfT402eAK
	g3m3rwEHknjH0ZdRi5Bktrz7vGxuCzqTGA37ZcdMQhNz+joWN4orDaRCJRAyjrYlQpJseXKSg7EEW
	0A/lDTJHGbgD/80IaBRf1TLCAZaIR6JliOEwAj0yiOwNEUOM/F6CubFd/pFzYnxC5zQt6ISD2tmKM
	bcL5NZ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE3Fc-002Pbk-27;
	Fri, 15 Dec 2023 08:08:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE3FZ-002PbL-0E
	for linux-phy@lists.infradead.org;
	Fri, 15 Dec 2023 08:08:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rE3FR-0002sV-6E; Fri, 15 Dec 2023 09:08:41 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rE3FP-00FzBq-TY; Fri, 15 Dec 2023 09:08:39 +0100
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 45AD52639D1;
	Fri, 15 Dec 2023 08:08:39 +0000 (UTC)
Date: Fri, 15 Dec 2023 09:08:38 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Wang Jinchao <wangjinchao@xfusion.com>
Cc: Wolfgang Grandegger <wg@grandegger.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, stone.xulei@xfusion.com
Subject: Re: [PATCH] phy: phy-can-transceiver: insert space after include
Message-ID: <20231215-cover-overheat-14be5a6fc0d6-mkl@pengutronix.de>
References: <202312151407+0800-wangjinchao@xfusion.com>
MIME-Version: 1.0
In-Reply-To: <202312151407+0800-wangjinchao@xfusion.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_000849_105828_6ED9DF80 
X-CRM114-Status: UNSURE (   8.43  )
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
Content-Type: multipart/mixed; boundary="===============8167389749149849431=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8167389749149849431==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hs7kqyfvdpf4yw4d"
Content-Disposition: inline


--hs7kqyfvdpf4yw4d
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 15.12.2023 14:09:00, Wang Jinchao wrote:
> Maintain Consistent Formatting: Insert Space after #include
>=20
> Signed-off-by: Wang Jinchao <wangjinchao@xfusion.com>

Reviewed-by: Marc Kleine-Budde <mkl@pengutronix.de>

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--hs7kqyfvdpf4yw4d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEDs2BvajyNKlf9TJQvlAcSiqKBOgFAmV8CYMACgkQvlAcSiqK
BOiG4AgAqxMkdiIDbL8RsDETy9Wjp4cYppoKf1BnajImFH+U7XrztoezITfJTY0v
y4qyitEITNAedX3EHrhISxTE7oMs7imd0ZNTGaAtfH7UhG+MMrDY7QAUe62rbyPY
YUHlnJZWkKMN4wo66VcERXg8r4Peaqf3Lwm8bfPgPfuvs/K/jZ6Vly5DyhfcXIRo
cY0Y6RneBdvW7qrWKe5RSoaioTNz9GtqGvsyoSOSOLuX+1P/6VJTFciImIdNWFNe
b8Io4TvI9TLKawTAqJmce5V10CUtmYubr5Y/fgp4/qbuVYVGCpzmJBp3r4hFWXB7
/vraeHL36ZPUnyHG4BN0r27abltHYw==
=JmnX
-----END PGP SIGNATURE-----

--hs7kqyfvdpf4yw4d--


--===============8167389749149849431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8167389749149849431==--

