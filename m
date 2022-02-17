Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E0BC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Feb 2022 15:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZsfwIQMZ19qyn4TARBamfqaQ8eKHfNawdLRbBQEwVA=; b=olycsrEB9f81h7
	ug/IH3qKTOE8Mgibw00Z2h6jeFU4aKfAbIoijZQahWohJVKQL2oFzgHUdy5tOQXVsd9rawMyH5aXX
	YTXgPYKol6YVlTPR/BQ/CzTiZC4JirR/j/0Nu6/wzCnCGeCwKGV8N9g1Kh9xynyT4ckHgrpWQ7YCB
	M5BHJQDDUDaPKVLVnSXHs0/0sQIZ2xm2gHTeARl2OLVpafR7lRizLwwWLnij+EJ6FI/iGvrkBD5PE
	ituGWLgS5jJ09swCmFGQHXTOlhYC54vA2r5pMbeN6AfkuEAk6+cjZHyr0kWcB0BU+3meeuTrE0G/7
	806GAZZ47L8G/ZdLck1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKikb-00BGgX-Eg; Thu, 17 Feb 2022 15:31:21 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKikY-00BGfs-Ux
 for linux-phy@lists.infradead.org; Thu, 17 Feb 2022 15:31:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8968AB82343;
 Thu, 17 Feb 2022 15:31:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F39B3C340E8;
 Thu, 17 Feb 2022 15:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1645111876;
 bh=sVtS9yh28F1Fnko4xbrtn/2OLrArPuSPTSdZ57vWlN4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f913LM/znHsrVvU+TJ8WFBJ5TFGiEvHqLev1UmO0at6dZ0yFrRViCEVdUzbxx+RUb
 /QoMs3SQnzxbQrbyisQlIEnCvdZ9KqeVCJurSGt2Y9JYQPyMsdP3/+1iAUC86iDZbu
 MoeRLgJqvDY5zBb8Bdg4SAJvwcwHTre0guaQCgIc=
Date: Thu, 17 Feb 2022 16:31:13 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Felipe Balbi <balbi@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 0/9] usb/dwc3 / phy/tusb1210: Add TUSB1211 charger
 detection
Message-ID: <Yg5qQXUFd/Takm7V@kroah.com>
References: <20220213130524.18748-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220213130524.18748-1-hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_073119_177380_AE849837 
X-CRM114-Status: GOOD (  18.34  )
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

On Sun, Feb 13, 2022 at 02:05:15PM +0100, Hans de Goede wrote:
> Hi All,
> 
> Here is v2 of the patchs-series to add support for USB charger-type
> (SDP/DCP) detection using a tusb1210 phy connected to a dwc3 controller.
> 
> Changes in v2:
> [PATCH v2 9/9] phy: ti: tusb1210: Add charger detection:
> - Add an online attribute to the registered power_supply class device,
>   otherwise upower thinks it is an extra system battery
> - Add tusb1210_remove_charger_detect() function to properly unregister
>   the tusb->psy_nb notifier and to cancel tusb->chg_det_work
> 
> v1 cover-letter:
> 
> Some Android x86 tablets with a Bay Trail (BYT) SoC (with DWC3 UDC)
> and a Crystal Cove PMIC, which does not support charger-detection,
> rely on a TUSB1211 phy for charger-detection.
> 
> This series adds support for this, it starts with some dwc3 bug-fixes
> for issues hit while developing this, as well as adding support to
> the dwc3 code to set a special property checked by the tusb1210 driver
> to signal that it needs to enable charger-detection.
> 
> The 2nd half of the series does some refactoring / fixes to the
> tusb1210 driver and adds the charger-detection support.

The first 4 are all in my usb trees now, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
