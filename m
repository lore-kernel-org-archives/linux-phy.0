Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32A00C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 15:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLPQvsoMPZoTgeW1Ony2B852ByOJXZZFHrv+dKSM1v8=; b=wHIjJL8CpCLC+o
	HtFoqjRwvUxg2GDHnoVgof+3L9YYd9Prn85bWowkE8JaDSESBtrsbYBUQsuOSWOR1Th1v4fotH6eJ
	WSgpBNVl6WfAhz50CxEEDa9bnfXBbPpb+IMITrS7ga7wuzGGnKYc1jBRs3wcI1gnbRulIRtAgQxPl
	wZFq3A5izPSR9wCvituv5XNOhxmNPxWiQeFDkHrf9cly79zkmJG2UxRClY3uBspvTejxtbNEBM80/
	N3iMekRDpOggVrUvp8Msmlo4pvthxDgR2NhtNnRBCV7HmHwBwuI+SxjkVYiPLbYlMyUkgYW7Zgx59
	MJytd6dsEa1AB7g0F4Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7ve-00CapN-FR; Tue, 13 Sep 2022 15:34:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7qF-00CW6f-D6
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 15:28:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CA30FB80FAE;
	Tue, 13 Sep 2022 15:28:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E931EC433D6;
	Tue, 13 Sep 2022 15:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663082928;
	bh=YrUHxOpGXMQ+CcAAIAIP/KVdj5zfY8VH1kxTHt3bOjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P1lHYdk2/ISuWnH9L/UBgazYb6nXLGCeAwerCcAGW3AIAbwoaMpf1pp4f/v+CVwcW
	 i4Uix5Z7BlrHhflfMIdO9c+4WRXdCVk/pJrqKiFuf+UuSv2b4WuCGkFv9a/HGp+8R5
	 VVKJ8yTExLnOQ5lyLx43HletUZIbDsMchGb+QIb91AUKkE5o85T51o/sD2asFpUnrW
	 m6LCmLwTNakgBCzrIkHkm8GveMvsg1VnxxHxDscz61MUtMAU3TC2i4KFsjaIvUQldE
	 hJc6gNY6VE7VFSGxNysw6L//cpWSI/UYw7y/b4B0wFliLHpi+JlDNGoUrCaijkpiNF
	 AVcLyZ/heZk0Q==
Date: Tue, 13 Sep 2022 20:58:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wei Yongjun <weiyongjun@huaweicloud.com>
Cc: Vincent Shih <vincent.sunplus@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Wei Yongjun <weiyongjun1@huawei.com>, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH -next] phy: usb: sunplus: Fix return value check in
 update_disc_vol()
Message-ID: <YyChq1vgN6W5KW0P@matsya>
References: <20220909094709.1790970-1-weiyongjun@huaweicloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909094709.1790970-1-weiyongjun@huaweicloud.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_082851_691693_F4622897 
X-CRM114-Status: UNSURE (   9.88  )
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

On 09-09-22, 09:47, Wei Yongjun wrote:
> From: Wei Yongjun <weiyongjun1@huawei.com>
> 
> In case of error, the function nvmem_cell_read() returns ERR_PTR()
> and never returns NULL. The NULL test in the return value check
> should be replaced with IS_ERR().

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
