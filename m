Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECD0C433B4
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 07:13:33 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EC2661103
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 07:13:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6EC2661103
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tPo3mQJ21muEOPAiEvv2kX0R/Wukgu4hZXwsukMthjg=; b=SJTs2afzlljwMInsjhSpSfQsF
	4Gjvxg5UElFovo4lqnsDuxivSE0b4YLluhDJUVnl826WcUXFeXkLUNA2eC1ryTOvA8EhGWc9r5Qmy
	zg7jzhNbndc9zbwoNMUlyTCWz+8+eWPIbYE6ZsNJriZqjq72ISSGf6OeA4E75tT2qliFu+YL7qjWR
	ESCslRt4CECyyAVeYXuNkQMpDHedsfsHnesXuqAJl5Wt8YfYegtKfVgKQYve8x2PhnBoVX3zlDNHn
	oM7Tq7zuWSZPrEcr4oJxG4jGVpPrgH9d/xSb27q4rxsaoFrk4ImHmRdBLKSoT/4Ov1nB7gxAi7b40
	bv/drHHQQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwBv-00FAAz-LA; Thu, 15 Apr 2021 07:13:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwBo-00FA9s-Iy
 for linux-phy@desiato.infradead.org; Thu, 15 Apr 2021 07:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=u7R8quMy+sG5wO1w6iOiTw8Y9Nb4UI5XtcLZaE7kkFg=; b=0Eb2yQOmtlBCDgdoraxueuPKNp
 Ujw/n90hR+r58lKEAC+uvqlKensLXsKdxgwJ42JbwuMG9Qk5cJkp8t1kYJoOltAS8p/mmXT8l+gd6
 O+Jfkt4NN+Sg26VNUxmfvdgp0qumpLOlnNvyKwv3Ijk38SbwB1TMbORsmn7DxGoXzcKQBYJbqHFXY
 lMOG9SAdMeqgKmtE2oFjU3FEuzV35dSdJogUS2kh90Kbh3vZvVDUDsCG+/doVg+k9ZGLgpSDYiSyg
 0GoeEjp2cf+oocJLyfHxrtVnfAa1obCvLBuOZPkglxMZjrLz2jZU7o8TNB6R+NkQV6zekrINMjFMH
 5bteYyeQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwBm-008KdG-5Z
 for linux-phy@lists.infradead.org; Thu, 15 Apr 2021 07:13:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id ACEFD611F1;
 Thu, 15 Apr 2021 07:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1618470801;
 bh=lpWxRgXJSBBZ+/h21aDGOdU9sxO1H0Ab1tK4kG6NEPQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=St8LyY9BNupzO8uJWM02Fb00F5gdM/h+EfeyWh6Dmy8BwWO6lgIiQ+Uhy8+TfU2en
 CoxZFZdYMC+kTYcMFS+5l1oZRGKmNo9Wxqtbq7Pzv/N9Otu68WzsVlb7MzIPSEv+yi
 DhMzcpoGhRGROF2JAPCa2f4o+GdM1iu/h4ooyG4E=
Date: Thu, 15 Apr 2021 09:13:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.13 -second round
Message-ID: <YHfniUnGLP3gAeNE@kroah.com>
References: <YHcHjYv8HIaODa5t@vkoul-mobl.Dlink>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YHcHjYv8HIaODa5t@vkoul-mobl.Dlink>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_001322_268806_A6D747CD 
X-CRM114-Status: UNSURE (   8.37  )
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

On Wed, Apr 14, 2021 at 08:47:33PM +0530, Vinod Koul wrote:
> Hi Greg,
> 
> As promised, here are some minor fixes for earlier pull request. This
> includes fixes which came in after the request was sent
> 
> The following changes since commit cbc336c09b6d6dfb24d20c955599123308fa2fe2:
> 
>   phy: fix resource_size.cocci warnings (2021-04-06 10:39:20 +0530)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.13-second

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
