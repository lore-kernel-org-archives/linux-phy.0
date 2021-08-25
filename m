Return-Path: <SRS0=wJWm=NQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E74C4338F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 10:42:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6725A610E5
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 10:42:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6725A610E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IzsIqaFNMNFSGIV3YqRmWzmH/XClABt/LDHtS1aqVzk=; b=WSzCUV+sq6385y4wNAsPzR/jpq
	Ntp9uKLVpkAxDlTtzqfW35ui0Pdu9mYg2DFl79J3noOfKD8f7wgeZwSPBGsL7n3LBS32v0K8bytRz
	Rgqpfy/jn0uJG6UTYX3OfXLb2Dn/5KpLIYtbpRBs1fTIvGB+TvZYDjF2lAN9kYJ3dN8v6TLbtV8Xs
	PfgikFI9QAGdKbb6HdEvJ/IUIC1IwYd0FYP2umxaU1CkCwBvflbM4edM0yD6vIy0iQoMCJ+gc3yui
	UgbapJQALYNmV8SWJjQi+UgzVoG5CQ6VCvAu0f+XfqTLWmVu3932unMPs3XayiT71KgTlUDnNa+T2
	I0SHdYng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIqMU-006avp-K9; Wed, 25 Aug 2021 10:42:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIq82-006UBs-Kj
 for linux-phy@lists.infradead.org; Wed, 25 Aug 2021 10:27:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 14E3161212;
 Wed, 25 Aug 2021 10:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629887249;
 bh=/dGcdnDJQSuikSxYpLybghGo6DeDQ9TcuR3g7ByXcx8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YzQfIITYt+EvmJkw15OcJ5ISgWzmfAAa9l1OY26UMXJYFyuibz1c+h+8Mk1FZCuHQ
 kAJTQSl0ONbTNT/9lrv6hzN6QhLVWUwE815h7VOrCdY8YvCWgS3u1bctTLujiM8iyu
 M2sRBLq78Vru85NB9m3LEF3gSubrENg5UHN8Qhq244f/WJpBeL5APGDRjTizsqga+P
 R+am+zkLRFhNBWRZjsjF1VkOahqzMZZHXYrgTUgbynHQ0MUTdn3jtNfP6dJ5fNKPOR
 2OS8+sxjO8jOeELe4bpM0maGGU4KaC22/bulQY5Ka345TX0/+psJIL/4XIVTsRsbp1
 lpZrdGca7ZZAQ==
Date: Wed, 25 Aug 2021 11:27:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Vignesh R <vigneshr@ti.com>, Marc Zyngier <maz@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Use 'enum' instead of 'oneOf' plus 'const'
 entries
Message-ID: <20210825102701.GB5186@sirena.org.uk>
References: <20210824202014.978922-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20210824202014.978922-1-robh@kernel.org>
X-Cookie: MY income is ALL disposable!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_032730_769369_4ECEDCF0 
X-CRM114-Status: UNSURE (   9.97  )
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
Content-Type: multipart/mixed; boundary="===============3267606965750541460=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3267606965750541460==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ZAtKRhVyVSsbBD2"
Content-Disposition: inline


--7ZAtKRhVyVSsbBD2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 24, 2021 at 03:20:14PM -0500, Rob Herring wrote:

> 'enum' is equivalent to 'oneOf' with a list of 'const' entries, but 'enum'
> is more concise and yields better error messages.

Acked-by: Mark Brown <broonie@kernel.org>

--7ZAtKRhVyVSsbBD2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEmGvUACgkQJNaLcl1U
h9AfCwf/TPAwmd3i8vLyV5kU4MWAOn8zovhbZ+gXG2hJek5nLRjdW7eTl2yXz1gx
xdOp2MMA5ldnXUjncRKHMJYykdL7ZtEsOUWT44WgHT0h1WEQzTHSnoVgkt/DDbsP
tuovH5NV986VPCJXIC+mBkt5a4MPzdD1nYVmPss+8R+HXfTRZauTlZefXvwCzNDT
Md/IxPvIbcqw5Ks12P4kdojbEGB92MONTO3vRYkzCeY1toRL9fOY3DJE30Kd6o3+
hzCYzeRkTgoibpK8oG+ZqMOJ38/shj8Wiyfovdhd7LOj9orgkbGdGRi10R1997IR
tDWFSsOVWZ8p+r2ZuI06T7GlVjygag==
=GpUP
-----END PGP SIGNATURE-----

--7ZAtKRhVyVSsbBD2--


--===============3267606965750541460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3267606965750541460==--

