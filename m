Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7D62EE49AA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 14:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARbvsdqtBxBUW21GTnxWnJ32eXEd/K97uhjeDXjgl0g=; b=xMwRnfyb0DqyxB
	iYW4yX1v8kfj+qcHcYAIaL58Dn/0FPrpvWPJeVw69KFrIxrWWLJOmCh11D1plmwev/n/q6Uzd3O3p
	sKIPwvs/FAWXDdr4UKEqrUmW6OHWz8WkjcBnm1PwVSdDkkiSg5fBJLVI1HQQLsmm7ZHzYuDyXTG1A
	Nd1ID6ZkcWIjk41vhp7wiC8lBXMqwI9Jf8WBagdxes/6bC7SckfuDusru6AAExjWXhnH5cIkcK17O
	Clc4V3kXXgLjGCDnkoP7a305Rcl1Q6wreDNilDh1EHb8/IB1/TsWjDIGcQFIm1eqCRpVOXqTdnPlY
	A1HIJa7sUEraQzPnKOBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSNq-00GD4l-1T;
	Tue, 22 Aug 2023 14:29:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSNo-00GD3x-0o;
	Tue, 22 Aug 2023 14:29:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9CD7C61E4C;
	Tue, 22 Aug 2023 14:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F0AFC433C7;
	Tue, 22 Aug 2023 14:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692714563;
	bh=h5zyHpspl7dpKFk5tUBL2QsxCFhjvr9+cr25M5nKD9I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QxDU/uzDRlUYUbPhQBOBBNOe4RoQYo8maLbY92IV4a6WbbFzfjJM3cYl8Hat8g73g
	 UmLCKlH0Kj/LyGcVQxXij4V3tz7tyT0FE+4/NiyJMLdMSKDCNee03y6trxBULGjTR+
	 J1waOCWynNSHUvA8yfdXUyw1NhYHFZE9Gvf9rcMd7AB+ZG4lkHOhuvhIFKlSkTHH/L
	 288bzbEype+o7jC7njo66bN46BOSpFsunj+ruMCsMkFCqp26n6bZkaefKfpb6+0Tjm
	 SKXazm5R8YWyoXBqFSteLX2rh90hRe+hBPiORU39cnqt/Jo5njkzBWaXbT4F2ejRUN
	 XqimrAsFVA1/w==
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: JaeHun Jung <jh0801.jung@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20230819031731.22618-1-semen.protsenko@linaro.org>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH 0/8] arm64: exynos: Enable USB for E850-96
 board
Message-Id: <169271455700.280543.8632429647448619127.b4-ty@kernel.org>
Date: Tue, 22 Aug 2023 19:59:17 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_072924_331447_C9A47C88 
X-CRM114-Status: GOOD (  10.52  )
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


On Fri, 18 Aug 2023 22:17:23 -0500, Sam Protsenko wrote:
> This patch series enables USB gadget, USB host and Ethernet support for
> E850-96 board. The most major change was done in USB PHY driver, as the
> register layout of PHY block in Exynos850 is very different from
> Exynos5 one.
> 
> Sam Protsenko (8):
>   dt-bindings: usb: samsung,exynos-dwc3: Add Exynos850 support
>   dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos850 support
>   usb: dwc3: exynos: Add support for Exynos850 variant
>   phy: exynos5-usbdrd: Make it possible to pass custom phy ops
>   phy: exynos5-usbdrd: Add 26MHz ref clk support
>   phy: exynos5-usbdrd: Add Exynos850 support
>   arm64: dts: exynos: Enable USB in Exynos850
>   arm64: dts: exynos: Enable USB support on E850-96 board
> 
> [...]

Applied, thanks!

[2/8] dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos850 support
      commit: 0b76bdce32300a626dc796f656c085a786c5dab1
[4/8] phy: exynos5-usbdrd: Make it possible to pass custom phy ops
      commit: 6b34ec66e7e7351b9a0a1eba8f57eb46ddeabf1e
[5/8] phy: exynos5-usbdrd: Add 26MHz ref clk support
      commit: 255ec3879dd4d585799fd8d8a94a335eaf84d2ec
[6/8] phy: exynos5-usbdrd: Add Exynos850 support
      commit: 691525074db97d9b684dd1457fd8dc9842a36615

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
