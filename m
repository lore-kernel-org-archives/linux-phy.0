Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C3F4C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 30 Nov 2021 14:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yo4aLUg58Y/oWu3CTCjUfNjw8BCT+uwNbKkqAzy9zxI=; b=mC5tIhXgW4kAvf
	Ljo3QDrQWEIEU0pKtgLAeDdMc95uKAaqTnkzQ3xxBsNlWfHWDEX3Wv8JIlPVfk7SGNfq/rSB6TV2N
	9L6z4LLaMcIAvIwFOEQrourap9/deT5YEl6etud7XQLq4sZsIoU7afsG5pybx7DsSfltd8AtvLu9R
	FO7nfzal8U9OJmnung1c835K4T0QyTLUYrDDnttdLuatngVpeU854F9nAYmtMNs3GG66fR9t+JIpB
	w9VIJoLfkdX5tLcx5kyZXEGCxbf5RBaTOl6sTr7Qf8LQHJ8Rjo7UaN0QGE1/QtnaTKWgem0yFhWaD
	ZZvpOYOJW6nZUhSbeICQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms3gp-005StQ-Oi; Tue, 30 Nov 2021 14:00:59 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms3ge-005SRa-R6
 for linux-phy@lists.infradead.org; Tue, 30 Nov 2021 14:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o77YFlMZ5q8jKlzGHjL1d9KKHRISLWlW7P0jBZlKEX8=; b=Ybj3uOTYOvCA5/unQ/EcF7kn9j
 oy1aoZKU4MoIgPKW7hXK23g/+AoLaB2wmi/rLgy1BjG+f8N7yM1EBuvt/o6BjCC6i6ArC0bsxtnYI
 cREqV7HN9CIHy+dQKRVRHvDGsrJGObudV8SThs5yn9r99flj2+GtqaHbynsL+F49wOeU8YU9BUdeT
 5rTls/TXYHDrxqI3+myi10q6MMWQatI7Aj07TTw4k1msp8zUTCPWPQwaqX6voUEKQlz2zlaETQbq9
 BFSzAcZN9zFS1KRzVJZWQ1QymuRf35s9kd1pxWb3wUlk6owO1ONYlbGKI+9EUXnkbIpySxSdVhQvk
 mq5bHkAQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:55984)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ms3ec-0006yt-9q; Tue, 30 Nov 2021 13:58:42 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ms3eb-00076G-8I; Tue, 30 Nov 2021 13:58:41 +0000
Date: Tue, 30 Nov 2021 13:58:41 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, vkoul@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: lan966x: Extend lan966x to support multiple phy
 interfaces.
Message-ID: <YaYuEb/kinBdXCG+@shell.armlinux.org.uk>
References: <20211130101015.164916-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211130101015.164916-1-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_060048_904258_867CA2B0 
X-CRM114-Status: UNSURE (   7.71  )
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

On Tue, Nov 30, 2021 at 11:10:15AM +0100, Horatiu Vultur wrote:
> Currently the driver is supporting only the interfaces QSGMII, SGMII,
> RGMII and GMII. This patch extend the supported interfaces with
> 1000BASE-X and 2500BASE-X.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Acked-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
