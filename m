Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43928C83F1A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 20:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGXCxVv8vE2lJ9Fh2BeREQSFCpoRkG6Cj8k5lm3su7k=; b=ZUv8QhQ2XCAKMa
	UJnuqkqclHELwjJokVyLw2q9Z1+UKFOv2/urTG69c5oZrmNZY3NEP4NlUKAHSZ59dfSTHukhSGrwm
	TSRvF9faYLvihlHB1NCqH6sQdcvN+YJJLMKGM9hx0VD8Ijne3Cu2Xta7Kq/PFZhmhPwrVFgQ0C41Q
	2JFH1Ao2pow1YzckGftB+o1C9h07Km0k5dfFkqBZrJLjWcUrSV7L/a61lTrSVSJTTqm4JI+r7SbsD
	Yp0cDku6M4R+rihmZ23XFsJiEOqsOkgfwvrUd7V8cs0zCjY8hTJfOxdySuBkMne12RkpLzjhV2j5C
	+O6TOPsPgzJ3FRJs4F9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udx7J-00000000d47-08F5;
	Mon, 21 Jul 2025 20:28:09 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udwvI-00000000b13-3NfW
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 20:15:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 08D10A55DA1;
	Mon, 21 Jul 2025 20:15:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88C3BC4CEED;
	Mon, 21 Jul 2025 20:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753128943;
	bh=nkiA1xZGAUGjmHRJ4jMF5cNu7pJ2iZ4JK/ULWm22zkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hf03Mbgmg8UXAaiSvZVsYNOpxI1lRgk/w+kb96/iEtNZKUdI3zi8yMVwwXluqmn2d
	 l6oupsCI42Oj+s1HLGqgdr5P/1Gzt9zxAegC/2cKzvPeF7ZATTLqV2RfzjTmSvW5O8
	 FgJTzDtUo84QX/jzlaYmo2owrMl1pS41LWPUJA4VK4prBr+8JR3Mo4XlW+NsdW5LAM
	 gVoebTmOHJOode+RHExAM6EsQWKOWk3fj6B4KDbldu04+VpFUgdmLDdjFgtGbIm3Gz
	 eM1GX0hcpBiGYw1hqCd4aRU6wmZ9ElqjEdUINq2dlAhcYDjTE6/YZuYKqVyZg6TIE2
	 R7/Tfu/qzT1RQ==
Date: Mon, 21 Jul 2025 15:15:42 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: JC Kuo <jckuo@nvidia.com>, Stephen Boyd <sboyd@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Prashant Gaikwad <pgaikwad@nvidia.com>, linux-usb@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Vinod Koul <vkoul@kernel.org>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	linux-clk@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-tegra@vger.kernel.org, linux-phy@lists.infradead.org,
	Thierry Reding <treding@nvidia.com>,
	Nagarjuna Kristam <nkristam@nvidia.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 08/17] dt-bindings: tegra: Document Shield TV 2019
Message-ID: <175312894245.1247819.6745937548885403054.robh@kernel.org>
References: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
 <20250720-t210b01-v2-8-9cb209f1edfc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250720-t210b01-v2-8-9cb209f1edfc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_131544_912056_9A439B2B 
X-CRM114-Status: UNSURE (   7.90  )
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


On Sun, 20 Jul 2025 21:15:02 -0500, Aaron Kling wrote:
> Add the device tree binding documentation for NVIDIA Shield TV 2019
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/tegra.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
