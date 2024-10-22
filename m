Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A757DD1CDA2
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oFqR1AjTPpbfI4KxJSKQ10jlUib+APYb6Joffi6av4=; b=MJsfQX5ETsx+2X
	lnZO0iHCeKSFlWUwytCoWcLzRqvfItIqlQoe3a/PUZkMIXDyMbijwkYc0nz9cMpx9PpBtJ+prdEUJ
	MDZ+xtFPCkYSryU2ZS74CPNlPp//GkTYbxEWyuK8kJroUzWBn4ExpyX5wRxbzUU7ElOc1XA50Qr2w
	JKER9kPyKqXlZte77JI8a2Fk1/W5DjPfa76ioWi+jj/uIy3qsVv/pOyGJrXnW+8Zll5DYjLrItXIi
	Yg10ScAy3aGblmfj+RlYmNb8IXy2Iu8fKIkd+ECpl9D6zUdo9ojMNdxx50SN0XBFmZzSPYEbDWfx6
	9dNGZu75EhS16G3f93dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37YS-00000009fte-1L84;
	Tue, 22 Oct 2024 05:35:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37V0-00000009eve-2rpe
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:32:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 968685C5CE1;
	Tue, 22 Oct 2024 05:32:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ADCAC4CEC7;
	Tue, 22 Oct 2024 05:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575126;
	bh=+XQ07RcYr/8lQR11wBVNG7FGw7Y3qYnD5XkLswk1QQI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=YDCxp6ef9uWhUbxhj+St5pgeNVCCQCf/fqM5amEV2hOouQHGiXCIS7mw5hIKivGqz
	 RtJMH9kggK+9wyYKHDosNE2dDPOQfMhVJ93bZ5fcF94RISacKqckCvvkXGCdL+O+Mu
	 P9ZlxE8FqApCSuZ07rGt95HPLwClMAo7uoJn50f+/FvM6sR3dzJeAemXGDyn0uggkX
	 6gD/hrlJ9oy5q/YyDzjqbVmqNUupV9j10/bKTb5jRfo42F1Isx+XPybjnZR3vUZ9eS
	 tN7ElVlnLhrOrvYMwuR1xC5UJbc6VCfYpUP6M6YgJvFgfgLZMBs75xdG+jTENGL3Bu
	 bOkAOIf+T/qkg==
From: Vinod Koul <vkoul@kernel.org>
To: jckuo@nvidia.com, kishon@kernel.org, thierry.reding@gmail.com, 
 jonathanh@nvidia.com, nkristam@nvidia.com, 
 Dipendra Khadka <kdipendra88@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240930191101.13184-1-kdipendra88@gmail.com>
References: <20240930191101.13184-1-kdipendra88@gmail.com>
Subject: Re: [PATCH] phy: tegra: xusb: Add error pointer check in xusb.c
Message-Id: <172957512345.488725.7168237326292852194.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:02:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223206_795326_4E9944E3 
X-CRM114-Status: UNSURE (   4.01  )
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


On Mon, 30 Sep 2024 19:11:00 +0000, Dipendra Khadka wrote:
> Add error pointer check after tegra_xusb_find_lane().
> 
> 

Applied, thanks!

[1/1] phy: tegra: xusb: Add error pointer check in xusb.c
      commit: e70d2677ef4088d59158739d72b67ac36d1b132b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
