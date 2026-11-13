Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D822C606A88C
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 13:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ydyo6Ton;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eEVvYJbJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WnmIwOWSF2EDWT3Nct2GAuBOLrMyl6v0yn7Fh2/qcr4=; b=Ydyo6TonRw/anMMrVmYW5XrVDd
	IUDhf8nU2T+t6w11eK6J7+wUR8bgV7DRUMmshdYpYiOm64o9aHz3D0RF0PQqlVPNERuNy+edTuWjB
	KVv0Yzwop0zPu6OGvdtXjynB2m7uTFv59zRJsfS4Ly7QjesfQXYo5xIdsu1OrnWc2kP1Wh5ybRlvk
	tyRGs6agv4H/LFuMPG1Z2Hvy1cZmpz8e6RGFZySEgIHP0eY7YQNjx4uMgmxjlZMFKGsj3J5w94Oly
	B7vSx+R+qtGgpYRkuItTjg0Xz0ZND9AJW7fhvvgdaRkbMCUsUK5aVdJla0/JIFQiSRbeGISN7kUqA
	A8/3beyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrHS-0000000Cvf9-2QYQ;
	Fri, 13 Nov 2026 13:25:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrHR-0000000CveV-2Uow
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 13:25:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0D1F562708;
	Fri, 13 Nov 2026 13:25:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03B1A1F000C4;
	Fri, 13 Nov 2026 13:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794576324;
	bh=87DAMstUqyFrTOkp+5N+B4qoa6JIn93bjfBdPH3CuZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eEVvYJbJA5n7iAv8EVrA1Omkmb15yHwcuFrpBU10jMxnWjiUQ6gFXCgTNgcXeddAZ
	 XSOWrIM37rDch7kroRVh4iQePQ0pTvUXlQZlg/yIzt7Sq2LEUR3c/CF6b5V376Fhjx
	 mXUREAiQ3nHjDxY1boABoUsmgvToVXv+mooFCiEEjEsxVepyiS4UTIxM5amsI9gwsH
	 dtk6gSMkHLD/rXihtd9cp8O6i2zwdk5cx9sOhYU4K1Ee+SxzaEvq9lFO99fxs2rx/c
	 4AZ5+QbNjeK0HMSDjyIJsbAIO5LZHMGuX36m34OXpdDl5eqS95/g5o4vLJuqGfe//9
	 IQJ67ZaaFpbDA==
Date: Fri, 13 Nov 2026 18:55:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: sashiko-bot@kernel.org
Cc: Soheyb <soheyb_boulaa@proton.me>, linux-phy@lists.infradead.org,
	neil.armstrong@linaro.org, olteanv@gmail.com
Subject: Re: [PATCH v2 1/3] phy: exynos5-usbdrd: power the Exynos2200 phy
 down when its init fails
Message-ID: <avcPwEEAfCstmORh@parshuram>
References: <20261111032309.3365794-1-soheyb_boulaa@proton.me>
 <20261111032309.3365794-2-soheyb_boulaa@proton.me>
 <sashiko-outbox-208200@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <sashiko-outbox-208200@kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11-11-26, 03:32, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential
> issue to consider:
> - [High] phy: exynos5-usbdrd: single-word name in Signed-off-by and
>   Author trailers

This is important, please provide full name as required by DCO

> --
> =

> commit ea360718642a10fc523396c37cb054fd6d6668fb
> Author: Soheyb <soheyb_boulaa@proton.me>
> =

> > phy: exynos5-usbdrd: power the Exynos2200 phy down when its init fails
> >
> > exynos2200_usbdrd_phy_init() enables the regulators of the UTMI phy and
> > takes the phy out of isolation in the PMU before it enables the clocks.
> > When clk_bulk_prepare_enable() fails, it returns without undoing
> > either. The phy core does not count a failed init, so no exit undoes
> > them later: the phy stays out of isolation, and its supplies stay
> > enabled, until an init and an exit succeed.
> >
> > Isolate the phy again and disable the UTMI regulators when the clocks
> > or the phy-specific init fail. The phy-specific init does not fail yet;
> > the next patch makes the UTMI init return the result of the init of the
> > high-speed phy.
> >
> > Fixes: cc52a697f87e ("phy: exynos5-usbdrd: support Exynos USBDRD 3.2 4n=
m controller")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Soheyb <soheyb_boulaa@proton.me>
> =

> [Severity: High]
> Could the Author header and Signed-off-by tag use a full real name (for
> example, Soheyb Boulaa) instead of a single-word name, as required by
> Documentation/process/submitting-patches.rst for the Developer's
> Certificate of Origin?
> =

> -- =

> Sashiko AI review =B7 https://sashiko.dev/#/patchset/20261111032309.33657=
94-1-soheyb_boulaa@proton.me?part=3D1

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
