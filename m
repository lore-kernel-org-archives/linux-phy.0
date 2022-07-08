Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54C18C43334
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 05:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSrcukhwzajV8JN8xRuMs3YiDzopW4wZp7WgxfRXSh0=; b=iQfrnFLi3Bjx4y
	//obeLjQ5CHwHOFgZlQMQKDb1HMrO6G4CsBTRgXNDWqBzYRpfwfHApRI6P0Y5gfrudGTJCH52aqz0
	nQpLJ/bZzfg4Rs48HypbtnwfjcBPMc8q2O85JkQrSwh2Hix/WgIAfcpzjWloMG8MgvbuCyK6UNq+8
	5p/T5G8bhxWCoKy+56RU/uUBqdxv7i11bvHPk59c6l24GidzrLtQ8xjXmOHx7HPmyoJwe1AXyILua
	mD7RoektKvX6fket9BTQP0v0uxfysPcR/k81bKqmtsqmvL7hSDJF50ErIlUA+9XUr7Rwjm1uNX2Lk
	9wx/dODUgyZeZOKz8dew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gK1-001ngr-HX; Fri, 08 Jul 2022 05:14:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gJq-001nde-7J; Fri, 08 Jul 2022 05:14:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B90BF623AE;
	Fri,  8 Jul 2022 05:14:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3644C341CA;
	Fri,  8 Jul 2022 05:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657257260;
	bh=W7KkzfO+bktfe4mQFitUfFgnlWNpKQuE4WA0mV6VAQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z19CH3RM1F1xFmBu7O7sWi9TJBOqstLuD68mnp1xnabbPH/lFtAsrH0qBsPxOAUKE
	 8K6sQfB+wCNtBZwmEDZUdvaGKP2oCL7YcTnZBZU99q3uhkuSB15NEbNqmP8eE9Qwks
	 JlrXKTvKFofUrcO5rbwJiwlrK6trMHecKq8piJzFa+qn18XqiwV8N0DXSGyKeYsrJH
	 HtJ+tzeCs/+EjO2kGhJEoSF4iFTmzWQ73hdN7Q9jJEmAWSvT7eo6mdbJsh+v1FVlsG
	 0JSBxjcZGMcjykvRykBDGpyA7FCIGNiwahA0EYOq6fGAmwbIpiVrqYiqiCXj94S9OU
	 mz0C4zu4PLA7Q==
Date: Fri, 8 Jul 2022 10:44:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yang Yingliang <yangyingliang@huawei.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
	msp@baylibre.com, chunkuang.hu@kernel.org
Subject: Re: [PATCH -next] phy: phy-mtk-dp: change mtk_dp_phy_driver to static
Message-ID: <Yse9KMuN96CRrpj6@matsya>
References: <20220707135309.801181-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220707135309.801181-1-yangyingliang@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_221422_320304_A881AF2B 
X-CRM114-Status: UNSURE (   7.29  )
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

On 07-07-22, 21:53, Yang Yingliang wrote:
> mtk_dp_phy_driver is only used in phy-mtk-dp.c now, change it to static.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
