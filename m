Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59E84C83F22
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jwpCL6eJke8VArQGdnzIqJikSEpmvpgZB51OG4m4IU=; b=hbHjPi/h486/9b
	oxwXORPlH8sGEuqcujUZ4dq8+ZpCCUrxUAYBU6siq19LYGQe38C+kAmZ3CK6sms3PpkIfSiszz/gS
	S/d07GSBKjo6SLw8ZtxE+vDKuAOA37AZe9IHor/0ERCseqQhIr3b20cuF49e3v3/EkUadgIlC2oj7
	YDEY0ruqwlZjrAwFj1X44Rb8J//Mzl6wlYPMAt2fYnY+5wbZizzNyEWagrEeFjb0fU10rG91ZcotN
	mWI1127D5axn6cH9/nEqfYjR8CwLn6Gwpr4LYEDsR/NZPiaEsH8uodXX8jksGmUbHMtva9TZwloDG
	TDGWUCusPbvubgTCbfWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcV4-0000000FlsT-0Vzm;
	Sun, 20 Jul 2025 22:27:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcV2-0000000Fls3-1Gcp
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:27:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 00E384515F;
	Sun, 20 Jul 2025 22:27:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF164C4CEE7;
	Sun, 20 Jul 2025 22:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050435;
	bh=aBzL39ICb2FNSxlBfy6jZasMlzeZjneJ1X+Ot4J2fXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r+ExFZVSjV702qfvSkc2BwdGvr2yMPaUIUcA/gvj9W7UEoxkinOIOTq8jw/v7xB4j
	 pAskB/OxnQwCrMpSOYz/Eqsc73canPENkttZietRaBCn5QELQXGOeOvqKNPTw3RDMm
	 oYyzxTpeQ6FAsCZuLNupVAk+/VvfwvLaVlh8jIrYhDOH99fA1xVbjejXlKbaMW63OK
	 zUV2bR/ZEvdWqqWFFOpBi3PlP+Uh1vsX1yUktNmLPXLMq442cciNGNweDtJPgNThgB
	 yiQ/wgMBsAygQgSDUsVLO9g0/HhvMotZMd2rBMA1Izh4NN48OB5OgQp9NzrsTm6mbs
	 R8tJMKovM4/iQ==
Date: Sun, 20 Jul 2025 17:27:15 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: linux-usb@vger.kernel.org, linux-clk@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	JC Kuo <jckuo@nvidia.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
	linux-pm@vger.kernel.org, Prashant Gaikwad <pgaikwad@nvidia.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Mathias Nyman <mathias.nyman@intel.com>,
	linux-phy@lists.infradead.org,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Nagarjuna Kristam <nkristam@nvidia.com>,
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 06/17] dt-bindings: clock: tegra: Document Tegra210B01
Message-ID: <175305043461.2890555.15106518834252394208.robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-6-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-6-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_152716_361508_4DEA373F 
X-CRM114-Status: UNSURE (   8.34  )
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


On Mon, 14 Jul 2025 23:02:49 -0500, Aaron Kling wrote:
> * Add the compatible string for Tegra210B01 clock and reset
> * Add Tegra210B01 specific clock bindings
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/clock/nvidia,tegra20-car.yaml | 1 +
>  include/dt-bindings/clock/tegra210-car.h                        | 5 ++++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
