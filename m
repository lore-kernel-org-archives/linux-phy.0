Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ADD6E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 12:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4gNtmEv/yEbR1DmaAo9EU8+4cT9CgJ+ttt5c/NAh1U=; b=cYdPO1jNoiBX4o
	eBp0mUNW3f9aoLtIu7J6N+HvVjv8/2c4/e+YaX5n/oDYrn2A/NkHdfcnb+FnUaiHn475/WkxQnWHV
	JUTzsrLIXefZEgqfJLqPrKbwd+SyD5WWtoZnpP+gn5mnqmFPLdAZ0xp2npgPWZZ7gB1YOd3oXzY9P
	ftWBAT2f79UI+a7svVhdQTI5XjLEZAWKSw9Kr2VovvAiEB+JMAl0UChpC61QttmdxYce3bGRItQn0
	yADhCFXsjiZcXBnbmoDb5JrAuEsHdIsoXwgahEOieYmXr8t1eiQ9oUY+hf/M7N+1VcqD4f/EoZPNU
	+pQFMsrpQfVCR1QWLuOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ432-0000000BwrW-497L;
	Tue, 24 Dec 2024 12:30:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ430-0000000Bwpz-0VnD;
	Tue, 24 Dec 2024 12:30:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5v1zxgjXY4Cu4pzpUptou9FK+6CP3qWPNAmKmjLKTGQ=; b=HGkOSTJQGDxcLgnLndjt5XEtNh
	j/laTt0FewIFWpPXerk9zW3Pb7QhCv9S5AXsc+QITucdb48steF6/xEENT2QDO9pm9lmiH1uqhcWq
	Ra2dH/G1CVu+AIdrUS9bdFIk+lBGn1XM/E76YvO+0Dh1eIJgAdQbX+7EmIKK40vnzvpsG+lm72pfV
	dMzgbsKNAxlto87gnYxy13kg39DQbXcc8sIHqcdNcX//7L+mWfzVGu0VqXtepDBb+6zo1CTq9myfK
	pzEjjEtUWZSZHjxG9IGE2DWY3hEXshtZ9sZ35fDrevNxtw+LYa9ztPNXc7xwi61AZMtexDoVj5X6s
	L6Xo54+g==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQ42s-0001AR-Nz; Tue, 24 Dec 2024 13:29:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Frank Wang <frank.wang@rock-chips.com>,
 William Wu <william.wu@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] phy: rockchip: inno-usb2: add usb2 phy support for rk3562
Date: Tue, 24 Dec 2024 13:29:53 +0100
Message-ID: <2246672.1BCLMh4Saa@diego>
In-Reply-To: <20241224094240.3817261-2-kever.yang@rock-chips.com>
References: <20241224094240.3817261-1-kever.yang@rock-chips.com>
 <20241224094240.3817261-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_043002_170543_DBF8E37D 
X-CRM114-Status: GOOD (  11.32  )
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

Am Dienstag, 24. Dezember 2024, 10:42:40 CET schrieb Kever Yang:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> RK3652 has one USB2.0 PHY with two ports, the OTG port support OTG
> and BC1.2, the SoC provide USB GRF and APB to access the registers.
> 
> This adds vbus detection function control and make the below tuning
> to enhance the usb2-phy SQ for RK3562 SoC.
>  - enable pre-emphasis during non-chirp phase
>  - set HS eye height to 425mv
>  - turn off differential receiver by default to save power
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Signed-off-by: William Wu <william.wu@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
