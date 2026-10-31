Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962AD606A322
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Kz2E7B9N;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=i6B/eEnT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vL0uIFygzCNtJp3SU1ACu0RCuVj8/ZKclGnlZtudbuM=; b=Kz2E7B9Nz+2J6sRM1cw0grzFWb
	VWjIXqkIrCW8z/jwDC95m8hQBoWp8rOPnmKvowvZq/HDDTvRS/Mwflx263HOBScqRYuw7IWee2WTc
	YIAIc7oqc5c4gxnwyNGZuQnCggmnRE8JykpJJ1xKf0h/nwvFMqrsLWcSsgJ2Kcfdp05WWwOqr/FWL
	q5/5kCNlgW/cPNSaZMxirxdXEVbDI72sopo1mOm+KwWVltBM7vN/+NiQ5VkssrUs3BKHPY9ejSHDj
	XD5Nu/EdRSXFiV3f0o6EJ9dFpgnPw9XY2yPtQb3iNkJohZ1wzgafK9MHomxgCebNNGyekg9yzThoI
	aQhxtiCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7DN-0000000DG0g-0nxd;
	Sat, 31 Oct 2026 11:25:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7DL-0000000DG0Z-3GoN
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 11:25:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 893B140B28;
	Sat, 31 Oct 2026 11:25:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE0B91F000C1;
	Sat, 31 Oct 2026 11:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793445935;
	bh=InhSuQzX2Qo4hzloq59erNG6ntibb9DPk76qmN7oaRE=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=i6B/eEnTkVci7ph6JquDygoTschto3B+lsxrCoZFx3JQhbEr90uPF/4L8GaiPaQ53
	 SDH/nIjrSQ34mudAi38FUwcqsOSDHdPg8cKCF4JXpXFprxO3K5250D04sCnWQmDC/v
	 cMlnpZ6b7L4dSuPdam2aw/A1bALtfq3wceZSV7+ykfrcmK4liH+ioeSt/XZuz/iOu+
	 3Xy7HECf/R1xsSLc1GweUyDk38Jyk8YPuoTEGTZbM0usePOIIrWE3V3cOaWOQehzcx
	 N7G/o3ll8CSHr8ZupBPxbJrmm4ZEqOyTBoe3pIvp2LRc821lYkiWCdsNMr1twA0IFD
	 twmwXOz0W0rmw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 3/3] phy: phy-snps-eusb2: Enable AHB2PHY bus clock on
 Nord
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, 
 Taniya Das <taniya.das@oss.qualcomm.com>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261008015017.3359804-4-shengchao.guo@oss.qualcomm.com>
References: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
 <20261008015017.3359804-4-shengchao.guo@oss.qualcomm.com>
Date: Sat, 31 Oct 2026 16:55:12 +0530
Message-Id: <179344591278.3206.14914499205414660912.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=880; i=mani@kernel.org;
 h=from:subject:message-id; bh=Bp1eeyBcx+/7p6XDs+S3rrhEbdITENP1L4LWuigshjo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5dAmP5TdPemkNJ04zPS+Yo66I6VmLu2tFaRCS
 LWaWlfg7vCJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauXQJgAKCRBVnxHm/pHO
 9bYdCACmxdJuvqCRV6gRbLPk1KZkb800xMyYIZeKXr2Xy1e4Z2N3HR4sFSOek4M0mSQZtupw2eT
 QCery+34debBBQcbJN+9d19jjlz/x92YdGBuKkfp6EU+ARVD3XuK+FMtt1QK7lok7DSs8Grtdep
 wUzgDi6E9XDUU8WcV+EVT//B9rjR03gP0XKUyMiB3bByweCXBKKeuvhUGd+dxLXPRCxODNd93p6
 eft6ApNaKw8oqvYmci+2bC6PRCDIhCi8A+18kvlEH53TBKeOnjW4nKRDXqoh3NnXq2lGBz65zhc
 xklKiDrDSz9GRmNzQHD/MUtDNGKZ0ppmTo0h7u8P5ntfQbAo
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

On 2026-10-08 09:50 +0800, Shawn Guo wrote:
> On Nord, the eUSB2 PHY registers sit behind the AHB2PHY_0 bridge, gated
> by NE_GCC_AHB2PHY_CLK. The Nord PHY currently matches the sm8550
> fallback, which only requests the "ref" clock, so the bridge clock is
> never enabled by the PHY. When nothing else holds it, e.g. on boards
> where only the USB20-only controller is in use, clk_disable_unused()
> gates the bridge and PHY init accesses go nowhere:
> 
>   xhci-hcd xhci-hcd.2.auto: can't setup: -110
> 
> Add Nord-specific match data that requests both "ref" and "bus" clocks,
> reusing the existing Qualcomm init sequence. The bus clock is enabled
> and disabled together with the ref clock in phy init/exit.
> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
