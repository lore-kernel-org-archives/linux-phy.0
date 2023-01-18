Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D05EBC38159
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 16:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVPKZppNhcYL+QjZfHIu/CWli5v5O2lhQS7mQ9cfm4g=; b=py+5OZbSQinAdq
	7uJJM9AdM7CgPMXZCnOgtXoR4tHedyheC8Zkq7dfY7q5J9JUa9O3S8xSwc5dUqzDPysfZDoyUcOAK
	IFiFVYKkXsVuwLHWXOaofpouuCMMkjLfZbyV8DACxoKvWXQ2qrxLcrMmlf4nOJj1bkYGMRHs1Bjj0
	LVna/exbxA/y/URE5+6PqsuRm+OPTPZ96v2tynaTiKP2IBYx4vi7OY//iEQQMECjV4R5G2YyTUlB5
	NOYp2uPlmXAcbq8inM5G06OpW0G3yNGyocxCUqvrMhl2/HVGMpX/yF7Fbf3ScXsZo26mMpzJW7svN
	AqrEeeaXdJzMOlkb2e+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBhm-001uqO-6V; Wed, 18 Jan 2023 16:54:30 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBha-001ulz-L6; Wed, 18 Jan 2023 16:54:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DE4A0B81DD9;
	Wed, 18 Jan 2023 16:54:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B17FC433D2;
	Wed, 18 Jan 2023 16:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674060855;
	bh=RwHJvl4D5qmGQjZIXVYvEbuBvPMGq9xo3Uzk+iCGGwQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L3K0/E6ZEJodJAoNLwcLbc/rvJf+WG7swxtU45xi7fxpLgd37pJeeBz8ZDP49BOyX
	 ugB7XV3yn0792GxNeqf0B4Qb/IZr/oHxSsQt9HPpMSXoogsnjPDkI7DCG9Ja86XSu5
	 tvFnjPoy+9Xti51EaWOiw0Bq33f9Ww25cQZKhLmxSwR1Wgii7jRpw0lHB2ofkbHIy+
	 hvYQt/cRX6poxw7TLOFqy71oALwYz669q0DnD4lH4AAMZud9bEqv0bYP1nYqxSYrzX
	 VBhbIXu0TzIDnW1504zyEt/RIjVqhp7xxiN2l7te08f8riYzS3naP0cf8I4k13NCNm
	 dYFlSQkl5qOaA==
Date: Wed, 18 Jan 2023 22:24:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, Li Yang <leoyang.li@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v9 00/10] phy: Add support for Lynx 10G SerDes
Message-ID: <Y8gkMlqfPZic7reK@matsya>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <0024c780-ff9c-a9d3-8773-28e6b21bcc43@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0024c780-ff9c-a9d3-8773-28e6b21bcc43@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_085418_860790_FCCCED8C 
X-CRM114-Status: GOOD (  11.12  )
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

On 17-01-23, 11:46, Sean Anderson wrote:
> 
> I noticed that this series is marked "changes requested" on patchwork.
> However, I have received only automated feedback. I have done my best
> effort to address feedback I have received on prior revisions. I would
> appreciate getting another round of review before resending this series.

Looking at the series, looks like kernel-bot sent some warnings on the
series so I was expecting an updated series for review

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
