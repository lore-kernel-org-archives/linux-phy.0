Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B630D606A32F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Uab17zJF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YImThQys
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QqcgMi2lfic6UCY2EksXsOZqi32802dXkcdn5lTDAYc=; b=Uab17zJFxp+rb/+bLmbYwtut9C
	Qtj1uUntRbppIinvNP0tZ+HpQRtbH8U3LOBV78i5b4TJMSt3wvJtz2mBbn4yvKS6WAnyutTrUo7es
	lNZAMvCCgEi0PoQ/LDXoUMBXlSzeUxs/0sAKNUKWfV+oxe5whYHw3bbfyE+cN+cbYPZEUFGh9xXUr
	AIpjax/bOw4vBbT3hkoJJXFgcU5HTIlIy7PaPF15ox8pSjdYEl26DWUz+Q37vkvX4LuT6K6wgtzUa
	yrDDBFmt621cpY36/S9Z4sSxOVoNcvUcXmeptOfe4r4qr8qXZoBeIItY+n2RBF1K2hqkQn5KSVPTN
	KSzqNxLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuPr-0000000FszX-3xmL;
	Fri, 27 Nov 2026 11:47:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuPq-0000000FszE-21pq
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:46:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E9D9662BDB;
	Fri, 27 Nov 2026 11:46:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 372C11F00897;
	Fri, 27 Nov 2026 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795780017;
	bh=e0HufnCrbwkRENqaUTq+NEd0cVHTOVONsuicA0+tDCo=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=YImThQysX7k1kghRoNxBwwJoK3K6Rv54lPXl8BrwPhuqSIWXig3PU+IUlosY3g13s
	 Qqet1DYQh4dPdq/UAIFNE2BsEu3o+nzrekFUUr4aPvGH+qV3CZidLa1zhXjmCIlubF
	 NfRo/iDbj43YG6TOORgY7nQh5ihhmgB7ZbeApqk6bo1NA7CUgeZZzAGObhge4wlUhQ
	 0kbxi8kFvEzrWrae+ruTBS/N6A4vK8TBsGbiKyOQ6i/Xwbp52X+l8Py8oiG1wKTfja
	 jkfjBxCCtSgilRl23Iifhin5TLZeabMVGXDdQP8/QGutLSFFKg5Y3xtx6Pw2W+a6Di
	 NR9br28eK42UA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: tegra: Set has_per_pad_term for Tegra238
From: Manivannan Sadhasivam <mani@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thierry Reding <thierry.reding@kernel.org>, linux-phy@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261106-tegra-phy-fixes-v1-1-b53911c20b77@nvidia.com>
References: <20261106-tegra-phy-fixes-v1-1-b53911c20b77@nvidia.com>
Date: Fri, 27 Nov 2026 17:16:49 +0530
Message-Id: <179578000996.13164.5620056529810127227.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=434; i=mani@kernel.org;
 h=from:subject:message-id; bh=7v7ZzyDswjHlWG9YeCVAqF0yGhyS0CCamtmJzUvcHRc=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCW2tT7Af073hCd9HHjD8e+gsM4C0Zagkvwk4G
 YBTWPaYSAOJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawltrQAKCRBVnxHm/pHO
 9agTB/9w3/OlGR3HvE16ajlvdAWOnvByjNN6UhXLBmOnTn6y8aZbi7BC8tIOjRwRk4yUqTiQd2/
 36Hg8m9rj0HJJzX6ZZmuPWhLQQqWEGcyzE5F8JGq3rCSYu/bHJjzyf7vFknUnQnmJrsmUSendYF
 IhPqw2dgNV9PkSlK+UTFciSXGngCKKf3dqqnN0101UI1KbsSo7B4LciT3ZFn1sVvjFPFaZk+YQr
 0SC1vuR+H4x4Uj1kp1nV0WQyEgqLJg3qvV4KqyD3T/e8PLvI+bmOwW+Aq6Xir0lpePkSUYBkpfw
 CfhnrNcpkpEtPaOl2PbuYgAhOnDYEhOnS8tt2SlD+GkkjeZd
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

On 2026-11-06 17:05 +0000, Jon Hunter wrote:
> The Tegra238 device supports per-pad termination, but this is not
> currently set in the SoC data for the device. Fix this by adding this
> for Tegra238.
> 
> Fixes: 8f56fdf3d8cb ("phy: tegra: Add support for Tegra238 XUSB pad controller")
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
