Return-Path: <SRS0=Ugb/=KX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 884D7C4708C
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 08:30:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2CEB261278
	for <linux-phy@archiver.kernel.org>; Fri, 28 May 2021 08:30:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2CEB261278
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z+HlMKuu0hcLxMiDNcnHKSLs9YgWhMlHnE9PUgiPMcU=; b=m4zqW89PmHhe40AForVGb2l125
	a89g+ZjEvuiTAdYA5vc8ezvIoreVgrXIuKY5dJ+PUoc1jstfyzFJJDu59cRzAFbKqfG5hOfEAQxLn
	i4OVyonmOEDsyw08bgFwTptfQv7X3CuO998wzH7aDI9yLCGWyLHTzrvH1NjaZ3RkCdxCDdXVJlyDA
	0Bq+0dG9gKKz7fyr9wYhm1J12tLWl6j1E2JfSSlnz5vyGAkTzPnZ6cwrwIHzUga5Tmr/JZu4zS4j6
	00/nB+nqlJcgJuoPxJRc+BpOvV8eFZ1zW1yfYuerzAmI9UT5I/OQ2lpq+sGc2ttIeSylRfu580qfh
	sc/RoJaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmXsc-00DSTH-Dv; Fri, 28 May 2021 08:30:06 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmXsY-00DSOy-Mn
 for linux-phy@lists.infradead.org; Fri, 28 May 2021 08:30:04 +0000
Received: from [192.168.1.111] (91-157-208-71.elisa-laajakaista.fi
 [91.157.208.71])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1F66D8C7;
 Fri, 28 May 2021 10:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1622190600;
 bh=AU4smLRKI56chamFC/06ImQhk+wIOSduD/OW7VNLncE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=SZTktZ9Lml3BMvsaf43+G20gQyBnl1hPRCHCKdZ1yA67HkxVNG41b9kNVEdQqBzcf
 g+uVx7zed9vbJJOF5WBr9em6KBXaAQq8w92LQ5xffceGC9G6jF7NqZUnIMv8yjx66R
 Ap4YNuqLyf7nYmuaPvIC6Dqo7DXbka5b7MJjotOQ=
Subject: Re: [PATCH v2 12/18] media: Re-structure TI platform drivers
To: Pratyush Yadav <p.yadav@ti.com>, Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Benoit Parrot <bparrot@ti.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-13-p.yadav@ti.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Message-ID: <ab57c57f-d362-34a6-e740-b297769ee817@ideasonboard.com>
Date: Fri, 28 May 2021 11:29:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210526152308.16525-13-p.yadav@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_013002_949578_CAC3152D 
X-CRM114-Status: GOOD (  12.59  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 26/05/2021 18:23, Pratyush Yadav wrote:
> The ti-vpe/ sub-directory does not only contain the VPE-specific things.
> It also contains the CAL driver, which is a completely different
> subsystem. This is also not a good place to add new drivers for other TI
> platforms since they will all get mixed up.
> 
> Separate the VPE and CAL parts into different sub-directories and rename
> the ti-vpe/ sub-directory to ti/. This is now the place where new TI
> platform drivers can be added.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> Compile tested only. There should be no functional change.

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

  Tomi


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
