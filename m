Return-Path: <SRS0=+kLB=N4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC237C4321E
	for <linux-phy@archiver.kernel.org>; Mon,  6 Sep 2021 10:40:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF44A61004
	for <linux-phy@archiver.kernel.org>; Mon,  6 Sep 2021 10:40:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AF44A61004
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EbXhpi6uL55MFc7o+LLfUr6Aqs0k/SYimaKA0bSujA=; b=n+kLpjhOrcHvgp
	jqtAVRgjzlDhnMQBydQZFpaUDsyaF2EbSCn+ZtJ0t24flrOmuhLS2+oQpaT1CQ0tPIVOuhrBm21HP
	T2RJSL0thlzdb1hQqaf6sIh7O2ob9gfy6fMQtKftE51sJDC7qAZn0v1rj2xJ0YKMA0xhIl4WkPMkY
	YlLF06F33OHPXs1v6NFxCFD0J/GnC3WpKLMUI/2VvWqYTSmPkR3Ht0Fd48toL6+NVcUCHc3IZeawE
	gzx1OVyHTkKJDJq946eRQk0s0DOOs4NyN1GJbhX9C+Dhz5U5ZdG6XdH5Vbk2Gh5rKiBpf67cV4HHR
	b+t69VzuDtjCfm8ACuRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNC33-000Xzp-8t; Mon, 06 Sep 2021 10:40:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNC30-000XzK-VM
 for linux-phy@lists.infradead.org; Mon, 06 Sep 2021 10:40:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1920B60EBA;
 Mon,  6 Sep 2021 10:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630924818;
 bh=DDPfs7HWdQxUNn6g1tSkQLKbmCHfs6sAw/+UHBIdi/M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Th9BCpYBnVmKPtw+yozEi03DflXbpHZnsOAy4Jc0WTQbi+twSgb1XrzHHguyEtFuD
 unLwYfRWOgpMIlwzUdVta6PvLtBhb/hhKQ5qEENKV7U9Q2LFFvwWeMqWPPk6Ap99ke
 t2pEWUD6KxAncNF8dArN3EdFE4wFqS1pAblmOOdgP+5BvHtbm3NKW50g544B2Y1M7A
 0XwU7gfX6Z1zYK/ZPcefKlnE2u5JqlMtdYXMpq/QSt/s/+ZJTfO/4ugaIfwejhWnlB
 f5vXatWtRfzOn3a/PJ5ZMIbaUJ+VquKa0OnNdFXWmQbxRvwTPgstQShQxiAmi1QiQD
 A+2M66YfjlnIQ==
Date: Mon, 6 Sep 2021 12:40:11 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Vinod Koul
 <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>, Vignesh R
 <vigneshr@ti.com>, Marc Zyngier <maz@kernel.org>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Lee Jones <lee.jones@linaro.org>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Bjorn
 Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Mark Brown
 <broonie@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Use 'enum' instead of 'oneOf' plus 'const'
 entries
Message-ID: <20210906124011.66b8e9f3@coco.lan>
In-Reply-To: <20210824202014.978922-1-robh@kernel.org>
References: <20210824202014.978922-1-robh@kernel.org>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210906_034019_084525_3D5DCCD7 
X-CRM114-Status: GOOD (  10.17  )
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

Em Tue, 24 Aug 2021 15:20:14 -0500
Rob Herring <robh@kernel.org> escreveu:

> 'enum' is equivalent to 'oneOf' with a list of 'const' entries, but 'enum'
> is more concise and yields better error messages.
> 
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Vignesh R <vigneshr@ti.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: dmaengine@vger.kernel.org
> Cc: linux-i2c@vger.kernel.org
> Cc: linux-media@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-pci@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: linux-serial@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> Cc: linux-spi@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/display/msm/dsi-phy-10nm.yaml           |  6 +++---
>  .../bindings/display/msm/dsi-phy-14nm.yaml           |  6 +++---
>  .../bindings/display/msm/dsi-phy-28nm.yaml           |  8 ++++----
>  .../bindings/dma/allwinner,sun6i-a31-dma.yaml        | 12 ++++++------
>  .../devicetree/bindings/firmware/arm,scpi.yaml       |  6 +++---
>  .../devicetree/bindings/i2c/ti,omap4-i2c.yaml        | 10 +++++-----
>  .../interrupt-controller/loongson,liointc.yaml       |  8 ++++----


>  .../devicetree/bindings/media/i2c/mipi-ccs.yaml      |  8 ++++----

For media:

Acked-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
