Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B56B1C83F1A
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9t1qncwDw7ezvxbV3SJ3fEesjto3CXocfOkHNiwj3II=; b=poiBBXjBNYr9eC
	1KIKJN/ILZ/FxPfx72f0KIFYZ/tZGwZlrE9yrcIrD6sL+chX5jp0XM6j1p4Z26/UWKOzVlbBHWtTP
	XwdKbe9zwT0RT7a/yNybVcGyG30cLH8ktV2KSgI0QXqxOQh9Hn85F/yYVKYS4/y91zkHFvYciL/wK
	P7hgQzajel5QbpWgM+myvI9+wnjw1/HmPDQPHctyM9JuPqszCJvzjy05yh3FfJRLUyN0wL+z2z33s
	2/Za8ypKhfOnAM7F7Iah1i6vKAF9PN8uOiy+YX/0qcifZGqxL9r3sSyLVeBMxdnoAkE6YD7VcFFND
	vUA8bvmDzwAGPG2WLVMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcSt-0000000FlYR-1emF;
	Sun, 20 Jul 2025 22:25:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcSm-0000000FlWz-15VC
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:24:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C6F8F60053;
	Sun, 20 Jul 2025 22:24:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56E24C4CEE7;
	Sun, 20 Jul 2025 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050293;
	bh=XgfkZkVTsBWHGNK/DUKnDVvnKSKl3BJfYseFTKfD0WI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rwMZyRzHNa2nEACfQJaDvMZ41dJ1vFZY4LTsPRYWHfEecaVgs9c8VLKLIaPyB/o8h
	 zMwOqwa9jsQNWlQgVRRu+Qtdh+VrijNIHpMBiwGolucvF89xf28HJMJ+BsSwbardEm
	 ZzJYTcNRD82litNt1pPeHh9OeBg9p9bdwceE4wMpGtt4zk/xVdYnePsz6Kb13H9PA0
	 9+HIjQk1sYsmSZyGpaNMfjB13/Ck5ljGZqQiZ2PcEJszz72exJq/R5FfuIAd38dT+K
	 8g5KauFhHMMoC3jcjAKx8MRy7+3jCA0R9ep3H10Gej2Wd3hs944rUprdenFKieqQPe
	 iQ9mgKQL37yWQ==
Date: Sun, 20 Jul 2025 17:24:52 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Nagarjuna Kristam <nkristam@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Zhang Rui <rui.zhang@intel.com>, linux-pm@vger.kernel.org,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	linux-tegra@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Jonathan Hunter <jonathanh@nvidia.com>, linux-clk@vger.kernel.org,
	JC Kuo <jckuo@nvidia.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
	Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH 02/17] dt-bindings: phy: tegra-xusb: Document Tegra210B01
Message-ID: <175305029184.2879831.7158509725744218824.robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-2-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-2-e3f5f7de5dce@gmail.com>
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


On Mon, 14 Jul 2025 23:02:45 -0500, Aaron Kling wrote:
> Add the compatible string for the Tegra210B01 XUSB PHY
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  .../devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml          | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
