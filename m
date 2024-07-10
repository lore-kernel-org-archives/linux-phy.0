Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C0EBC3DA42
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jul 2024 15:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnHv7KU0BYIOZdSt7+ESlvaZLGSqywQHeBtYP7pWoj8=; b=IwKTj9PYI5wsWT
	yuHwa5JLJWrHaZYC+DffyL+E1tAxMa0B6eI9Ejtolg94WDwlZmIUQATEnyl5FIRYhW5O/LlEHFmIR
	CMpMtrB+0qL/d6q4Qm9bM7NxH39gAeG8dFbNVoAMQD+DhKsybeoW9qIrJbI5WolsQUVifr49pmnV5
	4OxbXCdEuoE6nOGVbSu1Z7MVq4rGhwH2OnPDOK23rj6EZ9zrdEKhJKM6NA7x6zM6wnNEnhOcqVQlY
	IabtlHtsyFzb6z2pTA4rv9GCqj0IicihCWOmcAY+beRQhsNXcG5Id0aHPAS1Sqix3ejyHhwTNxS26
	h+4Tpe0eUk8fGuylWHqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRZSL-0000000AzvS-1Bnn;
	Wed, 10 Jul 2024 15:42:09 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRZS5-0000000Azqv-03Mp
	for linux-phy@lists.infradead.org;
	Wed, 10 Jul 2024 15:41:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720626111;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RFy0Pt4ubesULzO+oQaiRFBM5Ze1aZnn+Qz6jyyaJAc=;
	b=Yritz1IqUh2GQoCgzVxOf4nsmCX97qDjJixv2OK/kvbR1r2P/hOqRzL6QZa7TbHzCvuFho
	M+8Wgs8Dcerp6ovQCIxhI3CaE6tCKsOlmJgbt9h+hK6BAmmrac1U0X7z4a3723zK19lfuz
	F7ACeD5f8ZYxHsYeyHX2njnPawUaFBo=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-679-696_HCwyNIWE74SRKjMKow-1; Wed, 10 Jul 2024 11:41:48 -0400
X-MC-Unique: 696_HCwyNIWE74SRKjMKow-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b5dacdc192so17472136d6.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Jul 2024 08:41:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720626108; x=1721230908;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RFy0Pt4ubesULzO+oQaiRFBM5Ze1aZnn+Qz6jyyaJAc=;
        b=WoipgKtxmJZhsnp3k26R+z51Qte7diIPD0J+6xsF2ieQP7FyiV9WFe9cz3fTLcAUeo
         m1O3ecjtHBKjGBS/IXQtm0+x32D84ItBuCkmb8UH3kiMjOdfv1Ac1f88YHCqKITCI7bw
         9SlBRjdL/bidsJEdjBBb7i2EJaVdRiQdKwhG0hQlOAizwgC7jgcwBO9P2eMQ7XwNw3a1
         2bsmBmYSZlwIJEvAKffPSfbi36LGnpOu6JyRckQTm0gvx2ooYUo5aFBFEaIaYYgUtKYz
         QJhoNiAfdrfwoj8ySbc2uXUotetyRqf2RYHLqA7bTLyRtp9KZEP1iqdF3GwF5qmY1TCf
         K1kg==
X-Forwarded-Encrypted: i=1; AJvYcCUMj3eKC14YmDulfnstK5V7PEyXk0ThmuI4dQ3snRhHmss3CF3jcECTFhWKPzfrgvIPca/HcyoARDezq0HbGBDNRbK5tVCLFDD53UfR/A==
X-Gm-Message-State: AOJu0Yx4GNHx5rTmGjk8Ch4uxL4IFCM88ay7FvsJA7AFom4/QHh0XrHj
	TbXKHfWWwJrX/v7Z3f92aVgvpc7g+hR7BlBsnMYm1F/XvN+jDVB8Qkv3JMxFAZFCCs40h32d8yd
	RxMBoi+UYnYyAp/m6HQKLlxWV84LpJaXv+0llNZFTKdUJ72QDPrnkSObOdj4RYXUq2SfdZ+0=
X-Received: by 2002:ad4:5e8b:0:b0:6b5:d95c:692d with SMTP id 6a1803df08f44-6b74af531a6mr711906d6.13.1720626107772;
        Wed, 10 Jul 2024 08:41:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFm/74UP4TLT1vGs8DLjUNFGeFxt2DXzfyoISdrNcO4smbnFu4jefOYDtfhRDnu4G/xSbFhqw==
