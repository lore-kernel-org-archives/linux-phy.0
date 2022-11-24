Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DE05C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 17:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZwG35aEXE8w0FZsK8qlw1gU7Gsi30hufSjvMiDzFUc=; b=KwtWW7Byysugfw
	vYdg2dvQjZx5E/a9WIHLQs2ZbuF+iYmNF3+0XMz+SXjt4tVNpyhXitgIeQSEb79cMjdQMw9nElWl5
	+koXLlKof0WYDPKpQr+OTjC6ECgkrVpAkgFYnebwwWM+MdTjR087sIdO+rjNnV46jok2zEzKV64K3
	x5r4erpWreocepY2aZCLTHZpgc//TKOCmwRquiLo9uG1RA9Pvkglvkytw/ORRPhVD8KMfBilQy+o6
	UgtTdic/C3Psk1Fa48/dXB3VEXj+mB1x+56Ip4bWIVGBBX2nUKODNTf3UO3D11Kwf+/nsec56eU3h
	lWHlMdEWrtIXZ200dQeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyFqo-00ANwW-JC; Thu, 24 Nov 2022 17:17:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyFqY-00ANi9-Aa
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 17:17:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9BE64B828AB;
	Thu, 24 Nov 2022 17:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A38E9C433C1;
	Thu, 24 Nov 2022 17:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669310227;
	bh=oM1lCY2AtwHhWiDcWFjnhs6KluI3q7j4bv/J/BZc8gU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h8G/EtNR7Ly5QXcjDVJkexX0atnW7HC8xrYJg/bBCDK/bzGIL7OdPYk9J2BAVqZSc
	 s6ZwSqApWX0NvvFA7EjQra0cje96QruJsX3Yv1MhBUAQ6npymRqM+i/EFW1UjBG7EU
	 VQ/E0vpAH1GMzDIywl1cMb0NvT6jtCKvUJVJ4LbcMAvW5/dFPgCIXoWoRjTS8n6REP
	 PyVrg0+zByM2dLBgouwumLI0CBsUcTcEtKJzpI43s09amAxG2+jI2CxKaFcMuUu5u6
	 b4BY24xqUWC/WH62Hv1LKcl8wJKcAYKrRFKoe0AorXy9GXKmyzvHq1f9rP0Gb7Is8c
	 gxcUvayCtm/MA==
Date: Thu, 24 Nov 2022 22:47:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/22] phy: qcom-qmp-combo: preparatory cleanups (set
 2/3)
Message-ID: <Y3+nDt6r0xN+PGbQ@matsya>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_091710_562888_36830217 
X-CRM114-Status: GOOD (  13.50  )
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

On 14-11-22, 12:05, Johan Hovold wrote:
> Here's a set of preparatory cleanups needed to fix the devicetree
> binding and add (proper) support for SC8280XP to the combo driver but
> that are otherwise self-contained.
> 
> The full series is over forty patches and I'll be posting these in three
> parts of which this is the second. In an effort to get all of these into
> 6.2, I'll also be submitting all three series before waiting for the
> previous ones to be applied.
> 
> This series specifically separates the USB and DP PHY ops
> implementations, and merges the USB and DP driver data and
> configurations.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
