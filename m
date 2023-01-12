Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF3C0C54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 18:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9D/+Dv+eQy2NREgGkRM6sRLjeg88ily+ofYjJTaX2rM=; b=lssTfxss0KHHz8
	cDd2PtFvx0JwjAJ82sncvH6vbC2nWiFDbBkDsv2LDF0ARU9dP6wauc9q/ndpxuxNCNe09tN4LyIeB
	ekRbDEecYDoQObSeapk3IFmckbk8qHFc7Z/8syMgBAYbC3PnfwwX/rlT5VxwCu+DLo78kujDkKtUR
	bocKkgnkOb2uflYiIL3pP3kHekfUsrNAuzDHtCeg5B7A5a0uSLVqkwBD2RW4iSbuAVTDQcAE5/xqV
	SKJKjI0GdojW7V0urpwH4+4K5OpTrvQZIRwHl1qoHAazbU0/G73a9MIwPhJ9odpJhXcCAJSgZGuqs
	bb9YIlCvDcRadMX19wOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG2Lp-00GJG1-9S; Thu, 12 Jan 2023 18:30:57 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG2Lm-00GJFU-C5
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 18:30:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AD34B62070;
	Thu, 12 Jan 2023 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E2DDC433D2;
	Thu, 12 Jan 2023 18:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673548253;
	bh=7uf+hF39dXcAFsmki70X9UrlNOJ3T70aU67vceBY06A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hz+UVIZaywf+6IghuIMxQQ7TJ7uJrAWQlRP4qoAUaeoVWtzODnrQWBDWnMHh3Ws3U
	 BZGqXWvDCamzfiWVZhrhjDSnkaOpJx2r39GnkX9hRYnh/C3mxV3IpVoFaRLHe3dVJ+
	 2N1GUryPsriR65oi52DrviIGzMITfForwdABu1EjB9RHQ/S1t0+rwlKNL1XVzoHaAu
	 ywzJMPtyQ+WLyVlDzywXUQ7UV09UvGLRHdxoS6Pl+IDEOzwLo8XoexB+dM7xcjBGsa
	 dcNNz4B4TLR2TDFFWRCgs9WybB09P2yf+pd+iRH7oNVCtgI4FSJ75sBhv4viMHmAR4
	 O0n3bOPbc3lnw==
Date: Fri, 13 Jan 2023 00:00:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] phy: renesas: r8a779f0-eth-serdes: Fix register setting
Message-ID: <Y8BRuYeo+MPLO+6r@matsya>
References: <20221226064216.3895421-1-yoshihiro.shimoda.uh@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221226064216.3895421-1-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_103054_568275_32F4FBD8 
X-CRM114-Status: UNSURE (   5.74  )
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

On 26-12-22, 15:42, Yoshihiro Shimoda wrote:
> Fix register setting which is typo in r8a779f0_eth_serdes_chan_setting().

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
