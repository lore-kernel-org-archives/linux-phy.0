Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30F6ACA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 08:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOFzp0JUtr7Bs5QJ5dAWoiKnJd2Xl25GX+i9DAh39Cg=; b=Jwmn8ox2kZFqu1
	3sLkoGN3P68DmsLXPLmEvDbkGLVtzhScC6nDabUtHXOxxtyDhtdRocRHrLZEmDfPlOpREaNQvgCWM
	tQuJftzA7hEF8dp/h/mk4Z4jYpQZfHxHHq++gjSJFO3NDhoxl9iAEh9CM8WryVrpnTAzyGnTQRffs
	HbZX/bAsZj1t0KBumAcGyAWF1ItVAk95GpjRTy3Of37Q5CRq4Ca39gqCpJfsuXQCGNpQ6Z0uAonqE
	4phFlhFZ2KIQ6qkLbTMQG3CKfQPP3MTKGDLS/7g6D9O0fFw48RxWPJwsUYUmISeCJnrbo0UAKy/FS
	V73S9CYUv9ttCcMxgfHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvD8-0000000DBxi-2roo;
	Sat, 03 Oct 2026 08:35:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvD3-0000000DBw5-2mnB
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 08:35:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B6D80602C2;
	Sat,  3 Oct 2026 08:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A35261F0089B;
	Sat,  3 Oct 2026 08:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791016508;
	bh=lBO67bcGiEGT04UUyRyVUX4nE3vSBlDbTJbdu6o4Zuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hHWPseqd9u4y3f3VgiCLroU3CJUae/2Bo7P4mEOGKwbA+sjCHd6WdrA0uwpXFTuR5
	 ckkZa23ohTISQ1g5OwdnBRErKu1oRkjgHQLLTLmCueTAPBK6kktcVwlTfgImKFiLEJ
	 eIJvpcZXKcuRBEooYc0qBk7LJY8qszK6kNaQWQjn04cgYre+Ki5HDSN2/p23w5luq4
	 tI5TE5jF2IuaqPfv1sYHHRfQbi8r2hUHeMFHsN3wh69dF9UMx2DUgPgDtHSHhWW+zi
	 N4hBdrkrDM+LYOEuMkc/5GMkeMVm/76+ITvSvxdbgzaudgqswWCdLkufAnyxk90Yk3
	 E97guSWx+92fA==
Date: Sat, 3 Oct 2026 10:35:04 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] phy: renesas: rcar-gen2: three cleanups
Message-ID: <asC-OEN4KzmQjMvu@parshuram>
References: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
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

On 04-08-26, 23:24, Felix Gu wrote:

Please describe the changes and motivation in cover. Also this doesnt
apply for me, pls rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
