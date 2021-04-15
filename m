Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC42C433B4
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 09:15:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 14A31611F1
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 09:15:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 14A31611F1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OZQ2UZ1JWgC3GNdaZYNnG9p6e/a2fLeps27friyXAuY=; b=Oe4igH6qfOjSLHisPpTylaWn7
	mIdq+AoRcxhFesGdSCu2EaL1UvdX0Gt521gvHIYbbM0W+LBMHzkO/kp9b7AA1Lt+d4G8cEvsFY51J
	pr54pduJDSXQDP0yo3/ni2I8OSwmdF5WpQ51cu6HXxb+Da5CJrVd3eAfLMR6Kgz48IoPHwbak1hp/
	03Te2LSw59N9fcuqcnVxmDHflzHeBA7j8su8UQdwEM23A+nPTBX16jibXwM3dIF3QTugngldnk9Qa
	uXxPJea/otjBlbpuYHua7zy0iS0firOntrI6pqQG53JB9Xu85Dw+40NHXLOUnDPr34k8//C8qa/46
	cXkx5CorQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWy63-00FU6T-E9; Thu, 15 Apr 2021 09:15:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWy60-00FU5s-MF
 for linux-phy@desiato.infradead.org; Thu, 15 Apr 2021 09:15:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=PPadHvoMn88CdvBtA2bcAJ9fiZJHZrzsDVA7Dw93RQc=; b=UeQDu6C0b/rqg+WNeFoh1DpEp6
 RGcV6zJJ8RHJY67O8tX7Y2sysfyt+6dybVJbJ6ieOhAIVtuYXblmDc4fWD34E8lxv3dD5VX9pXqS9
 AUoPNVNA5gAavnUJVQA+3VwUHUXE4RG4qN+Z3ILb0fI21BxOTBvzsFtHVzmXLDHQ5CYPeSH/zCOSQ
 DliVzoTWOMhS6+9cJWepPpAxq87Qrq9KVOq370kdkARRap4oe3u12G+reACfAe7GwmuM5u0G1Kns+
 y1aJ7hWg/wP5SKddCY8tRk5RbiSj6OhYlp08fPLJFyKukkdtoWKEcATfyI6/fQI2B2y4/eCG4Qz2i
 CX84Da6w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWy5y-008PkI-3Y
 for linux-phy@lists.infradead.org; Thu, 15 Apr 2021 09:15:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWy5s-0002bi-IT; Thu, 15 Apr 2021 11:15:24 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:983:856d:54dc:ee1c])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 0F88B60F30C;
 Thu, 15 Apr 2021 09:15:21 +0000 (UTC)
Date: Thu, 15 Apr 2021 11:15:21 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
Message-ID: <20210415091521.d62k47xpugcvid2t@pengutronix.de>
References: <20210414140521.11463-1-a-govindraju@ti.com>
 <20210414140521.11463-4-a-govindraju@ti.com>
 <20210414153303.yig6bguue3g25yhg@pengutronix.de>
 <9a9a3b8b-f345-faae-b9bc-3961518e3d29@ti.com>
 <20210415073810.nwoi2hx57hdg4ima@pengutronix.de>
 <072648d4-a747-bc5f-a525-25dd055905ee@ti.com>
MIME-Version: 1.0
In-Reply-To: <072648d4-a747-bc5f-a525-25dd055905ee@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_021530_166962_87843F97 
X-CRM114-Status: GOOD (  12.93  )
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
Content-Type: multipart/mixed; boundary="===============5277440651853418005=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5277440651853418005==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sqrdgl4qh74mzxtg"
Content-Disposition: inline


--sqrdgl4qh74mzxtg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 15.04.2021 14:41:57, Aswath Govindraju wrote:
> >>>> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > Can you create a maintainers entry for this file with your address?
>=20
> I don't see this being done for other phy yamls in the
> Documentation/devicetree/bindings/phy folder. Also,
> scripts/get_maintainer.pl is giving the names of maintainers after
> reading the yaml files too.

Nice! Clever script.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--sqrdgl4qh74mzxtg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB4BCYACgkQqclaivrt
76ms1Qf+MgNCzkHp1rtwktzh+c3mVAPjupRXLxsmNoEJ2WJPx3eQSRbdqazlOO0T
2AXVVEnrU9hXjdzIdGB4hPzQkZzSDfv0NpOL7DYRPqkHs60Y66fypAjL+K+N16ym
oEEP7Kxh2WjuFzOgyVbOvxI9k4IODUfzQqklQBQda3If0UEHsQXqgMEy80oIiOlC
Ua6+Cws6eV/PGSNHM6NQBnQwvN4kZGzy/4O+zYXRPwM+fAbISCGS8tH7kt+eL5hu
y5HRO5V0YG+r99zfXnOkov69cz3pXAZOVdVZ5xtw0ja8djyBTZxXPLiWtNkrArRJ
xYKkh8KdiJaK7pd0W2EonECPHCtQBA==
=tebW
-----END PGP SIGNATURE-----

--sqrdgl4qh74mzxtg--


--===============5277440651853418005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5277440651853418005==--

