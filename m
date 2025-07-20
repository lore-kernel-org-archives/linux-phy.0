Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E67DDC83F3D
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AF0DI5obuqdHYFiXrYcBgYNDgZxY2FLeDbEfVP3CU1E=; b=u6dq3vrOnxEycS
	PUvwOiZvDfdOBIdmfDeKtMbuV0uc3PyayIV1XZIUiiMLhjSA78blG0jX+nMy960D9zyAvPr2gHZEE
	RewVGmjGsK1Tew0BFAa/8nfJdoLDW3t5wSnZmjCDVcBipM5ut5Bg282l9SxqG/SkRtsdlcAnBcq+d
	z8mzw6G7Qi6GgSm5gTEOgaItMU7HEw2yaHSEzrVn14doas+Q9q7GJaGngcLizElsJPRA/Rr4U0ANC
	ErDsQO2j45mQLFQy8YgB9jjINwxVvE1+XeumgUDca75qjKy1R8RjX3IPIzrF/4lsvaibaK3w9vhXd
	yXkl04xpmEC+728d0IHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcSu-0000000FlZX-2o2y;
	Sun, 20 Jul 2025 22:25:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcSt-0000000FlXX-0UIa
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:25:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8FA6C5C46DA;
	Sun, 20 Jul 2025 22:25:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17751C4CEE7;
	Sun, 20 Jul 2025 22:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050301;
	bh=5RcuFJB9Y5p7jCcuQ2vJJofG86pDVaTQDpH/U0Cu3c8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rAmaYJ9MApQs3QCf3MCrPfihyfMAuSOfBnOzd0Be3RXIda5JG6EqjhcFe6+txUlow
	 Kk6Juwh3lTZJYLTW8Y4LiX5lOs9wVgljH7TuHnp4NKPTrhGOfkv2qndPxsw+6f2GRa
	 rn14wgrr0Njx20JYvz88Am4zH1/OwUR9DiLvQ7jvJq6x/DE5HAfuBqnOkaxxUPQdss
	 afrXFEmvsHPJxWSnBZppz3R5sMAXEx/yKiLR52LgiYYaXAD+m93LSohCioVUxEk8PQ
	 4E3FgYQYdadvNWaOGU7DFIJUugdZ66erMBhpx5gxY5m/WcreKIawJ+SKqmrj1aZk9s
	 4GTN477Ge/wlQ==
Date: Sun, 20 Jul 2025 17:25:00 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-pm@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Thierry Reding <treding@nvidia.com>, linux-clk@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org, Nagarjuna Kristam <nkristam@nvidia.com>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, JC Kuo <jckuo@nvidia.com>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-usb@vger.kernel.org, Lukasz Luba <lukasz.luba@arm.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 03/17] dt-bindings: usb: tegra-xusb: Document Tegra210B01
Message-ID: <175305029991.2880969.16366334174770530150.robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-3-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-3-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_152503_199003_81C5883A 
X-CRM114-Status: UNSURE (   7.97  )
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


On Mon, 14 Jul 2025 23:02:46 -0500, Aaron Kling wrote:
> Add the compatible string for Tegra210B01 XUSB
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/nvidia,tegra210-xusb.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
