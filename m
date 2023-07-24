Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1E23EB64DD
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 05:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ikeIPI2WuZKyiFtFmMlSRLvWsaJCD5fAtfORMJWnUw=; b=T/cp4VA46lqMD6
	HVDdoQbSYiv0JnUBo+z/19RJsJKhgHvFKfiRA2zyvHaUAo4qH/bysACsH4M8RKDFG+cLcmEQt1sKB
	Lq6PT0b4+bTf+ENPXgLImqL44fn373rONZN0MJ75clD6h0/yvHAlPTfxuxJW7dyTuxZ2SFk5uG5Ns
	yPUrRkL9PBX1RIDpsAaZtoLtDzJCV4LV2htJdRmvk/K5LfVpfw2c+Thw51RaIC886OLOU8Xa3Ussg
	OThHpZX8lRZMWvAFL4tKFC7uKNaW1GFWeohRwPRXijTT6f+0RzkxpX/EhVP+mzxoKQJqrWgHXzqCr
	Q+Kr3nbzDYc8hvrqGTkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNoSa-002st6-07;
	Mon, 24 Jul 2023 05:50:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNoST-002ssZ-2X
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 05:50:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D9F1160E8E;
	Mon, 24 Jul 2023 05:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFDF1C433C7;
	Mon, 24 Jul 2023 05:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1690177812;
	bh=bFLNepPhPHCswQ9ft0pcj3E1XJXFCkjGVMeXp3+zrvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BmwbpFPGParIZG7W1TUUE0yYYPD2FBLWu3ib2mFJqFva1McRElxdJv4LGNGcZf3/+
	 YhS0qaQ3Fk7I10AJK0ox0MKRkUYab2sdAGsLZ4zyDj+YFl8VsUHszf1jnmGx1XBavt
	 sL38/5lGbOXFVPHwuCIXa5zjFasgyrfUcpH4iNco=
Date: Mon, 24 Jul 2023 07:50:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>, Roy Luo <royluo@google.com>,
	Matthias Kaehlcke <mka@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Flavio Suligoi <f.suligoi@asem.it>, Ray Chi <raychi@google.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v7 1/5] usb: phy: add usb phy notify port status API
Message-ID: <2023072452-jasmine-palm-7b73@gregkh>
References: <20230707064725.25291-1-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230707064725.25291-1-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230723_225013_919439_BEE69FA9 
X-CRM114-Status: GOOD (  27.57  )
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

On Fri, Jul 07, 2023 at 02:47:00PM +0800, Stanley Chang wrote:
> In Realtek SoC, the parameter of usb phy is designed to can dynamic
> tuning base on port status. Therefore, add a notify callback of phy
> driver when usb port status change.
> 
> The Realtek phy driver is designed to dynamically adjust disconnection
> level and calibrate phy parameters. When the device connected bit changes
> and when the disconnected bit changes, do port status change notification:
> 
> Check if portstatus is USB_PORT_STAT_CONNECTION and portchange is
> USB_PORT_STAT_C_CONNECTION.
> 1. The device is connected, the driver lowers the disconnection level and
>    calibrates the phy parameters.
> 2. The device disconnects, the driver increases the disconnect level and
>    calibrates the phy parameters.
> 
> When controller to notify connect that device is already ready. If we
> adjust the disconnection level in notify_connect, the disconnect may have
> been triggered at this stage. So we need to change that as early as
> possible. Therefore, we add an api to notify phy the port status changes.

How do you know that the disconnect will not have already been triggered
at this point, when the status changes?


> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v6 to v7 change:
>     No change
> v5 to v6 change:
>     No change
> v4 to v5 change:
>     No change
> v3 to v4 change:
>     Fix the warning for checkpatch with strict.
> v2 to v3 change:
>     Add more comments about the reason for adding this api
> v1 to v2 change:
>     No change
> ---
>  drivers/usb/core/hub.c  | 13 +++++++++++++
>  include/linux/usb/phy.h | 13 +++++++++++++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
> index a739403a9e45..8433ff89dea6 100644
> --- a/drivers/usb/core/hub.c
> +++ b/drivers/usb/core/hub.c
> @@ -614,6 +614,19 @@ static int hub_ext_port_status(struct usb_hub *hub, int port1, int type,
>  		ret = 0;
>  	}
>  	mutex_unlock(&hub->status_mutex);
> +
> +	if (!ret) {
> +		struct usb_device *hdev = hub->hdev;
> +
> +		if (hdev && !hdev->parent) {

Why the check for no parent?  Please document that here in a comment.

> +			struct usb_hcd *hcd = bus_to_hcd(hdev->bus);
> +
> +			if (hcd->usb_phy)
> +				usb_phy_notify_port_status(hcd->usb_phy,
> +							   port1 - 1, *status, *change);
> +		}
> +	}
> +

This is safe to notify with the hub mutex unlocked?  Again, a comment
would be helpful to future people explaining why that is so.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
