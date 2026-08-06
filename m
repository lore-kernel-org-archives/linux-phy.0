Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 686D9C56205
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CERErliy8GBy4Tzc6BxlL8Xs5P+VOaGWdVuV3x09p8U=; b=V+t/kDhEYImnhe
	MbgYFT5SfhPAdHmfTF4uSbzTfaLODw76nQQiNqqDix/dS36z2OULYIxkqGWuXfLA/JXEO06sk0Gms
	ZTiS5aI8IHjnryL3JjuypgyZ6JTQxbV7RXlj3uEvlsm+qt2zghrXqQGD7G3pYgluyRXf0eUX4adpt
	ofRKszAy1ksY+Gs7V+f87bfECskGXxJJoWuteuQcbF+i6bLTNXbgQKnapmZ6a6oUNS3apgKyPRnHW
	lE8BF6QCXg2YowiM2b11HqKfFOjhtZpTrNzev3XCMPXl0udX60iZONxtVtDfk4SegJh7Td5dxTLtZ
	9lxBMmZQix1GNlKK77gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vK-00000006Cn4-3ebF;
	Thu, 06 Aug 2026 16:26:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vJ-00000006Cme-212o
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:26:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2AB4A43DA5;
	Thu,  6 Aug 2026 16:26:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA6881F00A3A;
	Thu,  6 Aug 2026 16:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786033585;
	bh=hhiYScBrKlTTcqBuDww6OOpw5eUnNsDP/4rsblKpdrA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=mLqJ87rK9BZBPb51BmliB0sCFymD9X7a92ABxsTTGgePTP07ch5O8KWhR9iCo4YPl
	 3TLsnC8QsU8EgYIThWKyEHJiE9gGmi7rcIssNd6OR2LkzBczlq93nnc0z8OW9cS2kc
	 HgKB4O1TN1gtRkSFh16P68xRSAM0ssOjITDcrZJh3l3c/hCS/aJPj/S3/shDeEh6Sn
	 1xDNiSLghMnkIE7ryZBffth5T6AKxQHYU0caZXsnzFS1WzmJFXv9gE2YH4zWtJlaDB
	 awFOlvWsKtzXfoumz/nB6Wz4XcrGEgh4a8L2LeoTrNIjEwjtn2Xi69+CMA+NttJ6/E
	 hd8pNwC5mooQw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Felix Gu <ustc.gu@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260803-rcar-gen2-v1-1-9aa35c36d7d7@gmail.com>
References: <20260803-rcar-gen2-v1-1-9aa35c36d7d7@gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen2: Fix double of_node_put on phy
 creation failure
Message-Id: <178603358234.674490.1366685578663811310.b4-ty@kernel.org>
Date: Thu, 06 Aug 2026 21:56:22 +0530
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


On Mon, 03 Aug 2026 20:43:24 +0800, Felix Gu wrote:
> for_each_child_of_node_scoped() releases the node reference on scope
> exit, so the explicit of_node_put(np) in the devm_phy_create() error
> path drops it twice.
> 
> Drop the redundant of_node_put() and let the scoped cleanup handle it.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: renesas: rcar-gen2: Fix double of_node_put on phy creation failure
      commit: b780b8929c759cfa7a892d58625a5ad46cb1cbd2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
