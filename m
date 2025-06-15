Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A38CC71135
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 16:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fq4aS6y7OP6zzuHm6Y7BnOx2JQIQK3zE81muhlgu9CM=; b=DS+pU+AXKtEMwG
	Hh7Y2Ti5vu/zL1AYIAzFBb45iPsoNIbp3YPfGnJJoOrEtbuJyKKZZVHfwczhwDCTBykkX5pTXBovn
	R6xLcz+Koyr+7daOKloRZx96w2tY5kXn9zl6o4RK6PACA14XuG7kfoqQtHssemDI0KIL+oHmVC5h0
	CSP6jyNqTuuqUEVnu9a+8/f9SUAl/U7dOrWcswevwXa+fBCgYmF/jmXAMYOuV3TjFH5XeIm54Y/I4
	ijwikJu0IxbLWg7cCD+bPFOPKeWOOgAdeDTmCNhjMKWpPtkPfJZ1vjb4+mZjRfOcpJKZPINegVup6
	4jpDEw18yGRAqoNIz12w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqhL-00000002gbR-1GuI;
	Sun, 15 Jun 2025 16:59:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqaw-00000002fry-0pcl;
	Sun, 15 Jun 2025 16:52:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9F6E161120;
	Sun, 15 Jun 2025 16:52:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04B55C4CEE3;
	Sun, 15 Jun 2025 16:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006353;
	bh=hlUg8IDM4zWJ1pd8HLJwa83NIf3lmTk+9Z3o2zQhvAs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WiZbC1znAMaDa7K52Nf/TY/fIcOegC01bkKPxuTt1hRrTPqYpe+fbORTP3MB31HG8
	 2xeWMHxQnJPEvdVDyWn27XcTt90uaFQ9gpkDwme7sAQJp/E/lzSCZAnxpOMqeVMWoI
	 88Rymoyn+ljT+yYLn0oVR0N9yWqRDGuL9bmxu8nyhArOpyULYcEHnfcgrGhnHv32Pw
	 3Zr3hTAVEPSfA0NaCerqL6WkzeHMFkz88krMEU9/L8m96IbOY9Hixt9XMjbmgxmvT+
	 UlJky5RzitecvUvcPpxYUrQV5CQxWgFBIsO/wdrjgQrfKbHR1+cQVkGnJZ/diPYhbY
	 pUxRcyXcujTgA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20250612-exynos7870-mipi-phy-v1-0-3fff0b62d9d3@disroot.org>
References: <20250612-exynos7870-mipi-phy-v1-0-3fff0b62d9d3@disroot.org>
Subject: Re: [PATCH 0/2] Support for Exynos7870's MIPI PHY blocks
Message-Id: <175000634865.1180927.7761964733755731210.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Thu, 12 Jun 2025 20:39:28 +0530, Kaustabh Chakraborty wrote:
> This patch series adds support for Exynos7870's MIPI DSIM (for display)
> and CSIS (for camera) PHY blocks. It contains a single DSIM and three
> CSIS PHYs.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: samsung,mipi-video-phy: document exynos7870 MIPI phy
      commit: 2ac5840594b2cc2b41116f708241a2a61d9108bd
[2/2] phy: exynos-mipi-video: introduce support for exynos7870
      commit: 543f5e314282c4c2e5114f88ddecc9aeaf0985e2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
