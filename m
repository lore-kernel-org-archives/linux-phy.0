Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0EF4C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 10 Nov 2023 07:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MesEdwrT+aw8OJe2BdcANyzdaESX2OGSCYnVRkB5Y1I=; b=PGXXiOSH8WysG6
	AfaW/DFlqX8iVuJt1DDBKcBwk18kjO4aQPXYQI9sH5ENva/9V4mb0VOf2jqHr4toAv6i9MBa70A/i
	SII5EGzOqyfEwacHfgL+Dmy5L2ejF7ERcqNZ82AUUhYTWSANNSUVtNQuhQ5wPZ8+eamkMXP9XOZo/
	vXndGH9bjx0yYY5X/jf1uyZNj/vPZxe1OIPyC6KrFZCEHg1ymL1B1ytnAUmRpiyUEg7/zrrFkClwa
	CNjbOuFqpzQX/KNo6Exekbw/Rsp/Kz2KtcRNeA5hWVmtiug3BM5fFO+M0JFTDY53sOsg2D1B5CfLs
	m0uyJ1daSD/zb4UCW8JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1MF7-0082Vy-1b;
	Fri, 10 Nov 2023 07:47:53 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1MF4-0082Vb-37
	for linux-phy@lists.infradead.org;
	Fri, 10 Nov 2023 07:47:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B5FCDCE168B;
	Fri, 10 Nov 2023 07:47:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2439C433C8;
	Fri, 10 Nov 2023 07:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699602467;
	bh=eNPMLFSId0QrwBhmYQ8Tp1C473yK+iDSdTu+mEwhyjU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uBU4iTMx3DS8Yyjn8ht5Nc7BRgS29IkwuFzg6YNSP2o4BrnhmSc01w8MBEnT6S4VK
	 1N2CDcaE6LrEyUUr7JcnFBKeVX/svtqbHnTGE4XGk5SVxmClSzIdLdyVmrjdRqXU7S
	 sQniXG+0zlJ99NLBjuAma7TZwP+NQco3D0OAevhz+Tg1oOdPwP1+Pt3bPaGnK5iQD+
	 N9ikgeH0NI/u4I4vTJSXzfAg2x3MT6T7xFrEYirFo4VEVFtq3c5kb8CMAIZZpEjOz3
	 YyYg1Kb8zbx4Zf405nRZWfzpo+5msTg3ZCfVlkJmhJ314c3IO2IFe2/UFUN3PWHaPq
	 3HBR2KDdmdREQ==
Received: from johan by theta with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1r1MEv-0000TU-2N;
	Fri, 10 Nov 2023 08:47:41 +0100
Date: Fri, 10 Nov 2023 08:47:41 +0100
From: Johan Hovold <johan@kernel.org>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh@kernel.org>, Jinjie Ruan <ruanjinjie@huawei.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Yang Yingliang <yangyingliang@huawei.com>,
	Roy Luo <royluo@google.com>,
	Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Flavio Suligoi <f.suligoi@asem.it>, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 2/4] phy: realtek: usb: add new driver for the Realtek
 RTD SoC USB 2.0 PHY
Message-ID: <ZU3gHcugq9FxBG4P@hovoldconsulting.com>
References: <20231110054738.23515-1-stanley_chang@realtek.com>
 <20231110054738.23515-2-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231110054738.23515-2-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_234751_202647_961DDEDC 
X-CRM114-Status: GOOD (  12.44  )
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

On Fri, Nov 10, 2023 at 01:45:13PM +0800, Stanley Chang wrote:
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB
> controller. Added the driver to drive the USB 2.0 PHY transceivers.
> 
> Note: New driver,remove the port status notification on legacy USB PHY.
> Use the generic PHY to notify the usb device connect and disconnect.
> To avoid using these PHYs would require describing the very same
> PHY using both the generic "phy" property and the deprecated "usb-phy"
> property.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v1 to v2 change:
>     rebase the driver to include the revert part on
>     7a784bcdd7e54f0599da3b2360e472238412623e
> v2 to v3 change:
>     remove MODULE_ALIAS

Don't send out a new version of a patch series immediately just to fix
something small like this.

In this case I'd suggest you wait at least until you've gotten feedback
on the new notification implementation.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
