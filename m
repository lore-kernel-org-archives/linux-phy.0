Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01E7CC48BC2
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 08:35:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFD0461289
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 08:35:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AFD0461289
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/N4Fc/eOOWJyDkYCjOlm2UzlTYhl2KGEkqwJ6MWO4Qo=; b=yY2Pvnu/d6xaGV
	FBjhMu+eHflgNYE7ZtX77m2nozWQij07bP5Oj0nvK/8o3vYRX425//OgiwhEpw7kYAUW5plYVWxHB
	ERcq3DnGGlU4mGpHkqG/RQfPUh4WICkkSnUFZpd7tC2l04NF9n2ugZ1ZZ3T5Z3d8I2+iJfJBZR+ue
	BVM8iGPerXydtsw73Cl+LDakEbrMGDCEBGStGvzOXHavmTsSlqw+0hDbJvU/rh4WPBs6gSORQHiJz
	CsBPKGiNY4VwLJx56EtkP4I64peqcuvRWsHpT0VJW17h4iEh/HrJvtW4vH8aLJauBp3R8J5DbZjRm
	rlGxKU2JUmU93np6EUag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvyLo-009ysC-7O; Wed, 23 Jun 2021 08:35:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvyLl-009yrP-Ek
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 08:35:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9AFFE6112D;
 Wed, 23 Jun 2021 08:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1624437309;
 bh=8YCFSY5VsJCT63ajemEnOr9JzZBCsow0txviF6oFvQA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fems5e7yd2tsP1vO8tEXQWyALM5OcUOhBEGn5Me/WDm+V908htKYb8hc4aZsWtkPG
 hIdoPv8eeyOZ6xDdURZK9rY8/dF/o/mERttv0NxK/xTiA6r7NoUw23s8KV0mhgIoqS
 c1weLOtXhV8YakoOVHAxIitd2C0+T30HBGsnqza0=
Date: Wed, 23 Jun 2021 10:34:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.14 version 2
Message-ID: <YNLyA6d1h1TLVcML@kroah.com>
References: <YNLun13SP+PyYCEf@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YNLun13SP+PyYCEf@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_013509_548170_5AE52A18 
X-CRM114-Status: UNSURE (   8.50  )
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

On Wed, Jun 23, 2021 at 01:49:43PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> As discussed, here is the updated pull request after reverting the
> offending commit.
> 
> Again very sorry for missing this in the review.
> 
> The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> 
>   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.14_v2

That worked, thanks!

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
