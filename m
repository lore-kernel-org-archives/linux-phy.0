Return-Path: <SRS0=XdcK=JE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 835D3C433B4
	for <linux-phy@archiver.kernel.org>; Wed,  7 Apr 2021 14:55:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30C2861363
	for <linux-phy@archiver.kernel.org>; Wed,  7 Apr 2021 14:55:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30C2861363
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MFo+Ue6KjMc3LEO27v1sAeZd1sLC1TYBO3+P2uZRVz8=; b=puyRUxglfeBm2eqIb6ez0JjNI
	Db2WFS1DJ34rNk000dc49i9r1M5nQoM2Wsl6IH5/HLlzY3ylm0IscXYE4isWeefV8D1B17ZLdshZu
	Wgoh0ptKObluAfZrfVTLf5c/Qek1pmvApz+cePJ2vSgG2gv+eqogWAb6B5vFflXXrHYmsV9vPTd8z
	01rVKjdDaLT82LVqvyrttZr7D8rdOWonDQ55aSn8iOsHumGJ290TdK9nW7lkgVFrwDqVaiEwKrjjz
	6yKR4BkIwQVT+ymD5OaaocREhU4QBS81576g2zVuFi1H3WSWQlFiLcsUtoY+usTc3tkfXl0BYo6Hy
	gzo8Jaqug==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lU9aE-005D7r-MG; Wed, 07 Apr 2021 14:55:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lU9a9-005D6m-I4
 for linux-phy@lists.infradead.org; Wed, 07 Apr 2021 14:55:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E61A61363;
 Wed,  7 Apr 2021 14:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617807298;
 bh=T3bdSkR62iNXCFNvEUgWE4U9vYx3ZLghfahBzX69+J8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qkl6gp2hy6ajVoGP2vncEY4HbHaohQtNNsyEYyHtUcFMkmlVkVmHl000rB+4IPWL0
 sBbwisc/EGoMNr4LLXTu7/eFnyuhUOgs3OxdQ7wu8WqoOYw5JgjlA2JYfbgWjSj7aZ
 FN8RZuvElC1WR76jaLFWgarG4WGkuTzBbHIm9tEM=
Date: Wed, 7 Apr 2021 16:53:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux Phy <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [GIT PULL]: Generic phy updates for v5.13-rc1
Message-ID: <YG3HX6jAqNBQSoc4@kroah.com>
References: <YG2psdeBIlfYODdJ@vkoul-mobl.Dlink>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YG2psdeBIlfYODdJ@vkoul-mobl.Dlink>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210407_155501_803858_46F2504D 
X-CRM114-Status: UNSURE (   8.25  )
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

On Wed, Apr 07, 2021 at 06:16:41PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to receive generic phy updates for this cycle. This is usual
> pull includes bunch of new driver/device support and updates to bunch of
> drivers.
> 
> The following changes since commit a38fd8748464831584a19438cbb3082b5a2dab15:
> 
>   Linux 5.12-rc2 (2021-03-05 17:33:41 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.13

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
