Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC1D0C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYzGrVl8/M1uXmajd3xVQOmN/EuD3TxbIwan4YOwovk=; b=F8IxPhneGS1hhL
	jkYuGafsEu6xzVi5CODLGQBhzohJUzTPLPDBOI1IDFU29dicuE+c3HTimDH1EXrJYZzUtnXGzFIaS
	BmUzU3yDmKFIctNtAKx0ZZibq4y2QG0fI6yoWlwpWYVXYsGONWIWBGlNQA6e/4Obud2NibnvXrXwO
	LLjLFX2k5I5FfsHV2SZ9MVkhpSZStMeaYCZbKDFYyygvbpYF8i7qBOHpUkV/KQI7yylz16QyZVPxb
	cLOyjdss9Eq/0i0GDhDmBs/QSXlPygOEsbHOv5OaTMwcxIZ1elJO4jJrMyk1LDWQwe5pT+foIvi4/
	k4NXd9KiB+ipZdgQlmig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXvH-000VWD-Em; Mon, 14 Nov 2022 11:46:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXua-000V3J-UN; Mon, 14 Nov 2022 11:46:02 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 31378660231C;
	Mon, 14 Nov 2022 11:45:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1668426359;
	bh=KufZqEZ+SlEiIGTUt+au2uJMKLj8mb+3i3r2WIRus4Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OZ8G9mX+5kDRQQu+g4frRyDgmSHwd+uOeLqn7IFjZ62pLBF1vFRzlQskySGvzY4uT
	 dSqfiZABQH+7ecQaAn3CvE0FzqcIfORv+YtkQGmqGx95QyCJHdl/Iv9Cb8YdJVqi9r
	 Mrnm+w5BHZy/RhlxTmtUzyg0LeQGBNjQQEQhzoWVpSbE5mfZMpJXvtZ9IqHn5TOArb
	 4SiDPaqrhAE8zf4WguQ9cg/W/uQOZCP30YKVCFP7/0spN9/+ulyHQQcA2Y23a6nspy
	 8Kuce28WxrZoOuzjMC7CeoAtbcGsRruONSWJ3vp1oHDFQCYz5k3sZx/o4k6gdIwOS7
	 nY3DTZwEUANGQ==
Message-ID: <93581a88-1227-9a88-db28-e5cfa472787f@collabora.com>
Date: Mon, 14 Nov 2022 12:45:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v4 07/11] arm64: dts: mt7986: add usb related device nodes
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Bo Jiao <Bo.Jiao@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Jianjun Wang <jianjun.wang@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Sam Shih <sam.shih@mediatek.com>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <20221112091518.7846-1-linux@fw-web.de>
 <20221112091518.7846-8-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221112091518.7846-8-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_034601_199610_8405736C 
X-CRM114-Status: UNSURE (   8.61  )
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

Il 12/11/22 10:15, Frank Wunderlich ha scritto:
> From: Sam Shih <sam.shih@mediatek.com>
> 
> This patch adds USB support for MT7986.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
