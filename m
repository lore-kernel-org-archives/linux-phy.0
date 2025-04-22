Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1492DC369C2
	for <linux-phy@archiver.kernel.org>; Tue, 22 Apr 2025 15:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCtwGJQLxpUc3MkiPkprGxiTH9mQ8QTLCLEu6NSETmM=; b=nVVLSeoSYvqBnV
	TZ3CeGytwZEVGoS8Hu7lQNBvHa/k4qY5logHiC4rL8vSeY+2ZnL6/UpcO77eDLUpMTiol+ETw1JFH
	NlJIEwDhm/VnRSGZskTrP8OwillfBB9TqrComoChi7gRgRwixOTQrJWbMm6VsK7yHSXjC6CayD0nN
	EvkQgskCvXk/0oTkFKNwbjEJDDFp9IFXAMnWfGzcfft1cPtwsWAiuSe4T3wb3sIMvtQS2muCswPfm
	7/NOl6mJb6n6m5OkhvupPsc7BdvKPcd8+jB/U6DPx9/DYiaBV5nGui2QZtEdhkM5OlLCInHTpDJ72
	YF6YT5a7KclzsHDLl/VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7FEf-00000007dYg-3Tpg;
	Tue, 22 Apr 2025 15:08:33 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Dik-00000007JHU-0wrR;
	Tue, 22 Apr 2025 13:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1745328688;
	bh=98ZMA9A7eTgc84XLiIx3MA/4NpSIvQu1Tg8uO3Qua7Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lyTjGYiLZqCn7nM3j6vvENWZxiZADq/uKrn+nuZkOsU1VBTbYnj/6teDYwkf8Uc/N
	 6zVI+WISUE14rtJaxr0o+JQV0gw8v1xXZ5fbl9XLUm2FsxyfjPy1ErpxjTrHXBG+3w
	 bzDUg8Dka3OJSSMYTUkiAHhRyCX0SAeHHKj8trdkdfx/iRwlLSLUqoEelCZyYj8ZO0
	 bDIv/ehtmTb412HJC6yEqdvF1w47mk3SFexJJ+Llv5iBU5bF0y3uWnQiLHpnog6okz
	 XsEjDLm9uZW9suL/M+L2mCi6yykocg3ZUiF0oSuzjuI4+sIYExilPUkvipBCc9alFT
	 U0e0Wtd4iZWhg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7E87B17E155C;
	Tue, 22 Apr 2025 15:31:27 +0200 (CEST)
Message-ID: <c9af209f-8cb0-4c98-af00-bf11a2451f19@collabora.com>
Date: Tue, 22 Apr 2025 15:31:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/8] dt-bindings: phy: mtk-xs-phy: support type switch
 by pericfg
To: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Daniel Golle <daniel@makrotopia.org>, Sean Wang <sean.wang@mediatek.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <20250422132438.15735-1-linux@fw-web.de>
 <20250422132438.15735-5-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250422132438.15735-5-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_063130_441201_4B7339CE 
X-CRM114-Status: UNSURE (   5.59  )
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

Il 22/04/25 15:24, Frank Wunderlich ha scritto:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add support for type switch by pericfg register between USB3/PCIe.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
