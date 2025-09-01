Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE43CA1002
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 23:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K2+2V4/iDsbWVsNQ991MTRPomQkqLvxe+vcxb+k9fQ=; b=1qmp05DWWhiwZS
	FmnGChsOJ+hXXu/gtETjAXubB/Q2tI8SEb58btpRNPOn1uY/kW035NYwaPH54h4yiHuiwFEgflTw7
	4wAZ17xFPJ+htZQn/n9Utl6SRUdHqfCNM55fHQGsZjaH+fnE0PfWi3lQAUAlqsdp9182b1mGX9lfX
	OLLjSpuNlL48cFjvmRH59qlfvKSKrB2uKFeoVeBjkNQzqSrxyo8Y41eOn7onXC1kBK2HmdYk2V+Bq
	tAlTq96nNUnx2qP/pTIGuiVpvovZwDovPNsw/NDoHLIKjHgeKR0L6r/dI+wm9tgaK4qmysZImJotm
	BreuWBuy38kKJRtVbSug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDiI-0000000EFyq-20TT;
	Mon, 01 Sep 2025 23:13:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut80u-0000000DPPt-049R
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 17:08:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 72CD7601EC;
	Mon,  1 Sep 2025 17:08:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5311AC4CEF1;
	Mon,  1 Sep 2025 17:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756746495;
	bh=MiVG4h/2NVBHx9BEN5kPBdeZYBqJXTdPTqvwP13klQM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=og6gHGt/xEbqzBNs1VQk1T42/jrGlpFRKMToGNkBgJp0YOxEsfs3nKjF8kCJ2npzT
	 eie7izspfEMD3oQreiqFUfuyfpAoehlZF00kh+oH2gcM7UooMTuzPWF5VTLd2Bo7i8
	 Oqm8+ChP576ayRF7I1t7uoLOvEQ7MVzAvi1JuT/xzYetD3nTafKSIDZuN0BCG38rJL
	 kT4YVzsro5jkY0S6kjL1CsB0FGnDptlll6gkBAVnub+DUh+vxVbw+6BFYTWPKULd3F
	 EEfZcYDaM0CQGWSJxQe3jRl1f9bjzNkg+jYiKRp+RLvVBo3m1W+V2KizILZ7CdSS8w
	 5xMCFN7oKxBWQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Prashanth K <prashanth.k@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250826105254.3758803-1-prashanth.k@oss.qualcomm.com>
References: <20250826105254.3758803-1-prashanth.k@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: m31-eusb2: Fix the error log while enabling
 clock
Message-Id: <175674649286.186496.15257522918572986509.b4-ty@kernel.org>
Date: Mon, 01 Sep 2025 22:38:12 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 26 Aug 2025 16:22:54 +0530, Prashanth K wrote:
> While enabling clock, we incorrectly log 'ref clk' as 'cfg ahb clk'
> Fix this since the devicetree bindings mentions it as ref clock.
> 
> 

Applied, thanks!

[1/1] phy: qcom: m31-eusb2: Fix the error log while enabling clock
      commit: 616fe247bdce4e3a23e3ded4b3be951001ed8039

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
