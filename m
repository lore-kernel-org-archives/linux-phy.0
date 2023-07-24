Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3002FC00528
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 14:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lB+86GityEEGsdpaFSIEDkoNRSAGnMCtnq3/x8EYnrA=; b=o+xcrqC4GVFAFN
	PXYOWZc2KzvLB9G9aQxcWXJBhx+KzVcb/7+OMkPZnWiEd0CKjBZlot3uOcF5KKbnHv77RUTvVStNK
	kU7OZCbIXKsAItOoE5SeBKLYo8cHsBgm36EKzbX7T8ZWBOTpyQUnun6ObhpRsdWtHh9f12FJmpCEo
	cK1q41MaqIPOQ09iAw7PzlD8Ely0w9pC7LvRAaB2i0GwsG5gO9L8ezbkS8Gn0KGX4Z9Fr0Pd697Km
	qKdoqc5drmy10nUCj9XASM2+glyTENhrTBV1qNfyU2XndDmOU9uMC5jnxnYVChvqFRxA9+AF6lqf8
	auYQ2EOzVFG71toE8L9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNwOp-004aK0-2p;
	Mon, 24 Jul 2023 14:18:59 +0000
Received: from netrider.rowland.org ([192.131.102.5])
	by bombadil.infradead.org with smtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNwOm-004aIe-1s
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 14:18:58 +0000
Received: (qmail 1848669 invoked by uid 1000); 24 Jul 2023 10:18:50 -0400
Date: Mon, 24 Jul 2023 10:18:50 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
  Rob Herring <robh+dt@kernel.org>,
  Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
  Conor Dooley <conor+dt@kernel.org>, Roy Luo <royluo@google.com>,
  Ray Chi <raychi@google.com>, Flavio Suligoi <f.suligoi@asem.it>,
  linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 1/5] usb: phy: add usb phy notify port status API
Message-ID: <802dd50c-7201-45d2-8855-6692aeb947db@rowland.harvard.edu>
References: <20230724103600.14164-1-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230724103600.14164-1-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_071856_781549_371F66F2 
X-CRM114-Status: GOOD (  13.81  )
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

On Mon, Jul 24, 2023 at 06:34:48PM +0800, Stanley Chang wrote:

> --- a/drivers/usb/core/hub.c
> +++ b/drivers/usb/core/hub.c
> @@ -614,6 +614,30 @@ static int hub_ext_port_status(struct usb_hub *hub, int port1, int type,
>  		ret = 0;
>  	}
>  	mutex_unlock(&hub->status_mutex);
> +
> +	/*
> +	 * There is no need to lock status_mutex here, because status_mutex
> +	 * protects hub->status, and the phy driver only checks the port
> +	 * status without changing the status.
> +	 */
> +	if (!ret) {
> +		struct usb_device *hdev = hub->hdev;
> +
> +		/*
> +		 * Applies to roothub only. That is, when hdev->parent is
> +		 * empty. Only roothub will be notified of port state
> +		 * changes, since the USB PHY only cares about changes at
> +		 * the next level.
> +		 */
> +		if (hdev && !hdev->parent) {

hdev can never be NULL, so you don't need to test it.  Also, there 
is an is_root_hub() routine you can call here -- it's an inline defined 
in usb.h.  If you use that then you won't have to explain it in the 
comment.

To be fair, there are plenty of other places in the driver that test 
!hdev->parent (or !udev->parent) with no explanation.

Alan Stern

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
