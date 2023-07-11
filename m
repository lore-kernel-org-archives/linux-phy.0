Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43718EB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 05:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsPdT+8hQvLCIuUr/feM1O9rTG5n6KNNhxkjPjOXpCY=; b=NjD9AJioTfK0ET
	oXsLutcoqm4Eyz9aMMz/KKarWyn6782cbRIVOkqzldFaDKb0MrrMNrhF5U+t7bT+9InURvJvkNTMt
	E0tQOYC/YnQTGnf3NW0+/awLbO/2f35BqJgGjt+Ok78hJpOBeMS+gA2QvOhTVH52vWfRHR2WgK/U7
	0z2IgXqM/aJT4sttvGdeiB8GPnIGC8IOkM+NhECQuCwUeUtKm/FGe3Mk4iiH5v/8l6rFkz9NSpIYU
	IhLucShTdOZ0uRamb2xrpmkg7UQSlvBxlVC9vBAnEFssUwiaU7ECrck+zlJfZFUyIxTky+ljgIR3U
	J6zs48u9mrUaJ0zoXlQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5eg-00DipY-2h;
	Tue, 11 Jul 2023 05:11:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5ed-00Dioh-2i
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 05:11:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 346636130E;
	Tue, 11 Jul 2023 05:11:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F33FC433C7;
	Tue, 11 Jul 2023 05:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689052274;
	bh=C7BVPmyrFODmMAGS/20ZJNoDYZRHTu1u1B35lxlQU3k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=YvxOyhVS5710owDv9a0+tLXFJIL+QkMY26XYvj8fDbb6OqVuBGKV8eGf83vvDiEE/
	 UaUIb3ueci1eiHf5ztHCnDK/BWheBDplNbBcO2wkx33F1TfaBQjRJiPtkk+FrpGdNU
	 Cco1nkOQwMzxu9zASc+blqVLdAljReQDfS6MF3ATYPJ607R9VNQYfYICKtmoTi51aF
	 iDy5OTL7XT+Zs6WwZMzTBWPJSDhtRASdVOZXkbXbiJqZ6vVpIIa0QauXLoxv+bu4L3
	 Q8qOkNoIFHrcSPak31pYkWW6EN+bVZQNskpMZ4BfLZkgS+EH9I6Rwtg6JAc0KK2rHa
	 mNCNcNYvwGtcg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Yangtao Li <frank.li@vivo.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230705090126.26854-1-frank.li@vivo.com>
References: <20230705090126.26854-1-frank.li@vivo.com>
Subject: Re: (subset) [PATCH 1/4] phy: marvell: phy-mvebu-cp110-comphy: Use
 devm_platform_get_and_ioremap_resource()
Message-Id: <168905227278.183385.8197059606502401050.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 10:41:12 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_221115_943367_F9F1B512 
X-CRM114-Status: UNSURE (   5.47  )
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


On Wed, 05 Jul 2023 17:01:23 +0800, Yangtao Li wrote:
> Convert platform_get_resource(), devm_ioremap_resource() to a single
> call to devm_platform_get_and_ioremap_resource(), as this is exactly
> what this function does.
> 
> 

Applied, thanks!

[1/4] phy: marvell: phy-mvebu-cp110-comphy: Use devm_platform_get_and_ioremap_resource()
      commit: babfcaf544d890fe96a54184ccabde9c2afa520f
[2/4] phy: rockchip: phy-rockchip-typec: Use devm_platform_get_and_ioremap_resource()
      commit: 161f7ca9455c27eb0d228def6516d73a9cb841bf
[3/4] phy: renesas: r8a779f0-ether-serdes: Convert to devm_platform_ioremap_resource()
      commit: f21829b8b928ca2aedbed839ab9dec5d079c42dd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
