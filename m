Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1892C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 13:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPL2oc5anHNsP8UkfezHa1TL4g61dd90mC3IPLwCjik=; b=eRqT51jK46tFn4
	g+D5t4pxTdnXrl/QbbDJ5RPc462xNR5uKYrIyzVAiBqCsc7GZGp5OwjZ+sKmxQ/TiOR5d5XCw2OZs
	5lh063nllRavQHVBecad+m0Mo+VpM2VbGMU6/Mt17oHjlYQXDWdUcXEfyVowBWsbxLxqndslZeBRL
	ghzXcNbeEYwxa5gusPtp9OmoI1YZ4w2BaidolXWUJ0bbTGJxacgo8kOdnpWkZEH5Iu7WYsc6pzWCA
	sThrXvQVkY1kwWsmIyCl6BWCp7sxdxFDEupgkvB+qEskcEx6JZTTfa1uvzCXuS41OTs+cniaDBhZ9
	HJngf3JAj7FJb+yGjxRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhtg2-000gbx-Do; Fri, 22 Apr 2022 13:50:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhtfy-000gaG-9D
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 13:50:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9E2B860109;
 Fri, 22 Apr 2022 13:50:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0462C385A4;
 Fri, 22 Apr 2022 13:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1650635421;
 bh=FHvIn6MJLGSh/ZKjufz8f4j/1Vbm/yH4KiDcpmJUk1k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cD4YJmdJQK3uVlHt7UXDgcx7ngYH0uLxiRzBZcyfXhH7EUS0vdp3XdQfEEKnxZ/Mf
 JrLgb3+KqhdoPUnGtymGSpKjnu8rPkklr+vjRFs75UrFDRpqgtApAGsWC4obA6On6M
 fDHZVuDqLJmFANRbYSfdJzMSI7kp+HtrqAKEWKeY=
Date: Fri, 22 Apr 2022 15:49:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: Re: [GIT PULL]: Generic phy fixes for v5.18
Message-ID: <YmKyeqqvoZFmBU+Q@kroah.com>
References: <YmFQonkAlGNUx+OY@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmFQonkAlGNUx+OY@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_065022_384346_ABC48A89 
X-CRM114-Status: UNSURE (   9.91  )
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

On Thu, Apr 21, 2022 at 06:10:02PM +0530, Vinod Koul wrote:
> Hello Greg,
> 
> Please consider pull to receive the generic phy fixes for v5.18 which
> contains bunch of driver fixes for error patch handling, missing
> device/of_node_put etc.
> 
> The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:
> 
>   Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git tags/phy-fixes-5.18

Pulled and pushed out, thanks.

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
