Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D89DCA0FED
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 11:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:In-Reply-To:References:From:Cc:Subject:To:Message-Id:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yoOwohw8tXKodUxgxWio8+i3v3g2zXXtrc+VreGT2VE=; b=aOmilJo3J6z9WNt8RtP0N5UopS
	fc0xa9GK6hp093FTZWnIYwEb/aPEOrOVWjFUkxpQ1iclIz37q/xQfN/7aOhsJwGWsYMfb5E8uV9Fx
	bz+cHNid87dWe9Y7QxnYvg8AiojKwCHtX4c96bHPMip3oWJXhPexfcjV4DWIZIKmOzvFnHegsi4AA
	YRTCA8FEntrLd9giFo79LpY4vIQLqDahWz+gXFfqKlfXOnceNdjPdimPm5ZsQamMtGycKGN6+Pcee
	2nJgj7I2YstLO1JD+1xkEQ4U0SuV0xrVSrzZDMKOaQ16nn1/Ko6GRz0lpob3dRJ1MuS0JxeSzs8jE
	xbeoNq0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upQGJ-00000002NWM-3Xfb;
	Fri, 22 Aug 2025 11:48:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upLWr-00000001jRo-3raW
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 06:45:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2459F44D71;
	Fri, 22 Aug 2025 06:45:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAE66C4CEF1;
	Fri, 22 Aug 2025 06:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755845137;
	bh=omBsa6zg3zEkUZ8XPsuhRArPZBawinMCLE3fBZ3rG14=;
	h=Date:To:Subject:Cc:From:References:In-Reply-To:From;
	b=hsThBSg8GrU3PKC5cxqGeO8LunOyn2dLX2lVh0ZPC9a79U4RQ+mQvxZmuTO424p/k
	 L7nv+8601alzC1fV8fscnttFeFD4CWPhciqDf6Te8LYCL0iKgWPHSdJenhauAu8Gcq
	 cxl6HQHV2qlu69svNYSrLXjwU9gWz0nk53IBHl4DxQ//vHutTHeoYSIguF2ZY3jnKO
	 LqH6S3HDiwhHeaukhohRw6sCz+zxvXTznofMx+/p8iVakvvYBKodFL9rH+eNTMgawg
	 GIezinZZWxh0Ktbukw5T30xeg7eU0zwrR41227a6+fwTjldl9ygLbp+9smzGDtUV6K
	 9MP3P7F6yS9Ig==
Date: Fri, 22 Aug 2025 08:45:33 +0200
Message-Id: <DC8R5IJ2Q88K.YKUE9X9FZRNK@kernel.org>
To: "Jakub Kicinski" <kuba@kernel.org>
Subject: Re: [PATCH v3] phy: ti: gmii-sel: Always write the RGMII ID setting
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Siddharth Vadapalli" <s-vadapalli@ti.com>, "Matthias
 Schiffer" <matthias.schiffer@ew.tq-group.com>, "Andrew Lunn"
 <andrew@lunn.ch>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>, <nm@ti.com>,
 <vigneshr@ti.com>
From: "Michael Walle" <mwalle@kernel.org>
X-Mailer: aerc 0.16.0
References: <20250819065622.1019537-1-mwalle@kernel.org>
 <20250821181850.6af0ff7f@kernel.org>
In-Reply-To: <20250821181850.6af0ff7f@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_234537_979750_41DD2E0A 
X-CRM114-Status: UNSURE (   8.59  )
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
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============3769812189745490004=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============3769812189745490004==
Content-Type: multipart/signed;
 boundary=779a16bbfde2661f3fda3a5f16cb49374c69836b808b08825fd0cac1a722;
 micalg=pgp-sha384; protocol="application/pgp-signature"

--779a16bbfde2661f3fda3a5f16cb49374c69836b808b08825fd0cac1a722
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Fri Aug 22, 2025 at 3:18 AM CEST, Jakub Kicinski wrote:
> On Tue, 19 Aug 2025 08:56:22 +0200 Michael Walle wrote:
> > v3:
> >  - simplify the logic. Thanks Matthias.
> >  - reworded the commit message
>
> This was set to Not Applicable in our patchwork, IDK why.
> Could you resend?

Won't this patch be picked up by the linux-phy tree?

-michael

--779a16bbfde2661f3fda3a5f16cb49374c69836b808b08825fd0cac1a722
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKgEABMJADAWIQTIVZIcOo5wfU/AngkSJzzuPgIf+AUCaKgSDRIcbXdhbGxlQGtl
cm5lbC5vcmcACgkQEic87j4CH/i5YgF/fKwXxjLC3WMRXP0gyjLT3q/3ejsVs+c1
xALeKL1JKMPm0+VQrKkqcL/DJxEDvmmtAYD0ySfqphFuONyMFycm77qU473WwikF
anbIYoYoQj6GCM034VCIOA0pLy4DLx3i7YY=
=wmNF
-----END PGP SIGNATURE-----

--779a16bbfde2661f3fda3a5f16cb49374c69836b808b08825fd0cac1a722--


--===============3769812189745490004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3769812189745490004==--

