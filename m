Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AFC9C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 08:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1+AMq4K3zbledNHMqWSUGrE/g5/mr6ah3K7qoLj+mE=; b=YW5YHoFDVqYlxD
	CCNmVelkjVaOpaPG8iYA9LjPActtAXoxzKoJsQrBQ/Cqhj539U5neb9ytS5iuXQO+MxvYAL/WEUH+
	hIIrGE3Q9ab9f9NIvTRyINqT5xWSroUSSjFr6rIUkpLP/lC48PixB15F+rdDFUa7AUHPw45TPz63d
	WrXaYqUj/qmibdZD4aOKvlkS9g51r1bHMDo5tg/Jux6C8Jr+JCL0S9A4mxuGidbg8LkfL75lSUOKn
	yf23wi3rWFYM1HOsXfh2+YfJZqZofB6WdqbIYEpLO5Rg9WgiB+iuVsAJD+xSX+wCePsoTF6t9h654
	7vtalz4d7LCDyNzhFnaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNWRB-0042Qm-Mn; Fri, 25 Feb 2022 08:58:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNWR9-0042Pj-BZ
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 08:58:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C058661CCE;
 Fri, 25 Feb 2022 08:58:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACEF3C340E7;
 Fri, 25 Feb 2022 08:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645779530;
 bh=sw5tDBlxWJXbCoGAwOiCDSj1VB62c4bkXCqy7O/uzrk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W5Xd3Jcv9mixpFloV3zOL+wMrtLhcud6/HWv+OuZvMPpC7kVMSJ3Zd2CS+8VXGVGa
 9iF/N/vml8izrn1Xy0o9wHY7Y32bIeXlNN714sbgeCcnvAiO+/GPn/wYuzciKM4k9F
 wWdLpSC5Zy+xxouNBln0CFJixk7sYSkepJ5ym4szMFd/4j1zOIZow96Fzu2baz7Iol
 rlN7yNrZ94n0sb6YWnN9u70nXryKMSqysXvg8KJXsKd87P/WQCKztixIkHDN3gSjn4
 sfhtsiusWUY5H0unsyeDZPF1/H7CL/wsJMBJX7GlZJqGqYeobvoh+pASAnvL5I/xfK
 XQxzBBla8WBmg==
Date: Fri, 25 Feb 2022 14:28:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stephan Gerhold <stephan@gerhold.net>, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 0/9] usb/dwc3 / phy/tusb1210: Add TUSB1211 charger
 detection
Message-ID: <YhiaRUvW1AutIrCy@matsya>
References: <20220213130524.18748-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220213130524.18748-1-hdegoede@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_005851_463375_C888E706 
X-CRM114-Status: GOOD (  17.77  )
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

On 13-02-22, 14:05, Hans de Goede wrote:
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

Applied phy patches to phy-next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
