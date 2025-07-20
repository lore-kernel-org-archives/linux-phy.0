Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3453DC83F22
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gd8tHOPKO343urPhR5/Ei/ymVZZrm0Ah6hcutoWzxMA=; b=Tibtc5OGx1cXuh
	nvP+3W03HDdVroQc3pr8XHhic8QNWGAc2PwMHqyRD44MYgavOGy3tgt6Bw7mCMultmGb9goAexJtB
	t1nGQArfHczV/hKYDSmjUBi59PK6wcHzTfla0aOFmZpim3+9n4ydKOlThKEmFSLHU5VsjlVjCDoEY
	zphmiNVur51XEs5zaKOey8rh5bGt8u96CH21Th8iIYRrqHChIPwYyeZEuVrVz+iPD1aV8kdIrwlrz
	hyyTHP9EHL7byBPJXCai3XcNy0uAYNEsOxiJToy4fdEs2jjR2xR9zzE6QaJMQ5PUWc2Q9A/8QTi2l
	3qhugkU+v8Z4Ost5jnVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcT5-0000000Flda-3zFY;
	Sun, 20 Jul 2025 22:25:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcT3-0000000Fld3-2Ppj
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:25:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1B8D95C55E3;
	Sun, 20 Jul 2025 22:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93132C4CEE7;
	Sun, 20 Jul 2025 22:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050312;
	bh=SVtZKrT8Uv7Pq62Z+OZUeFY5hmtzK1BRdW/3iHO4MBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hK0Pfe50uHeSoVQPNMMZ7ld9Ucf7F3XuCXDide0g6uk/vkCVxV7td4CLCyvTuVbQU
	 O8FcfF896QaWVKJU1+p6N3jXofZfGtRZpBkqGlOGFt9eq4MTkWnVcdjgOdhto+huJN
	 TLXIZFbcZVbKfzHD4xNJWth4XC82HeBW4LigRaeMAUikI19+Qz7ZmCoKr3Da8iIVWR
	 H1eKwPl3P9IR15JT8vsuz0PnTULCn1mpOVo6Tt4t/BR7o1ZZSgnVsx2048sV67BZ35
	 WuMP3RxACcuNTT0mPvPT6OrwTEFcvzEVlyNEcuojEKzCQFiitxkeWn9OQZesKAxRuZ
	 tnr+hm3WMhTAQ==
Date: Sun, 20 Jul 2025 17:25:11 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Mathias Nyman <mathias.nyman@intel.com>,
	Zhang Rui <rui.zhang@intel.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-pm@vger.kernel.org,
	Nagarjuna Kristam <nkristam@nvidia.com>, linux-clk@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Prashant Gaikwad <pgaikwad@nvidia.com>, linux-tegra@vger.kernel.org,
	linux-phy@lists.infradead.org,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>
Subject: Re: [PATCH 04/17] dt-bindings: usb: tegra-xudc: Document Tegra210B01
Message-ID: <175305031152.2881707.3780039498712332275.robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-4-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-4-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_152513_651161_8377DED1 
X-CRM114-Status: UNSURE (   7.60  )
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


On Mon, 14 Jul 2025 23:02:47 -0500, Aaron Kling wrote:
> Extend the Tegra XUSB controller device tree binding with Tegra210B01
> support.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
