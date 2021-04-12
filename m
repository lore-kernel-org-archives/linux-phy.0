Return-Path: <SRS0=mHkV=JJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C638FC433B4
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 05:05:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6A80961209
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 05:05:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6A80961209
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gmmleTr09zlO1msb7j3R0SUOfo/M38AgjUqBT9smsIM=; b=RtmOTVWcweAK0LOjORlSOwptl
	L9lgG/Nx0gR0EdimgXzlf8e6rtTqlyAnduINCPZrPBwHwClrmHMmdP8O/IHKCqf8afoTa7gwuNp1B
	InbY8aznN2eT0RBeSrENxLAHbK1fdZffD25DlyRh/2iqFC4Im0/fxiSpcwM7hRxJqjwp89sexp2yP
	HfHNQd0AY8zcY7qQcXHvQSNBBEkVeBJh0cHXyDbpsL6qADvRdge4mvcbD4M/qbtbVTAMAUK109QLh
	k7Pxn9Li0/OQq43ccnAq29euxvePG8o6d+Td6zTQMJ2SrVzFvX+wDbn2wJ/89MdZEZ01oSbq8yhBC
	FbIeSGY8A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVolY-005iD0-FE; Mon, 12 Apr 2021 05:05:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVolT-005iCE-ET
 for linux-phy@desiato.infradead.org; Mon, 12 Apr 2021 05:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=AAqvU+bypmpdsRsFgWpdH9Q5MQ8gzDOlompL/8MP8N8=; b=BDEs0Ur78kzmVJKeru+ud8F9G4
 QOXWvSAvwgHTMgW48TC2DNmHOWAhRVAsb4RMIwZx4crhCAGaS113fYBzhLNFGIC7vpuPuLt1TMw0W
 gzVzIP/fzNGOP8JCk/h4emjoa3HgaT/LIoUcQAse/zgcFTsyv25rEVVvuAZ8GSa4lodsO8ujr9fKD
 rJ6dUgmn5Soeehm5OFlLO2CP/xP3iUTITbt1exB3uoluHbJ/2UCHQEleGODXMsLP2RsDM8JDOKB8u
 rkN3/tx1KwAixX6dCN7jdJjpixG/mXMlHc2cVYE7LPFNlsIXIWcbn27+QT11PLA0uqbD8kJN0Zck8
 q2e0b9Sw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVolQ-005saH-6x
 for linux-phy@lists.infradead.org; Mon, 12 Apr 2021 05:05:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7A9A76109E;
 Mon, 12 Apr 2021 05:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618203925;
 bh=JEZDcPyp6ZxHZbYo8YgMJjcLTmNNKgrcuE5xLYPWZgk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NMb1SsLVPPrxaRoFXrp6ot5A08DjwJrmaFq9WOuF66ZlAVzOKJ592EgQSTdr6e/Ce
 hUXafYaVvmO7uFPdhTPWBp6MYXc+4qog5T3Wgx01LMZK5BLLVDyao2R/2AxdTTpfJ0
 jdTGVb9LgzRtHJy5PTHEES/ikWSDjfSx3j04fD+3z8nfmtS5C71C1FyIt7/8129OTg
 UwC2hJXFHdsSSVYXCifyB0O8KN6urg9NoBWInG4JdqVgehA6eeeNYYP7Gz978uC+WB
 TBSw0v2YTEzLjpou6C7PR7+3LTIyDppjEnEyzd4WKPJkTU49yzxfakgaEUaVtvOhwX
 4VVlRPC5p3VLQ==
Date: Mon, 12 Apr 2021 10:35:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yang Yingliang <yangyingliang@huawei.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kishon@ti.com
Subject: Re: [PATCH -next] phy: phy-twl4030-usb: Fix possible use-after-free
 in twl4030_usb_remove()
Message-ID: <YHPVEFTCMrWCARRw@vkoul-mobl.Dlink>
References: <20210407092716.3270248-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210407092716.3270248-1-yangyingliang@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_220532_291598_12F9BD03 
X-CRM114-Status: UNSURE (   7.93  )
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

On 07-04-21, 17:27, Yang Yingliang wrote:
> This driver's remove path calls cancel_delayed_work(). However, that
> function does not wait until the work function finishes. This means
> that the callback function may still be running after the driver's
> remove function has finished, which would result in a use-after-free.
> 
> Fix by calling cancel_delayed_work_sync(), which ensures that
> the work is properly cancelled, no longer running, and unable
> to re-schedule itself.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
