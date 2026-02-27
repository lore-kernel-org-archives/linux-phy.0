Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D09FEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNxsCms8wUPLvKEceOpJrR6tvSAp3jzR/K7anNWkVbQ=; b=vGp3PotFKS7Y8z
	j4kLnu4vrw8pmT2Bga7grGQgrvVXlURMiSysfwRfodNhI+QKKBHIP/qAomXQkWhmi2r+JHiL4cyE5
	yGKX5c25aUgi+JvAVa9IwYQ+PGP89yBZHIvL+7sH7SAreCvXO4MrH8U8VkoabEOlyahy/EOwTj22X
	PqI6RhA8hfA9ER+5qJLr3wSNh9HNbzhO3KH31C+ZL4NLz/GRPjFikhYzarOwwNR1JoMemYaY2GaIe
	r6ZCJkWsz+sTGgeYFZIvNyUGvsxwE037O1n23z2ePEimIXd1ikmSIgn5tdWDPmVa21N8p4BiXBtEZ
	wJohx6tpUEbbKi04BSEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziV-00000008bpz-2bmO;
	Fri, 27 Feb 2026 15:25:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziS-00000008bpT-3AhJ
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:25:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A00C433E7;
	Fri, 27 Feb 2026 15:25:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAE6EC19423;
	Fri, 27 Feb 2026 15:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772205920;
	bh=Bc6ey6BciWe8j+lygwR6SguBwgrGyUpx6yTMtHUcUbE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=l2Ezk2ukU93E43oi9MedovJMkO/bLQpXeaZflfxaFo/grNAkasW3KLa+fa0z59eS2
	 3CHR6fWt/kxicq5sE5hW96qSYm7pft7zlPgYqV1VWpPvQMZCKzmxWgzM/xuHHOYf6p
	 PylMA9JDFQt5ai+okFgnO15XQyo7ReQimkAxatvrHyvGuyEJYpCi6r7lrn8el5h7yy
	 UmIC540PKKrNTzw9ulR4QQ0cOEBTiISuq+dR81hTZ20BB/K3iWsKUoe8z0qwJYbzPo
	 XQVYoJezVGvy9TcRTm8igqDCDo+I/w1OdTGZlqgv6aK8eikMf+14Ylj2YIYIMAicSe
	 LnBftPUjVy3yg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Nitin Rawat <nitin.rawat@oss.qualcomm.com>
In-Reply-To: <20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-v1-1-f136505b57f6@oss.qualcomm.com>
References: <20260219-phy-qcom-qmp-ufs-fix-sm8650-pcs-g4-table-v1-1-f136505b57f6@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4
Message-Id: <177220591758.320398.17176823670810946893.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:55:17 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072520_818938_21C798EA 
X-CRM114-Status: UNSURE (   7.63  )
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


On Thu, 19 Feb 2026 13:11:48 +0200, Abel Vesa wrote:
> According to internal documentation, on SM8650, when the PHY is configured
> in Gear 4, the QPHY_V6_PCS_UFS_PLL_CNTL register needs to have the same
> value as for Gear 5.
> 
> At the moment, there is no board that comes with a UFS 3.x device, so
> this issue doesn't show up, but with the new Eliza SoC, which uses the
> same init sequence as SM8650, on the MTP board, the link startup fails
> with the current Gear 4 PCS table.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4
      commit: 81af9e40e2e4e1aa95f09fb34811760be6742c58

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
