Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50B86ECAAD3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 06:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WaQjBdjMoHS+7p0o/iCNoI9DRlAR4gtiHlrA9HRsPE=; b=heF1//hZ8IbNom
	6+umZWNtgQl29C+iV4IARPoCxE6lWtXqVrSOdz75PXzFvJpa0TitPy08CtHwNjsK0skXMoMbFLvjO
	L6/2Q2JM0K1l3O7tQ/XVUwspKNfBGKPg+Wa9nHLGWBJNU9hdpvKs+YfYR0m5tQUCDT6IdV0q8rOla
	IgXjXJQ0rqcbU8OfmIJpp1x8QG0K4b3VwLijQwSsP9SF8K1pZJIb93aYK6VcXnAjAxgJXFmuy/cQA
	s3ivE2SeIQ0tGi9pufkwpUzYcHyzg9JTFF3QqTHt+KEGcrb485QoUxE7dm/VVgvknkra68bRvjayN
	bYT81BWCVtRDJsG8ZqXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYMCT-008uSU-OF; Wed, 14 Sep 2022 06:48:45 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYMCR-008uQW-7f
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 06:48:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BA4CAB815C3;
	Wed, 14 Sep 2022 06:48:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BB5AC433D6;
	Wed, 14 Sep 2022 06:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663138120;
	bh=e/RiAwC60v7qXBvmpwe09GemDUBtLQTXY1Qpe8RuHhg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B6pYCs5EZJSCT4I8r0325I8QPVckkHKxR5UNb1RcdhI5VmOrPF6/7hPTrpSoeuY+Z
	 o5WPHIce0bGsRiFT93UI8P5cqquxb6qMhVQoc8bcAmKk7EDuAstiHllm2WCAX/Fj78
	 vgb+6x3CeXb8LnjYjn4KE/Rqn6cvIDdMHCf73XZUPEfFz4hSwFAzkuXAtXnG4QmWs8
	 d0z8wRAj+64cl2o43kec6bSO/A7iaVzI2sQZdTlnVMM4Uxd5l179XdSq/Ez2Au38lM
	 BMnDdSRN3l69TPCstRotorWmO8Ib/9xfb26YSTdZSjxuyRLmLBOvnVnqHXaIyfrB5m
	 BAvUe/2TblRFg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oYMCO-00038b-6y; Wed, 14 Sep 2022 08:48:40 +0200
Date: Wed, 14 Sep 2022 08:48:40 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 0/9] PCI: qcom: Support using the same PHY for both RC
 and EP
Message-ID: <YyF5SJASdCJWcPaX@hovoldconsulting.com>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_234843_594859_2CD5EE8D 
X-CRM114-Status: GOOD (  21.26  )
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

On Fri, Sep 09, 2022 at 12:14:24PM +0300, Dmitry Baryshkov wrote:
> Programming of QMP PCIe PHYs slightly differs between RC and EP modes.
> 
> Currently both qcom and qcom-ep PCIe controllers setup the PHY in the
> default mode, making it impossible to select at runtime whether the PHY
> should be running in RC or in EP modes. Usually this is not an issue,
> since for most devices only the RC mode is used. Some devices (SDX55)
> currently support only the EP mode without supporting the RC mode (at
> this moment).
> 
> Nevertheless some of the Qualcomm platforms (e.g. the aforementioned
> SDX55) would still benefit from being able to switch between RC and EP
> depending on the driver being used. While it is possible to use
> different compat strings for the PHY depending on the mode, it seems
> like an incorrect approach, since the PHY doesn't differ between
> usecases. It's the PCIe controller, who should decide how to configure
> the PHY.
> 
> This patch series implements the ability to select between RC and EP
> modes, by allowing the PCIe QMP PHY driver to switch between
> programming tables.
> 
> Unlike previous iterations, this series brings in the dependecy from
> PCI parts onto the first patch. Merging of PHY and PCI parts should be
> coordinated by the maintainers (e.g. by putting the first patch into the
> immutable branch).
> 
> Changes since v2:
> - Added PHY_SUBMODE_PCIE_RC/EP defines (Vinod),
> - Changed `primary' table name to `main', added extra comments
>   describing that `secondary' are the additional tables, not required in
>   most of the cases (following the suggestion by Johan to rename
>   `primary' table),

This wasn't really what I suggested. "main" is in itself is no more
understandable than "primary".

Please take another look at:

	https://lore.kernel.org/all/Yw2+aVbqBfMSUcWq@hovoldconsulting.com/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
