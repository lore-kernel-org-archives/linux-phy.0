Return-Path: <SRS0=JtrO=PH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 289C8C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 09:11:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D342F60E9B
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 09:11:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D342F60E9B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rL6zbuBrpkdk4ttu1KvFKe8Dly9smxm+/QF7p1tIwEo=; b=jFEuootdPi/DaW
	p8XYs+FN9ZaV7PGAXryPrVz6vXrWr/6LnSbFlPLYo+K6m+DxflQmWki4dO5UmFZerx3/wZeuzo9zG
	6o6FSFNabPYsC604HoqhTDwwpxZCwVUxLi7kk6mAsBaNwp8MrU1MJ7/gqfATxRznQ+2U2AACzPEzZ
	9fCK8/+ZvD2dXGJTwgQmr3FhhOgxuxctqRbHDtcdqSjK8JRTLM5mmb+d8nEI+QlqBxlRNiNIQj+zj
	TaDGCaCrKeDFrZevRYdrtn2zy63MXnFcLGvj8jXCWBxUtSB6L79FQMHwsKbOGIn3YR6eNt0h3Soqc
	gBNMojnmxspCvCxDL5jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcl9j-000do7-C9; Tue, 19 Oct 2021 09:11:35 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcl9f-000dmN-Sj
 for linux-phy@lists.infradead.org; Tue, 19 Oct 2021 09:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634634691; x=1666170691;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SFnbRDPbh9Cnl0CjzDAQQBLnGioAW3IiP6jsl+JbKXg=;
 b=l//FYcBe8k3APbilmAfqyMU8bS53aaUILOx7RIokMYUyDPTjMNTAQ9LK
 N4kocgrmOER1rhIYqFpNUUwX44iQdZ4jeDb+OLqNuaWB8Tk7EQb66AxA3
 ok7sbEDkRZave5StbSDjvWoLyP2Uae2jYcx+ZdxKHICsjOnUBUkB+G5Jl
 q3e8jTI0RO7rBmpP30JTm/l9bfkH7qr8xLkrzSoypkZuPYZdurWjnknnf
 4BqUlxa6GTvfsXlJ/yqN9u1oblqbU6tFllDkd3s9ohW21KJwf+KfEWs2c
 U/nFYFoN+coFIq0b9l/9XJxxKGs9e7mmZuUSXVl1JcEXh5Jyb18G92rIl w==;
IronPort-SDR: aDBBwI1xiQi99aA95+ithxdVm7jIv/LL1zMQ24NUTEJ+nGIDBg93FpATujlCl7HSMccbVM6NZm
 0K8LJdN+5aeFshYHkZIkW1ya9l5k+bpP2rvSl9k9tiCc+BmDqtJwkHLn20j7VXW8AFIXGpV8ak
 k0NdEpg2zIDlo2VFwrJN1l6j4tC0xN/sB3t4oCnLYcmJxYDdYUcmIpMJ/3ogQc4c3Eq4hcs+fG
 eBmCm/n5e8Ra4YVNuZkwrPYECeb6Y9gtLbRPuxqxPya04qmdUrHWARXt1zL5ne6G1ELLiejBaU
 XlOAqhh3OP4iO8bt+Oh2tSee
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="73497729"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Oct 2021 02:11:26 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 19 Oct 2021 02:11:26 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Tue, 19 Oct 2021 02:11:26 -0700
Date: Tue, 19 Oct 2021 11:12:58 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Rob Herring <robh@kernel.org>
CC: <kishon@ti.com>, <vkoul@kernel.org>, <andrew@lunn.ch>,
 <alexandre.belloni@bootlin.com>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: Add constants for lan966x serdes
Message-ID: <20211019091258.3uet6lp3mxaoliqt@soft-dev3-1.localhost>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-3-horatiu.vultur@microchip.com>
 <YW3K2GX+hmkwt3EE@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YW3K2GX+hmkwt3EE@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_021132_035278_59A6FD0E 
X-CRM114-Status: GOOD (  19.43  )
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

The 10/18/2021 14:28, Rob Herring wrote:
> 
> On Fri, Oct 15, 2021 at 02:39:19PM +0200, Horatiu Vultur wrote:
> > Lan966x has: 2 integrated PHYs, 3 SerDes and 2 RGMII interfaces. Which
> > requires to be muxed based on the HW representation.
> >
> > So add constants for each interface to be able to distinguish them.
> >
> > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > ---
> >  include/dt-bindings/phy/phy-lan966x-serdes.h | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >  create mode 100644 include/dt-bindings/phy/phy-lan966x-serdes.h
> >
> > diff --git a/include/dt-bindings/phy/phy-lan966x-serdes.h b/include/dt-bindings/phy/phy-lan966x-serdes.h
> > new file mode 100644
> > index 000000000000..8a05f93ecf41
> > --- /dev/null
> > +++ b/include/dt-bindings/phy/phy-lan966x-serdes.h
> > @@ -0,0 +1,14 @@
> > +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> > +
> > +#ifndef __PHY_LAN966X_SERDES_H__
> > +#define __PHY_LAN966X_SERDES_H__
> > +
> > +#define PHY(x)               (x)
> > +#define PHY_MAX              PHY(2)
> > +#define SERDES6G(x)  (PHY_MAX + 1 + (x))
> > +#define SERDES6G_MAX SERDES6G(3)
> > +#define RGMII(x)     (SERDES6G_MAX + 1 + (x))
> > +#define RGMII_MAX    RGMII(2)
> > +#define SERDES_MAX   (RGMII_MAX + 1)
> 
> I still don't understand. #phy-cells description says we have:
> 
> <port idx> <serdes idx>
> 
> But here it's 3 numbers. How are these defines used to fill in the 2
> cells?

Actually they are still only a number. Or maybe I am missing something.

Maybe an example will help:

---
serdes: serdes@e2004010 {
    compatible = "microchip,lan966x-serdes";
    reg = <0xe202c000 0x9c>, <0xe2004010 0x4>;
    #phy-cells = <2>;
};

&port0 {
    ...
    phys = <&serdes 0 SERDES6G(1)>;
    ...
};

&port1 {
    ...
    phys = <&serdes 1 PHY(0)>;
    ...
}

...
---

Here are some existing examples based on which I have created this patch
series:
https://elixir.bootlin.com/linux/v5.15-rc6/source/arch/mips/boot/dts/mscc/ocelot_pcb120.dts#L99
https://elixir.bootlin.com/linux/v5.15-rc6/source/arch/mips/boot/dts/mscc/ocelot.dtsi#L274

> 
> Rob

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
