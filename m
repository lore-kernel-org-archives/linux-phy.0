Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88DEDEB3640
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 23:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XSmBAa13nT753u4o6xqsYCt43zQz6TN4JgIanVrFmM=; b=PfD3CQSKGHHRIP
	GubGw5occEii3sdkJPaSNyR1cKuXSC1qLkblKNMHCAmt01DhvXzOK5nyu+PZFgMrftvfAOMyQCBPq
	KxEkpq/SXA5EopcrR9ijbnGIimeaHUfDOjjOGz0lI+xxPPyazRlWVpdk83Vr3JomAkrBr5cIjY4ge
	nTS5QVNYZ3FqvqxuhS5AOQFMwIsSE3tC1avD3MV5W/tj1P8kkyvTGNfQW2Nc4LUsypUcnAzvGag2W
	Dowt7s6R7icKC1wlxJNGFtFXbR8vLjS5b6A4NTkW9zOfJpuB4Hwm1nLS7Qw1g9SL0lWm8fUzzspqS
	P8hgdU/XQE7NPGKcjh9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxChz-0000000ECqd-2Vyb;
	Mon, 02 Mar 2026 23:29:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxChy-0000000ECqO-0MUA;
	Mon, 02 Mar 2026 23:29:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 29758600AE;
	Mon,  2 Mar 2026 23:29:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38149C19423;
	Mon,  2 Mar 2026 23:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772494188;
	bh=JjhsBZbYD+PYZg+8Sa8bG20c+cqtp6NekCY1b69oRyQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EKt/ujlmky2u6ZnrW0ZzIzvKVdvfswEr0r5SgScQgGqScbTcrnJfKRuu0fvXxqRid
	 /hGQfglqXwH5c1P743ShC+bWlVez3LWQSj3+LVw6GzJYp5JUIGfOBH+QT8LapMMqha
	 0GWr8KXbhvMqimB8TJZJZkPt3p1jWNLC8zVfE7u7MN2ViPCaT6+pQzoYAwSR1kLfzz
	 W0mPDaNfumIKp5D/kuzKmmViL8TO4MkLJswpI6fEVP0JKiMRBKw2h1SVzKczhk9TTM
	 RDrhQXwMIEuxDcKkRdlRVD6Yokio18R8Hd3P+6sOVU9mKyAlHRowZPoKEFw7rnbseo
	 ifkm0+P7hNdCA==
Date: Mon, 2 Mar 2026 15:29:47 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, Andrew Lunn
 <andrew@lunn.ch>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Andrew
 Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, Mohd Ayaan Anwar
 <mohd.anwar@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, Vinod Koul
 <vkoul@kernel.org>
Subject: Re: [PATCH RESEND2 net-next 0/8] net: stmmac: qcom-ethqos: further
 serdes reorganisation
Message-ID: <20260302152947.3f2a0c2d@kernel.org>
In-Reply-To: <20260301120824.ot53bhv7z7kn5lfd@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
	<aaIysVxy-WxbiJz9@shell.armlinux.org.uk>
	<20260227165556.5cf9e844@kernel.org>
	<20260228083111.5df8550c@kernel.org>
	<20260301001453.lpd2rawy7bqxyivp@skbuf>
	<20260228163229.1024f263@kernel.org>
	<20260301120824.ot53bhv7z7kn5lfd@skbuf>
MIME-Version: 1.0
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

On Sun, 1 Mar 2026 14:08:24 +0200 Vladimir Oltean wrote:
> > I don't recall us ever making a "dirty tag" on net-next which would
> > propagate few 100s of netdev patches into someone else's tree :S
> > IDK how Linus would react. It's the least good option IMO.  
> 
> Just for my curiosity, what difference would it make to him?

The PHY PR will contain a bunch of networking code.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
