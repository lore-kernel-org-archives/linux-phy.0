Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF0C3C8300F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOkqkwRPEHsKof1RSp8whPx4ffPtuDRFF9rLe4Q8/vc=; b=0PqRtHO1AJ0LYX
	tqXbDszdKW5d2l8dqCeSfp5W15GUP7+zT/eLh+OCin9t3wl7WoNrNpQ31/soj2YG2dCqScawQr/r6
	8KtqEjrYxJ+Vu6N9nNGQpQoB1iGvTjK54areEkn9aNmT4uNLyxU8mIsKqn01Xk+wGaeB54kC7ILS9
	ySMS0ZnuQBt+AhMHMKbZH+HB8YZdZl5cY1c2SAmis1uZ4g3ZQaS5D+RFzP+IePPXzNeQsGMc4ZfyN
	LUVrDGdCnnrvWS0sdUt4Q459VdVOXpyE2Q9cm5ja3Vdk99yir+JHRqkKrE2m6Sk+F1o3T1ABj0eaL
	DzxQj9w2ngsNJYT1VsTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxNk-0000000DGCS-1lsS;
	Fri, 27 Jun 2025 00:55:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUxFF-0000000DEYw-19nM
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 00:47:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CE86E5C6A3E;
	Fri, 27 Jun 2025 00:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66B1EC4CEF0;
	Fri, 27 Jun 2025 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985228;
	bh=N6BtiYtAE91IjBviDHOKuD3lvCAmE+hW+1yotu7D/9g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=h+HcB2Y3aEPv5xWqHZTcTioJJpF+LEjGSG2p45BLGMVfee5HYtBrACShOt8LDtDAW
	 eG/scDecAw78231X0JNk3lktihknlZBwq1I8lOVueVb7gNjm+1pvPq+zzYq3nBugTK
	 awtCgU5rmsE6CHdBv4la7Tyxe/GQxrlI6jPurORwl9fkZYCvLQZYC5jLMd3tH9Kk2v
	 TfsysL8odTD389uqTpfmi2PXxmEYhj+PDw9mRzg6X6lOgU1aJEyrr3MM7r7Me3si5X
	 Q+gPWA5JyBuSsdKUgNp2z9EfgdqZwkuQ5gVrGpxA0/AXvyg4bCC+UdJR8SUDtx+tq2
	 E5hQmMmxVyYkw==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Melody Olvera <melody.olvera@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250617080401.11147-1-johan+linaro@kernel.org>
References: <20250617080401.11147-1-johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom: m31-eusb2: drop registration printk
Message-Id: <175098522832.106297.6161787629116315639.b4-ty@kernel.org>
Date: Thu, 26 Jun 2025 17:47:08 -0700
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_174709_360164_2DEB93AF 
X-CRM114-Status: UNSURE (   4.27  )
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


On Tue, 17 Jun 2025 10:04:01 +0200, Johan Hovold wrote:
> Drivers should generally be quiet on successful probe so drop the
> registration printk from the recently added M31 EUSB2 driver.
> 
> 

Applied, thanks!

[1/1] phy: qcom: m31-eusb2: drop registration printk
      commit: 2bff9083c1744dc8751ddc0844a65e3bee89f519

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
