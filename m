Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF49606A31E
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=L2X2NC8K;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=MU8hDDy1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=43hGbo8claQUsnctwO90NH5yvVQsLrxKotCjT+BLObM=; b=L2X2NC8KNJmp/PuemJvbefWh5O
	3W4fX+TCbH4QIFK+lqU9Wm8/u961mfcQHnJQbkNMqGoBCHrRgF+x1xjjkbnf63gonbI1YJfjuH+fR
	IyDtPlW5DSTMxpLtrTc2//ttMzWCc7bRErW1LSisw2/omlHImPh1iopBBsbirkVgLh/r30Dy/nJwY
	AjXyvPv8KzaISP8L1KBOPaSp4DLtZhAMlT2eO1M1dSAalBqTLMR5RDuvEWhZ5F31jzxVglG0Fnrej
	iNjQ+GYyGovF3i/apJ0nYr3iZtV+A7B4Z4tgfXde5t0JFket5KXIKgVNGC7WSrLhbMqAn5yz/dt/0
	pr7KpF9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7Bq-0000000DFxm-0DRX;
	Sat, 31 Oct 2026 11:24:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7Bo-0000000DFxg-2nWx
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 11:24:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 18B7140795;
	Sat, 31 Oct 2026 11:24:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E898E1F000C1;
	Sat, 31 Oct 2026 11:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793445840;
	bh=XZHUr1oQEOeLBP+Qq36pZIDbK8j5Sb1VVuyeQgaaoms=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=MU8hDDy1pTM6qPzGLbDdWAvDuoZBe/le9Z8ZIvvDUwWNtoTjRX1wQ2J8ZYcUtDdS5
	 1cCUyQkF+PhZQo1uPjDa35uHYuFcJESkeiCgCcZac11+MPlcv336JuEktU7qUBzc9C
	 Whjx1s7HKv5c9QSG912G1yBaRXFGiy28w9KwozPr2r8M/8NJ2IDgwBXcGuAqALwgWK
	 dLCoKKtFtih32+KFT0fxLTVfEtxNUVHtJhpIFLsyZ3pVe9XWZdwq8pSJQnucRZGnYF
	 8X4s7qZbi0BCaSxfqFcOfxotAA4S3gqjLEQ/hD+IsNjw0ayTUC0/I09lAbV5yTcjaK
	 8kwR3bsgkKbaw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2] phy: renesas: rcar-gen3-usb2: Keep OTG VBUS
 disabled until role is known
From: Manivannan Sadhasivam <mani@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Prabhakar <prabhakar.csengg+renesas@gmail.com>, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20261007190654.452376-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20261007190654.452376-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Date: Sat, 31 Oct 2026 16:53:30 +0530
Message-Id: <179344581059.3206.8395416724192046501.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1843; i=mani@kernel.org;
 h=from:subject:message-id; bh=OBVf5IDGC4FyDWwrDXG4ci8tf+G7ymk2LQoN/g2ar/0=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5c/CRVkT28t1w3FlzGzVopt8Fuc8xm8t/K5RY
 EhPlGorbHuJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauXPwgAKCRBVnxHm/pHO
 9Wh3B/94PqfA3+V/K1QqYPi5HU3IJ8VCgumeZnUj/7deLmMWM/52z9LJjbXXwg4XBh9KZaL7Uy7
 VWqbYDTh3wsf2IaJPLuVFi200YlVqYJ4zYZlVZ227MQDtM1dzYoABlIrZNeUi0JEt1VTry+9Iir
 hvQ6tSlLVl5Zt1IHvwxNKfklQ/lgPODtmrpMg0YerG/wZ+ou8C1DRamapNH7rsbLlugGArOJNL5
 UAf4GBbRCHEguEXfaol4KpV0y7lfbtQbUMn7v3VRA147uwDcv9QMJKqv5kPZv0v/ZR1fewD5eOx
 KYcwUQ12VgAii4fBzIcKBBj27mc9ZHKoMi5x+txMaUU+N93i
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-07 20:06 +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> On OTG channels of SoCs without ADP control, the VBUS regulator is
> acquired with devm_regulator_get_exclusive() and its output is switched
> by rcar_gen3_enable_vbus_ctrl() using regulator_hardware_enable() once
> the port role is known.
> 
> The helper acquiring the regulator has the following problems:
> 
> - The internal regulator is unconditionally enabled at probe, so VBUS
>   is driven before the port role is known. If the port is connected to
>   an external host this can back-power it.
> 
> - regulator_get_exclusive() hands the consumer an enable reference if
>   the regulator is already enabled, for example by the bootloader. The
>   unconditional regulator_enable() then takes a second reference while
>   only one is released on unbind, leaving the regulator enabled and
>   triggering the WARN_ON() in _regulator_put().
> 
> Fix this by making sure the driver always holds exactly one reference
> to the regulator: reuse the reference handed over by the exclusive get
> if the regulator is already enabled, and call regulator_enable()
> otherwise. Register the disable action in both cases, then turn off the
> physical VBUS output with regulator_hardware_enable() until the port
> role is established. Enabling a disabled regulator to take the
> reference may briefly drive VBUS during probe; this cannot be avoided
> with the regulator API.
> 
> Rename the regulator helper to reflect that it acquires the regulator
> without directly enabling its physical VBUS output.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Mising Fixes tag. With that added,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
