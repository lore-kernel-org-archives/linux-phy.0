Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C42AEC0502C
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 06:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSkpWD1BKvCNKXv+R+MB6/7DlPOa9Vs1cTZedvSWTlc=; b=oBzR30TpwBzBSk
	H5A5X90zlC6z/IDJF8kqL6tK/aqFkcVWw9lC2bGFwBorP7PBkqkc2xYsiwLTj/qvjUjRDGuoHVDsx
	J+wPTGjmVF6257pw0T6ofUpyywcYd659uLWUM/wl1h2qpmpqcWMA+E3YBfbeswAVviKOLybrCdep/
	qI/OMa4oQUUiHdLCJ8ngjOKTTfILOsjDWuQCHQ1rDg3bJ73NzEs9qF8ATbQgq88gWULlRqeIGy5PD
	Lwg5YbmkgYQ2nwVDCNIKgAPzQ2V46XTpqWNmbYsyhji35fyvIfuHMnJ95I/sYkHpxJ9u8gM4gwEP8
	mmR/M7Eg6p43Yss1iIsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSYLX-005JWk-6C; Mon, 29 Aug 2022 06:34:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSYLO-005JR9-0k
	for linux-phy@lists.infradead.org; Mon, 29 Aug 2022 06:34:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oSYL8-0003TH-DC; Mon, 29 Aug 2022 08:33:42 +0200
Message-ID: <e6d5f688-f4c3-6094-91f6-a160b601c07d@pengutronix.de>
Date: Mon, 29 Aug 2022 08:33:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH v1 0/2] Fix the wrong order of phy callbacks
To: Richard Zhu <hongxing.zhu@nxp.com>, l.stach@pengutronix.de,
 bhelgaas@google.com, lorenzo.pieralisi@arm.com, vkoul@kernel.org,
 marcel.ziswiler@toradex.com, kishon@ti.com
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <1661173856-1192-1-git-send-email-hongxing.zhu@nxp.com>
Content-Language: en-US
In-Reply-To: <1661173856-1192-1-git-send-email-hongxing.zhu@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_233402_923683_ACFE25DC 
X-CRM114-Status: GOOD (  12.20  )
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

Hi,

On 22.08.22 15:10, Richard Zhu wrote:
> Refer [1], phy_init() must be called before phy_power_on().
> This series used to fix the wrong order of the phy_init() and phy_power_on(),
> introduced by commit 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
> Tested on i.MX8MM EVK board when one NVME device is used.
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/phy/phy-core.c?id=v5.19-rc1#n233
> 
> [PATCH v1 1/2] PCI: imx6: Fix the wrong order of phy_init() and
> [PATCH v1 2/2] phy: freescale: imx8m-pcie: Fix the wrong order of

This introduces an intermittent breakage. Can you squash?

> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
