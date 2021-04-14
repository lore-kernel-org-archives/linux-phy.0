Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF0A5C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:17:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4855F61090
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:17:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4855F61090
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6bV5KipRNh1otVWLFIffLfB/MQsk/7YjBRiFbVzOSgw=; b=Brq
	4KV+61Y4Kwx+F5qMaf3WlOTBwfWTi3J9CGt44St5DRNV8AQUfv8sHt8A4zmWwkksb/01tSzTDA/4H
	AirzHbr6GJDtMT9Rj2UaTiRU2FRr/yh3Ov5SV4hxgpIee2zs8HmqUl9qTZeypLq+2k9eXLlrJTqoQ
	vGJeAat4MplV4C/7kFyRsC5rEFfWUA09btmE2VHyACogMb26VpJImE00++giB8PF3rZxoDHdbIfn+
	6wOF5BgLAGrs3wYKrCF0UPquJrmCDz6TtDMRxbVfYEdYbL7KbUokTPuVlvQeCkwRv+TTldrUFrwlv
	rPuqMcYuXWeWyB50Hqcjw2gPb65BJEA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWhGz-00Czqf-AJ; Wed, 14 Apr 2021 15:17:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhGu-00CzpU-Vs
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 15:17:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=iDe4vQwBpoPrKF/4mtcCaoWRRIhV/TXLbhbCEcbPQIQ=; b=V1PKEojuOU6DcqY9K47BTndTcq
 +nJlvJqJiWDZDZywrhZdda8y8xeednYHAMMwNxwDJZZCfh5Lgwxe/dMfBCFtWV1fBD4b7+GwDOqSA
 +MuIpnS8PeL3jhfnscYBKBxuYo3OfulBjKXMx2QrNWeWnRmqxXD+mX0CmuzP+o1MsX8/GBTaoW3Ss
 WHHgBekDHxq1asA9V370DBEF7m35QDRUqFZmECFRwHPJcMGvLCRJkAehFMEmkyrUSSkv89FhSsK4u
 M1Wze1RiH+F2VWdjg3gMgSX4I0eGjmUcrlZ3SjCurv81hIjlWRzqxb4kfzAxUOQjRYNJ31Pmgx558
 fMTiR8Aw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhGs-007sfp-9N
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 15:17:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8758761090;
 Wed, 14 Apr 2021 15:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618413457;
 bh=v8Xbl+/XiWU8+Qjdj9ZlACtpEdUTj7rXvqg1K4XJsMg=;
 h=Date:From:To:Cc:Subject:From;
 b=PSL6YZi/FSK7VEzsN5ckfAEd1p8ExkQl71+MCcO9yAqcbCvSmI9Nuj1FosNXx0b8u
 k9HrXNlVKkMqCdxsGLexut/J/+cWyivvjVKTrTZa0dV8kAnyKTrdXhpAl6aR5hi/Ed
 sGM6IiaWFuwH5vPVZFwxTRKJSjd3YJrn3Hnq4c/+M9+VZy9Qw0IiaaVeird3WlYMHb
 +wgIoxiKYAbeUhx6PQRcQLYN4UcRa0Y4LEYqIqTLL8rmlP6PxizSJWGokc3qJsRKWu
 Efj091ZGewkSMDKhsy5JNlURafPv4McZLY1Ubi892W7Cb2Xlip0ctqUiiLeRpCqaAO
 tLaLueM0Cxi3g==
Date: Wed, 14 Apr 2021 20:47:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: [GIT PULL]: Generic phy updates for v5.13 -second round
Message-ID: <YHcHjYv8HIaODa5t@vkoul-mobl.Dlink>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_081738_367134_303F7A44 
X-CRM114-Status: GOOD (  10.31  )
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
Content-Type: multipart/mixed; boundary="===============8064096095161919409=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8064096095161919409==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iOBHsqrKwZ88MQYQ"
Content-Disposition: inline


--iOBHsqrKwZ88MQYQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Greg,

As promised, here are some minor fixes for earlier pull request. This
includes fixes which came in after the request was sent

The following changes since commit cbc336c09b6d6dfb24d20c955599123308fa2fe2:

  phy: fix resource_size.cocci warnings (2021-04-06 10:39:20 +0530)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-=
for-5.13-second

for you to fetch changes up to 8a6b85b14f082d266b0312562f7372e1a8f5dfb3:

  phy: Revert "phy: ti: j721e-wiz: add missing of_node_put" (2021-04-12 10:=
35:05 +0530)

----------------------------------------------------------------
phy-for-5.13 second pull

Driver fixes for:
  - Revert wrong of_node_put patch and add missing header for ti j721e driv=
er
  - use-after-free fix for twl4030

----------------------------------------------------------------
Shixin Liu (1):
      phy: ti: j721e-wiz: Add missing include linux/slab.h

Vinod Koul (1):
      phy: Revert "phy: ti: j721e-wiz: add missing of_node_put"

Yang Yingliang (1):
      phy: phy-twl4030-usb: Fix possible use-after-free in twl4030_usb_remo=
ve()

 drivers/phy/ti/phy-j721e-wiz.c   | 2 +-
 drivers/phy/ti/phy-twl4030-usb.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

Thanks
--=20
~Vinod

--iOBHsqrKwZ88MQYQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmB3B4wACgkQfBQHDyUj
g0fHdg/+KifY6R3l4DswCvw9fV/fv564wV8NQUit90aAxXI5Jj6eV9v64DpmR69C
hWRByQnbcfUzBo2BRgyz3G7RdL9HA9z2NU+jl4qg5hsEengktZZxDnJ0NxlqYMEe
ZSgRiDpb2HAjmNvFwshG8x5bdlS9Tn+qLm9yNBsrqcf1Y5Bpmkg9+TvVGzep2Wx2
LNgz2Jny14Ne+BvPvLeiO7/Kt5yFydyRoUXwUhpy65pZeOhD+PPk9M91YjwUmjD8
bgIKcjhk9DI9N9X89dnLcC/3Ne9Dbf21gGHiNMzSHjTxN91oN/QPp+8YlbeZxWFe
UWMKIQb8BX0knwLVEpAXuUP5vNkHRqSyskUMcxyDGrKhU29felMQaZy6h44b74kx
Eqypz887nDUDNpL+mtIGUYHbzo2ki1vZeAy5lOJLX0xMAGcJZoeCDHxZZGBhmRCz
ctmD8CuAa38wTNA+/+MMI9WUVRQyXgY1xkEj7RsBqFndU0niHg5dPtMotm4KsonS
qSe/4j3g02kW78yETIhzeTswjJE4OunpeSISeN0SR8BfeOuuK+rczonHPMuyLY2M
NVba+mfUXhpl4vRfX5rCgexcXv4+KKTYfHBUPrUW5pOuskqpgjPYwgjbRqiBBcHE
EtLatigD2SdBE2k3y4MVRO8b5qlhD2DO6b4/v8T7JoqUoqgxpSQ=
=+bj7
-----END PGP SIGNATURE-----

--iOBHsqrKwZ88MQYQ--


--===============8064096095161919409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8064096095161919409==--

