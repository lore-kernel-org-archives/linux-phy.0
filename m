Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64645606A329
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 12:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EEwcbelN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Wn0m+C6a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=igUAl1gZeQ/Tvs3ICtn6xSCUrNIG6tkaJW+6C6iZUTY=; b=EEwcbelNCMtYgsztFzftm0OWL1
	dNjUgbUaeBtmIhglFZvave8f5IVn09TUZgtSI11+5YD9C1m8JbFAs34GkFX+aGMiTcFSOs/j0Lxyd
	8q3bi1bhGjlUIZBfg2GSkEtB4iEMFP7PLW+/3W/G6Hm9ScV5Z2vjm1bLZ8jm5hN1nStoskJIvpPot
	PcqKcUvSVT2JPCqPa6CwWM7LjGvDCKYLswm7uQDS2kaSPjgeHavpWWI2sfbX/SzDOD/pKJ3DZ0mcl
	DRFMNgi0+A2WsOV7exL2qAk6c6cR4gpVqzPhcyOqsEABNujtGdg2AcG/N/omZRc7vfPTZbwFJFeed
	TWDbx+rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN848-0000000DIgB-0SzK;
	Sat, 31 Oct 2026 12:20:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN846-0000000DIg5-2Pmy
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 12:20:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 09742435BD;
	Sat, 31 Oct 2026 12:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EDB71F000C1;
	Sat, 31 Oct 2026 12:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793449205;
	bh=aC+ozKo1SQbQOnribQKSECUAZggGyzBm59lqVF1tIOo=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=Wn0m+C6aMhE7uVoLV2BVwEXr+GHb38ZUaXinLEPRHFjG/lnjQ4dZFfvtXyfCQHfXp
	 arVihC/zaPmkiH8hP1jnUxkrPr5rGStFGsxynFP+TTFv4cmbi+Uwuut5uBV4jMLHEh
	 NTqT6IPj59AKleG0mNw6RlcKjGxZyRp6YNiceiHqxApEewYwehiPUvI311yRk4kw3c
	 3LHhOByqcEl1TuvG3Xd0hvif0T7ojAFTcNzvh10ml0rx+omja63LWaR26hvTUEkKUA
	 VkIL0ZxUE84tc/WGjb8jgUGnIZf3U9OTP508kby+amxpI/TYG+BfL6xUEFCAeDeDYg
	 amOFwVYUc+MkQ==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: tegra: Clean-up Makefile for Tegra186
From: Manivannan Sadhasivam <mani@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>, 
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261012-tegra-phy-v1-1-3241bf3c86e9@nvidia.com>
References: <20261012-tegra-phy-v1-1-3241bf3c86e9@nvidia.com>
Date: Sat, 31 Oct 2026 17:49:41 +0530
Message-Id: <179344918143.5901.8981385742603582219.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=579; i=mani@kernel.org;
 h=from:subject:message-id; bh=UKIJFkSajcdCYHAY1RJJ/pyc1TD2FQZP6j6DLPWaSzg=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5dztue46volUCrz/xKgQVfRbKUG7RKrz8ThIo
 ZMvs92iuOuJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauXc7QAKCRBVnxHm/pHO
 9aShB/9p3OuLoAMX0st+401EKD1UTkEvFE7RWcx6prtgkrGWqavJs+4/D6GcqNrGO0e3SRaj5cw
 YqYzxgHPkPzBiehtRMCtq/37PwhGBufQnjTEhkm/io6AlAIdQdSrTZtx7y7X5h5XWm+JYbr3Xkq
 tQZo2f3oW9uoU6FHRe15XRmj2Qumi/Cs69Re7WPSHUSBjEZmNOeRLC5YEIxssPyLEb1+Be1W0we
 s7Fj2u9KayL+XrA/S6RWQesK/6ocMQgnnwimE87+vue2AGP6bntZKatqYUe1yXPP22OdtVzaSu+
 7zw70ZnUcxptzeeZf0tMfWuuWdtZ7VBywVuwFn6lX8uh4K1n
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

On 2026-10-12 12:16 +0100, Jon Hunter wrote:
> The Makefile for the Tegra XUSB PHY driver has an entry for every Tegra
> SoC that compiles the xusb-tegra186.c file. Clean this up by adding a
> new Kconfig option called PHY_TEGRA186_XUSB that when defined compiles
> the xusb-tegra186.c file.
> 
> Finally, update the xusb.[ch] files to use this new config option as
> well instead of using the individual SoC Kconfig options.
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
