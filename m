Return-Path: <SRS0=vk77=MM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39B52C07E95
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 11:13:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3FB5611C1
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 11:13:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F3FB5611C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xpCm907GVQiTVaGOoEKJv7lt3pIIM54TphCLBh04Ig=; b=XooH1r/0/DHoRi
	N4QbI+Czwg+TpFhwuPlOthOie8QgIHSrtrxE40hgjqUYSx/Jo/Nam+YT7CH6ZwV602d3vn/69Yokt
	42QLp+fTvbRA8gweXGP+pULyEySuauSQRFtg2mDJvAKRA68F2j9z1rEViBb17aBxIiDfa8aS1dgPg
	dvKggefGHC89fu5ybA9mjtJtsPhdjkwY/AWnyufCHTMI05dzNGNmC2rrjPKki3W8N+QoqARjEO7zv
	vQ/GaWnswu3Kgn4p9gM/hC3CdAgYQ6kdPJZQzpqYkNwra25PQ31tRhroBNN9q0njDQWh9LYhLRyxm
	1V1fL6Eg5M4M5ZgHmcQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5ngw-00Cc9H-Gu; Tue, 20 Jul 2021 11:13:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5ngt-00Cc8n-1J
 for linux-phy@lists.infradead.org; Tue, 20 Jul 2021 11:13:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 30280611C1;
 Tue, 20 Jul 2021 11:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626779614;
 bh=fmBwW8Li4hgDrcThHoLLPiO1tGcbVR6ZLJpqVthqQYE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OfMryIwPyec+Hs0ektEufBDL0Z+epQHyk53UWGmS1Q/58aLxFLQZhe5Ytfpbnrh4E
 lOUaALMY4RCxGvknOERRxUprP9yKFGaz9ox7NdV1DJXe2lqmKNmFY9Gq9b87NjaMCa
 42y9t3Wz3q1ob0QIS8T74iZknB5V4G/0NbGcmLcDjXzJnUUkRSwXAYknWjB00+ZuxK
 DdnUZ4TQXjreh86GKbQjbmJquCH+40WRfNGaLJWKL1o7EDNSoTiBfngzeUg7l2q4kf
 UDozNiCDRaN2+RHFziFAlrdfmYMF4wdW91652O9Fch58XzixGgj9uMzm11bh0uq67v
 ZRSdqwsBobHSw==
Date: Tue, 20 Jul 2021 16:43:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chanho Park <chanho61.park@samsung.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 0/2] Support exynosautov9 ufs phy driver
Message-ID: <YPav26UGCp22sdUI@matsya>
References: <CGME20210709100037epcas2p4893e64c9007777d054b59b2688a9dba8@epcas2p4.samsung.com>
 <20210709094524.110193-1-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210709094524.110193-1-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_041335_152314_7BEDD42F 
X-CRM114-Status: UNSURE (   4.82  )
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

On 09-07-21, 18:45, Chanho Park wrote:
> This patchset introduces ExynosAuto v9 SoC ufs phy driver as Generic PHY
> driver framework. According to Krzysztof's suggestion, this patchset
> moves phy-exynos7-ufs header to c source file.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
