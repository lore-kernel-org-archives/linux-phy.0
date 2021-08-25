Return-Path: <SRS0=wJWm=NQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNWANTED_LANGUAGE_BODY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E1D6C4338F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 14:03:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DDDF96109F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 14:03:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DDDF96109F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDTdLfrcq4UH+B4cBc3xm2UIPmibMQPDnUNF+gk/0ok=; b=lW8X5yLSxRBHY+
	D2x4TWEkOS4oOK0AZFuZNl731e9EVdtM9gxvALLWCTFb/2UZiFPSA7XgH/T16cHb3ChQXoVDSnm6h
	uRsPMkrfA2Ew1SVAyGuvU+llETJTgV+AO2E9voWM/k3jxrHKaFuJ2KAZCD900PrViWHIGax/+y8bu
	/DCWknFzZ9opriLvBzEbGoOCzyV6Fmlooz9CpDMR+nXR0R8v1XpJTUe+Dnp02YKkWbfLida4SBMDm
	q+5CYjDwobYJiA2qTbh5C+DYEihCTD9GZhV1cvD7NOVitcuxg9pS2c6h5ODWEtHT0UINmbYgLnP4U
	9yZoRf16JXsl+t6/23Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mItUg-007D10-CE; Wed, 25 Aug 2021 14:03:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mItUe-007Czd-1E
 for linux-phy@lists.infradead.org; Wed, 25 Aug 2021 14:03:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4EAD3610E8;
 Wed, 25 Aug 2021 14:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629900183;
 bh=VIKzuu4xITV3ArU39CmlrxTodlTpUkcESqyApfVLu5M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S6IcAU40+PaPQ2D87Qd98+EZIeLzzUAAWLP18PQncTxxr6pP3IOBE5NvGSjXKp3wW
 xM549Yu7GnkDY9biqpYioK00x+/YRrZatY0Mw2Kne8U2aFI05scDlhzK+oGWiodchd
 h6YDS5n/VUbgMYq0mMeMOM8FQ+CnBaFYkpTxmlaInAK4A3//oK9BZzBe3JYf33JvE0
 4iR5qK+AeTTnZBenFytofhzVZMZUpwplE2qzBcqjhjogL3jY6pvqa67a/2EWGC026G
 Iamm8x94qggZ/NABpea/6X50nyqAT4g37NHna7CBnllMy7vncNVwrvRoMQoYOyI363
 uTzIRM1m3J+lQ==
Date: Wed, 25 Aug 2021 19:32:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Vignesh R <vigneshr@ti.com>,
 Marc Zyngier <maz@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Use 'enum' instead of 'oneOf' plus 'const'
 entries
Message-ID: <YSZNkraWdMGXsjbf@matsya>
References: <20210824202014.978922-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210824202014.978922-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_070304_121855_B90D3367 
X-CRM114-Status: UNSURE (   9.89  )
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

On 24-08-21, 15:20, Rob Herring wrote:
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

Reviewed-by: Vinod Koul <vkoul@kernel.org>

>  .../bindings/dma/allwinner,sun6i-a31-dma.yaml        | 12 ++++++------
>  .../devicetree/bindings/phy/intel,lgm-emmc-phy.yaml  |  6 +++---

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
