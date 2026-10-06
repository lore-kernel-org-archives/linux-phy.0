Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F000ECA5FFC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 10:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoRqGepLed3J0ZuIjCo7FqqpkSx/3PFSmGNtXXZfipw=; b=qvhuADNks0LO/t
	t8c380n3/et1YqUixq3KtJOXfBJ8rRutnEXUk5M2cQPiO5zbOsKBUkrW7v5T2+fHKkTkLGLiZYdqw
	ZniZZgdfoEwfLmQInwvSZTtfjTkOuhHuK1AxcJo00zDhEngSC4DgA5/NbMbswqGCZd0znHN9IQwLl
	aV65WVOpUaet1aQVr5lINjl0KlgpCFmNwQr4+F3gm2iI2CbEhgysclrHfxEKfpOzDv8ujvezfGzzr
	2xRxMRjvI28fqoL1ypGL0O8iLeaC90zJjJSjO3l2DPzwyGPOAaJ80w2Wv08Og8wt4h1Qe2GQDwyam
	K3xj5i+/oSeAdfCKJVqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2fq-00000000Y6x-2o3C;
	Tue, 06 Oct 2026 10:45:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2fn-00000000Y6D-3P8j;
	Tue, 06 Oct 2026 10:45:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E3198602D4;
	Tue,  6 Oct 2026 10:45:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F14F1F00893;
	Tue,  6 Oct 2026 10:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791283526;
	bh=Vrr4TtvTm45QhAZs/pX2p9EkuSowiD60ZtjjCIEyHeY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RxmidqvOXuGhxQqZoLaT+3hOKc39WsehbJ0w23JYgVXuG3Zzimg8TTMqrY6IdWg6d
	 LRphb0e0n5Y/NlyFAvP97TlDNVM9zVFXU+jQXmEaprvR2i2Fxsh/MxTg9tyoWaT5bk
	 h/mGfoUeV4WlwN2TFFA2+9Vi3VMHEOt1ppN6X5QS3jlljr1Ld/GM38O3sLwCmLwAAU
	 8sVcS0MF67HeAKgvXZUcsEbd0Nuf7Fzsev6zSeRNWb2HEGnfBxIfXomrk/aVLUoShv
	 FIdB+OeayJpj2RVdBeF1Y+hdvmVeL0KHpXOWK8PY93YqMOI1uo0mruHlJGpw38IBvX
	 L6JQJX9h1lqgA==
Date: Tue, 6 Oct 2026 12:45:23 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v14 0/3] airoha: an7581: USB support
Message-ID: <asTRQ6d0-NYOeHqX@parshuram>
References: <20261006102937.10972-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261006102937.10972-1-ansuelsmth@gmail.com>
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

On 06-10-26, 12:29, Christian Marangi wrote:
> This is a major rework of the old v2 series.
> 
> The SoC always support USB 2.0 but for USB 3.0 it needs additional
> configuration for the Serdes port. Such port can be either configured
> for USB usage or for PCIe lines or HSGMII and these are configured
> in the SCU space.
> 
> The previous implementation of a dedicated SSR driver was too
> complex and fragile for the simple task of configuring a register
> hence it was dropped and the handling is entirely in the PHY driver.
> 
> Everything was reducted to the dt-bindings to describe the Serdes line.
> 
> Also the property for the PHY are renamed to a more suitable name and
> everything is now mandatory to simplify the implementation.
> (the PHY are always present and active on the SoC)

I get build failure:

drivers/phy/airoha/phy-an7581-usb.c:7:10: fatal error: dt-bindings/soc/airoha,scu-ssr.h: No such file or directory
    7 | #include <dt-bindings/soc/airoha,scu-ssr.h>
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