X-Received: by 2002:ad4:5e8b:0:b0:6b5:d95c:692d with SMTP id 6a1803df08f44-6b74af531a6mr711666d6.13.1720626107436;
        Wed, 10 Jul 2024 08:41:47 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::40])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61b9c47d4sm18003426d6.23.2024.07.10.08.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 08:41:47 -0700 (PDT)
Date: Wed, 10 Jul 2024 10:41:44 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, sjakhade@cadence.com, rogerq@kernel.org, 
	thomas.richard@bootlin.com, theo.lebrun@bootlin.com, make24@iscas.ac.cn, 
	linux-phy@lists.infradead.org, mranostay@ti.com
Subject: Re: [BUG] k3-j784s4-evm/phy-cadence-torrent: Shared reset using
 exclusive API
Message-ID: <qgqpibrr6hcicpofi64fxenenq7xdffnddbapefjgzsw6q7j2s@cl3gkkytj2w4>
References: <yhtb4clns57t7qo5yxil3oofisdlzfubyiwrvjo2ufw2ngv67m@g6p7ktxfgfv3>
 <46e635e6-b6bf-404c-87a2-57fe25b4855a@ti.com>
MIME-Version: 1.0
In-Reply-To: <46e635e6-b6bf-404c-87a2-57fe25b4855a@ti.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_084153_144201_CA5E5301 
X-CRM114-Status: GOOD (  24.13  )
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

On Wed, Jul 10, 2024 at 10:29:46AM GMT, Siddharth Vadapalli wrote:

<snip>

> 
> No, the resets are correct. Both PCIe1 and USB0 use the same instances
> of SERDES which is SERDES0. I had posted the series for PCIe at:
> https://lore.kernel.org/r/20240529082259.1619695-1-s-vadapalli@ti.com/
> with all 4 Lanes of SERDES0 given to PCIe1. Similarly, Ravi had posted
> the series for USB at:
> https://lore.kernel.org/r/20240507095545.8210-1-r-gunasekaran@ti.com/
> with lane 3 of SERDES0 given to USB0.
> 
> Since both of the series got merged on the same day (14 Jun 2024):
> PCIe series:
> https://lore.kernel.org/r/171826022277.240984.16790260886500529482.b4-ty@ti.com/
> USB series:
> https://lore.kernel.org/r/171826022274.240984.5150753966671933401.b4-ty@ti.com/
> the dependency was unknown when the individual series were posted as
> neither of them was a part of linux-next/ti-k3-dts-next when the other
> one was posted.
> 
> > 
> > Total aside, I think we should put the above dts snippet into one &serdes0 reference
> > for readability sake. I'd post the patch but I'm hoping to get the above answered
> > first in order to clean that up before shuffling things around for readability sake.
> 
> Yes, I agree that both sub-nodes should go into the same referenced
> serdes0 node in k3-j784s4-evm.dts. The reason it didn't happen that way
> to begin with is due to the fact that both series got merged on the same
> day as I pointed out above.
> 
> The fix in this case will be to assign lanes 0 and 1 of SERDES0 to PCIe1
> and lane 3 to USB0 with lane 2 left unused since PCIe doesn't have the
> concept of a x3 link. In such a configuration, the device-tree nodes
> will look like:

Thanks alot for the quick explanation and suggestion!

> 
> &serdes0 {
> 	status = "okay";
> 
> 	serdes0_pcie1_link: phy@0 {
> 		reg = <0>;
> 		cdns,num-lanes = <2>;
> 		#phy-cells = <0>;
> 		cdns,phy-type = <PHY_TYPE_PCIE>;
> 		resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>;
> 	};
> 
> 	serdes0_usb_link: phy@3 {
> 		reg = <3>;
> 		cdns,num-lanes = <1>;
> 		#phy-cells = <0>;
> 		cdns,phy-type = <PHY_TYPE_USB3>;
> 		resets = <&serdes_wiz0 4>;
> 	};
> };
> 
> Thank you for pointing out this issue. Please let me know if you plan to
> post the patch with the above fix or you want me to post the patch for it.
> 

I've posted a series (with you CC'ed, just realized I CC'ed Matt instead
of Ravi -- whoops): https://lore.kernel.org/all/20240710-k3-j784s4-evm-serdes0-cleanup-v1-0-03850fe33922@redhat.com/

I'll be on PTO the next few days, so if any changes are required there
do feel free to do them on my behalf if I don't respin by end of today
US-time, otherwise I'll make the changes when I return next week.

Thanks again,
Andrew!


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
