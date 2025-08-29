Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5203CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 06:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZC8hECrmozTERbvSyrRcd1R2QhN7OHBRKn+qaejoQQ=; b=tSCDl6kHm7scQ7
	OjAJZWkLJJj5p+qFFgUXCs5323U6X3ihfwmliscAWymIl4wzixYVdg+uuBC4JzJAsTCDMLQZ+ODSn
	d9N4SNiyndEpQwzgsRhYkNfArIwCZXENQ8nHdZm1CoWwIhP6MCi4awExzjbhdf4EhgDJjDQh7D2rX
	nexQixtMQK8GpzDdoy7SVhs7HnlY+9YVdG6yqSNU7XvETkOQ9IgdeZqWxuHT0wiVi4ITW+VrJg1RV
	CA0a83eGzpLIj344mBayKuEgmcizv4686p9h1ALliKMsa8zuizqnMH6Es536l6Opd+YCvAXcQ3LRN
	JJWbGu7cS773bbI88Jyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ursVP-00000004dCc-1YWg;
	Fri, 29 Aug 2025 06:22:35 +0000
Received: from azure-sdnproxy.icoremail.net ([52.229.205.26])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ursVL-00000004d9s-3lO9
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 06:22:34 +0000
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Fri, 29 Aug 2025 14:22:11 +0800 (GMT+08:00)
X-Originating-IP: [10.12.96.77]
Date: Fri, 29 Aug 2025 14:22:11 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: luyulin@eswincomputing.com
To: "Niklas Cassel" <cassel@kernel.org>
Cc: "Rob Herring" <robh@kernel.org>, dlemoal@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: Re: Re: [PATCH v2 1/3] dt-bindings: ata: eswin: Document for
 EIC7700 SoC ahci
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2025 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <aLBUC116MdJqDGIJ@flawful.org>
References: <20250819134722.220-1-luyulin@eswincomputing.com>
 <20250819135413.386-1-luyulin@eswincomputing.com>
 <CAL_JsqKFotNLZZXwiy7S6K8qXLdGRAnsa-1zvZRDQBE39Gf5kg@mail.gmail.com>
 <692e11ca.843.198f0337528.Coremail.luyulin@eswincomputing.com>
 <aLBUC116MdJqDGIJ@flawful.org>
MIME-Version: 1.0
Message-ID: <4ab70c6a.8be.198f47da494.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: TQJkCgDHZpUTR7Foff_EAA--.23769W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAgEJA2iwhNAS7QAA
	s6
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_232232_092776_4F1F5E18 
X-CRM114-Status: GOOD (  15.86  )
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


> On Thu, Aug 28, 2025 at 06:22:40PM +0800, luyulin@eswincomputing.com wrote:
> > 
> > Do you mean that ports-implemented should be removed from the dts,
> > and the corresponding register should be configured by the firmware
> > (which is U-Boot on the HiFive Premier P550 board)? Is this understanding correct?
> > If so, when the driver is removed, a reset will be triggered,
> > causing the configuration of this register to be lost,
> > which will result in an error when insmod the driver again.
> 
> My 50 cents,
> 
> if the ports implemented register gets reset from the reset_control_reset()
> in ahci_platform_assert_rsts(), then it seems like having ports-implemented
> in device tree is acceptable.
> 

In our design, the ports implemented register gets reset from the ahci_platform_assert_rsts().

> There are a bunch of device trees that have this already:
> arch/arm/boot/dts/qcom/qcom-apq8064.dtsi:                       ports-implemented = <0x1>;
> arch/arm/boot/dts/qcom/qcom-ipq8064-v1.0.dtsi:                  ports-implemented = <0x1>;
> arch/arm/boot/dts/qcom/qcom-ipq8064-v2.0.dtsi:  ports-implemented = <0x1>;
> arch/arm/boot/dts/samsung/exynos5250.dtsi:                      ports-implemented = <0x1>;
> arch/arm/boot/dts/socionext/uniphier-pro4.dtsi:                 ports-implemented = <1>;
> arch/arm/boot/dts/socionext/uniphier-pro4.dtsi:                 ports-implemented = <1>;
> arch/arm/boot/dts/socionext/uniphier-pxs2.dtsi:                 ports-implemented = <1>;
> arch/arm/boot/dts/st/stih407-family.dtsi:                       ports-implemented = <0x1>;
> arch/arm/boot/dts/st/stih407-family.dtsi:                       ports-implemented = <0x1>;
> arch/arm/boot/dts/ti/omap/dra7-l4.dtsi:                         ports-implemented = <0x1>;
> arch/arm/boot/dts/ti/omap/omap5-l4.dtsi:                                ports-implemented = <0x1>;
> arch/arm64/boot/dts/mediatek/mt7622.dtsi:               ports-implemented = <0x1>;
> arch/arm64/boot/dts/rockchip/rk3568.dtsi:               ports-implemented = <0x1>;
> arch/arm64/boot/dts/rockchip/rk356x-base.dtsi:          ports-implemented = <0x1>;
> arch/arm64/boot/dts/rockchip/rk356x-base.dtsi:          ports-implemented = <0x1>;
> arch/arm64/boot/dts/rockchip/rk3576.dtsi:                       ports-implemented = <0x1>;
> arch/arm64/boot/dts/rockchip/rk3576.dtsi:                       ports-implemented = <0x1>;
> arch/arm64/boot/dts/rockchip/rk3588-base.dtsi:          ports-implemented = <0x1>;
> arch/arm64/boot/dts/rockchip/rk3588-base.dtsi:          ports-implemented = <0x1>;
> arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi:         ports-implemented = <0x1>;
> arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi:                       ports-implemented = <1>;
> arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi:                       ports-implemented = <1>;
> 
> 
> Sure, if the ports implemented register was sticky (kept its value after a
> reset), then I think Rob's suggestion would make sense.
> 
> 

Thank you very much for the clarification.

> 
> Kind regards,
> Niklas

Best regards,
Yulin
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
