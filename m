Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17D4ECD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7CWTpW/FhUOilu7YX2+PJxYfZAHXah+tSpfUh8d1t8=; b=1rUkiF+0GqYMf3
	9ZWKufKTknR1iMW45unWnSfaWxFjcU6G5bjuefQkyNSpNBuLi+8NRrhRlYNmA51kV+oxcd87J9LIK
	9GnoL9z/VnTtLSlgxrGv7RQhdE87iW3fDs7bD+0Q/oqjqacQlfrMq4ScGVW3GmXjVrnJoaMg2ao5M
	/tNIax5sTn0VjoI7JtAHpx8+vL1EsJxte+9tJeGkS5C633pCS5N0+JRDFnwwj9wuxb4ynUnrHZB/R
	BdR7Fg/bcigin8JFL1smXFhQM4LxdGvmIQaHiyhSA4C09RoiOMIR4IHdXGwA3d6uUKBe9LyeOvIv9
	+4YRgGYSbV2awzSuIsww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KT-0000000AicV-3TZI;
	Sun, 10 May 2026 12:32:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3KR-0000000Aibw-3jBA
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:32:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9BD6943CA8;
	Sun, 10 May 2026 12:32:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF274C2BCB8;
	Sun, 10 May 2026 12:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416335;
	bh=UuUOreEIGCslVe+CKSmlu63U/njoms5UEfXyNQelGxg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kBrlfkj7ccdBBzpK8sQ/a/PMk8Ss2CMrKGG+1Rtx7sN3bwVMR8rRiqXnes+9Y2BTJ
	 aNLfkwcxaKYePpvB8AobctmUMh8DeDyfhXaUdZZF7GwqQX7hJ0j1CRjN9vL9kQ+3BF
	 RLZkJDE8IfiVL9KiqfNFa4ozhs3WhzqzaqkPtsoDlQg7GSB1UBs+lXWzz9szD4cw88
	 bUAOpuYQ59MR35AWt8uTtZ07pA6EDho6v3WiZyTBDc9AloX9E8E7PT5dzmSD422GiX
	 HO+eFcnvoF7gwuag2tWtKpQrqHObpHZS2c6aOo6zziGGgCRxAcYpuudX9223qDArUG
	 MpXc2LL0fnDjg==
From: Vinod Koul <vkoul@kernel.org>
To: Biju <biju.das.au@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 linux-renesas-soc@vger.kernel.org, Pavel Machek <pavel@nabladev.com>
In-Reply-To: <20260319063211.5056-1-biju.das.jz@bp.renesas.com>
References: <20260319063211.5056-1-biju.das.jz@bp.renesas.com>
Subject: Re: [PATCH v2] phy: renesas: phy-rzg3e-usb3: Fix malformed
 MODULE_AUTHOR string
Message-Id: <177841633229.434434.9116344944235165418.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:02:12 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_053215_957036_32EBD298 
X-CRM114-Status: UNSURE (   4.59  )
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


On Thu, 19 Mar 2026 06:32:07 +0000, Biju wrote:
> Fix a malformed MODULE_AUTHOR macro in the RZ/G3E USB3.0 PHY driver where
> the author's name and opening angle bracket were missing, leaving only the
> email address with a stray closing >. Correct it to the standard Name
> <email> format.
> 
> 

Applied, thanks!

[1/1] phy: renesas: phy-rzg3e-usb3: Fix malformed MODULE_AUTHOR string
      commit: 53f60930e3d20883364fc01fd46b6099acb8127a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
