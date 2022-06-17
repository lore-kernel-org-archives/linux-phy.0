Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 065CAC43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9unXzAGm4RJQCQVtSrYBXEqD94MwbmU//F1i2KrRZAs=; b=OAnczV9N1vlpj5
	Eyz/FWwKs1lkM4PiQo3g992ccGe4XJ72nT9icNVpgSCg4A1t+dSYthIo0X5eyS3i3N/tReJiJGqNs
	RlfDALqzJJ6WZzHY0fvRzX5ReS0uBTmQ+kgdhwN8Pra2jYz4TTt6XIhi2UoNuVmSNV+JNpDuQatRN
	OkZ3YTZ8vgypcXGXUx4umgdyxIRG1Xf0IMTLK83le3T4li0+pC25i3q7uAg+5YSJaDwmI3GIR5Lid
	1irwtc15CA4abfr6jpRpKw9AHsTNNjuutA307X30Vbby9SYsnqaFtAFAb/r2eW1Bs8YzMp1mQefFT
	bbvDQydCbL6VicnqeEpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o203y-004tql-Ab; Fri, 17 Jun 2022 00:42:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o203w-004tqQ-Hz
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 00:42:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EEA93619F1;
	Fri, 17 Jun 2022 00:42:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51544C34114;
	Fri, 17 Jun 2022 00:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655426531;
	bh=/+H3CqAWQnTcOrsHH9iU7Vvwsx/IawiHyKBRRlhRNBI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dRl3RvG382qDULYeHocragd9tn4WoMnHltJ5V6Lcq9pMqhgHPBeE6vsStnq5rRbE3
	 nUFOwhMKU5oxovKG+nqqsqsJLnewKLIq32zXmAQeQNnrKIf7gvUKDLynZi+qUIO/Y2
	 CjSZ0H2xr6Hq3Lg7nzxFYjBWpEfKy3ccvsY1IhDRS/lLX3Bi+8+E8kCmhUrFbbZR/n
	 u+nrFhrAAPMsG2lzxLRwURftQusgvWaYLwMltbs0mZzK/iVO8GbGASifad6X8iDf8B
	 8c0U2hCSQdEzveCqCM1QNLNo49bU1wmLQAPB3LzW/mU/hQQRMhDUojhHTqHNOb2I9N
	 uSvNoYP1qLscQ==
Date: Thu, 16 Jun 2022 17:42:10 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Stephan Gerhold <stephan@gerhold.net>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Ferry Toth <ftoth@exalondelft.nl>
Subject: Re: [PATCH v1 1/1] phy: ti: tusb1210: Don't check for write errors
 when powering on
Message-ID: <YqvN4nMvVNq7fW3V@matsya>
References: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_174212_673000_FF45497B 
X-CRM114-Status: UNSURE (   9.26  )
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

On 13-06-22, 19:08, Andy Shevchenko wrote:
> On some platforms, like Intel Merrifield, the writing values during power on
> may timeout:
> 
>    tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
>    phy phy-dwc3.0.auto.ulpi.0: phy poweron failed --> -110
>    dwc3 dwc3.0.auto: error -ETIMEDOUT: failed to initialize core
>    dwc3: probe of dwc3.0.auto failed with error -110
> 
> which effectively fails the probe of the USB controller.
> Drop the check as it was before the culprit commit (see Fixes tag).

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
