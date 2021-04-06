Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 025F5C43460
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 05:01:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 929D1613B7
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 05:01:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 929D1613B7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6nCn/dX6RTPHwaHUhIO9LbZRZ5MB837gUlf1SVrQ3Lo=; b=Nzw0xBsUoP8z02oS4G5RiAkvO
	ePsFVva2II+to0M0mHywdZFOcFr3231AQ93fVSj1zwttfixBNvQoivczInY9dcvCrkPe8l1bnKF+z
	ABJmYdmR90EFL166qeZ9/P8knyyjTw8AKNANH3ie9aRd7Meu5cEYxMAnMQUb9m/cWMhIzp5GicgqC
	AA27xIkRMHUE8Q6UZCu6T+gO4GUgPy5YCDqxG3l745by5HXffeS5xX1rQMdUoJbPMd1q1Zlg8gODl
	op8AbFW8TxiwlnB5UZoUKjuZpQ351v2tuCiBNiUa1q2rF/90OT7ZEiTv2YDx4wPcocamy64cupePB
	F+nJSmaAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTdqW-001XBk-UW; Tue, 06 Apr 2021 05:01:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTdqS-001XB9-Qb
 for linux-phy@lists.infradead.org; Tue, 06 Apr 2021 05:01:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A8F861369;
 Tue,  6 Apr 2021 05:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617685300;
 bh=8WeA8BlYZbybMP4QgbVfLMXn2AECxnbfzOxQoXM6tPk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mqMq9hgGmOSoQ3/ueGbjFGTzsOEeuEcpMwJDCK1E4zpLXq11nEjQ7TGeppn1BgPaS
 IEhK9uga4CWLkA4YYwATl1Qq153ouTooBX/1kZXaAHpASHAMDeCBjA9P4WRyieMLBx
 kUkpydHhRoMEDYHnb1yrYD+yC8ALV6AzvK/WWHmbu+hjNRDNl1cO0iN2NEtB5Ei/S7
 cKGHX3nPcpKnhSVvQ96eQWgoDBGt5TndD+HKgwAh/tZC4PbbHvQac+Z1ufIyjM1EEG
 WJbwZeGgIiDS7AQPO4pfEsDmiE0kFPgtiBNyTC6FU4vhCtnZP0re4NM1hD1Cz2w1tT
 THwItXjHts7xQ==
Date: Tue, 6 Apr 2021 10:31:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Jon Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v9 09/13] phy: tegra: xusb: Add wake/sleepwalk for Tegra210
Message-ID: <YGvrMJ6FwwV3KOpt@vkoul-mobl.Dlink>
References: <20210325164057.793954-10-thierry.reding@gmail.com>
 <20210401110512.2743589-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401110512.2743589-1-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_060145_300605_9BE93323 
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

On 01-04-21, 13:05, Thierry Reding wrote:
> From: JC Kuo <jckuo@nvidia.com>
> 
> This commit implements Tegra210 XUSB PADCTL wake and sleepwalk
> routines. Sleepwalk logic is in PMC (always-on) hardware block.
> PMC driver provides managed access to the sleepwalk registers
> via regmap framework.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
