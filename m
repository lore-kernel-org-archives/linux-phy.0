Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7182BC83F22
	for <linux-phy@archiver.kernel.org>; Sun, 20 Jul 2025 22:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJ/TtjhlA2SFFhnSc+TljdkQbxHc9+XYetPx4AZmYR0=; b=xjIDgnjCMMX15q
	c2EjDrsiV854R1yRXQpV+Oi4IqJPlm6ZyouIAdnxbNY+96ZF8WtLgZA7qUC65yFpRShydnX4KCSsc
	HNnvUaL1ap4drVK8TUtyYqu7DYtqLqzytVlZSn6r+s9dNWblXRu64o+dd/kaAvVS4vrnEsfKeYB5C
	5AtQovX1QXAmZGZoTGwpd5f509ixY+4tg1s3CXty3vUSGKOk+PBpHRhLdu1LYca9NF+OQC4CpxWEO
	mlouUELhs+n22q43x/Jize5BKkJSzOeNo548xm5hWy+Xy/bmABdTY6PLaMrVFqFEqyE+WngwK6Ij3
	2xWYZqBbtdro73izCP6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcTS-0000000Flis-10Us;
	Sun, 20 Jul 2025 22:25:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udcTP-0000000Fli4-2oE1
	for linux-phy@lists.infradead.org;
	Sun, 20 Jul 2025 22:25:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 323DF5C56F9;
	Sun, 20 Jul 2025 22:25:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD7D0C4CEE7;
	Sun, 20 Jul 2025 22:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050334;
	bh=xEKMbYY0zaWDdsbFDuSSufbmqhhv1AlaEIvCRIi6nOw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QHBEAI8EuXTcKAUbUNLYZQynQMwZvxekWlJUFjsC7y9ZSlzBD+BbhIMyr5/WCak74
	 b579euo9O1znuZaph3kTLrI4/ucS7h6Kzh90tsCdImgVQ+jlqFmxeCvwjCMM1zFSIm
	 pppojdgVzNAyDhCEbmsi+/BlPpxCQANGE2A9LPfK+oex+twCSEqmJo+Znheg3uaT1C
	 M80CCUEZmzJiylpUwSdndqoD1pKr2lqqxYsFUAXwcYyHVTOZWVCCQPtnB6lZj8HvgI
	 qzFFuP75T+GiEALO6BW0wQWcX6EiK++R5F8n+n277w2MAgz4NSG9t0Y0Mj/CXwSSW+
	 Vk0YfFeThBDSw==
Date: Sun, 20 Jul 2025 17:25:33 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Prashant Gaikwad <pgaikwad@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
	devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
	Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
	Nagarjuna Kristam <nkristam@nvidia.com>, linux-clk@vger.kernel.org,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	linux-pm@vger.kernel.org, Thierry Reding <treding@nvidia.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 05/17] dt-bindings: thermal: tegra: Document Tegra210B01
Message-ID: <175305033354.2882962.9580555513553894662.robh@kernel.org>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
 <20250714-t210b01-v1-5-e3f5f7de5dce@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714-t210b01-v1-5-e3f5f7de5dce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_152535_745480_AFA5BE8B 
X-CRM114-Status: UNSURE (   7.57  )
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


On Mon, 14 Jul 2025 23:02:48 -0500, Aaron Kling wrote:
> Add the compatible string for Tegra210B01 SOC_THERM
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  Documentation/devicetree/bindings/thermal/nvidia,tegra124-soctherm.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
