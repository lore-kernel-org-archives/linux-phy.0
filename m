Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59B4D105A585
	for <linux-phy@archiver.kernel.org>; Thu, 12 Mar 2026 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRSXqDUI+TY5z8nhHriULimuBzy2RIUqmO2cPocM7WM=; b=C0IAMb+6yxryK2
	Y5rivKbgeugJ6lNI25Mb1D+iZMZHw4+7lsIovzk+Ig1xacamjCkuQ/JRTSX28mSPW7hbCFRows67G
	96bnc4AB9iEnPxr2X+0xaGGDhPtRPeQkpvruWwQY7H/aAdGYgM4T7tkOmK9gIMJ0ctllPQzsoRKeo
	EFcI/AnGADAyyMQtmilcZcLVW9AN3VhNAukVaKZYNsrx9iR5vrgfP+5ZD+/+YitKlRvDGo6H1lQpy
	x7g3x4voAoGA+qzGywTbYzYclE/wz/fLERvFH7Rr4adIOvGL01Rlvfdok8sLu09PWTQ7vhIOAhRDU
	kqHjjKnyxnqiR+cdIaAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0drx-0000000DufY-39Gi;
	Thu, 12 Mar 2026 11:06:21 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0drt-0000000DueD-3yVI
	for linux-phy@lists.infradead.org;
	Thu, 12 Mar 2026 11:06:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773313575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q0GjOCrLZMJdWmBqARXEFoO0AI1gLdN5XafIHahOrOo=;
	b=RUBfpx6Sd2sqvki1w64iamZVIWTJndxzLy8KP8ZSh3lyfnmrZCcC+8cnLBWu+pV4FWw4sZ
	uZOVG/eRm8oqzowyrscvf8RUzMhOzYUXAhFiNFMicb5a7cREbiXCcc/O4CTBkptir6WYoW
	0441mB+wTqJLH2pfumtGlRh3U5rbjEc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-65-jLc4xC_VNkuZr3lxRFojQw-1; Thu, 12 Mar 2026 07:06:13 -0400
X-MC-Unique: jLc4xC_VNkuZr3lxRFojQw-1
X-Mimecast-MFC-AGG-ID: jLc4xC_VNkuZr3lxRFojQw_1773313572
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4853466655dso9207725e9.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Mar 2026 04:06:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773313572; x=1773918372;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q0GjOCrLZMJdWmBqARXEFoO0AI1gLdN5XafIHahOrOo=;
        b=GQQL6AIPPa/c5mMFvcB/clX+qrTNUEemfZaRBjHlQV0+Eo2c+VcqWKsJNUIFdCXnKv
         HPJjWepJvABVU4OXWQJ89D05gXR+LNsLPiYZYELkS+Y47Js3KCaY4wDpRRZRcgAo0LUI
         itC6hFjtu7QzE/LXyPMEp8+Qlk2iSN+8R89PK9KfQXeTCfWB3jLa5YJI/bQIZwY578tu
         uZmMU46+fgEbU1t7jFxgw+FKYA5iSo4LTvnbkodLmGXKA0U+SwAV6YoUWllUTQvgmHHh
         00lgMmAKQCuLu65hLx3rXYLyxhfUwUpLa4Vwy0omF1dN7VSuI7EUJ3AuvEl1dlI7fM47
         0M1g==
X-Forwarded-Encrypted: i=1; AJvYcCWHZnzVpY/GWq6PH3r7QczeYy3VDVM9JhmAkQPM9IR9AzVH+QuEztPqKD7OBjw4H504bxYYXJbjtD8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQQ/A6J5JyJvlENY8al2hHS2Ua1n+6wsf7j1HnjpRAmzpDDOuN
	Wu4ApbmtPCz60+n7A9jq/BkqsmmtVcr3tHEXmakVmXUPpLdCr8rYSSsnremUhheQRQQfnBDr1Zv
	TwJTCmQr83dYafZBPyUl29KVlWhMmhog+JQHdIWtXEyeoJqCJWLa78KAt3Hxcdenjf4k=
