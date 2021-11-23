Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14042C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wz7vruZdrWLYTVnhX/DI47FfzZVfI0hIqIoUQ1oIUiM=; b=4EmTa0eBnAU3+k
	FVqo6vhUDruhIVWmjTj1vPkFCTghY7xakrHPnW+Q98ytMyh9sP4MP/MFiE/bUavGqFO+vY7K8P4xi
	f6pwm3o/9EihsDKTG7jgiTE21JNhdR5WdG7nWBxF4t/7CCjnsNSas+u7EaGiQiGyVy69YteofzOZg
	9FpzF3Cn258P+ihD4oxzip44mzItGVRJvmiA+vihwQAKvwPQ0ZYTUdXfNzpf/XkEIxFDNpGO3DvfQ
	MYVCQQXWfDOFmoCgaGnDKRd+RwuTts4RUjsNoGeULQaxbTJxMnb9Usen74P3C71WZ/+/10jxYKojw
	BCxCl1nPRgx3dJ+eMgMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpO6X-000p9t-H5; Tue, 23 Nov 2021 05:12:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpO6V-000p8x-6S
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 05:12:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 984C660187;
 Tue, 23 Nov 2021 05:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637644346;
 bh=IOi3LpYHRx+AqFlelm4zkAj9U2aMtP9t0FQcAPywn+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tzR368KGl1G3gWucr/5fTG+kd4RDR9xLo2ES2QH912nA7iHqmBcT/6EfS7PWeYwRN
 LSLjRDLQ+tr8wHy4WH7znt9+BKaxuGprIlj00m1rD0u53dTVKenKgVETSsmhEvbuaq
 RuLmdjHTl6y/N5PCRTjbNcXLD4wpsjKX3249WPlUDmpFDarAfgoRLsglh1ey1UV9KK
 xQuc3rtFixNgNSE/fRPgpdfVzCQVSQO8xAGwPnotEsbrm5nIILl1dLzKYmq7D0nKkT
 qLl/RR6JL1m8uKB+jCsudRqK9ZFomOzvq796/Kdd2lIVqmxra983SF4kHdqgF26UyS
 6hB5xDNJiTOqw==
Date: Tue, 23 Nov 2021 10:42:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 linux-phy@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix copy and paste bug in error handling
Message-ID: <YZx4NYCB7o9yYXkY@matsya>
References: <20211117074843.GE5237@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117074843.GE5237@kili>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_211227_283221_BEF32BA3 
X-CRM114-Status: UNSURE (   5.28  )
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

On 17-11-21, 10:48, Dan Carpenter wrote:
> This should check ">pmctrl" instead of "->sysctrl".  This bug could
> potentially lead to a crash if we dereference the error pointer.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
