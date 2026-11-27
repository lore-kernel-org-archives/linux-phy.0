Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C966A606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 12:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DzkWhHwW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ZO7Xi66x
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=o7O7q0gTUgY40eeXNgKXsrfApNlC+vc4H6O/75HB9w8=; b=DzkWhHwW7f5zeP579MJvXmBzo6
	hS8HsBhCiViArWTy4aldbYgaEwcO9xWu5dwIM5IRq1A3tclMfWtFP5Kjp2ORxp5a8BcbBa/gV+zik
	ZMRJTB8uPKNa3fI20jRCLoANPsRHPclZvqf/k4UpI4l3uqqLBhgS8QBoGld1Mb+EzadgYjzouHNtD
	SSsOeqJTutRrZTepKZtnQOtY2CmOUwis0WbgK+qkzvHXN3evT/+5JGnEQW5KQi7Tepe4lmdyovB2h
	WfbMhDftiIsA1eI9eGEaigVSH4l0bSvQ85GBhhGu2xXoSeQEgcfvgsmyaEukU2gVZURWnV9ugiX7K
	CZJ4RVKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWv2C-0000000G7gD-2IHZ;
	Fri, 27 Nov 2026 12:26:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWv26-0000000G7dn-3goR
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 12:26:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A0B9042AEA;
	Fri, 27 Nov 2026 12:26:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 421111F00893;
	Fri, 27 Nov 2026 12:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795782390;
	bh=1YACHt856w6M0a4jo14ZmbPRV5xm/2QHd8y3Uh+V8Gk=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=ZO7Xi66xJ5eiZwNXBLa6BLoDGR5aSVF6bLsPgtU5erQWnMtBt1g7CPJSLW1lJgTk3
	 h184At0WELaNy1wZNHiNuIBarbC16ljGPUZOdDLz2XXn4+t2HkJ72WMvyr7ZMNW5H6
	 n/xS4GyVTHOcuvBxZxERz4s3qigBh859Eux+ovEvbj+g87ePU2cuIvmqkGJG3M+vxr
	 0wbB117JpOIKUF4SjaaoNUEaZ/znTcqpPHrsMdoFYJb25m0jJlqchEAF7ayWVmfnWI
	 uiDG2RJT9U/o2WODwEFHqCfXep6FaJ4ZADm+v2ljSrfOrSAgkVRFac52JJHKJc0a5t
	 hfVfNY117NhBQ==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] phy: qcom: qusb2: Add charger detection support
From: Manivannan Sadhasivam <mani@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, 
 conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, 
 olteanv@gmail.com
In-Reply-To: <sashiko-outbox-209554@kernel.org>
References: <20261111-shikra-qusb2-charger-det-v1-0-5a9d919c66b5@oss.qualcomm.com>
 <20261111-shikra-qusb2-charger-det-v1-2-5a9d919c66b5@oss.qualcomm.com>
 <sashiko-outbox-209554@kernel.org>
Date: Fri, 27 Nov 2026 17:56:23 +0530
Message-Id: <179578238331.13164.6583098975209053616.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1067; i=mani@kernel.org;
 h=from:subject:message-id; bh=VYxpysZXxFobWWtLDUihdSzI2UlztsyVeKhdK5npJRk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCXby9x1ZaO4NWT9P4PUsywKWTFXs45JOc+QdI
 An/QvY+HWCJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawl28gAKCRBVnxHm/pHO
 9TVVB/0Y+Vq4sa42sXamq1cMKzbxZ8UlW709+zGCKiJ/HruoDc75IYPtg7vUEUu38Oit5DhL2SW
 acL8lNzP8Akcg05LiZTObO/lKcBr+aC2y0hw0cQQmDiNzaLNEduWJEZY8bJ47V/2RKohmK26lq5
 E2IRpV0/pV/6c5Ih/1s6xDOxn41JcsnoNlqt6fR62pjcsevAd5zJ3hBLxGfYkDG52OVyTJo93c8
 63WJEmD++XkAdWDD4YiUjIQynBtTJCMjmRO5JUU72r/2VTuis8Vqx1I1jd+nuET+TZF/VGQGktS
 bYTyqfqGyakGCEA+w8ta3MTpekN8Qfr4g5c0VHqaYPaqJ3ms
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-11 19:23 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 10 potential
> issues to consider:
> - [High] phy: qcom: qusb2: unbalanced ref_clk accounting in
>   qusb2_phy_init()
> - [High] phy: qcom: qusb2: charger detection disables initialized PHY
> - [High] phy: qcom: qusb2: PHY left enabled on USB_ROLE_NONE disconnect
> - [High] phy: qcom: qusb2: missing teardown of work and role switches on
>   unbind
> - [High] phy: qcom: qusb2: missing Kconfig dependency on USB_ROLE_SWITCH
> - [Medium] phy: qcom: qusb2: clock and regulator leak in
>   qusb2_phy_init()
> - [Medium] phy: qcom: qusb2: race between qusb2_role_switch_set() and
>   work
> - [Medium] phy: qcom: qusb2: mismatched register writes in
>   qusb_phy_drive_dp_pulse()
> - [Low] phy: qcom: qusb2: undocumented new members in struct qusb2_phy
>   kernel-doc
> - [Low] phy: qcom: qusb2: hardcoded charger name in
>   qusb_phy_notify_charger()

Please take a look at these and also drop the spammy dev_dbg() logs.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
