Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D3D0E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqCAF2aT84Jx96VZJgF23aP1WFBVo7L5bSuheksqMvM=; b=O4v8g9Q18+4hzp
	iecHtiTHXcXnbcW0JSr8I338RWWXG9NwO5n/B/Ls99wzrTBlctfK+Cao9RBEeuS2mgula1+J3pBHO
	BW4mjwTb4fLVJO+eUu/ltX9s9wTBr8SVROPGTjP1VJXdhAMIsobcUGvyX8x0/T/uG0ioWvBZVVU7H
	sxMYijQnzJ+afF8S16oM9fdmw9SElMT4/WLRKv3G1AW//CuDHH3CxQW+TT8Oyh6GAXV86wGidWURq
	B0mmumZ6Fckae0xnld+DfWPG3R+mJsYfph0mNUT3UD1dzy4Dlq224B4F6rwEp/757YCqssU6Ey+Ju
	+cRnOWPsesn8r3X+3qaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Me-0000000FqWA-35oS;
	Tue, 23 Dec 2025 17:40:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Mb-0000000FqUI-2TWs;
	Tue, 23 Dec 2025 17:40:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 22F0A42E23;
	Tue, 23 Dec 2025 17:40:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39F96C113D0;
	Tue, 23 Dec 2025 17:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511601;
	bh=mg+xr84GsG3acMHvsNiCgu+mhovC0ULkrlsg5Zc0wB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gnjDSgeDpiEOWDb0Q/UicZgdmWitjgbpqA77fEs4NCvPTov7e9DMj7XG3yTGE/oRD
	 CZzhhz3V2RlTMW7+G6ML23B0q0Zz4CV1MfDhzyhV8ncLMHn+ys3+V1xMjbgB6YUZvF
	 PIHBoR9SeHN0oBp1Ej7yv9uswRlcwNWAvT/Q4M9s2axotPD5dRzW5e3bgxAQJFgYq/
	 8OMFVId6FsiNJWamlE8wMRlnBmw0JTDQJ2Mszs4dShfOyJQr015/v/DcZemF64bwTK
	 1AgoFL1SPYlDQ7sR62eMK0ZNoiDMuJVwSoEABjDjUXWXMVYZWO0OlQAU7BDeTtAgVk
	 RnezgJuAWnqOQ==
Date: Tue, 23 Dec 2025 23:09:57 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Peter Wang <peter.wang@mediatek.com>,
	Stanley Jhu <chu.stanley@gmail.com>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Chaotian Jing <Chaotian.Jing@mediatek.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	kernel@collabora.com, linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 05/25] phy: mediatek: ufs: Add support for resets
Message-ID: <aUrT7R41XJk07Esf@vaman>
References: <20251218-mt8196-ufs-v4-0-ddec7a369dd2@collabora.com>
 <20251218-mt8196-ufs-v4-5-ddec7a369dd2@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251218-mt8196-ufs-v4-5-ddec7a369dd2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_094001_658348_AEBC1BB4 
X-CRM114-Status: GOOD (  12.90  )
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

On 18-12-25, 13:54, Nicolas Frattaroli wrote:
> The MediaTek UFS PHY supports PHY resets. Until now, they've been
> implemented in the UFS host driver. Since they were never documented in
> the UFS HCI node's DT bindings, and no mainline DT uses it, it's fine if
> it's moved to the correct location, which is the PHY driver.
> 
> Implement the MPHY reset logic in this driver and expose it through the
> phy subsystem's reset op. The reset itself is optional, as judging by
> other mainline devices that use this hardware, it's not required for the
> device to function.
> 
> If no reset is present, the reset op returns -EOPNOTSUPP, which means
> that the ufshci driver can detect it's present and not double sleep in
> its own reset function, where it will call the phy reset.

Acked-by: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
