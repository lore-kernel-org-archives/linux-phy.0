Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86E22C32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 08:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tBqColB+iSBFktZ2KZj2A5LPYYnJKZ760IS8fzG8BQ=; b=M4sP+tJcATX6W2
	XMj9AyT+XlRCGbR6BDkx3dpV79RaNSSHr5379BhfQnIbU56xlauEJRAoJVIoAAmC38J81NyqsvJ2A
	7Td/FbKDjfgQG1RmsvdRbZhOmNvDjOms4mS1598WRinCM8aR8RZoMl16gRqOoNni+xSAaTYOnatD9
	LaTNfB6TfspYhXHdF9USvAI0haB3diUqkiv0t/GljSmvhjFo9ov9h4vwScnUydUG/URbEu2xUmVmT
	YH5HR6m4jx9Ny6xNhti1iBC3pc7pC0MOlzhaR2pj8AwYFVvRIawLKKk0/MTCHOMxJlgCj1hs89RRs
	Qe3Epb7BAOWKNebse/Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odS35-00ElVU-Vm; Wed, 28 Sep 2022 08:04:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odS2t-00ElPZ-Th; Wed, 28 Sep 2022 08:03:57 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C882C6601EB5;
	Wed, 28 Sep 2022 09:03:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664352232;
	bh=xmhRsEBuw4qlSAtpsUjlW2Ey//cH5wIEWRMs6CYYXJI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=h2hZSgQXpBnHIM1+2NV8kbvQ0zxGk+gCNVI7OF89QC+dAYjL69Sd08MYdg7LHj92z
	 6I0czhiX3YaxJIgbiKlXFJEl8mtWxgxpkK+rzXftMJCHZFlZkds4+GwUwz6Hh11UvD
	 2BXzBrRMp3rC67IHAa8qPt+SM0TOlwg0ip+O+zez59WgHd8eLxj9xkv/03P+0t63zt
	 mhJBnm7MrZYMAJJiL00BK9OrLB1QOFdbR2uyFgCE7ZB+n49iuZwSYwPD6i47TJ2/7h
	 /IB11GNb25jEfoLQjYTFIVeE270PZRMbyIOo8pQY9Guku9nK9cAhiJM+KYstJaDV0C
	 cvu8j+kdyE9DA==
Message-ID: <edfc1e0a-687e-a91e-28ef-f2090d696a06@collabora.com>
Date: Wed, 28 Sep 2022 10:03:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH next v2] phy: mediatek: fix build warning of FIELD_PREP()
Content-Language: en-US
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Eddie Hung <eddie.hung@mediatek.com>, kernel test robot <lkp@intel.com>
References: <20220928070746.5393-1-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220928070746.5393-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_010356_112911_9E097084 
X-CRM114-Status: UNSURE (   8.13  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 28/09/22 09:07, Chunfeng Yun ha scritto:
> Change the inline function mtk_phy_update_field() into a macro to
> avoid check warning of FIELD_PREP() with compiler parameter
> -Wtautological-constant-out-of-range-compare
> 
> the warning is caused by mask check:
> "BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >     \"
> 
> Fixes: 29c07477556e ("phy: mediatek: add a new helper to update bitfield")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
