Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A664C6FD1D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 07:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8azCD/EZcoRFIt13FrnWPlNEmFtyxyn3iU0q8aLNQ1c=; b=4RGgeDvmxQTnYq
	aBzwDJi3rbMBi/C3bFU0gLdvvrsgEmpi63hh/pRmSoOugffJxENv3HgYmQ0y3x1xBavbPSjL2MhaE
	Ppon2CIEt60cjG9+ywMilrnhmiM0HJs0IFl+giWn8WTlPcHyeF0uQ9UZSvmJeTqIKgHd6JdTc8JiR
	GsunouJcz1oLH6dzDZIE8sOQSP/mtQGxhhVEjW35IVngPMV9PchExz1J+KVv0ywMo2yAIsU19QuH4
	BOKC8YQHWK3cz2DdOXE5Coe5BS78xhf9XHP1ymJHuwMBfVv+V2s3metVy5u3ZO2n2V5GDy58olnnX
	FZ9bguXSHIXc+U3+zjMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe9wA-008IvA-0W;
	Mon, 20 Mar 2023 07:28:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe9w6-008Itt-2C;
	Mon, 20 Mar 2023 07:28:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0DCDF611E0;
	Mon, 20 Mar 2023 07:28:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88523C433EF;
	Mon, 20 Mar 2023 07:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679297279;
	bh=QDq3psYYPI1XmtNVdVpK0cyJmaeS12aYbyEfukWS36E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BotSU8JsYWZMkmed2Eyx1uRwkR5NlQK8ZiLMYnKAI5Tl8y7sozsS7QFjZ1IOxSC7L
	 NCqkNUl+7DA99rMmM2BEjYhbuq0j5DJOQmJFbDkkm2Kl3DBQxEpsuJwqIwPLVMWHEf
	 TVyjAV4GLBQ1cOlQjsWvUp2gzmr1yZsdkjCSl2oLFmHLo2CD6Wmc3SyuWwJwfXahMj
	 4DAK09jpF/Wvpr7iPhEI+RXkVWxdNondkbhZX45vCWRANdiDrFl0/i2Q5R0J3LoOmy
	 hxB0aSI29OtWlZLkIMHAe5FqwuO2cOdnu2UmN+sUA5YsXsxOA90TQ0Nixcg1qb7/Kt
	 /0Irh87lLmYsA==
Date: Mon, 20 Mar 2023 12:57:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: rashmi.a@intel.com
Cc: ulf.hansson@linaro.org, michal.simek@xilinx.com, p.zabel@pengutronix.de,
	linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kishon@kernel.org, yuancan@huawei.com,
	andriy.shevchenko@linux.intel.com, linux-phy@lists.infradead.org,
	mgross@linux.intel.com, kris.pan@linux.intel.com,
	adrian.hunter@intel.com, mahesh.r.vaidya@intel.com,
	nandhini.srikandan@intel.com, vasavi.v.itha@intel.com,
	kenchappa.demakkanavar@intel.com, furong.zhou@intel.com,
	mallikarjunappa.sangannavar@intel.com
Subject: Re: [PATCH v2 3/4] phy: intel: Remove Thunder Bay eMMC PHY support
Message-ID: <ZBgK+pd9hfaRFk4S@matsya>
References: <20230316120549.21486-1-rashmi.a@intel.com>
 <20230316120549.21486-4-rashmi.a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230316120549.21486-4-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_002806_776432_FEB61BA1 
X-CRM114-Status: UNSURE (   6.57  )
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

On 16-03-23, 17:35, rashmi.a@intel.com wrote:
> From: "A, Rashmi" <rashmi.a@intel.com>
> 
> Remove Thunder Bay specific code as the product got cancelled
> and there are no end customers or users.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
