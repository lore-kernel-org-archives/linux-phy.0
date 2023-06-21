Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B353EB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 12:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dV1c9/4tVdlSyuwuqsIqb5RxFsUXeS9nnWiqhan/8Ew=; b=FJPu54bbc2v0PH
	fV1lCjGvQ0MNHYB1CKlYYmSwLBTcd9TZoSX2Glr4aW1okIfCenRR+/ND/EbNL9zA8oLgfq6tU9U9g
	OKWTE3XKzI83axLeWT65bTqm8tIkpUxPNGWP15m7qQ59ANskvHt0On/WtHDZRxsJ2/VqHQIG1LYBd
	fhWwndqUxO48e0E4C5OnhBxFfobWXqTfqOgu0DUx7QwZJol/W84USPuio4PVLVQjRk1pjRoma7jQa
	cO1tAIqthJdi1a6TRvA4q+RXZSF3hL60Tq0o8UwdA/kW8HChgQNPid/EfUUFKdpe4AVjqNvPar8RD
	M9uAMxdSbzZGzaPSoAQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwid-00EVC0-3D;
	Wed, 21 Jun 2023 12:13:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwib-00EVB1-1D
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 12:13:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A970761042;
	Wed, 21 Jun 2023 12:13:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81D45C433C8;
	Wed, 21 Jun 2023 12:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687349628;
	bh=x3fSTc2/vkr6/tGc6njkL4mjEVv6vSLRD3eG6SbE99I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ncUfTEk6Wf6/I7slfPmKrc8rW09PNEKrJIKT2Dje/l4R/3aVPoUihxv/tZnae8C4k
	 GR9ienYJysN/mC63wuiC2N3YBqsL8Z/eAVmvU/BWnGmvdZeJvxMYHERr3a/t4O2G8K
	 Jy0c/pYh37XqtUqFV7JNlScEiE9yhHSS8SOso6FghOzCwCo5iUUR1OmVmWye2s5G+q
	 oETR17uSP821prM+hPGNAKzpd2WIOcQhE4RQcoFm36wL2CB0fAatm48Al4rWnEyP9C
	 cGCLJK2QkThEEsSJhqgOhQYISHskBN7mdDd8GwPaXmbY2+B4SJkWzMFwoF1AMYhJK/
	 VfITYmRqYrQ2A==
Date: Wed, 21 Jun 2023 17:43:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Justin Chen <justin.chen@broadcom.com>
Cc: linux-phy@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com
Subject: Re: [PATCH 0/2] phy: usb: brcmstb bug fix and improvements
Message-ID: <ZJLpd+abgyalhipp@matsya>
References: <1686859578-45242-1-git-send-email-justin.chen@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1686859578-45242-1-git-send-email-justin.chen@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_051349_455388_B87EC0CA 
X-CRM114-Status: UNSURE (   5.51  )
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

On 15-06-23, 13:06, Justin Chen wrote:
> Work around false positive overcurrent condition due to HW bug.
> 
> Improvement power management.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
