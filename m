Return-Path: <SRS0=BhbR=OD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD76C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 07:54:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2722B60FC0
	for <linux-phy@archiver.kernel.org>; Mon, 13 Sep 2021 07:54:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2722B60FC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cerno.tech
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=peOSSupqJXrXIiyvkTju3xacj27W4KRRxm8LSNRYj48=; b=U14y4VMwzfqRj0ARY1+ci7WPwX
	sLnEHAsq+ZLXi0Bzy+TyC4mJwwQm2azDrtoGBtmOS6pQrAClEkbQpF+3Pu2xKZE6D5zTbie1RRACT
	eTk3bABVEvU8in4kZAQcYSz9ewnnqXDtVM7EGFeu96hKxq+Qd11o0vt3X4RrhVKrj84wsXMdvfs+o
	vnWkUFOt1HqNy4yf1S7UadNh52EdlD8Gki2JpVGX5BXfl8U8dtda0krTE3M7xGjolBL3CcgXi92po
	3hSPgUJSO0ST2NnyLDN7p598gNMB+LQ0hWTsl+jJV8G10t83GYS/U5zksEbmdXWPyvRKVa7dQRxCd
	Wu61BnNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPgnY-000azE-KE; Mon, 13 Sep 2021 07:54:40 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPgnK-000auT-M5; Mon, 13 Sep 2021 07:54:28 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id BCC0E580B19;
 Mon, 13 Sep 2021 03:54:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 13 Sep 2021 03:54:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=H8iC8iHH15qxrWE5p36hpaSNhVm
 Drj/cFBvDF2mQy2E=; b=UCfz2XtPhqhQXdFg6bLxKSpWTWtfkqIOg2guL+fXvKA
 Wcj8/ouyHsRZ2ZHZXxWkf5xBKf6EX71bJkf/399vs4ctj0s/vD6p8TP8Zo9cKfMb
 f8nQ9kMWaVKfaR2dBzFZQ77Yz7VSXQ59S5mqjLEslbHo9VllCnLshbv+ynNle7gU
 5lI7nAKGcFk3gYj1IAVs+bOBKjuFm+UdM/9NrwmlLSggIMQY85+wvmsyvY99uujL
 OVIg0EZjOko0OZthW8+bfP2kHkKZhMfGEfpJmIn38C4ntfryqB/xb99J0v8ENOyL
 6x9/xDWbxYkqOf/PkLeTqtT1WFyZTDkCeWL/a2wE6ng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=H8iC8i
 HH15qxrWE5p36hpaSNhVmDrj/cFBvDF2mQy2E=; b=nELtx7Ev2gebBVUNhEEN+m
 Cf5eZIoXUV3lQ+EMzuH94Xo8HlKTUEf1mYwKaoooBH0CPzaUvEygsKgbnTAA2Tme
 I9lKc6uP7dQOawMGp6kE0RZ5RofgBbeVyUva8j+3HAyqZxSfx1qui0km3xyxOhct
 qgstkYSYWcQNiJFcNX8Af4EGFVrcmteFwJLud30Qn54AJw1StUl2fLymPUpyq4q/
 TFMqaoDjUWjTQG9WgS+a7+09XD+LmaRU460/QhcXrExjRmg6G9rXlVi08urHV47x
 Cd+zIvrQYIEeja0zJAQ3lQzjdyTwvMKd3wS8QTCqjB4Wl1wF5EKGfQecfo8k2Kdg
 ==
X-ME-Sender: <xms:qwM_YSb2_yyHGTFILvfkS5qEZ5gNxUFrH039nCy2LqcC94W4CjxBGw>
 <xme:qwM_YVYOIEfRBp5oXNHGQD5K7RT7jlhmJGRxrsEzWk_M2lEsx-G-Ja-8Ahq6pjfYx
 43GcNOII36jP8RTXkM>
X-ME-Received: <xmr:qwM_Yc-2L9iHoeRfv2AuUXDhCod8wYzL8UCI77i4J9LNVbs1yCzQlKwig1sstlUeehRMupesSZjpxl8y44EDuyA5qbelzGeO7LzY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudegiedguddvgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
 heegudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qwM_YUo8RjhvzG1itXj-wb4NbexHe3mO6PZO9nrUu3St7r4v1NPFKQ>
 <xmx:qwM_YdrrjQxCRyoocyi3XVLb1LVaZ8rWke5r3pYhH0dXc59CODjplA>
 <xmx:qwM_YSTkMdTh6OyqL4MyRtkEwblNxGRqtOrTll-QHrlCFe96Qgvg8w>
 <xmx:rQM_YSiHQeCrBXAszl-g_7wRnf5eToxq8Xy16SfZF1xTIf-eFYQsJA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Sep 2021 03:54:18 -0400 (EDT)
Date: Mon, 13 Sep 2021 09:54:17 +0200
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
Subject: Re: [PATCH 01/22] clk: sunxi-ng: v3s: Make the ISP PLL clock public
Message-ID: <20210913075417.ampb2jt4quftpqzj@gilmour>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
 <20210910184147.336618-2-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20210910184147.336618-2-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_005426_829886_CD5126A6 
X-CRM114-Status: GOOD (  13.39  )
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
Content-Type: multipart/mixed; boundary="===============7153796871023527778=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7153796871023527778==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3eyvvraksbaukjuq"
Content-Disposition: inline


--3eyvvraksbaukjuq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 10, 2021 at 08:41:26PM +0200, Paul Kocialkowski wrote:
> In order to reparent the CSI module clock to the ISP PLL via
> device-tree, export the ISP PLL clock declaration in the public
> device-tree header.

You use clk_set_rate_exclusive in the ISP driver on the module clock so
it should prevent what you're mentioning from happening.

If it doesn't, then clk_set_rate_exclusive has a bug and should be
fixed.

Either way, using assigned-clock-parents is not a good solution here
either, it only makes sure that this is the case when probe is run.

> Details regarding why the CSI module clock is best parented to the ISP
> PLL are provided in the related commit.

This is relevant to this commit too and "the related commit" is far too
blurry when you consider the entire Linux git history.

Maxime

--3eyvvraksbaukjuq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYT8DqQAKCRDj7w1vZxhR
xTZvAQCBM99MGd6qVMOuUH5pAUXkNRCjmqWYffeGxv1bEMviLgEA9/VMtVKq1DGw
cYRuC53YO5a08nIT5L/y26XC1yd/CAg=
=3hm0
-----END PGP SIGNATURE-----

--3eyvvraksbaukjuq--


--===============7153796871023527778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7153796871023527778==--

