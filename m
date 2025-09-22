Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4968CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 15:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MpGURs1F50X0K402Q1P3nEHb5X3RUF/Y+wuF59V8Ek=; b=emwxAGXwKCZejD
	SF81gvHrae3eZ1Oxe9lm+wbhlpwT9ugVRlZQ5yw9LtapYY57cTeRX/hcwlpap466lWiBPPe2rTPL3
	LOPSpPHlXEo3hD+ei45afB/K2nhmmoflnOapvfhwC/pLaW/j1zqqadyNhB1YZbBONpM63ZSCssMiE
	Y/W8W7890Njp6p8716/q2W0Bpp7ViN8Ml/iOgV39auhhryxutsKQdrf0zwCsPfknxOdefxa9ZjzCR
	8+KvN90Hd/VrXJkkqW0QYvFozCs+JuLifIZChW/jP1kZUoMjjrb1rIWqL3m7Kk1BU2qKsIOmDAw7x
	ZmqQ6L5dNVQw/+d+hZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0iew-0000000Ar36-1pxH;
	Mon, 22 Sep 2025 15:40:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0iet-0000000Ar26-3a5G;
	Mon, 22 Sep 2025 15:40:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2A3FA40586;
	Mon, 22 Sep 2025 15:40:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF345C4CEF0;
	Mon, 22 Sep 2025 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758555655;
	bh=gD63mzbxeV7BHyffKOeVlku5TInkJFsUy/h5vSG0OTs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nJGyKMl9csZdOgWg3COPyInWdTtHp6qhQmKGO9FgdKjL/aNqNQqBcvNc4IVV8iw3Z
	 iMaUH/2xpBi6+mHJREIJNiP8RUTdwAAcPCxXDoKtXpXAGXmjy5+8QNb6B7iyWSVWB0
	 d8cqwqrEyvyBhx2dPiJ5sSrMscB0l2L2T+wJ2hKExRFHOEM7cey4z7eG+JJEtJeooW
	 okZC7iwAtEzoj+k5ljfK6YEnofjHVSj7blbmagbhO/MGV9fVOJaH0V5lJmuvM4388v
	 7ncMNRdohDUEolEiPLXgvc6t3sF8wT290y1TcvuXtOw/KuEa5YbWJqGsCsRraxAryP
	 kbAcJf8AWZ3bA==
Date: Mon, 22 Sep 2025 10:40:51 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add
 exynos8890 support
Message-ID: <175855565135.24221.297874866943953244.robh@kernel.org>
References: <20250914145555.2631595-1-ivo.ivanov.ivanov1@gmail.com>
 <20250914145555.2631595-2-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250914145555.2631595-2-ivo.ivanov.ivanov1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_084055_913592_55E69D5A 
X-CRM114-Status: UNSURE (   8.68  )
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


On Sun, 14 Sep 2025 17:55:54 +0300, Ivaylo Ivanov wrote:
> The exynos8890 SoC features two dwc3 controllers with one USBDRD and
> one USBHOST controller. Document compatible for the USBDRD one.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  .../bindings/phy/samsung,usb3-drd-phy.yaml    | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
