Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F64ACA0EED
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 09:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nz5iRxD9wB5iC8qQyGfQe22vZ6mGE39lIyUx/G1QCjc=; b=HUmeYexze9wF1I
	weG2wYQSHTqgeEDuEL9dIlq6VGbcmP+PeXWYR7PC4nbp1ELvEAkRQeSRGP5Y94sqjE9lVwLBhgNU7
	kqutauidcjkD3JjKtHNjhhVeMUvRR78AgFZnnZ/42/S8rNhGNH8qiEmx/TcSDdd3owZiXRgPgj75u
	+okupxuayZHyL5bGRfyTcXpc3rA9OOkfkvOgeIB2MQN2vwuyK5txc+tHRLFW54yd0RAJQDSa3VnTj
	8B2yukSx4+zNyNu3Md8QadtXb6Cun7K4hX4pNCnBIUNee/zLUxe7o7J61F2SwUsMWnC7gnPp7bPWH
	7MsanZeA+9NsRLrNuD2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urZDt-000000011gK-375K;
	Thu, 28 Aug 2025 09:47:13 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urYQV-00000000sDQ-2Rev
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 08:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=QvdA
	hUEUNTpDtAXlWcb9EeodbUuKdqI/q/I9vC/c2Lo=; b=CLndv3CPXnHjjWw+u0g6
	mXJfrYgOtmsFGbcNoFFPx7H4gDEM92hYG2miokV3ABS1GrsKiB/PKrNdMj8+V+Wn
	ysxbTF65S84fYUfpEZTrIsEzolth0RTHcbbutSHnu9Lwbkn4zSp+Z1MFq4wFBzGc
	ZXukRjIWdsnA+VZiNSRZG3Z4PzDLnhRyeGNI5nDzSHp8hcg6qHONERlfzcoGbGeW
	cLwrxhC2Wrnd4Oo7mPu0iteNi13PT390TAvSlSxTen5d6C0QlZWurz3HAG5No4ja
	itGOfodGX1+93mePPfOZH2qLnQf6Iz+G4X4mW0dqgCgLY9Vxvi6q5lBr4pvTzD46
	lQ==
Received: (qmail 935638 invoked from network); 28 Aug 2025 10:56:07 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Aug 2025 10:56:07 +0200
X-UD-Smtp-Session: l3s3148p1@HmRpE2k98OwgAwDPXw2iAG43AYdOknD3
Date: Thu, 28 Aug 2025 10:56:06 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v5 0/7] Add initial USB support for the Renesas RZ/G3S SoC
Message-ID: <aLAZprjeKtk4pusw@shikoro>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_015611_907157_9C6D99F0 
X-CRM114-Status: UNSURE (   8.09  )
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

Hi Claudiu,

> Series adds initial USB support for the Renesas RZ/G3S SoC.
> 
> Series is split as follows:
> - patches 1-2/7		- fixes on bindings and driver for USB PHY
> - patches 3-5/7		- updates the rzg2l-usbphy-ctrl driver and documentation
> 			  with support for setting PWRRDY though SYSC
> - patches 6-7/7		- add device tree support

Can you kindly send me a working config (privately will do). I think I
enabled all the necessary config options but still get:

[    0.271024] rzg2l_usbphy_ctrl 11e00000.usbphy-ctrl: probe with driver rzg2l_usbphy_ctrl failed with error -22
...
[   10.981612] platform 11e20000.usb: deferred probe pending: platform: supplier 11e10200.usb-phy not ready
[   10.984103] platform 11e10200.usb-phy: deferred probe pending: platform: wait for supplier /soc/usbphy-ctrl@11e00000/regulator-vbus

Thanks,

   Wolfram


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
