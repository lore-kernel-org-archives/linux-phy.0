Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF79606A31E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 16:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DU/Dkbyd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=bAivDR2C
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Xgj3I/0NhmxKtJF3iuq0FERgYI0Pfqe25A0McS/ARQc=; b=DU/DkbydkOyD4Gs2DMzO12acAr
	yXccLjpwadBXmhJzHlqwb9XY+t5ib4Bbb5SXfeunAqvpSOUakqMshlnYWFaXOilzgbNcHBjYUDCwb
	+IEuBSh77M3soIVbj3SbKBn6L19GnwggYEkjx+iT5jYo/YdQ5uxVBVUZBv7rLL2G6ZBch0khrIKRJ
	QNl+MXXH91vSZ/6dR7HRnoi8zRvIvAizLoEfRsfs2PrIdp6DOjvA3DiUFdz/2AfqmI/aFPRQ3Hu/K
	2jmCbacmbm9LkwYTK8zuU4Jn+Hzkwe2o6/uWIQ0x5riXGfR10/K52ELKEC+s57lnH3EmA68T1iunB
	r7ptLnAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWcH3-0000000Dtjr-08np;
	Thu, 26 Nov 2026 16:24:41 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWcGx-0000000Dth9-0038
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 16:24:38 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 7C795C2B9D2;
	Thu, 26 Nov 2026 16:24:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EA25860558;
	Thu, 26 Nov 2026 16:24:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B33F111E6914A;
	Thu, 26 Nov 2026 17:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1795710264; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Mp9D7pFPwCc0xm6C56ewwnHz36Xm2c9SF3YyvxKT0jc=;
	b=bAivDR2C35PhwnrRDbM0ubJtlM8WREdKoDtv8oyGFcLEbdkTrz41SLrg//H1eEUqhCzFlJ
	lzuFHTRbfcWExSuvEE9gNsYQb4b1644KMpczPnQVW3dK6wmMubxf3e/h+WOm9/GI3wYPt5
	6Vhj6/ihGRqvUv/ieBsQE8bp3ELAtBxFtdWj/htVxu5K9LON5kvq/IYvgWVKAJc48nGOQn
	j8ITNyt1NNe//9eE6bFqxqQnWcotDBl1xgwZjV41q0K7GWuwAckrnF+Qa6/5TCbSExclVV
	hA8sGg2w597segnATDIotV4Awrtdx4o40lkojytTIBzXrZrrqowzfZUAkBvpFw==
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Thu, 26 Nov 2026 17:24:03 +0100
Message-Id: <DN5A5LAYR6AW.X45Z2L7J1T4H@bootlin.com>
Cc: "David Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Yixun Lan" <dlan@kernel.org>, "Troy
 Mitchell" <troy.mitchell@linux.spacemit.com>, "Vinod Koul"
 <vkoul@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>, "Haylen Chu" <heylenay@4d2.org>,
 "Michael Turquette" <mturquette@baylibre.com>, "Stephen Boyd"
 <sboyd@kernel.org>, "Brian Masney" <bmasney+clk@redhat.com>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Paul Walmsley" <pjw@kernel.org>, "Palmer
 Dabbelt" <palmer@dabbelt.com>, "Albert Ou" <aou@eecs.berkeley.edu>,
 "Alexandre Ghiti" <alex@ghiti.fr>, "Yao Zi" <me@ziyao.cc>,
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, "Icenowy
 Zheng" <uwu@icenowy.me>, "Jerome Brunet" <jbrunet+clk@baylibre.com>, "Sarah
 Emery" <sarah.emery@canonical.com>, "Ze Huang" <ze.huang@oss.qualcomm.com>,
 "Dmitry Baryshkov" <lumag@kernel.org>, "Cody Kang" <codykang@vsit.ai>,
 <dri-devel@lists.freedesktop.org>, <linux-riscv@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <spacemit@lists.linux.dev>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, "Luca Ceresoli" <luca.ceresoli@bootlin.com>
To: "Guodong Xu" <docular.xu@gmail.com>, "Cody Kang" <codykang.hk@gmail.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 12/17] drm/spacemit: add Innosilicon DP/eDP
 controller bridge driver
X-Mailer: aerc 0.22.0
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <20261121-k3-display-v3-12-ec419e8e96b8@gmail.com>
 <9ec2f818084f2e723e8b82218a302258.docular.xu@gmail.com>
In-Reply-To: <9ec2f818084f2e723e8b82218a302258.docular.xu@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_082435_178604_9E0FB7D3 
X-CRM114-Status: UNSURE (   4.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu Nov 26, 2026 at 2:16 AM CET, Guodong Xu wrote:
...
> Luca (added to Cc), is module unload something your bridge hotplug
> series [1] is meant to cover?

No, I'm afraid it does nothing related to modules.

It's complicated enough without! :-)

> [1] https://lore.kernel.org/r/20261118-drm-bridge-hotplug-v3-0-44bb3b4a828f@bootlin.com

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
