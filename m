Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FB00CD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 22:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4i/huYS38k5EKky5hAQ6EA98/ozHTPn+itpriifGOt0=; b=B0dsUBXNlGfcpT
	jjRtoYIcdrbW4zx8x2q7HyXkaMSbgBMNcUmb1ls7Ou9WreQvsV8lW6wbmMvt9ZQYoQAjMl9RfciSJ
	QV2rmQww9a+zW5w8zrUXOslisNl+4KFanioQoyEw5vhJesKeAktn55rRbeFyNQFNt06udAjUMpBOh
	m96kk88G2b4FN2R5WjaH/J+JIBnSsqUepEiPe+KbPaWsGZyZf8Ce3YUBx0fyI+RFBhxZbFc8+W8WQ
	TgxUaZ9xbBTLy2er9wTE1mfIX+3zLHMGE/hM2e/PkOpG6NW8fyg7Y5AHWPVW8jzqBXNtOFPjwHEF6
	3bR/N/+KtoJ5y/tSglSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPpnc-000000064yx-3qMv;
	Wed, 20 May 2026 22:54:00 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPpna-000000064yC-0KSn
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 22:53:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779317636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ehQ7mVBa+qZzMlqKHomdvNj5vjtqdC5856eNsb/cSyQ=;
	b=SJFrP+tJzWBAjpgjCNy3K1i+kEVTUR75Sd7FfnoErQQCxj1iufSr5t2uG6+AeROcZzcv0K
	Eha+0bBs6HUUuW3g6NquVlWL62rWNsrWCfd2yedKxvvOWghADw1+qc2JtJtEKaJ1TCUnjZ
	/9Iss0xmPE4n1t/ij9r0fgr1RHHS2dc=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-610-8lXJLiR-Mpa3n6_qkEVCng-1; Wed, 20 May 2026 18:53:55 -0400
X-MC-Unique: 8lXJLiR-Mpa3n6_qkEVCng-1
X-Mimecast-MFC-AGG-ID: 8lXJLiR-Mpa3n6_qkEVCng_1779317634
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50faf575af4so147742011cf.0
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 15:53:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779317634; x=1779922434;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ehQ7mVBa+qZzMlqKHomdvNj5vjtqdC5856eNsb/cSyQ=;
        b=cEkn//1AR/LoqgDcx/IpUmzPBs4mH6LrvEpaGMvwzBqLJNTekzOWFGXQA1dgw951es
         8PuN6eT9r8KOZ+nSrNof9ynVny5W0dPAP2TJyLOr9iyepjQkZ7vsg8LEUQg5BTr7Nige
         42D7jWh2kP5ESimgej5F14rVTEW40vauLl0i/CSV2MLT/uyal7VsC6wsvwz3wad50Czd
         S+0IRT+W6qfct5ST2c4B1x+hxGLwFcMUPd0/HRcO68lWBJN40s6bluEsIhHiDhHEyWr9
         wRipH2ilZoAlOomYU6c0kwLIl541vr6gEXFaBgZ7zOYDEmFlZ8lpMacjnSidwm3UOJqb
         wWTg==
X-Forwarded-Encrypted: i=1; AFNElJ8HlbnaXWXvNhzDSitk6E9C892CUtwNVpVCFdWYSH6RJ/k3B+aP39BDD9Bw2Ms3pkpYfgB8+zoinkw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfselNq98tDoAR6wbbnnTI+bZIlwBJvz+NrCAH8w7GydrxQ+Sh
	r2/EavJW6oMljvW1FxovsH6yjMn/TtzMLpIPbQfj8LPggSlD3rx04+rnlVRM0OimZfYnluF+rW8
	9+ifD42uqBVa0L/a52A7WebUPQA1r/+LvCA/VN+8HXv9ueCYfFTcG/G83EoySlxlIp2o=
X-Gm-Gg: Acq92OH8AueqE4x0qCrOma+ZflNq5S8PDxuqZFR31Hrn+8mydBma/5rtwiTs502IVrR
	f4DvFze1oSXjsJNBaQtoF8lQPaYMD7PDn7zRhftucSLdE6cUz4J1KX21vybfiMP6PZsjrCegNbP
	GWRpNunn4BUQCEFryAgHoSIs9VYm8OmMzNmvv17oWnPnzatT/05192+b5TvkzYHRBGkXt7i5kce
	uIdLbvX/ULqq3BhwN+dN4lN+zpOXdGh0ktfa9CoNciIHcDhS756ZPmCkyL2AktDam/1P9686Vap
	0r0cvKOW0LE6VNDd8UwRhnk6Isn2gQX4MLIMeiHMt2AogLTy0Pq/80UpbelZnmuvqgNBrEMU4Jo
	4nid+1dbh5GV+t/kXMyKiaHc2EbE=
X-Received: by 2002:ac8:5d4c:0:b0:50e:6399:eed3 with SMTP id d75a77b69052e-516c54557c3mr7169921cf.20.1779317634512;
        Wed, 20 May 2026 15:53:54 -0700 (PDT)
X-Received: by 2002:ac8:5d4c:0:b0:50e:6399:eed3 with SMTP id d75a77b69052e-516c54557c3mr7169681cf.20.1779317634055;
        Wed, 20 May 2026 15:53:54 -0700 (PDT)
Received: from redhat.com ([69.43.42.202])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-516514e0b91sm191843371cf.15.2026.05.20.15.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 15:53:52 -0700 (PDT)
Date: Wed, 20 May 2026 18:53:51 -0400
From: Brian Masney <bmasney@redhat.com>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v8 3/5] clk: en7523: Add support for selecting the Serdes
 port in SCU
