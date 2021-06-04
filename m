Return-Path: <SRS0=hNs7=K6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 803B0C4708F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 10:26:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FFAF61406
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jun 2021 10:26:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4FFAF61406
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NeUjWNkoHS+3fAb0YJCIMV1sj5rxfHfhwxkvV/G8Hw=; b=hHaSlUgzD870R1
	RO+8EmEujAyqcf67EeyBUki17N68Kuy8f2FyNd4cDaFpJVzH+xZ0NOIgTZTky4S3GR4tgxl+0TusP
	EIw8wFflv8UKyoK1H4PHglXOiZk2gLMvwGH9qBXB1dpxkbVwOTGu7+MV9VXSAM1ldKhN/xF13TskQ
	QT04A4nqFs1N+SaLpJxHD2d3LgkkLa8CyyNjVNXXSQsHIYnAGOPJ2S88pnbf526+Hja7kUvtQ46ot
	L+yNo/GjcTalsbYDWjBWS++0FEJ8WJrJyhui3QmVpBk/d3aQI89RQWr96oqonGV5Y4hf4fkaTovkk
	jpqvzSjjsGxO2Wpu+zhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp72X-00Cx5G-1c; Fri, 04 Jun 2021 10:26:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp6n0-00CqfT-OV
 for linux-phy@lists.infradead.org; Fri, 04 Jun 2021 10:11:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BEA161400;
 Fri,  4 Jun 2021 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1622801454;
 bh=4kWHAKUYAptvdKTKP+IbuMyYHMt0OC7/Pc06+tOzKc4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1Sh3CdH2m9fiTr7q3uyeVG7/UceoCd/YukBTmlIRkrcSwnhac3DvYhl4jR6NxQ4mR
 X27T9H025rqgbA9HwDphxqLY42KSp2HaEaBAWvRL/D+VZEDfp6pJvqm3Y2UcyWopF5
 2y+3Xdnc/iRxNCM9onoseb87VN2dYcfhtDijhbaw=
Date: Fri, 4 Jun 2021 12:10:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>
Subject: Re: [GIT PULL]: Generic phy fixes for v5.13
Message-ID: <YLn8K6IvsGG7LOLr@kroah.com>
References: <YLnraMuKUKPtktfZ@vkoul-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YLnraMuKUKPtktfZ@vkoul-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_031054_958814_72DE24BF 
X-CRM114-Status: UNSURE (   7.07  )
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

On Fri, Jun 04, 2021 at 02:29:20PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to recive few fixes for phy subsystem.
> 
> The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> 
>   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-5.13

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
