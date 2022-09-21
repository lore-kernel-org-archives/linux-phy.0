Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66916C32771
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 08:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwTQF6Zu+aKEhM8o+IGRyThMVvF9w4P+nPYk73vXGU8=; b=aMStuqoPaBCLdU
	YqSqQ1kZzRaKboOJVq69bKmCunWXViu6K3RfN0KkIIbTMeLs+KqeBsl2Q5be6L1TAEsJYXOb2cW28
	dKR4JO5JDjij5UrXBwiND39OJqUYM293DSUtNQ7VNY15NnNc7RsrqN0+m2vkVCFXH/KkpVDo8iWH7
	TdI/JfxsQ30Xyx/dtvstvIS7ZTbdiq5Pk+Rl0tC/4do+rDBiDul+H8ojoq1FXJmoJy3ZiSiyp9Cps
	EPjq5DCu7SMa5JAhkeRrTDMlK4X2T7k1VBUkh3eXUpq0XyhNUXKN9skjeHjwNEYAeS44B2aqa8Hsj
	MzulV/n9ShOKm473zvlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauvg-009sR4-Or; Wed, 21 Sep 2022 08:18:00 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauro-009qSw-Mb; Wed, 21 Sep 2022 08:14:02 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D9C8D6602001;
	Wed, 21 Sep 2022 09:13:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663748039;
	bh=CDAAI6Co5oKSxmC/WU+ejDOCRrId2TgONMu4RgUgOmo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oKRkUvSl4Khxr9qUg2/q3r2mf/X+e9K6vcd5TCdwBAqCIZxGrIGRfaGqTQ4k/q8+r
	 Y0NmxS2Qkn2f+G4TuTpeRuNq5ZnmZKXKHS4Rc53pqWECBKUeSWWk8njLqmme1qhIIs
	 O4WI2ISbQ7p5fmlKi2f3nBNlEkperuFgqDBDGMcXCy8R4MhTT8jPN0qF9NQNW2n0EX
	 io56eWutI+xh8E4r6uXggCw9McG/z2ltTDONWjq2BmoGhGz/HsRrj45t3ikjUa2fJA
	 YPx4ND0iwOtvPEad0cZ7eGjUdPA1NAVdPG8Aw3U/9jHgg2imAOpFlfS+B59wp6zalE
	 Sjs8WIxuFRwEQ==
Message-ID: <898f4fff-a936-a228-6645-babbf4a11db0@collabora.com>
Date: Wed, 21 Sep 2022 10:13:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 10/18] phy: mediatek: hdmi: mt8173: use FIELD_PREP to
 prepare bits field
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
 <20220920090038.15133-11-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220920090038.15133-11-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_011400_877334_7A1B6E1F 
X-CRM114-Status: UNSURE (   6.78  )
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
> Use FIELD_PREP() macro to prepare bits field value, then no need define
> macros of bits offset.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
