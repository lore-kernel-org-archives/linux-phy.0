Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 701E5E7107E
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZykXCY0JqDj/3wIy8WkpTv5OuLZS0fMbEQWMhFoLEI=; b=0TCanHRk87vWk6
	wKgWsb1v7nN6wcoLC9Kn0S0B/DRSe7EajVt1hpG3VGqUfJjP0MDMQ73JLRU/gH6r19Y+bXfZInaG9
	70F3f9amX1eqT4LUHRkJOIGeTtlzP5zNQ6wiAMU79uMs3fcaIBodN7bPW3nhPhXM+izuE0pEB7ZBv
	AtweFymE0ahvC7fv+ZiQl6LNuebndBtTtNT4I4ZgQqQQXnThZoO//xRFCdtsD2MWs6sMq//PICwyM
	W4zZOoI8RSbURkImJ7/6F2RX+pt7ywOBYGEcuR6O2lHRIXNP7UgcwKyweLr27vo3ZEe2usOdvuCqy
	P3TeaZB8CoZ4bWsW3HuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdG-006GK1-0a;
	Thu, 21 Sep 2023 14:26:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdD-006GIw-34
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:26:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 05B1160A05;
	Thu, 21 Sep 2023 14:26:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 850EEC4E759;
	Thu, 21 Sep 2023 14:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306373;
	bh=2++/YFBh55cXJ6n3YekHfxDVcknebtLcmOWyG73zSoI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NdZj15U9ei2kE6ljm78/Q67BgZX8bUyB7M/lpYZqKZibNC3djB7gpL+zMKPRhvsu3
	 Q9/kfZNsluV38XiFKHfxbuxR7Q/uPJmmmXbgtgcaX7YPGwfQx1WdNYcZzJE/WQuNu9
	 +QgF1aEXlPDV6jZyGEsu+axkXYXA4b+9JT1LqsBKgyNnqQg77kbPIRhletyN6Z3WLu
	 I/ZRXuohSwyMMDEQT1WLbD+tKNMeRy7So/R984y7P8llOCWXjLUvlqrkIXg2XHo3LV
	 3ObJ4n5ojEwa7okFefvQUKoq7BV29V9CvntfMv7ddjCO+WYIwz836RRFn128zIokz+
	 k4FvKawZEjD4A==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 Yang Yingliang <yangyingliang@huawei.com>
Cc: quic_varada@quicinc.com, andersson@kernel.org
In-Reply-To: <20230824092356.1154839-1-yangyingliang@huawei.com>
References: <20230824092356.1154839-1-yangyingliang@huawei.com>
Subject: Re: [PATCH -next] phy: qcom: phy-qcom-m31: change m31_ipq5332_regs
 to static
Message-Id: <169530637215.106093.2062943843024168234.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:12 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072616_037401_75F39414 
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


On Thu, 24 Aug 2023 17:23:56 +0800, Yang Yingliang wrote:
> m31_ipq5332_regs is only used in phy-qcom-m31.c now, change
> it to static.
> 
> 

Applied, thanks!

[1/1] phy: qcom: phy-qcom-m31: change m31_ipq5332_regs to static
      commit: 426e05ce126e8febc21fae643139a1072d2670ad

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
