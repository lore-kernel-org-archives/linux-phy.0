Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FECC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 11:50:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6262A611C3
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 11:50:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6262A611C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HV992Lby4lAAeOmlwozNmODYIoaa324ZCIQ4hIWMfWY=; b=Yz9ropLyLKLqLy
	l5fuXEPHJ2CW6RMv5DvEJjAqEmNMMMEXyLtWK/0uQ2EMSaozV3VdsRIYeWyAB/2516e/UjB0XgnY8
	FaMg3D86anZOD5qRoBEgg84ZpSxlEMNrKLYeZOc/UlWlVX4gd/OUO70x8AZcxBQRoMOBVPDSRlh9N
	Cp5ivRWX7J0v38f67iYXL7mRcdo/VMRcT9s21gugoUqcWzD9DZCdk70IJLjFcTK09iIxZZKa803/V
	VDlGtyft8WY0WNOcDxxHb8uayLsRNUNp9zpCOLJMTXVdRHSnDopRS0cYgxxOPKNJFsK7QgO0KLCl1
	5Q97l0VPbfwcxXIDavgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmwzI-001Xye-VR; Tue, 16 Nov 2021 11:50:56 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmwz5-001Xvw-K1
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 11:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1637063443; x=1668599443;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=i1b2J+jr9/cEXI1gGs8JEfqxkc51INl+52zhCG9XRRE=;
 b=p270CPA86rPTZUsZlPb/eXzV7QzGS4r77Lk0QENZnwuiiWNsZDUH92nn
 wj3Yylukq01ev5t9Ij3fUMezAS9qUZcMOs9BsqK3Qt/m1nUCCqZv4gdGg
 uv1IDyN3M1efrLZcbLsi3eTdBXcHJ4yBIEf6X5x2U0V6guYd9V0bCyLIl
 mEmF+M6Zos/VbCvuFQU+F9uS2+izCzAJknPfA0b4ua5YJh9RQxShrcnKm
 sB2JU7IZRgEPjwLGxOZZEBJKXIV6+I2Xpe6nRDxEFu3uFjJeWfVRBcpKX
 F1hLQz1z6L5nn2uhw4uAe6cEYqHZo+Ww6Phx6pnvsgbqbnYU0wbvIoGYy w==;
IronPort-SDR: 6BLFG/kzWU+9TdFx51b+S79rC0vLPNmp0s7BN1WwaQMcfGPweK240iWbIWoGEHUtcZ8NUHtDdS
 LZJIKZ+qbb0wwbeJ0JG8iSDSiE326I48pPShCIlEh4RK34sJuGa+X6kfO9OLKRyrt2d18S1Qhp
 FjnJZ1PJE8SQbamGwfd/fR4enYHjf13fK2BpmRscTe0YMnb4T/f1aR7DpR24aLLjPmbY37BSTV
 gmK+hZ3Sunq/q6ZhAc3PzKz8RNCDQnKT53ArVXpLSwzAYgj6TlKRHi5I8CHGnpRWXGKt4Sj4rB
 bejErPEcLAsEW7rfsyZwQkKM
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="136717777"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Nov 2021 04:50:42 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 16 Nov 2021 04:50:42 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Tue, 16 Nov 2021 04:50:42 -0700
Date: Tue, 16 Nov 2021 12:52:28 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vinod Koul <vkoul@kernel.org>
CC: <kishon@ti.com>, <robh+dt@kernel.org>, <andrew@lunn.ch>,
 <alexandre.belloni@bootlin.com>, <kuba@kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <20211116115228.5qn4o3gkh26674rw@soft-dev3-1.localhost>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
 <20211116102151.k3evnn4f2rwsi5nk@soft-dev3-1.localhost>
 <YZOLyQPsgoOYJZch@matsya>
 <20211116105601.fauvfv2wzlmcf6jc@soft-dev3-1.localhost>
 <YZOZZv3NPq2C9NXu@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZOZZv3NPq2C9NXu@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_035043_790653_38E948D0 
X-CRM114-Status: GOOD (  19.32  )
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

The 11/16/2021 17:13, Vinod Koul wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 16-11-21, 11:56, Horatiu Vultur wrote:
> > The 11/16/2021 16:15, Vinod Koul wrote:
> > >
> > > On 16-11-21, 11:21, Horatiu Vultur wrote:
> > > > The 11/16/2021 11:08, Horatiu Vultur wrote:
> > > >
> > > > Hi Kison, Vinod,
> > > >
> > > > Can you let me know if you have more comments to this patch series?
> > > > Otherwise can you ack on it? Because I would like to have the patches
> > > > merged via netdev if that is OK for you.
> > >
> > > Any reason for merge thru netdev, there is no dependency and now with
> > > merge window closed, I can pick this up..
> >
> > Because I would like to send some patches for the lan966x network driver.
> > And these network patches depend on the serdes driver.
> 
> There cant be a compile time dependency... the network driver can use
> the phy apis.. I dont think it is required here... Did I miss something
> obvious?

You are right, there is no compile time dependency and the network
driver can use the PHY APIs.

But at runtime the network driver will need to configure the serdes
using the PHY API to be able to work properly.

> 
> --
> ~Vinod

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
