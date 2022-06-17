Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D350C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/mVH+BkhLHPXO2UdZfXMNDwJVhlcHiLG6X6LpRZ5Vk=; b=o5h/R0H49XFU8U
	2+2JSJIX1+BKzBul7ZyMVCOi70LInQVEI4lFkndbh8B10uq83XuKeOexUhkI3K610rZTDgn5TDZRY
	NKyWCkTaVtusihrJXnublggYvUz7QBa+5XDD1rbAueP7jEfx7UhrdrMd77eqXInM1zEWovyCOAL+P
	F/rLh+SuVW0u3lPeGE1qe6IqslpwC25xCHpEaVMOEg/Yehc92ft9xgjv/+IzJoGiXyMZt1TOFgdFx
	3E0rtAD5PvzBaQ6LANP6gzjL3bZupIO7a+evRqK23/lbLUscz/1OKBOhX3Brw1kryeVFnw0lCbDf9
	u39aqdmj5+6AcNIDma1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zvw-004tSU-Sw; Fri, 17 Jun 2022 00:33:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zvu-004tRd-8z
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 00:33:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9C3DDB82678;
	Fri, 17 Jun 2022 00:33:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 457ADC34114;
	Fri, 17 Jun 2022 00:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655426031;
	bh=Esh5EYmgfGLBloTgln1krxz4ZH1WRfV3aIfx7d9WJ64=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E179pDvm57ISo1teMtoafGuzlSVx2EgNMvTkW9jteKQr6vVJNp3qEQ7Zt0t8Au0I+
	 CacbgYWXCMR90prDdukCidlb9yNZjwo2t0dBlkDuv81MwqTfqq3PT4JCLuKhwHAanD
	 Ytq4fkL51vSp8IR0Hek0Lt/1ycRdhcoR3wvplXQKdwQFOWMXTptHeA6C2MuN69cf+L
	 luobVp0V9Dx5DzO+GISzsVK2ry7zn9YMUdUPaxBM+DeBANXQetV8ce8P9iQ77zTs7d
	 X/cVRb9w9yz9oYXLMedGAGB6AtAXIz4LCLOalczYV+YjuUkTdQ/EQKkSj6imUfbYb6
	 OHTxj1Gt+ljow==
Date: Thu, 16 Jun 2022 17:33:50 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Roger Quadros <rogerq@kernel.org>
Cc: kishon@ti.com, mranostay@ti.com, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ti: phy-j721e-wiz: use OF data for device specific
 data
Message-ID: <YqvL7u5emkhqzEvj@matsya>
References: <20220526064121.27625-1-rogerq@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220526064121.27625-1-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_173354_501444_78144ED7 
X-CRM114-Status: UNSURE (   6.86  )
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

On 26-05-22, 09:41, Roger Quadros wrote:
> Move device specific data into OF data structure so it
> is easier to maintain and we can get rid of if statements.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
