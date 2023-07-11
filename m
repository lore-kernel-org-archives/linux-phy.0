Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A708BC0015E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 09:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8S/sBQF1qfmpS1M3qwhnN+xuVR+ct2j2NiDi8JoVns=; b=ZYgDy8bRBOB11L
	POpVNwnW6nlnRBL9c8kr2bYja212QnDZ48BnlA9YWR1IKHF0AbqkXToYxBIv2RP8/ZR11ytxv8G40
	rszKhn0zyh5JzDJY1x7vbpVuyFgQx8+mgzEZRUL8HhCL2BQJErxldnREjmVkKoH4f3GND2nlk3mD5
	wqY7OWu8Rlr1UwwuN3sUsz3qJeZbIJNLbAGZgqX+QKXEZb7A3p80+L0ZcXEgeXUop5lZMYJfJVhHm
	4srgS6vyKLdAFQlFCcBFqQpsfFGQZrVMZqi8p0Tfcb4SgBGRLqlJWOdq3B6cCgjiRls6YDxhTDDqu
	YBJJB9PVwf7JhtroPrCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Zz-00EHBA-12;
	Tue, 11 Jul 2023 09:22:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9Zw-00EHAM-1I;
	Tue, 11 Jul 2023 09:22:41 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 72B56660700C;
	Tue, 11 Jul 2023 10:22:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689067358;
	bh=a9oLCnZxtGs0dkV9W5N8Cb0d/8qnym0UvYTivQ6JqIo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=c1ZtDu0eFmj+ZavM8x1eGIGQfAIVIDM2FnjpiRdMrlHKaolONcttaDRpkaePIJxvq
	 V2skv1yQCnlEhGPXdY0hNeDWO2kTKrPokFFpy64CruRnS9eJoJWSFE1KRS84laTKXQ
	 5k84Jntf6bR5lZ9UpTc7WmJKXTcoaVAB1xk80SNW/O6XEkh1J0VhKj3tJpleU2OZuD
	 WKChoYKf5Pc8WfIlJzJRQTM0RBuXZSSA+ikWsQiNg3qgl136LnWELV6hzCkvNRbKMN
	 r6Gh8Gv22Uj2iZpKitLfzq/XvHAvKuwK56+VBKZOHz9oLqgnnxHjtoiO1MD7w+jss3
	 E80P/8snG5xMg==
Message-ID: <5fdba6c8-d15a-126e-29d9-b6c5b33efcce@collabora.com>
Date: Tue, 11 Jul 2023 11:22:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] phy: phy-mtk-dp: Fix an error code in probe()
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>,
 Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bo-Chen Chen <rex-bc.chen@mediatek.com>,
 Guillaume Ranquet <granquet@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 kernel-janitors@vger.kernel.org
References: <3c699e00-2883-40d9-92c3-0da1dc38fdd4@moroto.mountain>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <3c699e00-2883-40d9-92c3-0da1dc38fdd4@moroto.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_022240_604972_5D6A3B65 
X-CRM114-Status: UNSURE (   6.86  )
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

Il 11/07/23 08:13, Dan Carpenter ha scritto:
> Negative -EINVAL was intended instead of positive EINVAL.
> 
> Fixes: 6a23afad443a ("phy: phy-mtk-dp: Add driver for DP phy")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
