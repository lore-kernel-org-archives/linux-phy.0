Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFB02C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Feb 2022 13:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KFRD8tHl/cjGou2v0M+Bp5JqukaQAImxeEIFljc41k=; b=rKvJM70JJkiTgN
	Matnm6r/srhK5cJ0itNIRaHaWFkQhUBK1NmRo+45CUivGQE21A+L/3ryCuPXl3TO1x0bbJ8o374f7
	J5Pgvhcgu9u0KyBI4Bk7J57Ate9cBQE1nM0bm0kGGvkB5NShdgixOvsI/If+VkxC/5SHVDv+Ooub1
	GwooClDb0KMeneIqvyOVcBSqdNDmWxrKmU4u9G2kg5vC3fV4g3edK1Mqe/90a9OxtP/t/7rbMG3a6
	/zfF4nbXs1DeqBxFX34fQmNXpnAgKgHB+FJ/TwemX6G4OoA99UrBJQ5HQ4sqM/hONJlikt1txIBxS
	mcFu7di45yeP5xrbyViQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMV9y-009gZt-AD; Tue, 22 Feb 2022 13:24:54 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMV9m-009gYM-3y; Tue, 22 Feb 2022 13:24:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 28B97CE1300;
 Tue, 22 Feb 2022 13:24:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1BCEC340E8;
 Tue, 22 Feb 2022 13:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645536278;
 bh=Ljwz0VSQXW5190Zgm0T2BP+0b1W/O+Ow7Aa2IBiiJxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uDs7eL3GAGNXfHjTTA3hutWqTtkIDxMri5oGhDixQyLH/3rkzd+v/9MCkff3TqteF
 Oo4GzhAtMAbonNR3KLa1h4DRUe4qjpCHyS0zlSIcl0ysltKsmrKvVMgD2v1oK6wii8
 bampMKNu9HDz4zfsEbwDrPm9/3OXm32u6UDkj09bG7Gel3xxOyiaj3E8OxUgJr7s4m
 WYM4+r5egIPUaxeV7+r9kCEI1DM8bvOwijdoYCJ/gBfoB9SyrEw7xoCSvbh6WDwyGI
 1D/wwfZBi2qcggWNFVJ1LY4mzwQANydrKlggdDwicb0adz3uAQ4B8Uy6JefsWOKTNP
 rK+Vrtu87TDtA==
Date: Tue, 22 Feb 2022 18:54:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 2/8] dt-bindings: phy: samsung: drop old Eynos5440 PCIe phy
Message-ID: <YhTkEvnSbomEMuTF@matsya>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
 <20220129193646.372481-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220129193646.372481-2-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_052442_382614_CF9C4679 
X-CRM114-Status: UNSURE (   7.94  )
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

On 29-01-22, 20:36, Krzysztof Kozlowski wrote:
> The Exynos5440 PCIe phy support was removed in commit 496db029142f
> ("phy: samsung: phy-exynos-pcie: rework driver to support Exynos5433
> PCIe PHY") (with its own bindings), so drop the old bindings.

Applied 2-8, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
