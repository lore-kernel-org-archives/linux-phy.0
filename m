Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9DBBC05027
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 08:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWvY03yKNP9qTgA8QHOKVFBIZEehqa3EXxIKBKa9gNc=; b=uszkk703qA9n8Q
	aQaKFV4GYtf0jlOTWkaSeILWGAHN6tbzB5aPcCdJSd12UWLRddaKHRI5SktPfR1rcV8YoOwttKvMY
	xUBZ+OsDffZJGJqMVYrBUn4fGT6z5SZepYU1NowtOv4/69xC4r/ZMtA5oeA3Vc/JmLJX7WKXgzG9B
	yjRxeqdNn4jg0clR9mljSeJxIv8PEp3pMOQoaufd/sdtlaALbrDg6pQZIk7R+5Bn/0zyATvJOgxVZ
	yGrLcghTFa4L1835Eo0lhxYb0QY+6hf29S1VvE8uokJ47/EdqP5ruUIr4P03MeQWka/yETNKbMCx3
	zYvjr+ow7S1Tbb7bFFTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pImQK-008wWA-9U; Fri, 20 Jan 2023 08:06:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pImQ9-008wSw-0I; Fri, 20 Jan 2023 08:06:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 725C161E48;
	Fri, 20 Jan 2023 08:06:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04627C4339C;
	Fri, 20 Jan 2023 08:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674202000;
	bh=UiIWl1B5LiUi4QWU9j9MLDN5A3wG8pwgCFhO+/VTz5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eV82duGb2iVbYPyf0AeoQN8zV/TSECpo1KwtWHWHyFwc/G0u7ds3bXr4Gf1iaXQeW
	 Pwwm8fnvJGoBrj/QdnGlrIfCf0QHXJCoN8pdlM5u0+kC5R4gfMB1+gvH+Uf7e5VcxI
	 PpgA+S2NMZJoKa1IlJ7qHGY9iE/UO87bWRtgDysT3ajO7hI47onHI+5t5tL3a77ewS
	 utwllDInmkt7v2ObVNXNxYSnf2Rfo8FVFepensvD6wTfqd0CCQbKASP7YMWYcUNvDM
	 Anh4nz2sI09zSdiT2RBNZKM28fWrmL/ovniHJ40t+r4+UM9To1RXjxRy7uI8IVUUiK
	 veIQLzwAP4nmA==
Date: Fri, 20 Jan 2023 13:36:36 +0530
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
Message-ID: <Y8pLjLWjv0nJa+ww@matsya>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <0024c780-ff9c-a9d3-8773-28e6b21bcc43@seco.com>
 <Y8gkMlqfPZic7reK@matsya>
 <17e428ae-7789-a1ab-3ccd-90b3b9a088f1@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <17e428ae-7789-a1ab-3ccd-90b3b9a088f1@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_000645_121058_8D1BAE05 
X-CRM114-Status: GOOD (  19.31  )
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

On 19-01-23, 11:22, Sean Anderson wrote:
> On 1/18/23 11:54, Vinod Koul wrote:
> > On 17-01-23, 11:46, Sean Anderson wrote:
> >> 
> >> I noticed that this series is marked "changes requested" on patchwork.
> >> However, I have received only automated feedback. I have done my best
> >> effort to address feedback I have received on prior revisions. I would
> >> appreciate getting another round of review before resending this series.
> > 
> > Looking at the series, looks like kernel-bot sent some warnings on the
> > series so I was expecting an updated series for review
> > 
> 
> Generally, multiple reviewers will comment on a patch, even if another
> reviewer finds something which needs to be changed. This is a one-line
> fix, so I would appreciate getting more substantial feedback before
> respinning. Every time I send a new series I have to rebase and test on
> hardware. It's work that I would rather do when there is something to be
> gained.

I review to apply, if I can apply, I would typically skip this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
