Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70B07C54754
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjI8oyclaCS0K9nbqdWAzmUtAzujYyuRQntH7bEWH1Q=; b=GRZ4IrRCuFCh6J
	0oMw/FqozKSKis9flNiA8w6bjVZAdL5R2sNfEeBBSjaYmKdPiLrIyaGuim7OznOmSCGx9bZpDZqKb
	vcleGKr+x+h0I7HwctJKTWm/P635H47IE/e4PTr1yGqRGxLVY+tIWlazn1KsM/O+LlhiBJz1rnCXT
	oYYFQpnRlMVF8yfvB0Btqz4qsZCxqlm1zLCZvLcPXpUx++VkI67d3akC3MA//ylECIVObaDU/5XkG
	3/kXYB/16wTX0zU+awwGzEtPw9zYrtcfjyWGbr0cwDhjL3hEcxjRo5LgMTmM6UaRQmZDISOPd3mIX
	mHiaXbIbFLbVW/dwnr5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYS-0000000FI8A-0RUu;
	Wed, 14 May 2025 13:53:52 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAL6-0000000Eu0e-3IxC
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:31:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 25467A4C7E7;
	Wed, 14 May 2025 11:31:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C39ABC4CEF1;
	Wed, 14 May 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222315;
	bh=NzqA+eKHxUEF+PGJTwjMCdcX89RCrviZg/f/DP8l7OQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IsQsqm9+Cv6oUwM1UdOrUbglX8hxrEWScrCJE1BTLzJcqjvJhqwgZZKrpMNwzUhDV
	 j2IAAm2FJlMgsz0uET7tT1xGCbvxpwn+jhsVPBlkmax9y3ZoDI0qanBtlXccPE99nF
	 0bDb7xrqDSw1n8oHRwLeDPMIZ3cce9caD5HzZvSjqfPk8e5ka8JrA1zVkLdyZ5SkF/
	 cAZy+liB5kEtUgGWaN0Zp3h9KXMAwVvUVum05nlpl4TrQdFRX1WRya/BGuolGohjtj
	 O8GeLi8+2JA6QjEWxW1oJFOm8AjwvW1Fj3+DNEh87omuuBhgvq96jlIck3uBYGWpNE
	 uFyr5oajNQafg==
From: Vinod Koul <vkoul@kernel.org>
To: jckuo@nvidia.com, kishon@kernel.org, thierry.reding@gmail.com, 
 jonathanh@nvidia.com, Ma Ke <make24@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org, 
 stable@vger.kernel.org
In-Reply-To: <20250303072739.3874987-1-make24@iscas.ac.cn>
References: <20250303072739.3874987-1-make24@iscas.ac.cn>
Subject: Re: [PATCH v2 RESEND] phy: Fix error handling in
 tegra_xusb_port_init
Message-Id: <174722231344.74407.15426957064569052576.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:31:53 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043157_171021_0EC3C7F1 
X-CRM114-Status: UNSURE (   6.19  )
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


On Mon, 03 Mar 2025 15:27:39 +0800, Ma Ke wrote:
> If device_add() fails, do not use device_unregister() for error
> handling. device_unregister() consists two functions: device_del() and
> put_device(). device_unregister() should only be called after
> device_add() succeeded because device_del() undoes what device_add()
> does if successful. Change device_unregister() to put_device() call
> before returning from the function.
> 
> [...]

Applied, thanks!

[1/1] phy: Fix error handling in tegra_xusb_port_init
      commit: b2ea5f49580c0762d17d80d8083cb89bc3acf74f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
