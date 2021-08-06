Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3786EC4320A
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:01:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 02E5F611F0
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:01:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 02E5F611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCSbEOtyCBWRVImdANbby7fmc2r+GYRu1pQb4UgMtdI=; b=rIX0WxmDPehLKr
	0NfnIEyGa1a4OVtUYvM4Jzcg9MAkPSDiUQeFHzXVXktzIqqf/GCfVWeb47Rcui5RnTXMkmXsi6DHW
	eKqYyCtQuLllZoYHOxanNvE2Pd6m6QmqiwgnlKcZTQMT3Cr+GFbUBpQsKavL6i4pq7oS3ZvzeWxkz
	iMgcC/aiVf5kKaGapjSAYZ/LSF7heX5BYC0Hws0kvY6+L++D1ldo94v+xMIXeRPKJjBkhKNZWH1b2
	YjOPtbinMnvO2qGZg4TI6JPjCVvLPciATjdal6wAimSh6ELs3Vk8g34HwZ8rmzxupXYg/0ZMFdxv3
	fQfYtolfC4RCSJv2Ah9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mByXJ-00CPyl-AP; Fri, 06 Aug 2021 12:01:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mByXG-00CPwQ-Lx
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 12:01:11 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 28D5D604DB;
 Fri,  6 Aug 2021 12:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628251270;
 bh=5BhlZSX2NZg56dLWTABdzj0Dqu2NHsgabE/EzR4Ci0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OtP3lmmaiIQ7pPcNrWNozDkgsbdvzEkvb0904Qkm8yvUN4NhVbK9mwfYsFNU3t7Z3
 WRhaybOpyP6PxAkEfJ/ETLm9qP7qucoS1aF6jYyaeTGnnsGozI81+Eh5mwn/MODXgR
 WuKrgCflx+KLANkvKmggUELrEOo+ZWRS3bm3wKaLdTnfyrWgEe6mytkl5kHtlbYGoa
 2VRz0BdH1CGFXwZl7J+il6hAQIVLSYZFomfrPa+oTRSo+YGtcCY7MjECfCw8d+qON/
 Mal+sNmq9XF+QclNx14KclVxZ+w0yOBzqFHQyaaiDuQw9k5ZwzEkEpojjs+3sOpDEE
 T8rEG/IjB+2UA==
Date: Fri, 6 Aug 2021 17:31:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, tsbogend@alpha.franken.de,
 mturquette@baylibre.com, daniel.lezcano@linaro.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 5/9] phy: pistachio-usb: Depend on MIPS || COMPILE_TEST
Message-ID: <YQ0kgfzCFXoHKcsP@matsya>
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
 <20210723022543.4095-6-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210723022543.4095-6-jiaxun.yang@flygoat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_050110_775607_BA996F62 
X-CRM114-Status: UNSURE (   4.17  )
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

On 23-07-21, 10:25, Jiaxun Yang wrote:
> So it will be avilable for generic MIPS kernel.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
