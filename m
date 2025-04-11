Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 153D3C369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARUpHnoHQLLM7rdbtIIJF6dHVDv7UY7V2HY3xrHgVhQ=; b=3csJ3DHV9qkJrD
	kRIBCGBnA4B+glYwchPN9L+W55oLHc7i3NNM1+Z54GowTGlKWX2xkJXH+iiUzBVTTPm3SHN2nYVtz
	AbhIRNxD34ATXDMRVTH/Tfv1cg/X5+LND3gRlwnwrDjXSCtWEt9LruBpF06/jIwMr0/Nf/U6VTuHm
	e+lxpEyOOz2zi31GJLzFvg5VCyahaPoBPMMF7z+oaslCZVijyteyOcEgn1s/LJPAQVyKoCouU6381
	4FxQoFBMdYsdBSLKVPweHuwUprRsMevjKH9J559tVlwMazwypaCv5oTrpzDF2lE7Khjf3vp/znq4L
	w9Ws7Hddxdz0Y+FHza1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DIi-0000000DhdG-3YDc;
	Fri, 11 Apr 2025 12:16:04 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDe-0000000Dgaa-0nIP;
	Fri, 11 Apr 2025 12:10:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 013B3A4AADE;
	Fri, 11 Apr 2025 12:05:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72BC1C4CEE7;
	Fri, 11 Apr 2025 12:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373449;
	bh=8UJVV5Fz36IAbJkObz0XEdemXb50xF/yasXI52r/U+M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Qv/HC1U2J3/8PruNyRpxqmcsFlDP346pGbsOn5Nv6QihFVAc/z2r8jgYlms10gjh0
	 x13ETk9epDlXd8BPCMPVVp160/0jhtnGlkZ0xXb8CrT8itRxWomLXut6ciIzjxCGFF
	 g8vdp9zF/kI6UrFR/PGCQ9XJZyBe+W80SjluYpXg1BiN6FYhO8Tq98MZJ6k7laioUw
	 EOLjtkI5Yndn/C7iiz8DUbyEyn47+D/75QOkGfYP5FnC2eNU9y18roqf7VYflORUVl
	 N9v4+B5AVNWgEi7lDn43yTW2Zxo90AZmQNt3N7fY4ANL0bXiTvYUKNWAo2EkFTAxUC
	 YZEeMQABE0aYw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250410-exynos7870-usbphy-v2-0-2eb005987455@disroot.org>
References: <20250410-exynos7870-usbphy-v2-0-2eb005987455@disroot.org>
Subject: Re: [PATCH RESEND v2 0/3] Introduce USBDRD-PHY support for
 Exynos7870 SoC
Message-Id: <174437344510.673939.9919903469471924069.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051050_295736_600E3C77 
X-CRM114-Status: UNSURE (   6.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Thu, 10 Apr 2025 14:01:11 +0530, Kaustabh Chakraborty wrote:
> Apart from introducing driver support and documentation, this patch series
> also introduces a masking fix and non-functional changes.
> 
> This patch series is a part of Exynos7870 upstreaming.
> 
> 

Applied, thanks!

[1/3] phy: exynos5-usbdrd: use GENMASK and FIELD_PREP for Exynos5 PHY registers
      commit: 9b6662a0f715b3f43b42c3aadf32fa6ffaa8890c
[2/3] dt-bindings: phy: samsung,usb3-drd-phy: add exynos7870-usbdrd-phy compatible
      commit: 23f793850e9ee7390584c0809f085d6c88de7d3f
[3/3] phy: exynos5-usbdrd: add exynos7870 USBDRD support
      commit: 588d5d20ca8defa5ba5d1b536ff3695f6ab7aa87

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
