Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DACB5CAC59A
	for <linux-phy@archiver.kernel.org>; Thu, 18 Sep 2025 08:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pgr032WlTtYXX8QdkoHmSDYUa0iqPSwyl9140Fsnm0=; b=CMDuYh7EFpIjur
	fZFl7dbwURnwcKB5ZuQr1O0EXqs9OxfNM4m8L6xcJvYVEZ6ygpcS7wZuOLgTxwhsv0qU0lJCXJ+KE
	MbHR0IYjm/0bO62sQXRrckqdOlHiUft+3x1HSqJO0asntt7UmVSEe0mNeQ2UDTnix9hHbopLCzCYJ
	19IgNo2UPwQ5+7eFbA6XSVLqa160wnqvvIGreoKNO+YcuXO+6ePVg8cdhVAKwf7xapBW+/sTkGIrh
	fCLdMfqftLFoboHyw7QKngE+R0B9fJhNL3lo47FYSvL8hnNlsGPpRa3vduKHd3fNu2ZtNd3YGYs3E
	pIXw1zbySbLqGUofe57Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9ba-0000000GdqM-2GEv;
	Thu, 18 Sep 2025 08:03:02 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9bV-0000000Gdoa-1so5
	for linux-phy@lists.infradead.org;
	Thu, 18 Sep 2025 08:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1758182577; x=1789718577;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Z4Vq6gtJA/IDkABlkmE0x7/PpI+mZr69AlJCAs03HF8=;
  b=m3utoBFFlvENVbZbvQQHCP/UsirkSnLNf4+1gmIYQS24V+BJMJJNGoIv
   DZG882n6d3zXusY/1YLWFzucypBD1goaxXoxJdFiONTHXleVMo6hYETRC
   y4YEzCwLNtjxmd/uCU7Ai1s3BXdkJ5rN5JivN6+bNZvDnAycyl+UHX2UB
   UIkIa/l9wosDTRDahP9fHd98HCHlQ10V4OejsiNMwsCujwK/zTQE4u2VO
   AZ1bg8g0+p172N9GOsaohl4/pZl3GteN+j9aVaMubqnm/3y7GH5Vuisdz
   5sNCxELYfwBzxbw1oOuNRhwVfWqdXkOHUZvVtw7jTLzWtmIi35sYedRVX
   Q==;
X-CSE-ConnectionGUID: LeNTzai7Q7SZ/VPQJt5hlQ==
X-CSE-MsgGUID: 3pRz+qyRSEuYSMA4aRGrdA==
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; 
   d="scan'208";a="47198788"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Sep 2025 01:02:56 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Thu, 18 Sep 2025 01:02:28 -0700
Received: from DEN-DL-M70577 (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 18 Sep 2025 01:02:27 -0700
Date: Thu, 18 Sep 2025 08:02:26 +0000
From: Daniel Machon <daniel.machon@microchip.com>
To: Robert Marko <robert.marko@sartura.hr>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <herve.codina@bootlin.com>,
	<luka.perkov@sartura.hr>, <benjamin.ryzman@canonical.com>
Subject: Re: [PATCH] phy: sparx5-serdes: make it selectable for ARCH_LAN969X
Message-ID: <20250918080226.mrgoywxcaaszbdlq@DEN-DL-M70577>
References: <20250917105541.54033-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250917105541.54033-1-robert.marko@sartura.hr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_010257_549122_A85268AF 
X-CRM114-Status: GOOD (  13.76  )
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

> LAN969x uses the SparX-5 SERDES driver, so make it selectable for
> ARCH_LAN969X.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
>  drivers/phy/microchip/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/microchip/Kconfig b/drivers/phy/microchip/Kconfig
> index 2f0045e874ac..2e6d1224711e 100644
> --- a/drivers/phy/microchip/Kconfig
> +++ b/drivers/phy/microchip/Kconfig
> @@ -6,7 +6,7 @@
>  config PHY_SPARX5_SERDES
>         tristate "Microchip Sparx5 SerDes PHY driver"
>         select GENERIC_PHY
> -       depends on ARCH_SPARX5 || COMPILE_TEST
> +       depends on ARCH_SPARX5 || ARCH_LAN969X || COMPILE_TEST
>         depends on OF
>         depends on HAS_IOMEM
>         help
> --
> 2.51.0
>

Reviewed-by: Daniel Machon <daniel.machon@microchip.com> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
