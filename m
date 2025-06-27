Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA4EC7EE32
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cM/y+Ur/9Iz27qaxCc8J4JUfMmKPWz2vHjdUSRFBJYo=; b=p6sklBPLJH6jeC
	6vEipzEp2TLX1hAPXPhhj9bkA8N3SwV1WMV6S5LHdvxiyixEnss5qpS/QXAW8iYyuvxPETwzy9XH/
	othglJjwrVVknfYINlupS86V9BWcaGmIfxaONRzjB8QfA3svjTWl5XQ2EsPKbIM/XPEr5fp2B2N1l
	ir2K9F9fY50xTGkkQCP1GkvQuhMfmf4T3tbqUVkYjzrnw/AiOAmFWce9re0hSNm1+RkIWy/b3JVMg
	R6ACHi/Qx5VMJO15jLatXRyG1zqYklY7/Z846VP1Y81lBLUKc3fcW4mGaQOyS/uyKp/1qS4WHs3tN
	AZGw45B7OXITBvdy8iaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxNi-0000000DGAh-3nS5;
	Fri, 27 Jun 2025 00:55:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxFD-0000000DEXW-2p8L;
	Fri, 27 Jun 2025 00:47:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C0600613AB;
	Fri, 27 Jun 2025 00:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31F85C4CEF1;
	Fri, 27 Jun 2025 00:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985226;
	bh=ZtbMVXVDyJuNabjsn9GAikjD6kRMnBKFTKPjsU9bxic=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KwM3Zca87D8YC8RYnQQAXmO4P4WUhczmBEkE81x3UuHm++NNVBLHOMqOhZTcWnJkB
	 6/N4Ow5XOzeiL+XhAkIy8KJFCJiW8lbLVq5KCeBIo63s1p/EZSywspP6Jm203wzAwj
	 Kdy0tgCKybwASUAzaBA96uqmXCt9rEob3EXoeMvOPTw0DpALAOsqU2NA/6BiLfHVMm
	 tBwNOQSf7hs2VU+2F1iIx4AyCon+CDiMVpPN+sLRmNNKgVJSCurCjgIRSFi9eBDvt/
	 BruKzSvs3p3JPG7VL9Ei96/6WyYpJEPbLHj0v3VcgMF55yogREO0rXM6jBqHggx3xD
	 K4dPmIl7zQK0g==
From: Vinod Koul <vkoul@kernel.org>
To: chunfeng.yun@mediatek.com, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: kishon@kernel.org, matthias.bgg@gmail.com, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com
In-Reply-To: <20250623120315.109881-1-angelogioacchino.delregno@collabora.com>
References: <20250623120315.109881-1-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v1 0/2] MediaTek TPHY Cleanups
Message-Id: <175098522610.106297.547358788124214801.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 17:47:06 -0700
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 23 Jun 2025 14:03:13 +0200, AngeloGioacchino Del Regno wrote:
> While doing my usual round of cleanups, I've found some room for
> improvement in the MediaTek T-PHY driver. This series performs some
> cleanups on that.
> 
> AngeloGioacchino Del Regno (2):
>   phy: mediatek: tphy: Clarify and add kerneldoc to mtk_phy_pdata
>   phy: mediatek: tphy: Cleanup and document slew calibration
> 
> [...]

Applied, thanks!

[1/2] phy: mediatek: tphy: Clarify and add kerneldoc to mtk_phy_pdata
      commit: 9cc82c2498b4fac77fb2438080458e42c1d0d5cb
[2/2] phy: mediatek: tphy: Cleanup and document slew calibration
      commit: d6306fc5d77b7cbdf75a90159f58ebb84ae6f02a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
