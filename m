Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E154DC28B28
	for <linux-phy@archiver.kernel.org>; Wed, 12 Mar 2025 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvsWYefcIz/SEJocSK5mXnbx4Elp8mN87ioLyTK+KZY=; b=vgRm5LWFJ4jT8W
	6v2dZk6NaFcyoirfKx9c7zJqmMGUadq3w8v0nzcAlBEYAeSujZxXEPu1RlJ+i8/h4O7Lt21BPhNOy
	uXq0CqNFV7yuMjL3A/mQLlUxz0TolFe7+PRUYEaznp4+1jtkFwJYog09GVYdCMCpSlpqbnVfjfBlH
	9iIVuR2Dfh9xvpoqXzqHPWjwyVZgCGARiR99KLcI8Uo4ZTntJjFVwYuj+BEx6VyPqKjO3gRi9MlJg
	Jru0TNKY4fnQrilzaObOogU8wXXM4vG3ZkT1/VvVBF0PuwG6/kp4Ii4BE2vNX5AaPMeR0xc++InBq
	pNr9F50PHr+NxdsRqqaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsOZh-00000008yaZ-0XLc;
	Wed, 12 Mar 2025 16:04:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsOTQ-00000008xNh-2XhX;
	Wed, 12 Mar 2025 15:58:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 37EE35C5653;
	Wed, 12 Mar 2025 15:56:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F819C4CEDD;
	Wed, 12 Mar 2025 15:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741795103;
	bh=ZuLRC2c2lu1XseA0j5TSbjY+tOYPxAbjeD4uttbJjII=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=L8bN7JUOiBW46qpqFUeuhB8egu4tV+PgzPEjTvF9KFXsbCx+ss32YHPlVmXXes9M7
	 zpMdO9oekpkZRLLSxjUVgrRPLkG7b31KSf1ME8AKedbkOQZkZC6+gAIGbF6Labr8GN
	 gmdRvERzqWWci+ww/FJZ5GQ8LfuP0edRW7Paah4IEes7He5YMu4lIhVzbay3dBkP2S
	 eXCK5e/SNZo2UixrOnKBj8ZyXuxAjMQmtCoRwBLxOy+LlBnsIEh8mPT4injbuootcK
	 mOqHcMGerb2/71xTauXAnpZv4G1+LKFnCrp6TJxCNepGYRj6a4QTwMr+PBtMSl1szz
	 6EYraxT9rK9Qw==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, kishon@kernel.org, sebastian.reichel@collabora.com, 
 yubing.zhang@rock-chips.com, dmitry.baryshkov@linaro.org, lumag@kernel.org, 
 frank.wang@rock-chips.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20250312080041.524546-1-andyshrk@163.com>
References: <20250312080041.524546-1-andyshrk@163.com>
Subject: Re: [PATCH v2] phy: rockchip: usbdp: Only verify link
 rates/lanes/voltage when the corresponding set flags are set
Message-Id: <174179510031.536552.7442060711637646022.b4-ty@kernel.org>
Date: Wed, 12 Mar 2025 16:58:20 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_085824_705549_974336AD 
X-CRM114-Status: UNSURE (   7.23  )
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


On Wed, 12 Mar 2025 16:00:07 +0800, Andy Yan wrote:
> According documentation of phy_configure_opts_dp, at the configure
> stage, link rates should only be verify/configure when set_rate
> flag is set, the same applies to lanes and voltage.
> 
> So do it as the documentation says.
> Because voltage setting depends on the lanes, link rates set
> previously, so record the link rates and lanes at it's verify stage.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: usbdp: Only verify link rates/lanes/voltage when the corresponding set flags are set
      commit: 969a38be437b68dc9e12e3c3f08911c9f9c8be73

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
