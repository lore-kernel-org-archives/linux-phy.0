Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AFE8CF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 20:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MzKpisGWWaZFQho/vKWL4NPpBp3mTzMeWVipX5EmFGw=; b=fPauGl9/fxX+d3
	Ii7yDkwykxUVjUE5xO7UpfvuOEXfkTCCQzKrywIUVoUFQaTeRo7YJSzsE68INLYH76f8IcpDCIvIS
	M/lTdxnlz4Rsbkrtb1ROdWjgl0NKJy1fiuEmQLZz84eVKoyKI56rNHNLO811JCsWIbKAFY8NLGMFH
	zFCKyyv3IpnXOEd0iB/mQW59/rysxYvQReKH7+4wc85u/t9cvYLxMGbwNOCefD4DL2LqTBczBldWP
	kf45ZQPAunoJ/AGUNC+pdk9inWdVwiT/OsxEBxaWEBrGBkRKTMDhRybUKMJ7vHyE6GAlW565DNYyB
	7t4FqZIjej7UdjK/bujg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stC7d-00000003EZ3-0w1P;
	Tue, 24 Sep 2024 20:26:57 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stC6c-00000003ESZ-11Rp
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 20:25:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 963BB5C5D00;
	Tue, 24 Sep 2024 20:25:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D265DC4CEC4;
	Tue, 24 Sep 2024 20:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1727209552;
	bh=UWNoYLvQTXsoFZYn+gjzKUUudry9tbHFLE2IOzxy5uE=;
	h=Date:From:To:Cc:Subject:From;
	b=hui9R236ilNieec9nh9qM/gy9ghCRRsidmWKCIojwzpA+E2VSNaaqGIFPgeIIJGcS
	 ogKDaQZAYyQ6ZGnUuUJW+54auoiTMlzw6yXlojf2wJ3ofWW/2Ib8w61chgSZaDlKPl
	 HHT2IdJQIIVqak3LgHywutC5uwaHWWTzFOrfJBII=
Date: Tue, 24 Sep 2024 16:25:45 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: linux-phy@lists.infradead.org, helpdesk@kernel.org
Subject: Bouncing maintainer: Shengyang Chen
Message-ID: <20240924-radical-chirpy-hawk-3aa339@lemur>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_132554_729341_C2D46C3D 
X-CRM114-Status: UNSURE (   6.27  )
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

Hello:

I'm reaching out to co-maintainers of the following subsystems:

  - STARFIVE JH7110 DPHY TX DRIVER

The email address for one of your maintainers is bouncing:

  M: Shengyang Chen <shengyang.chen@starfivetech.com>

There are several possible courses of action:

1. If you know the new email address for the maintainer, please ask them to
   submit a patch for MAINTAINERS and .mailmap files.

2. If this maintainer stepped away from their duties, or if co-maintainers are
   equally unable to reach them via any other means, please submit a patch to
   MAINTAINERS to remove their M: entry.

The goal is to have no bouncing M: entries in the maintainers file, so please
follow up as soon as you have decided on the correct course of action.

Best regards,
--
Konstantin Ryabitsev
Linux Foundation

bugspray track

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
