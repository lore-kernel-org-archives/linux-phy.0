Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB773C71136
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 09:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLmM+JL9QJ/pZ2gO4QK5U9+AAHwsQWH0HTRzbmy6Awk=; b=EY+iiIlDjncU/8
	sRz+QzVjY+39esCSzRl2C/PqobP4TEMfTFW/npE7DXx5WhVsXkF4wnif4buq8xMGkaNh+4UtOgpZx
	3/c9ZTRtzeE904cbXZBAJz4FUj4sJvoiofeSBD//+byJQ59I9FdMeDU0DTwo3GqH9e2WxRtIoFeTD
	SDaPrhyFneLaYxKvNi3pvAk54Tf2r1FdBb6Tje59TEQj7xgRS2wcdzjV1efBmYY6yE4LDr0XU8p24
	7U3L4aUwaNArcAX6ZaKmwfUQ0+DYOhmgzeyblrFyDvgt2HX24sRaN9oRgVfkM+U39dCLsHk3Zoz7K
	cpR43lYNoyC/Irav7PhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR5j3-00000003s0W-1jrf;
	Mon, 16 Jun 2025 09:01:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4y6-00000003l8B-08Ig;
	Mon, 16 Jun 2025 08:13:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B904C43750;
	Mon, 16 Jun 2025 08:13:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36932C4CEEA;
	Mon, 16 Jun 2025 08:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750061605;
	bh=Kq0/NHfiOW69ee8arNzKsB/koE+Zv0tWJzpNm2rPZOU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=btSDlZrfDdRNhNlsevRVgQ0IoCfm7JiXJj/a3cxwIHxADnClV6FcqpQvhAewK8Y5+
	 VYdOIRe4orlgsn2ITqZto6IBjWldF0fkA+3r0TsEE4GuHPfVtztid/vyWC4sWvsLGR
	 gh8G3nyh7XwycDqtgQcwtFQGjUgCMst+9nK6s92SMpL9ZpkbCKgljiyJxaaV6THUbz
	 pH11vfEv8PsuKTH3jlbSNTqPQa3ENY4sEMoC/JRG0LChCq2VJy5yiIELRbBD9l5I+W
	 2eRy5dA4+ZVZ0r0YOxdTjnf63lQIyIDxMyXf2BFx8Rti3etiCm46K/r6iQAHnDBPQu
	 ME3QN27i6z9og==
Date: Mon, 16 Jun 2025 10:13:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org, 
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com, s.nawrocki@samsung.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com, 
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com, 
	selvarasu.g@samsung.com
Subject: Re: [PATCH v3 3/9] arm64: dts: exynos: ExynosAutov920: add USB and
 USB-phy nodes
Message-ID: <20250616-remarkable-zealous-orangutan-7ace78@kuoka>
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
 <CGME20250613055047epcas5p220b1cd1e9b2819997a3d4747c395d13d@epcas5p2.samsung.com>
 <20250613055613.866909-4-pritam.sutar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250613055613.866909-4-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_011326_090148_BF603F44 
X-CRM114-Status: UNSURE (   9.78  )
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

On Fri, Jun 13, 2025 at 11:26:07AM GMT, Pritam Manohar Sutar wrote:
> Add USB controller and USB PHY controller nodes for this SoC.
> 
> The USB controller has following features:
> * Dual Role Device (DRD) controller
> * DWC3 compatible
> * Supports USB 3.0 host and USB 3.0 device interfaces but phy
>   controller capability is limited to USB 2.0.
> * Supports  full-speed (12 Mbps) and high-speed (480 Mbps) modes with
>   USB device 2.0 interface
> * Supports on-chip USB PHY transceiver
> * Supports up to 16 bi-directional endpoints (that includes control
>   endpoint 0)
> * Complies with xHCI 1.1 specification
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
>  .../boot/dts/exynos/exynosautov920-sadk.dts   |  37 ++++++
>  .../arm64/boot/dts/exynos/exynosautov920.dtsi | 108 ++++++++++++++++++
>  2 files changed, 145 insertions(+)

DTS cannot be a dependency for driver changes. Organize your patchset
correctly or fix the dependency.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
