Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78381C001E0
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 13:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auI2WGRkz9uonjX7wiBBxjINAziGbm7AVXs/D1YxqAc=; b=h+iUgX27eGKyLn
	r7S60AEBvtm+Un9/TFH4j1Y6QqkahVOlyrei4a0wnfBqqNKQ9dJ2dyNfyLagAEywpDm93Rqxud2nC
	1XzPPNYgB75kK9QSYZauXrXwyGLg7yg6IT+oJ5aOQ8HK3JbzL1K2OAIGDD88FQHFAue2/rm1f0o88
	4/5WVf0xnJSHCkoeNq06qBABG6EE8iHLf1KXPbZP/fhfDB7XkZbUVADkSHqfHDT2yIrxzLftn2J/P
	1l++AjH/msd2Rnz8Ud8f/ApGZL+Wj3VAsSRyK1FKtcHr4whsA48UynLkM5lZVRtlr1bSbXeZnjVpq
	nYsXlPfwO65iC7kHsjcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOISt-007h75-0F;
	Tue, 25 Jul 2023 13:52:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOISq-007h6U-1M
	for linux-phy@lists.infradead.org;
	Tue, 25 Jul 2023 13:52:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3DE1461735;
	Tue, 25 Jul 2023 13:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AC58C433C8;
	Tue, 25 Jul 2023 13:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690293149;
	bh=jk3g1vnfdSDaqM6/eDQYuUxIl6rLb/lk2Rla2eDLE7o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=cykkf6CbSwp27HbGCBm7ok2Vt0H8B3WNpw4ZPIQDH0N8E1LaOhvdFYhnvKz4VmgmZ
	 eLP8A2CJspfjxaczdQTw+k9dQdGAgHlVyntsgsz4sKtzInBClWjgPJBY/GWT7IyJ6D
	 eIvbiHyYpF2W6y4SDcC0+51bltRsj/gfzq0gYj6hqSgszrPQQd2vJDuLZ060+Dep29
	 W2H+9ijGJWxSIoMOXDfiqokuQFTRv/65EGmB2ZSYMdUsRd9yhaAW4qpKAjxxRsu6tW
	 lnnZ8hZ8qZemP4nKeWRXDRuMKmedPkt72kO3ynZPo5B8ynNL3syGvcrOsdhcUAQ4Di
	 c+97BsNABQnOg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Minda Chen <minda.chen@starfivetech.com>, 
 Roger Quadros <rogerq@kernel.org>, 
 Changhuang Liang <changhuang.liang@starfivetech.com>, 
 kernel test robot <lkp@intel.com>
In-Reply-To: <20230725063856.482696-1-vkoul@kernel.org>
References: <20230725063856.482696-1-vkoul@kernel.org>
Subject: Re: [PATCH v2] phy: starfive: make phys depend on HAS_IOMEM
Message-Id: <169029314700.496606.18342590278103646934.b4-ty@kernel.org>
Date: Tue, 25 Jul 2023 19:22:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_065236_521606_06981E20 
X-CRM114-Status: UNSURE (   6.41  )
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


On Tue, 25 Jul 2023 12:08:56 +0530, Vinod Koul wrote:
> the startfive phy drivers use devm_platform_ioremap_resource() which on
> some archs (s390) is not present. So make the drivers depend on HAS_IOMEM
> 
> 

Applied, thanks!

[1/1] phy: starfive: make phys depend on HAS_IOMEM
      commit: ec6beb82587c73cff52730567016cbc6c17822a8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
