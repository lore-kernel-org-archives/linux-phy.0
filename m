Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63E70C636D7
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 05:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAlpFur3hhtI2DbmH/j6vVanixe6v9c16iZD0pNJ3Q4=; b=sxnPrnitNDsXvd
	Z2dzr3Xa8bKV1S5hgDi441q2bqclNh2XJxniaV7hcPQ73ZG1PiYLFZa6TcJtvklnPC7CTlDLLLYFv
	8QDu8NkSIOFP4qimC7DjObLMWPMstXup3XHbxIHoGTtLNLr7CrQXjKi610WG3B3K/yxyd6utnwG75
	dQoAtS1HLB5n1qWrz3CGtXxJ6mrn9PFEVLicPu0xlyWfPg6C8oXQXnkw9uqB1rKthpN/nhLXdN0lw
	knnzGunf6p5rH3ea4h2tE3VgBj8KKqgFsiEpVB0F1nDAe7F8oM/x8BiZNYwaci9FGQt+1s9NzRRm1
	3Yt6dZtYxNU0MpTzNPlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRRDJ-00DDUJ-IH; Mon, 13 Feb 2023 05:17:17 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRRDF-00DDTE-Ph
	for linux-phy@lists.infradead.org; Mon, 13 Feb 2023 05:17:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 806E9B80D1A;
	Mon, 13 Feb 2023 05:17:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3192C433EF;
	Mon, 13 Feb 2023 05:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676265430;
	bh=C35ZgTNa7NZq55JXZvoSKUzjj0qD+wPirGH0nmgNqkU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oB3ohZoWH6olf6B1ox51EvqwJ7/PpPuHaa67aaALXFRGk1lt7DsjVlgCudlBxMl6z
	 4eswtnKcKSYe4NOPPWZFhNoBj0zpVnd3wPzvK9W9MxHeSv2TwL68NB9GnGLe1k9DBD
	 RgGR2uxePXwH4uuww5b6oysXKn928RHkuvwyoJbSUJk70Vo6ASqFZn+Fhw8hmWZLMz
	 5smWggEeZ0X1Fbe6XjdjZSpcm3N9tb6IQTpaLnpCsmeDZMQyXk/T/ewUCIc3J6c0Aq
	 Cgwv7QdwEGw0ftVmtzwDYewnDNAG4EHe7/yHWn+prYt/Oh+glvC8nCB14RkIk+wf0z
	 udlJ2Ltq8iXgw==
Date: Mon, 13 Feb 2023 10:47:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>,
	kernel test robot <lkp@intel.com>,
	Linux Phy <linux-phy@lists.infradead.org>
Subject: Re: linux-next: build failure after merge of the phy-next tree
Message-ID: <Y+nH0enRX0OO4UtQ@matsya>
References: <20230213135521.6ebc410b@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230213135521.6ebc410b@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230212_211714_156885_42E923F0 
X-CRM114-Status: GOOD (  17.84  )
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

On 13-02-23, 13:55, Stephen Rothwell wrote:
> Hi all,
> 
> After merging the phy-next tree, today's linux-next build (x86_64
> allmodconfig) failed like this:
> 
> drivers/phy/qualcomm/phy-qcom-snps-eusb2.c: In function 'qcom_snps_eusb2_hsphy_write_mask':
> drivers/phy/qualcomm/phy-qcom-snps-eusb2.c:147:15: error: implicit declaration of function 'readl_relaxed' [-Werror=implicit-function-declaration]
>   147 |         reg = readl_relaxed(base + offset);
>       |               ^~~~~~~~~~~~~
> drivers/phy/qualcomm/phy-qcom-snps-eusb2.c:150:9: error: implicit declaration of function 'writel_relaxed' [-Werror=implicit-function-declaration]
>   150 |         writel_relaxed(reg, base + offset);
>       |         ^~~~~~~~~~~~~~
> drivers/phy/qualcomm/phy-qcom-snps-eusb2.c: In function 'qcom_eusb2_default_parameters':
> drivers/phy/qualcomm/phy-qcom-snps-eusb2.c:161:42: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]
>   161 |                                          FIELD_PREP(PHY_CFG_TX_PREEMP_TUNE_MASK, 0));
>       |                                          ^~~~~~~~~~
> cc1: all warnings being treated as errors
> 
> Caused by commit
> 
>   80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")

Thanks Stephen for the report, I have fixed it up by adding the missing
headers:

-- >8 --

From: Vinod Koul <vkoul@kernel.org>
Date: Mon, 13 Feb 2023 10:39:26 +0530
Subject: [PATCH] phy: qcom: snps-eusb2: Add missing headers

The driver was missing to include couple of headers explictly which
causes build to fail on other archs

Fix this by adding bitfield.h and iopoll.h explictly

Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
index 40a421cf3dd9..64e835b7ef53 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
@@ -3,8 +3,10 @@
  * Copyright (c) 2023, Linaro Limited
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/iopoll.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
-- 
2.39.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
