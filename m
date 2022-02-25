Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C544C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 08:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kA9pZxQsuBfd97QAM6NhBD3tIeVM0GfMTmft04xWneM=; b=k+tprcnG5ztcOu
	m0pPAxGGBumapLq/O1YNTbTG3J4WRxLIaKQmXa8TEdcs7j5gRs38KJ6QcTLMyCfAZ7rg/i/f47gsu
	5OwmEopBvBOG/6vukGM6nVeDCVzaeMA+viDmVI8Bn1kjOv3IUFTy3P6g5Rmbyjo5GtB5Sb/Gv0Cje
	iw7+SjcZ9CNkH91TF9du2mDSekFNvoVRqH3POUkzk2ifvHWfGgm+2wushwN//JTtvrsV35c2haeiJ
	W3tWP/0+TtCeX1t+L66qShcYvBH1EnRzTMSUaL4mDUUAz39SsaBk9gC5B5kOKMcZA6rwbNgWiofeT
	GxI9R9V3XSQQ7BMXOtGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNWCO-0040K4-GM; Fri, 25 Feb 2022 08:43:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNWCL-0040JP-Lm
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 08:43:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3FE0E61C77;
 Fri, 25 Feb 2022 08:43:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FC64C340E7;
 Fri, 25 Feb 2022 08:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645778613;
 bh=oGOrRQb4Wq9padIb9oBVCYbpCpufpOd8E+7hPls+87Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XPHxhu8O3sIentsEeZZYqlFIV8MvVJ76L8s61U6HvyovwheqNlyqWDNr7xDHEHKMB
 sGnhcjLW8Ckb+aVzyx6NrPoojLL1GPZekJ4B0IZG/j+QntOP7KRDVPBieu4su+2hyh
 usAqe8obB8NehzCjJ8Rb9g2IqIbYAT/5gkoZOHB1Fcq6GU7b389YF1zq8hHHuJ8dEK
 TRk8NMMlvIa0zR8gKN/idjD8GF2qdRNt0dhTPSMaZQH8/nGL7Corr6oDgmQWzGw/o4
 b6xcLp/LthTJsMj2iG6tqt8PQnrmMBqYCM2Q8Fe4wY7z2Ktqe4Jp3hY1MSnqdh1XTg
 TLWRIdGLwjyVQ==
Date: Fri, 25 Feb 2022 14:13:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: linux-kernel@vger.kernel.org, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:BROADCOM BRCMSTB USB2 and USB3 PHY DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v2] phy: usb: Add "wake on" functionality for newer
 Synopsis XHCI controllers
Message-ID: <YhiWsTyaGL9CFZkW@matsya>
References: <20220215032422.5179-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220215032422.5179-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_004333_776299_BCE377A5 
X-CRM114-Status: UNSURE (   9.16  )
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

On 14-02-22, 19:24, Florian Fainelli wrote:
> From: Al Cooper <alcooperx@gmail.com>
> 
> Add "wake on" support for the newer Synopsis based XHCI only controller.
> This works on the 72165 and 72164 and newer chips and does not work
> on 7216 based systems. Also switch the USB sysclk to a slower clock
> on suspend to save additional power in S2. The clock switch will only
> save power on the 72165b0 and newer chips and is a nop on older chips.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
