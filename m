Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF2B9C77B7E
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 14:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0L226nIMmLhgj7/qXrC9fUqpb8Oysv/b7gipTzKHEM=; b=4FRe2KXFhgfFLA
	oVCt7LDgLm3GhcilsPN1sPEd6vAMhVHfqSlEzqY4vzNdNYTheIZlyKv6Sv6vVgoWSMnX3mzTbNW7Q
	MpxVevC5Q/A9g/+b3LwSM0qBwvX+aOJK0olJvY5DXGHrQS4hltMd72hL0ZfdUYkblFVnQHz9bTVvn
	jEGersj9APdHMmBLi0X+v7SwgPg8XalFaFPlF93DXVFTYFhRM3VYKBScIvUhssREcD/LoRTC/80Hn
	t1MTZu2RHGry4g6IIKnLICpa8hn4TNGEVDMZBbw3b39UBl9JlHTKBVYNVgRAjFYOIQm+BcjTc8h3y
	shtUJ0N/M4TdVWSdjg8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3dqE-00Alnm-1r;
	Mon, 29 May 2023 14:27:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3dqC-00Almv-0M
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 14:27:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7C807614F3;
	Mon, 29 May 2023 14:27:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74932C433D2;
	Mon, 29 May 2023 14:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1685370438;
	bh=LCmcN44zu2yuo4XqoPyGygsVCbsY+Qs6nCuuIueHTtI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KSXCop9E8wErtX4kx1Fso7pWTN/Y9yeqoEHrUP6NIVK3BNt050vHPbtEC+JHUboOU
	 GNv18nT8m0jQ5tR0KrgbbAYoMhYkpcVrmIi3/4c7lt/nqpOkxiHHTq5mtTNUTwnUOk
	 oxGbk4o95JoJ9+avlSlEYSVwA45cJeDHxPAIXsAY=
Date: Mon, 29 May 2023 15:27:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Flavio Suligoi <f.suligoi@asem.it>,
	Matthias Kaehlcke <mka@chromium.org>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	Ray Chi <raychi@google.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 1/3] usb: phy: add usb phy notify port status API
Message-ID: <2023052905-maimed-studied-3563@gregkh>
References: <20230525022617.30537-1-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230525022617.30537-1-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_072720_192624_CC002DE5 
X-CRM114-Status: GOOD (  20.83  )
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

On Thu, May 25, 2023 at 10:26:02AM +0800, Stanley Chang wrote:
> In Realtek SoC, the parameter of usb phy is designed to can dynamic
> tuning base on port status. Therefore, add a notify callback of phy
> driver when usb port status change.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v1 to v2 change:
>     No change
> ---
>  drivers/usb/core/hub.c  | 13 +++++++++++++
>  include/linux/usb/phy.h | 14 ++++++++++++++
>  2 files changed, 27 insertions(+)
> 
> diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
> index 97a0f8faea6e..b4fbbeae1927 100644
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
> +			struct usb_hcd *hcd = bus_to_hcd(hdev->bus);
> +
> +			if (hcd->usb_phy)
> +				usb_phy_notify_port_status(hcd->usb_phy,
> +					    port1 - 1, *status, *change);
> +		}
> +	}
> +
>  	return ret;
>  }
>  
> diff --git a/include/linux/usb/phy.h b/include/linux/usb/phy.h
> index e4de6bc1f69b..53bf3540098f 100644
> --- a/include/linux/usb/phy.h
> +++ b/include/linux/usb/phy.h
> @@ -144,6 +144,10 @@ struct usb_phy {
>  	 */
>  	int	(*set_wakeup)(struct usb_phy *x, bool enabled);
>  
> +	/* notify phy port status change */
> +	int	(*notify_port_status)(struct usb_phy *x,
> +		int port, u16 portstatus, u16 portchange);
> +
>  	/* notify phy connect status change */
>  	int	(*notify_connect)(struct usb_phy *x,
>  			enum usb_device_speed speed);

Why can't this be part of the same notify_connect() callback?

What makes it different somehow?  Please document this much better.


> @@ -316,6 +320,16 @@ usb_phy_set_wakeup(struct usb_phy *x, bool enabled)
>  		return 0;
>  }
>  
> +static inline int
> +usb_phy_notify_port_status(struct usb_phy *x, int port, u16 portstatus,
> +	    u16 portchange)
> +{
> +	if (x && x->notify_port_status)

How can x ever be NULL?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
