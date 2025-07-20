Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53B53C83F22
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ma2r+HjlDEIFqoSewB/HBJl1iBrSzC5Trzw8m5aOw6o=; b=Qi8TrXLPEgCjIK
	LLtV4hsTn+cCCGeuWZolKnGHA+Khg9OSpr6L6rSsqMtv/sEaTyM7rq8likhEy2GzrPlrIW3jG0mMd
	1Q4FV2QZIwXgEGdkL9nwPYnqDTSYWacYJRhYQoxKFKhVF58BZFID5hon6Vj9jddE1/E3PQz8odTPB
	iD/HAgUQYdW57/IWuxs7LNeG8WpM9awBqYeiCILoXduRBUI2PsZhC+A6vMgOfFS5UOTCSCc+tuuc4
	SCceTWrP4t5wH3CaxmNfco2j7TyYgU4h26A3do1kODdyzPE35TI2G1WFCBo8/W7RXd+Eewt4cGW6D
	yJ4Y91TDlylCK3Gg8nzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcSs-0000000FlXn-3Zy7;
	Sun, 20 Jul 2025 22:25:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcRy-0000000FlRM-2o79
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:24:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E921D45BAE;
	Sun, 20 Jul 2025 22:24:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FC9BC4CEE7;
	Sun, 20 Jul 2025 22:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050245;
	bh=HG0O4JOodWF/vDgzTAePxxVeDT7kVxoEtntKu2wCaac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZzbInYL3Deo2hNmkd1b8cBxfvRLr3QbILrPQe1qggEsGZTlDYFQ4zDiQoNiGInbQu
	 i6QBrBx6phXKRGrjeaF5ikl6OF6R6lNZ0hiaIhzCAkdVPSSDgLR43XPXL7OUKjtAKV
	 F7CmcumrPVcxDTNbh8KQiZcgHyoNdH7GjQermkxa6txlnoWQz4RyV29h7c1x+4QwLC
	 BQiNd8bvyjXoxF7g/yXkF1daClIyDquiwy5zoCPo+iIGf4+mNXmq+nnakxcARXKQwg
	 1QGIw4EOJEryuK9mJymdEoxnXdrTVRUs7VfZo9YQ1+VeivNFW16zgdmx6C22Id2aOx
	 skxVsySk8rSEQ==
Date: Sun, 20 Jul 2025 17:24:04 -0500
From: Rob Herring <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	Thierry Reding <treding@nvidia.com>, linux-pm@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 01/17] dt-bindings: arm: tegra: pmc: Document Tegra210B01
Message-ID: <20250720222404.GA2870388-robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-1-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-1-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_152406_729608_33CE3B1C 
X-CRM114-Status: UNSURE (   8.74  )
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

On Mon, Jul 14, 2025 at 11:02:44PM -0500, Aaron Kling wrote:
> Add the PMC driver compatible strings for Tegra210B01

Subject should be 'soc' rather than 'arm'. Otherwise,

Acked-by: Rob Herring (Arm) <robh@kernel.org>

> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/tegra/nvidia,tegra20-pmc.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
