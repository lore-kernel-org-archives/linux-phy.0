Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED22FD1356A
	for <linux-phy@archiver.kernel.org>; Sun, 27 Oct 2024 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYwxVZ/fCmN9mKjp+Mx7f4RJmRGhbq76M+Y5OfSue7Q=; b=SDgPelXI0PjiGG
	2mfZnnslt2uhw5u47s4qI6FB9LPN8XOBSZ0hJ9jPRDuxnobZfCSC02ze/5WhhnxVXMe4X7NcjBbZG
	cDK4abRPWpmtJ5KadV5zYXOIDCdTMQ1WI00zpEXCtyDrhCAwXM8tA+W8xvdxRwEIfPS64Af4C2WE6
	Q4w3IZTzWtHnK/hH4F23Fb3ZdGOd98NG2JDBbjsBDXznlOQdb5+Bjjn8Woeio1/J4KjQmDLHJvmhc
	hchAXO3jC2X2Zxu+JzQfYkbU7ygRyYxd98k+3x2BGslBgXdD8x7K0Pw9gVVLKAQ2YkbxqIMCceZDn
	lgC4vSh2A06YaLSWO4sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5AZQ-00000008utZ-1aeP;
	Sun, 27 Oct 2024 21:13:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5AXn-00000008ui2-3i0Z;
	Sun, 27 Oct 2024 21:11:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 85C1C5C5833;
	Sun, 27 Oct 2024 21:10:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0D27C4CEC3;
	Sun, 27 Oct 2024 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730063486;
	bh=qxdDf/jwCLwtMg/BFx08kpItrd6GwiKsheCB5mZ8L5g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=roFr7gAuUh9x1bpL1a0X8t4pPfIME4ciTyiS0Xlu+4gWLAEBQ+uQL0SehfyR/hlc3
	 wt5kyLKGovdfDXWrMtpmn4LPYhctXKnxbGbSkcppX3uiveof5OYnKSWQ1D2xYM1myr
	 uUdHKipcFFu2jiHLHXcw/nK/Xgqy6JqzlhoqoAJ8yea3k923xOnYX7+KYpkWCIRT5p
	 Xq85rQpq71LfaYvdEiIF93WtNBxtPUym+NgeS/EM6MKs99yapMKkMQcumgMTba2oZc
	 PVx6EDRO2HXb2Y0Qa2lz20vNo3Ig/eR7jkBwRiKtOIdvFCegFlu+EjtHYKdntM69ob
	 h0SNp3L2sf16Q==
Date: Sun, 27 Oct 2024 16:11:25 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cody Eksal <masterr3c0rd@epochal.quest>
Cc: Samuel Holland <samuel@sholland.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org, Viresh Kumar <vireshk@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>, Nishanth Menon <nm@ti.com>,
	Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Yangtao Li <frank@allwinnertech.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Maxime Ripard <mripard@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-pm@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	linux-sunxi@lists.linux.dev, Yangtao Li <tiny.windzz@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Parthiban <parthiban@linumiz.com>
Subject: Re: [PATCH 03/13] dt-bindings: phy: sun50i-a64: add a100 compatible
Message-ID: <173006348387.87150.15151805812797724971.robh@kernel.org>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
 <20241024170540.2721307-4-masterr3c0rd@epochal.quest>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241024170540.2721307-4-masterr3c0rd@epochal.quest>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_141128_006214_1251519C 
X-CRM114-Status: GOOD (  10.57  )
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


On Thu, 24 Oct 2024 14:05:21 -0300, Cody Eksal wrote:
> The USB PHY found in the A100 is similar to that found in the A64,
> although it requires some quirks to be enabled. Add a compatible for the
> A100's variant.
> 
> Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
> ---
>  .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml    | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