X-Gm-Gg: ATEYQzxvgywf/dJSX7noE5EMf5DXWn4oGpnA8LRB6FM+NBoRP955wWlRlbkdIC54wTO
	UtbfDVD+0nkKgNf3wfUb77BV2XahhdzNwtx1gIe1+NGfNIIp+nFCHnqUBjc0gjuVTPk/RjXpVrA
	OCeA2JbZorSeBhp6npVFlLhiPn1W2sHpmbsDaoHeETOCPmFacvGrQhCy2GjcVv2qdMUYih1loha
	/E3Q1ebYP04+M75PzvefAlt3CFzCEJOOyXToa0MKI5NLFfTkdFOfQGilR3eG/Jmu94cZVcx2jnC
	AD/xreJH0lRML7IEfqMhJ7qmvwjI+GP8EZdR1tna3aN5XzkObYTAeQ/+31FyUlYZ/IsC2Jtw730
	JhQuOtKUVcHrl580bR6a/tT3CfOE8JP2k7bENkMh82NzH2Xso3Lmo+Ws=
X-Received: by 2002:a05:600c:3548:b0:485:345b:ccb1 with SMTP id 5b1f17b1804b1-4854b129fffmr97036425e9.27.1773313572450;
        Thu, 12 Mar 2026 04:06:12 -0700 (PDT)
X-Received: by 2002:a05:600c:3548:b0:485:345b:ccb1 with SMTP id 5b1f17b1804b1-4854b129fffmr97035605e9.27.1773313571932;
        Thu, 12 Mar 2026 04:06:11 -0700 (PDT)
Received: from [192.168.88.32] ([216.128.11.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b5f6b95sm116309065e9.6.2026.03.12.04.06.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 04:06:11 -0700 (PDT)
Message-ID: <04439ab3-818d-460a-9307-2c6cca4f9ab7@redhat.com>
Date: Thu, 12 Mar 2026 12:06:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 net-next 2/5] net: phy: make mdio_device.c part of
 libphy
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
 <c6dbf9b3-3ca0-434b-ad3a-71fe602ab809@gmail.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <c6dbf9b3-3ca0-434b-ad3a-71fe602ab809@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hhnEBKy1WQORY5nnHRGZ_7OcmSpL0-2ou0a0oGln6oI_1773313572
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_040618_059203_8A48EFDF 
X-CRM114-Status: GOOD (  16.57  )
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

On 3/9/26 6:03 PM, Heiner Kallweit wrote:
> This patch
> - makes mdio_device.c part of libphy
> - makes mdio_device_(un)register_reset() static
> - moves mdiobus_(un)register_device() from mdio_bus.c to mdio_device.c,
>   stops exporting both functions and makes them private to phylib
> 
> This further decouples the MDIO consumer functionality from libphy.
> 
> Note: This makes MDIO driver registration part of phylib, therefore
>       adjust Kconfig dependencies where needed.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:
> - add needed Kconfig dependency changes
> ---
>  drivers/clk/qcom/Kconfig          |  2 +-
>  drivers/net/phy/Makefile          |  6 ++---
>  drivers/net/phy/mdio-private.h    | 11 ---------
>  drivers/net/phy/mdio_bus.c        | 36 ----------------------------
>  drivers/net/phy/mdio_device.c     | 39 ++++++++++++++++++++++++++++---
>  drivers/net/phy/phylib-internal.h |  4 ++++
>  drivers/phy/broadcom/Kconfig      |  4 ++--
>  include/linux/mdio.h              |  2 --
>  8 files changed, 46 insertions(+), 58 deletions(-)
>  delete mode 100644 drivers/net/phy/mdio-private.h
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index a8a86ea6bb7..a277c434d64 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -392,7 +392,7 @@ config IPQ_NSSCC_9574
>  
>  config IPQ_NSSCC_QCA8K
>  	tristate "QCA8K(QCA8386 or QCA8084) NSS Clock Controller"
> -	depends on MDIO_BUS
> +	depends on PHYLIB
>  	help
>  	  Support for NSS(Network SubSystem) clock controller on
>  	  qca8386/qca8084 chip.

Bjorn, Micahel, Stephen: are you ok with this change?

Thanks,

Paolo


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
