Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB5FC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 05:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E31wsfiwrceFoYvChrWzwsRd4XBjuboP76s0TyAnp2g=; b=NiThhKd7bP0lw8
	PIC/Paz2wUtO11fq/z62ttYMashYNRKC6Be2sBc75V8ZTSqm7n0f82U7E5RGfGGnj+NMHykgrj9gA
	ptJmvBGjU661IKIuo2gO8H0ylt7q6M3nBmlPZZXws1764E0yjUGcJLZeWCTsmSR32ZUw+OLVKiS1N
	39CiVHRb5sbnOQrkT65PJqp3xUzZeY1Y+Usuu7LVphwOfULmqs1Eg1lYYShDGV50KgvLwBmt6MaIv
	aT19XZ3jMQMATU/1SFT9zyOxXItnnCWClCM95SOLJ3l9lTNdT1q6LXGSqUrzac87h+vhcw606VITs
	NsiYCzU0DsPXhSWkRuXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oby1V-006Sj3-U9; Sat, 24 Sep 2022 05:48:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oby1T-006SiT-MW
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 05:48:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3860F60765;
	Sat, 24 Sep 2022 05:48:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACC56C433D7;
	Sat, 24 Sep 2022 05:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663998498;
	bh=kDO1j81r5vdzKPwMHSxyrWHxgWdkM8cvZeZ9JggJ8Hs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hysZq40+JxDOCHrPadbWELgM00BKYV540TWbj64uWXzL2zG7ZIy37OTAR13JkcCZd
	 9D14qyzlvcKKCnH+NcAAh4D8gZ3my14vdLOsUDp537ttS4clznj3LiYm/iwpsR8R9I
	 AMtOIGmJCD3g6k5+rMs00ttlo/Yzg2LtlzsFZVdR33+ww8G46zybIzfIZhmk5k0hJ1
	 HhPfvByTEX2IqisE9PNf6W3xZSgam3s57oXPrOl2HZh3xJzvj0oD2OhRiktMS0CCt1
	 uk40XZeWEpN4qjYa3A4liPggHU8gRQh0ahM6G+rFb922+fp+pfioL+LJKGMuD6//0o
	 i0Kx1dy7Wyvmg==
Date: Sat, 24 Sep 2022 11:18:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 0/9] PCI: qcom: Support using the same PHY for both RC
 and EP
Message-ID: <Yy6aHB6qc/pHEZi2@matsya>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
 <YyF5SJASdCJWcPaX@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyF5SJASdCJWcPaX@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_224819_792669_6DBAA32C 
X-CRM114-Status: GOOD (  13.05  )
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

On 14-09-22, 08:48, Johan Hovold wrote:
> On Fri, Sep 09, 2022 at 12:14:24PM +0300, Dmitry Baryshkov wrote:

> > Changes since v2:
> > - Added PHY_SUBMODE_PCIE_RC/EP defines (Vinod),
> > - Changed `primary' table name to `main', added extra comments
> >   describing that `secondary' are the additional tables, not required in
> >   most of the cases (following the suggestion by Johan to rename
> >   `primary' table),
> 
> This wasn't really what I suggested. "main" is in itself is no more
> understandable than "primary".
> 
> Please take another look at:
> 
> 	https://lore.kernel.org/all/Yw2+aVbqBfMSUcWq@hovoldconsulting.com/

Am not sure example quoted there was very initutive:
"as the tables can be referred to as

	cfg.tbls2.serdes

instead of
	
	cfg.secondary.serdes_tbl;"

I would agree with Johan that primary and secondary are too long, but
that tbls2 is not very intuitive either...

Maybe shorten to pri/sec... any better idea?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
