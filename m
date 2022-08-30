Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB1CECAAD1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 05:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dt0eVLnTUSfaik6AtpqzTAyROJQXtf7kKg2ZdM7HNqs=; b=Z6b+lhnevv63ia
	mhdJ06FOPhKTVg2g0rJrcWaIiek9LRY6V3bQspmFPvOakXPi1HCQ8nXL129gevelFNVTqoD7JqROP
	PnHM2frKy9wjKvb7VFtLJ37+uq+R5gDPWX9Bkz9U0sAmnjLQNIoVGFMA8xgccHz3Sjlp+zkQ/+7PP
	nCnxn/tnLYkULrWGZFoglZdPFM1VGlFsN/oDE18Cj+wLGSGJ6s4Im8CTFQUB1iJxcNB5ApbXbYZUs
	qNGTN4AdVG7OLbE1KmAOfpG9Ir4WkBEqLqcrhNP/EUzKwPowkYZ47XJFuGHApFUzXBXPYUmHx5i6J
	kpZxn0sSUSRPcHgqQdBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStP6-00E7xo-P5; Tue, 30 Aug 2022 05:03:23 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStP3-00E7wl-PP
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 05:03:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1F54EB8162D;
	Tue, 30 Aug 2022 05:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19571C433D6;
	Tue, 30 Aug 2022 05:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661835784;
	bh=UEGxpf5PeVt1wCUvkuPifC5GN/BTpqhuMv/zeTutc+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J4k8QZhYWyG27LiA5Jk6FMbRQoyjXL4TzBJPUE1EBFN2xfx22T8zgQSKBNEkUSesb
	 9iTgQXU+6y1YNxmGQYOCYYMEueNkkOCCYMLEiGy81F7apvAk7XThYxuinVlxKDk+cz
	 rEQFIfxCfze/dR3c8dMpyrR2w82G0RUWrILPeaKSicGNj/lmJ/k6LVig/BSGRhyoLt
	 Vavlnewh1ZNY02yila/BDetppqG5BAWb1mT25iu+X7xBhw1qC4QDcx5iHWsxR0BZI2
	 +9SFOYB81aTi68rs0tvyjTu/5bh4nTU6/6549Yn0apsik0e6kNnlRqKvQhSjDo9tuK
	 /oONLP7mYU0Ww==
Date: Tue, 30 Aug 2022 10:33:00 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
	Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>,
	Damien Le Moal <Damien.LeMoal@wdc.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Remove broken
 reset support
Message-ID: <Yw2aBNnVoV8wwk4i@matsya>
References: <20220829083046.15082-1-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220829083046.15082-1-pali@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_220310_017450_52FF4B32 
X-CRM114-Status: GOOD (  15.04  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 29-08-22, 10:30, Pali Roh=E1r wrote:
> Reset support for SATA PHY is somehow broken and after calling it, kernel
> is not able to detect and initialize SATA disk Samsung SSD 850 EMT0 [1].
> =

> Reset support was introduced in commit 934337080c6c ("phy: marvell:
> phy-mvebu-a3700-comphy: Add native kernel implementation") as part of
> complete rewrite of this driver. v1 patch series of that commit [2]=A0did
> not contain reset support and was tested that is working fine with
> Ethernet, SATA and USB PHYs without issues too.
> =

> So for now remove broken reset support and change implementation of
> power_off callback to power off all functions on specified lane (and not
> only selected function) because during startup kernel does not know which
> function was selected and configured by bootloader. Same logic was used
> also in v1 patch series of that commit.
> =

> This change fixes issues with initialization of SATA disk Samsung SSD 850
> and disk is working again, like before mentioned commit.
> =

> Once problem with PHY reset callback is solved its functionality could be
> re-introduced. But for now it is unknown why it does not work.

Applied, thanks

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
