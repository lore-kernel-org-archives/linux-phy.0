Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29AF7CA0EF7
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 19:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=svIOfNoyJ4JUdSaCc/X2SrOpwvD35htJkCV9uZPjfC0=; b=N7KDEuDTw/fnXk
	mUzMkU6mQaVE/o/gpupRKeFmoFk0tLnZVnTq4UrLIddJsv7qPmGn2TJejY30U7ep4MYUcn/KHqTjZ
	xWipSpkYSP5K8DA7MeZy1djWT3pgDBDhMtBscJg+JxDiolqJz0JaN0FC6GxLjrtxRvYQksz302Uv4
	20uxhrhmRLOUT29dCybTIA0ba4A3++wNGM5cflXoikeBNEf4AZBDdvOL9o9PmLS9sX69OGXYOpxKl
	Mou8FwWf+92zDXMxDzX1laYjMRc3UqFN/DLXVdnCjdND62+2ZeychyaRLgHZxwE80orR9d8ChnN/M
	TgWlyO9W0YCjSp0JhroQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRuz-0000000BOYs-3NaM;
	Tue, 19 Aug 2025 19:22:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoNvx-0000000Aqdo-48pw;
	Tue, 19 Aug 2025 15:07:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AEA5C41B4E;
	Tue, 19 Aug 2025 15:07:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08798C2BC86;
	Tue, 19 Aug 2025 15:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755616049;
	bh=FWERPV2b/K8+f34kGRRaIibkqQthKRkjtRIcOO9bI5Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=mE+N92nbp+0JXiAfwUIvsTH3cdqCCtHHsNuHILfE2mK2nj9Hu6eIbPQAYGqMadNYQ
	 lE+BY04Cx6za6/mrYs/m3pr7JWmln6sXgeXvUZi9UP4Wj0RHKSxYZuMQKRWXb0RUTe
	 TQmGYIyAGtIBlvq1EfONtAE15fNiJ+sSdAy+dimAV901J6WuE592aAiuzvEeimJeLr
	 kZSiT12cx0D0uYSsObJj160WPnjKuyxpEKA57YcYffTu3t3VT7TxZ0ggDE6qFA8PuJ
	 4EXUpJ00lgf0jG+1Jkvz9DD70nYzymAm09Ch9bl5Cu15uowQic72B51sLb+htyhYz8
	 NAHjFR3vapv4g==
Date: Tue, 19 Aug 2025 10:07:27 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>
Cc: 'Krzysztof Kozlowski' <krzysztof.kozlowski@linaro.org>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, mani@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
	bhelgaas@google.com, jingoohan1@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, alim.akhtar@samsung.com, vkoul@kernel.org,
	kishon@kernel.org, arnd@arndb.de, m.szyprowski@samsung.com,
	jh80.chung@samsung.com, pankaj.dubey@samsung.com
Subject: Re: [PATCH v3 11/12] PCI: exynos: Add support for Tesla FSD SoC
Message-ID: <20250819150727.GA586493@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00b501dc10fd$f1fecc10$d5fc6430$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_080734_045306_C71E7F70 
X-CRM114-Status: GOOD (  14.48  )
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

On Tue, Aug 19, 2025 at 05:09:34PM +0530, Shradha Todi wrote:
> ...

> > Another question about the test:
> > 
> >   if ((val & FSD_IRQ_MSI_ENABLE) == FSD_IRQ_MSI_ENABLE) {
> > 
> > This assumes there are no other bits in FSD_IRQ2_STS that could be
> > set.  I would have expected a test like this:
> > 
> >   if (val & FSD_IRQ_MSI_ENABLE) {
> 
> Thanks for pointing this out. FSD_IRQ_MSI_ENABLE is a single-bit, so there
> is no functional difference in the two statements. I didn't have a specific
> reason for using "== FSD_IRQ_MSI_ENABLE".
> But I see that "val & FSD_IRQ_MSI_ENABLE" would have been the more
> standard way to write this. I will update this for clarity.

Oof, sorry, I don't know what I was thinking.  You're right, it's OK
as is.  But "val & FSD_IRQ_MSI_ENABLE" *is* shorter and more
idiomatic, so I think preferable anyway.

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