Message-ID: <ag47f8ZgCEZJurHE@redhat.com>
References: <20260520150912.11614-1-ansuelsmth@gmail.com>
 <20260520150912.11614-4-ansuelsmth@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260520150912.11614-4-ansuelsmth@gmail.com>
User-Agent: Mutt/2.3.1 (2026-03-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KTH0qyRqisNAh7hyP3UyAMkJJGfiqECJGQOER7_UvlQ_1779317634
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_155358_188749_CF36C64C 
X-CRM114-Status: GOOD (  24.72  )
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

Hi Christian,

On Wed, May 20, 2026 at 05:09:08PM +0200, Christian Marangi wrote:
> In the SCU register for clock and reset, there are also some register to
> select the Serdes port mode. The Airoha AN7581 SoC have 4 different Serdes
> that can switch between PCIe, USB or Ethernet mode.
> 
> Add a simple PHY provider that expose the .set_mode OP to toggle the
> requested mode for the Serdes port.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  drivers/clk/Kconfig      |   1 +
>  drivers/clk/clk-en7523.c | 216 ++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 214 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index b2efbe9f6acb..e60a824b5117 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -221,6 +221,7 @@ config COMMON_CLK_EN7523
>  	bool "Clock driver for Airoha/EcoNet SoC system clocks"
>  	depends on OF
>  	depends on ARCH_AIROHA || ECONET || COMPILE_TEST
> +	select GENERIC_PHY
>  	default ARCH_AIROHA
>  	help
>  	  This driver provides the fixed clocks and gates present on Airoha
> diff --git a/drivers/clk/clk-en7523.c b/drivers/clk/clk-en7523.c
> index 1ab0e2eca5d3..d4b73c5f15b9 100644
> --- a/drivers/clk/clk-en7523.c
> +++ b/drivers/clk/clk-en7523.c
> @@ -6,14 +6,18 @@
>  #include <linux/io.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/platform_device.h>
> +#include <linux/phy.h>
> +#include <linux/phy/phy.h>
>  #include <linux/property.h>
>  #include <linux/regmap.h>
>  #include <linux/reset-controller.h>
> +#include <linux/spinlock.h>
>  #include <dt-bindings/clock/en7523-clk.h>
>  #include <dt-bindings/reset/airoha,en7523-reset.h>
>  #include <dt-bindings/reset/airoha,en7581-reset.h>
>  #include <dt-bindings/clock/econet,en751221-scu.h>
>  #include <dt-bindings/reset/econet,en751221-scu.h>
> +#include <dt-bindings/soc/airoha,scu-ssr.h>
>  
>  #define RST_NR_PER_BANK			32
>  
> @@ -40,9 +44,22 @@
>  #define   REG_HIR_MASK			GENMASK(31, 16)
>  /* EN7581 */
>  #define REG_NP_SCU_PCIC			0x88
> +#define REG_NP_SCU_SSR3			0x94
> +#define REG_SSUSB_HSGMII_SEL_MASK	BIT(29)
> +#define REG_SSUSB_HSGMII_SEL_HSGMII	FIELD_PREP_CONST(REG_SSUSB_HSGMII_SEL_MASK, 0x0)
> +#define REG_SSUSB_HSGMII_SEL_USB	FIELD_PREP_CONST(REG_SSUSB_HSGMII_SEL_MASK, 0x1)
>  #define REG_NP_SCU_SSTR			0x9c
>  #define REG_PCIE_XSI0_SEL_MASK		GENMASK(14, 13)
> +#define REG_PCIE_XSI0_SEL_PCIE		FIELD_PREP_CONST(REG_PCIE_XSI0_SEL_MASK, 0x0)
> +#define REG_PCIE_XSI0_SEL_XFI		FIELD_PREP_CONST(REG_PCIE_XSI0_SEL_MASK, 0x1)
> +#define REG_PCIE_XSI0_SEL_HSGMII	FIELD_PREP_CONST(REG_PCIE_XSI0_SEL_MASK, 0x2)
>  #define REG_PCIE_XSI1_SEL_MASK		GENMASK(12, 11)
> +#define REG_PCIE_XSI1_SEL_PCIE		FIELD_PREP_CONST(REG_PCIE_XSI1_SEL_MASK, 0x0)
> +#define REG_PCIE_XSI1_SEL_XFI		FIELD_PREP_CONST(REG_PCIE_XSI1_SEL_MASK, 0x1)
> +#define REG_PCIE_XSI1_SEL_HSGMII	FIELD_PREP_CONST(REG_PCIE_XSI1_SEL_MASK, 0x2)
> +#define REG_USB_PCIE_SEL_MASK		BIT(3)
> +#define REG_USB_PCIE_SEL_PCIE		FIELD_PREP_CONST(REG_USB_PCIE_SEL_MASK, 0x0)
> +#define REG_USB_PCIE_SEL_USB		FIELD_PREP_CONST(REG_USB_PCIE_SEL_MASK, 0x1)
>  #define REG_CRYPTO_CLKSRC2		0x20c
>  /* EN751221 */
>  #define EN751221_REG_SPI_DIV		0x0cc
> @@ -81,6 +98,8 @@ enum en_hir {
>  	HIR_MAX		= 14,
>  };
>  
> +#define EN_SERDES_PHY_NUM		4
> +
>  struct en_clk_desc {
>  	int id;
>  	const char *name;
> @@ -113,6 +132,18 @@ struct en_rst_data {
>  	struct reset_controller_dev rcdev;
>  };
>  
> +struct en_serdes_phy_instance {
> +	struct phy *phy;
> +	unsigned int serdes_port;
> +};
> +
> +struct en_clk_priv {
> +	void __iomem *base;
> +	/* protect SCU register */
> +	spinlock_t lock;

This spinlock is not initialized with spin_lock_init(). You can do this in
en7523_clk_probe() after devm_kzalloc().

With that fixed:

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
