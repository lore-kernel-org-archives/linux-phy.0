Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF42D60A2611
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rnMBZ3pb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=RQnq4qip
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=o/Of6Vmjt7UkQ3/vK1fsbkQ41vX8drMk+xMN8wUqFlE=; b=rnMBZ3pbUUiXT+PpJHXV5ncHrg
	KGy3Gu5ZLokKAj8HAH5dxE9akWOytJDqoA3Zqn+39B3R7JMouftb5O2YMyu1UrOu+aRLikJEnuo78
	nCFnbp9fgB3hHVZpD5gPsNZa1OiROXzdlBL8DFKotWVsYbJDMDYvJ0dtanyzA1eq3D8DfHvz92OiN
	8XYXp+e5HOFD1GKWq8zTB9XOYIj22EnZI8gVBcn7Uy8gz4tDOugR6/9adeyaOPuxK8hn3OUoi/z/2
	6QLteZm+32jb9yVGOEv8czOP8+K1YW+f3TjnlMWccNI+TgLdnusPk6pas645ipRvbD4+qQDxh6x0o
	OtMNlM4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQjK-00000009HX4-1pED;
	Thu, 12 Nov 2026 09:04:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQjJ-00000009HWV-01cd
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:04:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A206D4716C;
	Thu, 12 Nov 2026 09:04:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EE7E1F00A05;
	Thu, 12 Nov 2026 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474264;
	bh=zANsLWOkkKydSY36VvIkeP0ssVMGqXoqCZ7BWo9mDis=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=RQnq4qipuMERRhxQu8PeX+pFNm8wHKaDYbzMLOqWVWrqT9SZ/UswIg2Idu9UmXrOC
	 fSUu9cBigvmwF9SUrjk/8Z5+rntiW2o+GQG8AA0u/RsPR6YPFG03/7EPzwZvZlPUqO
	 zqo+3QUq+l4SrzOnejIiSXbS7SPbBAdnTKbE9d2T+oUAsE5EN0HOJ+MS1Th23tQgFA
	 iIxQijVq2O/pezsEG8wZtYOI0kS+KBMzUbaA6H0FfTroLwQG6aw9Iv18DovqDtUaZP
	 tcE3jqryz4cwaZU3p4X0n5TVh+G2SacZGZEWvzj1QsjXj95I529rjjKDrS0dQbOnaC
	 UCiVkdC7+dNng==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>, 
 Jon Hunter <jonathanh@nvidia.com>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261012-tegra-phy-v1-1-3241bf3c86e9@nvidia.com>
References: <20261012-tegra-phy-v1-1-3241bf3c86e9@nvidia.com>
Subject: Re: [PATCH] phy: tegra: Clean-up Makefile for Tegra186
Message-Id: <179447426202.428303.3201325856795215999.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:34:22 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Mon, 12 Oct 2026 12:16:31 +0100, Jon Hunter wrote:
> The Makefile for the Tegra XUSB PHY driver has an entry for every Tegra
> SoC that compiles the xusb-tegra186.c file. Clean this up by adding a
> new Kconfig option called PHY_TEGRA186_XUSB that when defined compiles
> the xusb-tegra186.c file.
> 
> Finally, update the xusb.[ch] files to use this new config option as
> well instead of using the individual SoC Kconfig options.
> 
> [...]

Applied, thanks!

[1/1] phy: tegra: Clean-up Makefile for Tegra186
      commit: 96dbc4521e9410912b296e1683a025815cff3fcf

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
