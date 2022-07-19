Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B63A0C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Jul 2022 12:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYwsbsskH1lDVXaT8OZ6WjoDX6AVkERoZ4p3x5XH3hg=; b=QJnY7vF/ALM8OB
	xxOfXoQWffdHc0xGYUeZT39u7bE3tLFgpNkqT3X3axcTrtHXtF/xfTDdj++QicaCikBY/vsE+vMnF
	my0ogAMx4beHh6UF2I7hyIp6jeck+pxXMPef/UqYr97E+QpUGlKQNgz+9ZsL7Qac8y/0p316/eeEc
	5Xl00dyEes/dwHTfFd5Ly5I+W9i63zMiV/BvpnU7IYoTqiqktADJhpehCOUy9xAjeo8CUWn5Oyfst
	OxhdthDKYyJ376Rhk1FGA+U7mq6owVwnWD/DVDG5UM64PxzEk40YOnNXiPZ7dSn+4xH6pfyPIeLiY
	NNpchV9ZaDadu/d8Fq6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDmQ1-008ikA-24; Tue, 19 Jul 2022 12:33:41 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDmPs-008ihX-Vf
	for linux-phy@lists.infradead.org; Tue, 19 Jul 2022 12:33:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 72948B81B1A;
	Tue, 19 Jul 2022 12:33:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD69DC341C6;
	Tue, 19 Jul 2022 12:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658234010;
	bh=zMjMlllVXscrTLNHeZlKujE+ppPXXBHLhhQnH2WdWto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=imxImUOsaU0Ko+4DaRV05N1SyAnPI24Yi3FaBc+lajx6fgzUX6P4sAuEkPwhOcgdu
	 ZV5lSvkqSsgkwW7X9/bGHs18f2Ghakm8e+fLqXlSI9iOQP/n4weAs1WqWLa83Ee821
	 Vc2LwFpNz/MuysRW2Ntb4qzs2iI1xGkav/R46PH4=
Date: Tue, 19 Jul 2022 14:17:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Linux Phy <linux-phy@lists.infradead.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [GIT PULL]: Generic phy updates for v5.20
Message-ID: <Ytag21DYusQ1S6qs@kroah.com>
References: <YtY8Ggzsqa1MwjL5@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YtY8Ggzsqa1MwjL5@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_053333_185982_A574BF51 
X-CRM114-Status: GOOD (  12.33  )
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

On Tue, Jul 19, 2022 at 10:37:38AM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please pull to receive Generic phy updates for v5.20. This contains
> bunch of new support for devices in existing drivers, as well as new
> drivers. Also the big Qualcomm qmp phy cleanup is part of this pull
> request.
> 
> The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:
> 
>   Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-for-5.20
> 
> for you to fetch changes up to 08680588d340eaad2d5028d6f24a055a118d4e7e:
> 
>   dt-bindings: phy: mediatek: tphy: add compatible for mt8188 (2022-07-15 17:20:04 +0530)

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
