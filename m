Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B967FA3740
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 21:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9k/6zu42RhLZsX07N/1gqzLGFU2bgQHgWSQM7HAkdCc=; b=P49niieAK00k0S
	vVL48/ZS0JSAO5LEi33DwU/XfCJKaOTm6NrHsfuiKv0J4PGL04/OQwt4h6WYFVMdDVKYwCIFg982x
	LN/0n2eIPX5MtMRyazdfBQCRXTWHnwoWKL7OtEhM4ge/17ks47nwmP8/GJzYAziXTNRHYk24iaQJr
	VH7TlfGPbUK/qPaHZQASq1717wdXbZwgBy+4ibCBgKQ1mOctV511xoxHcK/J0uTt//TnPFsaP7UNY
	VJoQlP90Ws9VaOWKRJ7a/Vv8GXJtn9CtO6+jikscs3Dp/YX1WnipMtXmS+I8CwKvezFiRcj3LLa9c
	Br//Ag8a/9JXMpQFVv3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooAlL-00Ez7U-TY; Thu, 27 Oct 2022 21:50:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooAl2-00Eyeh-Qm; Thu, 27 Oct 2022 21:49:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E0B4B6250F;
	Thu, 27 Oct 2022 21:49:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E375C433D7;
	Thu, 27 Oct 2022 21:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666907387;
	bh=cXGDPjIyPWx8UiyRGBCbkkAS52u2EQyVcZUq/AORAQs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=MEhpxBQhV/KO2HnDMDARug/2e4WkZL5RGC4ftIu92d1qRAyacIHN27rX2scN5vSgW
	 j/n9kUi2LHLK/tzvui+zQiiaomeAsHFVDFu+QT+kPnpBTt1HyokSBELEKaTYzkYS/3
	 ZnJIjv3Xy3ZoxXtth3BtPB2U8kBVDglFWi5eCsml1xrV44EPKBSGIWW8J9jCPOsWA7
	 OzykEcAIFTDvFZnsvqAtraU9cL5/Aytok1TH1w7eZO96KkdlhlB5l9VFGrLjV5w7kW
	 DkSlbkCSWxIaQIkWsqeiIoffbutXh+RvdIKQB4j7sV7M9wLAEWrI2YJcJsoJw5OkaF
	 UXsG/blFh9yYg==
MIME-Version: 1.0
In-Reply-To: <20221027191113.403712-4-sean.anderson@seco.com>
References: <20221027191113.403712-1-sean.anderson@seco.com> <20221027191113.403712-4-sean.anderson@seco.com>
Subject: Re: [PATCH v8 3/9] dt-bindings: clock: Add ids for Lynx 10g PLLs
From: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linuxppc-dev@lists.ozlabs.org, Ioana Ciornei <ioana.ciornei@nxp.com>, linux-arm-kernel@lists.infradead.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, Madalin Bucur <madalin.bucur@nxp.com>, Sean Anderson <sean.anderson@seco.com>, Rob Herring <robh@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Date: Thu, 27 Oct 2022 14:49:45 -0700
User-Agent: alot/0.10
Message-Id: <20221027214947.3E375C433D7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_144948_930889_864431B3 
X-CRM114-Status: UNSURE (   9.59  )
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

Quoting Sean Anderson (2022-10-27 12:11:07)
> This adds ids for the Lynx 10g SerDes's internal PLLs. These may be used
> with assigned-clock* to specify a particular frequency to use. For
> example, to set the second PLL (at offset 0x20)'s frequency, use
> LYNX10G_PLLa(1). These are for use only in the device tree, and are not
> otherwise used by the driver.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
