Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E064CD37B2
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYi20nGmBityeKPvF+LVMhHxgNlXMwTERn3QaiR/ck8=; b=L6gmFCtndMbV71
	fqtPn3GcwZQJZah5k+UK9TtkFo9WMdaS5ttbz5wLbycdImCRT8TH4MDpMdHdXurR7Qzki+p1SXgkO
	+6WO4DkP4ecslgNPRytl1xS4y0ViJSF48TKPBjLhaMhewlFuKb3GT/J6RFBbt6qIxuHDgNPP4Bbf5
	+WljLnAuPMu8dj0vORw8pawZPXf6BVlWRrtDCVnBGaWRHD/eQTuOB/ZLefHUJRVmb6+L6Xf6+v/HF
	1uFoPe6iXsW2p9OkrbEmp/oQGi1/BFVRNMyoXD/rJPZH2an0EPxrPrFAXr+idouuQVTRTq4soDhcN
	vWRWwR6R0YCj37a+zGmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CU-0000000AhXq-3NmN;
	Sun, 10 May 2026 12:24:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CT-0000000AhXC-2992
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:24:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ED6D8600CB;
	Sun, 10 May 2026 12:24:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4679C2BCF7;
	Sun, 10 May 2026 12:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778415840;
	bh=OF0bdwHZTWHtT53CFWYE+70sFLEOSD5wicgsc/AwzXA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ghTlRgvV2ddxiknyGSCptfWCpYTUf/EZGhchugzOwJS6CTdjL4tzX/8EttbHiWd+r
	 qL9nzFY9UkWt32TxQM0ghl5VoRoVpWGFhYIHMQHeUYeuP3HebUcVzXsJWTdrD12iQd
	 NPvZsL/oxZh4eQENaLK+mpGILB5gxP7y7BnPCs0k3PZvgzGCzR1qdyh5Q3q4rIhKZC
	 0YKFwDMJ4F72G5d/FCN5vc4sFRseOXxnWR/zpxRX13MuacUQs9eo+ukG88WqOG3NOz
	 GV6urWxBW/3uoDiHSvydvRJGv0g6MPvmZ8T4SOvRBIAK/Jcr8XA5xJ/JIEpGyKZZdX
	 TKIPAylKR4SCQ==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Yulin Lu <luyulin@eswincomputing.com>
Cc: linmin@eswincomputing.com, ningyu@eswincomputing.com, 
 Dan Carpenter <error27@gmail.com>
In-Reply-To: <20260413070033.128-1-luyulin@eswincomputing.com>
References: <20260413070033.128-1-luyulin@eswincomputing.com>
Subject: Re: [PATCH v1] phy: eswin: Fix incorrect error check in probe()
Message-Id: <177841583822.420676.10517749667469698139.b4-ty@kernel.org>
Date: Sun, 10 May 2026 17:53:58 +0530
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


On Mon, 13 Apr 2026 15:00:33 +0800, Yulin Lu wrote:
> devm_ioremap() returns NULL on failure, not an ERR_PTR.
> Using IS_ERR() to check the return value is incorrect.
> 
> Fix this by checking for NULL and returning -ENOMEM.
> 
> 

Applied, thanks!

[1/1] phy: eswin: Fix incorrect error check in probe()
      commit: c2cd08e8f150738515c8df415ad7ecfa3d38124a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
