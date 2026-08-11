Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92BB7C5CFCF
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 17:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlTiRD2pNelEG5JZ+S50dIN+bMsY/9FkQAm5K8GL434=; b=JvgWPKFfBk6k9U
	enwb5moiKosVxrmc6VrSwPY4WNqUc5wyRdhoaPKjhFlT4kQyel91uunBGKtDBNiXqN1sRNm6izX3J
	SivLRsyUhY+y3esoel7NyaWQNy7OrzbcwpfGSObci2hXOUjmjhNPfPYh3nziejzWipC2AKZHGl6Q5
	ifOc+WSDtSts0+q3AlNA69t5kleBkmBMIBwrubyLD3PA5bTZxI4ow4ac/SOMDRuAkHnR4lo+aUrcF
	3MM2MBz83iPPsaWnbcq7pjbjxJrXqQkHqjFTnwP6icAhPKuj0B5tcd1dZw8cQ4syzoqQtoqOMRuav
	P4ZSy+UlPHHpIxAAE8nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtptI-0000000EaWi-0wKe;
	Tue, 11 Aug 2026 17:03:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtptG-0000000EaVB-3zsG
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 17:03:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 582D3600C3;
	Tue, 11 Aug 2026 17:03:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98C741F00A3D;
	Tue, 11 Aug 2026 17:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786467830;
	bh=aY4nUAwPvrBUu5n+HSK57XjEd7bJAlx5TfcSKTAZrOY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ex7/24ToPugzJrKbhyYVfO1myIOjlynrw8K6VEIuTLE5GypKRSZLuEwsQZUSKOfUC
	 HPZFeDcuIxmIJ+ZFRLCj+F8y0JOZJPrdgXo5NAWQYXYqT32WBwUcwF/PkuOgnctpXK
	 HdzboRkE6KSVuWHE2Y0EOOZwrDQzLOs9h2WZByGi3ZcPmjqTlpqoUVowFQGUyXRvYE
	 fJmXcQZCu91WOnOnzC40qoO01090B+mttrwD4Wd+nGgL5+BTRWnG7CdLANme2hTct7
	 YXt7qSLiHYGf4nV1ZOPFmJ50jgOeehdJIvNqjeZ47XxaoQJ7xraf/OXZHtSmbKaeH3
	 WKq9VmOWZ7l6Q==
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260811143417.336664-1-mani@kernel.org>
References: <20260811143417.336664-1-mani@kernel.org>
Subject: Re: [PATCH] MAINTAINERS: Add Manivannan Sadhasivam as the Reviewer
 for Generic PHY Framework
Message-Id: <178646782817.1081354.18328639648384155955.b4-ty@kernel.org>
Date: Tue, 11 Aug 2026 22:33:48 +0530
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


On Tue, 11 Aug 2026 16:34:17 +0200, Manivannan Sadhasivam wrote:
> I'm volunteering to review the PHY patches. Hence, add myself as the
> Reviewer.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: Add Manivannan Sadhasivam as the Reviewer for Generic PHY Framework
      commit: ba8376e8c76c6512c98949dffbf4ded0b782a365

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
