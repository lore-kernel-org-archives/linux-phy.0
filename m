Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 202CDC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 10:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruJnBquC3nde3etdl8w1LdDtARQFFik2VEYkDAmu6/4=; b=k/9B/hVf4hk3Oo
	ApJQWj/Ed187YeMLYecAVn5qerRH+heog2WEaZl4JHUZrhOGYSruxVwYP8NzReR0lPJvnY2YQc+nL
	mW2NJS45JQHAqgLdFuQEH/wtHrRS3Lm7OnkZ2KByAH60DaWH/bW8VuFj85efNpJZkJP6Ly5JJ+xgI
	1m3PsCxadmTeiLQxkwm7BLY/F4eZ8tP0jmPtkaB0nF2qrOoA+H6pig5/ceeQDwDz3vyjL7/6TokVR
	E0qs7y1aumpfbiZydhNYMronmxO9sIaUpT6WkR2LY/xgiHfnQbe8jtuT1BEOQZHheEk5lJaYwM9jX
	haq28q50WoBB0GdxUyvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNYBh-004X3p-9E; Fri, 25 Feb 2022 10:51:01 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNYBX-004Wyx-0q
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 10:50:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6A762B82A45
 for <linux-phy@lists.infradead.org>; Fri, 25 Feb 2022 10:50:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1E5DC340E7;
 Fri, 25 Feb 2022 10:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1645786248;
 bh=CbQ+LfA7PG1v1Od4Fn1cASW1E8Nts89IHWvynziLAl0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GKVSb5gpVrQdcEE8mdEUQVT/xZHkO3iY4lF15pVQQJkxC3dDHxB+yw/Pwjoe+dUFf
 2am+tQcFajNIII1hmM2xcKvSnO+R5gmKSvdiuTXM2k1l4sJ/6roQWmuV4yX6mtCm6K
 WsCTiop6U3lD2c9ZQBYpIskVzRPqOHoqjR8pHD90=
Date: Fri, 25 Feb 2022 11:50:45 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 pali@kernel.org
Subject: Re: [PATCH phy v4 4/5] Revert "usb: host: xhci: mvebu: make USB 3.0
 PHY optional for Armada 3720"
Message-ID: <Yhi0hbom8djJt4ho@kroah.com>
References: <20220203214444.1508-1-kabel@kernel.org>
 <20220203214444.1508-5-kabel@kernel.org>
 <20220224161203.511df982@dellmb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220224161203.511df982@dellmb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_025051_269965_ADC81077 
X-CRM114-Status: UNSURE (   9.95  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Feb 24, 2022 at 04:12:03PM +0100, Marek Beh=FAn wrote:
> Dear Greg,
> =

> could you please send Ack for this patch?
> https://lore.kernel.org/linux-phy/20220203214444.1508-5-kabel@kernel.org/
> =

> It is a revert of another patch that was added because of potential
> problems in comphy driver, and these are now solved by this series, but
> Vinod says he can apply the USB patch but he needs your Ack.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
