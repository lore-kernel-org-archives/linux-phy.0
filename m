Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DD46C43217
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AT0FH2zAwGTsQ7tHSCaYbuoLobPYJKMnR668siUQU4s=; b=lP59g21wm29wkj
	C9nimARW++IDjWcz4KHls/yxLECApBfR6Y2dEG+Z3bM097sKv45wGBxQmZCvv2FhHHflqf8b9kU6f
	w0O6cQ7DSygwxnd6cyBVL2xVPyCnsBon7RsxS75oGdqrd+kj29MqO0vfGIWcUER7siZpaNqUFAqJd
	u3onNyMEBwWwqjIqwTFGgnUKNgCADhEhOgIdqTR0P48GbPlZviKArMO5DIpLNL8H2gTeRPLMpJYGE
	s8ccJ4ecSLuXaaAbU/4YEn8whHZ8a4AfJw6davJI3sBENwN3ZGZ5Uu2JRF9ehnZsUySla8Sr32gtF
	/k4VzrAvt8C90sH5fNyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2wN-00E6Sk-Kq; Wed, 08 Dec 2021 19:49:23 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2wL-00E6Ql-A2; Wed, 08 Dec 2021 19:49:22 +0000
Received: by mail-oi1-f178.google.com with SMTP id bf8so5547116oib.6;
 Wed, 08 Dec 2021 11:49:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4Wh1I5JYEr/o41ru6y2qk0Uzdgv5Ih2RCK1RyBVMOWc=;
 b=gOcpchKQxto9OZqW07IppNH0QinaMwgxC9jTs0BKNSBqzb6C43EgpWlcvna+qfrskb
 rpIlvmCq9u8bzBZ/RxjmeReN0/LSS+DXLh2hnaldyMh0z+X4HtOqgjxVGmRxMWtGiMtH
 WqODwcD85BuhEsIfN5VTp1knHs3E8LorO7PlHakpGwQiwPSd5K39jbKnw6dXWZ5KBUlW
 ILRAKDMAqu3jwhF007qleqfegSYoVi6VZJqX2xGx/QG8E2D8Xo1ymCOWTw0dezAwj5DT
 8+0COaXI7xouVqiP1QKY99rVsvwR7DyQdWqAJ112NHA9cOhJ+/2WalCOSgUjbaThxeLZ
 ljPw==
X-Gm-Message-State: AOAM531lIA8e7keYJSWRibLVLZGQrE1u7lhl3IZizJ49jY2FjYNwrVZQ
 cCzIzNQrRpYYF0LRUV1yvA==
X-Google-Smtp-Source: ABdhPJwyBIV3aQbgMKzfqWmWyLPrM7CHHKkCpSkAUAumo1jNWI5hmwmTU0fRkaUVEt8X5mnBTN3FwQ==
X-Received: by 2002:a05:6808:3097:: with SMTP id
 bl23mr1583944oib.77.1638992960658; 
 Wed, 08 Dec 2021 11:49:20 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id g24sm642748oti.19.2021.12.08.11.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:49:19 -0800 (PST)
Received: (nullmailer pid 256878 invoked by uid 1000);
 Wed, 08 Dec 2021 19:49:18 -0000
Date: Wed, 8 Dec 2021 13:49:18 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Ray Jui <rjui@broadcom.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH v3 8/8] dt-bindings: net: Convert iProc MDIO mux to YAML
Message-ID: <YbEMPhJ/xuDDiQl3@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-9-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-9-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_114921_398912_FDB08805 
X-CRM114-Status: UNSURE (   9.26  )
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

On Mon, 06 Dec 2021 10:00:49 -0800, Florian Fainelli wrote:
> Conver the Broadcom iProc MDIO mux Device Tree binding to YAML.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/net/brcm,mdio-mux-iproc.txt      | 62 --------------
>  .../bindings/net/brcm,mdio-mux-iproc.yaml     | 80 +++++++++++++++++++
>  2 files changed, 80 insertions(+), 62 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
