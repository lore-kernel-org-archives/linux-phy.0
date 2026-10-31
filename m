Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73178606A31F
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 17:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fQ0icnK0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BMaEYJnL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kfHxdJUhse2mTQSEudK+lihNMmWVEAdVVXCOgH3+hDs=; b=fQ0icnK0cqtQkaKS/JMrCPnWhd
	d9+glU2MInxwg1MSUfs34X0eurFCO3u8IFs7fN5MDQyXKCVz2A0yGAzy7PH5Pv6WS1ZpD1bMVeE6m
	KTlPQfCmbWOs4Gl9/8r28ueFk5cCjxK4fEfn1maqEXCN4sgRRon7KxZcpN24n8M+sjr1/Jnbd5nAM
	i3PNXodC0aH1qmmY1V/rlCVqJEejAUY5ViBfLjnoY1VXGMqMQbXgatjIssFNuQYVqvXyKOT+n6+HH
	ATEY0J0fhAzOGxZZtCIrUhBlaRgAC64Dd6aKYBude3VXftUGKWfk2NTGCukkEtV1ywjbQj3T82bOh
	Iens9M7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNCd4-0000000DWDr-0Eu2;
	Sat, 31 Oct 2026 17:12:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNCd2-0000000DWDW-2oDq;
	Sat, 31 Oct 2026 17:12:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6D23043F01;
	Sat, 31 Oct 2026 17:12:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98A331F000C1;
	Sat, 31 Oct 2026 17:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793466748;
	bh=GMNH5PJ1zs7wQCaXmS01TMbB9K7ZhNKKB1ihknjVnC8=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=BMaEYJnLIefXDhMWLYdYrrhwXQE62rpfq3dGqj1AU5EeKwav4odEooNw18M8CdsEg
	 DEGl4kyl//DaTlNwlg1VNv3NZiZFugdHqRvOYJP4ZvJVhFPIs5ZesfSmdB5joFsbpl
	 wAs2WapbBCTDFiF0Ly6CveX03Vo9O7TlTeLLqqa5/bnMmPkLiTd8YTULcRV6A17LmJ
	 GD1yJL0ak/fit75+ROYgl81226cPJPYG3jQxm40/lZRIRlUgJeD/90s4GscR1zcraz
	 aTwjKCeDD6uR7R8S8FVYtzxBOtOIWnfxnjiz0gNdt/BP11sSUwujk1Dhuexz3rElJX
	 Vcjr/0y9SvkUA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3] phy: mediatek: tphy: simplify main allocation
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-phy@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
In-Reply-To: <20261012173402.24568-1-rosenp@gmail.com>
References: <20261012173402.24568-1-rosenp@gmail.com>
Date: Sat, 31 Oct 2026 22:41:57 +0530
Message-Id: <179346671702.7309.17461254006600303157.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=398; i=mani@kernel.org;
 h=from:subject:message-id; bh=21ALoJZRF1WHs+ZZUeTM9Q1HsKMp63LeGtOBM/EVfUY=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5iFgeuOv1+eLZ12O13MSJlXCmdg89j4NckzP5
 UYGpyFFwNaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauYhYAAKCRBVnxHm/pHO
 9UuHCACno9GivkxmGWGngNdtOGaQSYyvrb833t8/wh68gbuSJ1dIa5ReLAvEYO4lpDCA0wToCRM
 k44utPmmDO+2JxDg2MYNr9C+GIbto5pnYY5tNolcefbrnc1e1H2Z7yA9gOye0Ercntu9EO00sCL
 ZcKgNs35e7SYHzyGpGiuhkcOXH9HFv5aok0KTRRJ9ArHXZtjtPxqYk2Ia8S+twFddHii528/gnV
 nDLH/5sqEH6NIf5gFoGnyyDrLaxMj3XFsjNB37s0PIcuxZKTFHqfYpxjsBGW4M+IIw+WBWoD3Xd
 g7Aa8T2gx/abXj3uTO2Wx5bTy5EHhPn9kerkN7MRsELoWTfR
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

On 2026-10-12 10:34 -0700, Rosen Penev wrote:
> Use a flexible array member to replace kzalloc + kcalloc with a single
> kzalloc.
> 
> Shuffled some code around as __counted_by requires the counting variable
> to be assigned before any array access.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
