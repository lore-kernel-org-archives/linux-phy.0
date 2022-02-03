Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 749B8C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 00:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BiEDFgqe4aj80Qu6ShUn93kKmJbi6X1bCGmqtsD2b4U=; b=DG9neSMU4oFFlI
	S66I+a9nqnd/1NdU339bTShxbr5kb8io5g9wNukR6NQ7yUO0/gyj1CU9hUm/9doRsZBVGsLsaZWtf
	nh2hWhjPmvkQpl/Dn8Jf5K89MkrIkBd9nE5m+ANj5izvkoOhKv/BmLhfcZ+p8JB87AUlWD1G7g1vz
	Ofbpt0rD3c42forY47OX+YycCI565IM/C4J6XATLnDS7qHyZmgto0QsAdho217r6yRMSh9lEsYKMG
	YFp0Xx9UhLda2Py8J3sHudyGodkz4r09i8T9hsiwRn8ACd0sOgVKi4ZBHa9qmmHACR3Q2KMQudGGX
	XZK8MQ0twnTQGTw8JDvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFPjV-00H8MG-Sa; Thu, 03 Feb 2022 00:12:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFPjS-00H8LZ-Pf
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 00:12:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E500960C22;
 Thu,  3 Feb 2022 00:12:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD17C004E1;
 Thu,  3 Feb 2022 00:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643847133;
 bh=oSYU449OFBEVHqPmnSPu3oVhE+80pUlusICt1ddTPQs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EKzqPniQnSGUTIbsStvay2/tvR3aI2GaA/tcL9j9Q4hQ3W8zeUUPGHW1e9e/9Z6UZ
 se49QLzV+4CiO1GqNYTJMoArjHSwDnT5QECxB6o5EDihoxVH/+2UBZCqXOeILAQLBF
 uAfnbYP3XNZ5B/5nApk/7Sqlw+NK7xYslSm5/6TNdyzAzTcRRrBqIQrcgq8BdunMy/
 ak6CYIIba/7yr0zgFKEq5IhMnNsN1Cmjy9yp/T5hy/7+qd9JC9dRJ54zIXfj3qF0Gb
 Q5W/9NWEp4z3MbE3kLddhamNVDBoVtCwm7UgGdlnD9/syQdA5IiVTNJo2JkSz+gD+Q
 eqpY2h8NzKAwA==
Date: Thu, 3 Feb 2022 05:42:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 0/3] phy: phy-brcm-usb: Fixes for phy-brcm-usb driver
Message-ID: <Yfsd14IRHy99k1He@matsya>
References: <20211201180653.35097-1-alcooperx@gmail.com>
 <7cbb745e-8b95-1eed-0903-44070a112ec0@gmail.com>
 <Ye0/8MSBRVNuBr3L@matsya>
 <e801d672-bedf-b08b-d27b-2b0cdd476a6d@gmail.com>
 <YfoPIGfs5Q3IwrPm@matsya>
 <71178ae0-053d-d2f4-88cf-a41513432351@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71178ae0-053d-d2f4-88cf-a41513432351@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_161214_896140_FF55FF97 
X-CRM114-Status: GOOD (  21.15  )
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

On 02-02-22, 08:24, Florian Fainelli wrote:
> 
> 
> On 2/1/2022 8:57 PM, Vinod Koul wrote:
> > On 27-01-22, 17:01, Florian Fainelli wrote:
> > > 
> > > 
> > > On 1/23/2022 3:45 AM, Vinod Koul wrote:
> > > > On 19-01-22, 15:26, Florian Fainelli wrote:
> > > > > Hi Vinod,
> > > > > 
> > > > > On 12/1/21 10:06 AM, Al Cooper wrote:
> > > > > > A few fixes for the phy-brcm-usb driver.
> > > > > > 
> > > > > > Al Cooper (3):
> > > > > >     phy: usb: Leave some clocks running during suspend
> > > > > >     usb: Add "wake on" functionality for newer Synopsis XHCI controllers
> > > > > >     phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
> > > > > 
> > > > > Are you able to pick up those patches? Thank you
> > > > 
> > > > Applied phy patches to phy-fixes, thanks
> > > 
> > > Thanks! I can see patches 1 and 3 there but patch 2 is not in phy-fixes or
> > > your next branch. Can you pick it up if it is satisfactory? Thanks!
> > 
> > That is usb patch right. I wont pick unless Greg acks it to go thru phy
> > tree
> 
> This is an USB PHY patch, I suppose the subject including "usb: " did
> somewhat mislead you. Here is the diffstat just for that patch:
> 
>  .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 46 +++++++++++++++----
>  1 file changed, 38 insertions(+), 8 deletions(-)
> 
> definitively falling into the PHY subsystem.

Yeah that was it! Can you please change the title and resend...

> -- 
> Florian

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
