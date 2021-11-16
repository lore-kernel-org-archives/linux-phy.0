Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD739C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:54:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BF3861BE5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:54:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8BF3861BE5
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5SRa3GL0YZCNrKn1xe2W8JaI0bFz3arZ7WTzKprWCo=; b=plIF+WrPpfP1TO
	qhjlAEMDmUVojZJj9alKkGFA9yg5mtcT686fdMU9CC1iFqLL8b5aHycEg1Lhc098wb8Lm+jOz2Tem
	oZmBDSHGmRRY8EUSDPs2WbqVhKuVcauj6tKAIyxrhJJOl0izevyiM81E51j37QvLFwP3v0MGNYiMm
	Vmv7q1Tg0I7H3muZuCbtODQUpCa9vpKY4s7LXY4TTko0N4ahtmDjhc8JHi+Dp5MGSgXm/UUNuodUd
	6mxVRToKUcJ27azZacBxAOwnSdggVBQ1xJze+nPoCUXKelEq/d2LE9rbrKf68czokZtelzyiNH+6h
	Q2HsMYFQPBGSsYGduXRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmw6Z-001I0A-O8; Tue, 16 Nov 2021 10:54:23 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmw6U-001Hye-L2
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1637060058; x=1668596058;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6p8b8jPiDl25t3SNlwqW1xWe288t0b87c/qI2szEEYo=;
 b=usGdguDp7xbBrMuMHhgbnrwYkK1C1twcWgcglwjE/7NbWkVZBZZZ8yxw
 N/mODUfSHsX+ELnKItucDqSdpKe93NTicrT1k8+ZA8CjNWP8c1Bg6sGfJ
 i+jbzrlvCFN4e+dFSBFLRk4BjBFSmPmzZDeQyx9GutYWMDMuOQq3OSw55
 BzVVEA4gKLmeYmSpRm5MvGLFzZiTxdJfNw+eLRjHSy5ey7oH2dGBLUL+a
 idUq/0KcaSpG68VEfLpulQbsGvxQxSiTC+myoLLEqMNyrJCsXckiiY9eA
 Jh8Uq6MgDuXiXPYexrnj4pe34132uESyyxVpE93DYJkShyd8ecu3pIjYb Q==;
IronPort-SDR: eeM1e3aec4XeYA2aIS/ahf2rUqdYVi90rpzLNM+u8izh+kTktBvixszzFFrktWUlnWnIsaWdOk
 3gvyWTAVQ4FzX0/e36FCZniSM6dxpdjVTAc03M/4nTLSuxHRqYd9JJnEl/WyOpeSZjdWGbx6We
 KRcWqq1LGdHZus6c8AJGVVJCgBrWeaiYpS0XwtX3mZc9ogkfSx17jqmOP18X0AEyd09r+1ApiT
 BME8LH1zgvAahJgIW3tAWj6dv+AWgqTKybhuT9FnA/lIO+7W1AfxelpQRwmLrARWxCQszRmUF1
 iGRpvGZxGcMuI0illY/ijE7h
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="139275682"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Nov 2021 03:54:15 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 16 Nov 2021 03:54:15 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Tue, 16 Nov 2021 03:54:15 -0700
Date: Tue, 16 Nov 2021 11:56:01 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vinod Koul <vkoul@kernel.org>
CC: <kishon@ti.com>, <robh+dt@kernel.org>, <andrew@lunn.ch>,
 <alexandre.belloni@bootlin.com>, <kuba@kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <20211116105601.fauvfv2wzlmcf6jc@soft-dev3-1.localhost>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
 <20211116102151.k3evnn4f2rwsi5nk@soft-dev3-1.localhost>
 <YZOLyQPsgoOYJZch@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZOLyQPsgoOYJZch@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_025418_802053_1BD86B51 
X-CRM114-Status: GOOD (  12.92  )
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

The 11/16/2021 16:15, Vinod Koul wrote:
> 
> On 16-11-21, 11:21, Horatiu Vultur wrote:
> > The 11/16/2021 11:08, Horatiu Vultur wrote:
> >
> > Hi Kison, Vinod,
> >
> > Can you let me know if you have more comments to this patch series?
> > Otherwise can you ack on it? Because I would like to have the patches
> > merged via netdev if that is OK for you.
> 
> Any reason for merge thru netdev, there is no dependency and now with
> merge window closed, I can pick this up..

Because I would like to send some patches for the lan966x network driver.
And these network patches depend on the serdes driver.

> 
> --
> ~Vinod

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
