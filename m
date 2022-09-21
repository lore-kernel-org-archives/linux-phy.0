Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DFEDECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIwE2xwgEqVPSMdR4sKJYM1xnTFT23se9KDISq71pzA=; b=GYMNbSnO5SmkDK
	w6o5guu1Pq54KsTufkRjFHvp95NSVfVbSLdL5om7MIHwcbPHDQnE6wM3NBm8wd/XBTkZqPK3wLlTp
	orODkgp7WmbZ8ozR6py2XaYCn9XNAoiylL2iaZ7FiJxitYztzpfRQOsDD45DWO2KBh/NJOEpXILXL
	2Khh55LbQL5ckYlcesrpOuS4w00NhRmns9YrYzH0L8Mu8lbT4fqlki2cIBaqzHfhLay8onUbQSAzy
	8anVCMaX2V7HDtnxr2du51QIjvm/N7R1lf2Ht8ssBm3+VyUgjUBuJ4VUAalappQaqaBQVhXNz10+p
	Tz3DAQvUDFAYWjp8ZmKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauuD-009re3-Ny; Wed, 21 Sep 2022 08:16:29 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaurZ-009qLB-5R; Wed, 21 Sep 2022 08:13:46 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 567E76602002;
	Wed, 21 Sep 2022 09:13:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663748024;
	bh=SRIF+BE4y6ayL9qbaLOyz0oXw3nZG/Mv2C9ZyzBP8/Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ln62zNQAv4FozRtX7XIvtS2aTpaZ6gTyYnMEaWRQQobZlbiMESNRcDZcGcXFjeUPb
	 CPHdioMFBZrbAxH6/VxRzs89GZhcGx2Nl2BxvoT9rmp4W6zmHQ2s4BRsj/D7JefbVk
	 TLgD/2wTZ6OlVlPpkBSvpGnTgOfDJSgH7zByzhdkWmVR3/YZR6gbPACPN9uL/MNY3j
	 oRedEFp5bABVQHyMnHXXf2yNDcCHxanXG44JsSRXi6mQcbcS1NaK+Py6lF1zfHoodH
	 Df78p9+HwzUAGal1qAe1wFyBKffEwJkS1xx7nyeciVjf8O3oSuG+KW2ac4C9XwlIHK
	 5vqjU38ffSe0g==
Message-ID: <7b36e7a5-d54d-afa6-a647-72aa87d16e8b@collabora.com>
Date: Wed, 21 Sep 2022 10:13:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 08/18] phy: mediatek: hdmi: mt2701: use common helper to
 access registers
Content-Language: en-US
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Stanley Chu <stanley.chu@mediatek.com>
References: <20220920090038.15133-1-chunfeng.yun@mediatek.com>
 <20220920090038.15133-9-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220920090038.15133-9-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_011345_406407_670D3EAC 
X-CRM114-Status: UNSURE (   6.67  )
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

Il 20/09/22 11:00, Chunfeng Yun ha scritto:
> Use MediaTek phy's common helper to access registers, then we can remove
> hdmi's I/O helpers.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
