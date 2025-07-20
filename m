Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B68A9C83F1A
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qM7r/n5+MnDttgDh9uD6EmAyimakOrQxw3OIbwTfd3E=; b=FHDlWBmbBOwW5R
	63PCTj/0OdzaGc9dt7JiK8r/T9LrfMslhhOwM+EtgF1BuUAbLPRkhFGi3sa2zwEPYcTxzd2NePj1g
	g+s5Dwd3oDOMN7Qwi6TAN6bWXRwABsWwYh9IvVLDXp/Dd/zn79E7/VC00o/sUw5BJOrQcPfbcUeiU
	RzwYyfUT4LR5wWVGNsR7de3bIEu0NYFFobcgs7fn+paFw/F5StEIsVhNKTukdzylB7NUfBNeNqMO+
	5YHBfvPdGIdsMghSJoGcwTfbVlGYqdtGkV33QG7flLKHjE4QTlatZXRN5bREOCOycbzD/deHJxE+2
	6QMh2efgcUD18roWMgzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcWV-0000000Flz6-25qq;
	Sun, 20 Jul 2025 22:28:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcWU-0000000Flyw-16Ke
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:28:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A909760051;
	Sun, 20 Jul 2025 22:28:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3794FC4CEE7;
	Sun, 20 Jul 2025 22:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050525;
	bh=1eoLPf6ynvuzjLrZJv6wNDurB8M+vqGVwIM06bZvBgU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N/X8Z+9YU7yOfD4sLNrH1icV03ppZ1qiltTr4YWrBRA6cbWFqhBnhJ1ouomdtf/68
	 J3AkB2bwDj7+5ZfajSrPtECGyrAyLL82lzFJmFuegcj1vjPWhcEDEoq667sLF1Ey6l
	 bz1pmbyEKV3m+UoQIgKMLgiwR69HjxDgcgRQd3MBsag/pBOW06BjLCZC8oY4vzi3dX
	 IsrJnl2OBMDBh3/r5Fva+hnCugtygqxrRUf4uoNAxGsVD5TWfNxM8tL4TJyJupgX95
	 AEZ46LbXjRIJTdMrhIEbktYGYe+6uPV7vXs/ZJWPefqbVoHxMAYvo083mT8UmorEvv
	 johHjqjSDnaNA==
Date: Sun, 20 Jul 2025 17:28:44 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Mathias Nyman <mathias.nyman@intel.com>, devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
	linux-clk@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lukasz Luba <lukasz.luba@arm.com>, linux-tegra@vger.kernel.org,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	JC Kuo <jckuo@nvidia.com>, linux-kernel@vger.kernel.org,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Thierry Reding <treding@nvidia.com>,
	Nagarjuna Kristam <nkristam@nvidia.com>
Subject: Re: [PATCH 07/17] dt-bindings: clock: tegra124-dfll: Document
 Tegra210B01
Message-ID: <175305052408.2895244.11019731313205948430.robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-7-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-7-e3f5f7de5dce@gmail.com>
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


On Mon, 14 Jul 2025 23:02:50 -0500, Aaron Kling wrote:
> Add Tegra210B01 support for DFLL clock.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/clock/nvidia,tegra124-dfll.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
