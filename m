Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30D83C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 23 Jan 2022 11:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NgrzSTpvK9+ED4tWRO7A6ntJBfft8I2zo7TqRH5fec=; b=yupjw3DwRQ4JOt
	y5caGNYqBD6SfSMzt4uJcSxoFrNb+/vgpkWIfGoxUVQ61BIG2/9BOH1en9XbRNXTPOcQmSXrEdH5L
	lAZ5XhG6lgTSRfp7F2p5LQ7hvH6fJC44mVJrCWQ4+2oARPhaPzEXuWNYjPlzrCwMh0IRbDIOWg5+E
	EyXSerP20ZseKpFAaJzuSkiXNMUFwTJyJkCKsEPYdJrUN+JivPI6jgZVKNh3EpgXS0VbGVPB8+8Hf
	QJchqQuDGvoxwpdMKAI44GSf58TluMwWdWlaOZdAr7B+A2jJ+Vvmeo2l+kR7ngS8O7fKfFcgUk5FK
	x3FE9WcX8L4wMgzW5QAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBbLn-000kZT-MK; Sun, 23 Jan 2022 11:48:03 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBbLk-000kY2-Qs
 for linux-phy@lists.infradead.org; Sun, 23 Jan 2022 11:48:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 296F0B80CA2;
 Sun, 23 Jan 2022 11:47:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D83CC340E2;
 Sun, 23 Jan 2022 11:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642938477;
 bh=rFp/yN48cpk/ut0/dbyFyGSEUZAJkEo9wRKhftFT/FE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O1oKMEhCdinMIElAVRgvQhZojLlG+2vl61yCRA5eRACYBv5GGsrruXGcmpe3D2Hsm
 JBpDfbamQcX5tybqmcpeMMgKZAgvXQvcd+fuTjpWBL+lhgDIs8cq3zjYnTb+I+W9W3
 Vug5n0+5/HvYhR7NJFw4GTfq8iKSk94g+li5/4TrYAfIIHE/aYd6gOa72Vofqo0sAY
 +7mPZ1mCBobHGeT5cFI3iTD8aiYl4c42P1dLdLISYeZwix+LCkIFpy/qSbFOe1xOMe
 01M5G8Ep5GWnazGONayBMqiE77QBlhIQ54DUo4dBuoIhePo+I3JrWmdpnVsmawTTkl
 lYiZJ3Em8ARCg==
Date: Sun, 23 Jan 2022 17:17:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Swapnil Jakhade <sjakhade@cadence.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] phy: ti: Fix "BUG: KASAN: global-out-of-bounds in
 _get_maxdiv" issue
Message-ID: <Ye1AaZnnjWFZXvWK@matsya>
References: <20220117110108.4117-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117110108.4117-1-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_034801_036985_5243952C 
X-CRM114-Status: UNSURE (   7.14  )
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

On 17-01-22, 16:31, Kishon Vijay Abraham I wrote:
> _get_table_maxdiv() tries to access "clk_div_table" array out of bound
> defined in phy-j721e-wiz.c. Add a sentinel entry to prevent
> the following global-out-of-bounds error reported by enabling KASAN.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
