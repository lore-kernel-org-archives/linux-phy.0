Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65B4DCCA47C
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 11:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qtdCQNr51vZsmWQ9UNqAQI8V7Y2JTAesvVJOAlKVCg=; b=p92/2yQZWrkd+E
	cP3WqXWPRMECAz/4y9QX5hNYf3dzY0/KigWtHWb0R5MXF0saFmGD6/F6Kelklw8DafLEuHu74Myg3
	xOGr/Uf1twHnKbrvYZmQo0OXTS8NymSFJuMhBAjo/lESGC//j8bWrVulfHRZoLcNtTAheZpbnsFt9
	S8OnEoO5/RSjqI+MVAkXz8LargT5oIQMpcV2LsDNwwZOdUZTlwz4wQXe2nLGYP7l32UxjnxL7A1oc
	y0aJF40RxqhG6lkbOkU5FLWZbiSDp6Uv4Jkwe81em+rrv0JpLSZ/VViMz3mLiEsxx3uLadM9PXwr/
	OHznS4lTv4ix0XOZmWQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJbU-006dkn-MM; Fri, 15 Jul 2022 11:35:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJbD-006dd5-Tz
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 11:35:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6D7B462283;
	Fri, 15 Jul 2022 11:35:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59AEAC34115;
	Fri, 15 Jul 2022 11:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657884910;
	bh=pYI5okDc37msRqnfKIveqoUw4anLGHg/O2orcG5WOs8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hE7/5KV2bbmzxDhOPC6caMqNbd9vrUqJIV/n8xn4n8tKZMlSPs7RdYc4ftu3Abv8x
	 yh6nvKed9MsWqf9ijpgkvDHE7VL/Z6XRZrR81M/7dvYaMALqvgx+MnKMnnsl5QLWZ1
	 vFK1fA6f+uBNeZcefuIUzY0nIG54IscpPM4KTJxhbxV8HDSSvLf/K9mgWCcn37Fb9c
	 kJYk1geU1wBRh/SryJpd01dT4VOLUfKH174WLtbdPh5U22SIUt4vwd8QxZyNSWfT9k
	 ix4xLPqdlrB7tWod/Jd8/EVO+TJ4SeDzoD4kLBePAUmm6K93hPgd3RV0lerf9h6rmw
	 ndDKeXIuNLGuQ==
Date: Fri, 15 Jul 2022 17:05:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-pci@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org, Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 1/2] phy: samsung: phy-exynos-pcie: sanitize
 init/power_on callbacks
Message-ID: <YtFQ67MmloipjNzj@matsya>
References: <CGME20220628220437eucas1p2c478751458323f93a71050c4a949f12e@eucas1p2.samsung.com>
 <20220628220409.26545-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628220409.26545-1-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_043512_050864_6F5FD798 
X-CRM114-Status: GOOD (  10.70  )
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

On 29-06-22, 00:04, Marek Szyprowski wrote:
> The exynos-pcie driver called phy_power_on() and then phy_init() for some
> historical reasons. However the generic PHY framework assumes that the
> proper sequence is to call phy_init() first, then phy_power_on(). The
> operations done by both functions should be considered as one action and
> as such they are called by the exynos-pcie driver (without doing anything
> between them). The initialization is just a sequence of register writes,
> which cannot be altered, without breaking the hardware operation.
> 
> To match the generic PHY framework requirement, simply move all register
> writes to the phy_init()/phy_exit() and drop power_on()/power_off()
> callbacks. This way the driver will also work with the old (incorrect)
> PHY initialization call sequence.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
