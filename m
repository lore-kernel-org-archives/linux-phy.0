Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03CBEC07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 07:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVkm2LVwgCVOJogsUT8I0MEZv308bKvvP0VV1OyMyJA=; b=qxdub2h2jesjUL
	lsZlixQiqb4Py+pCxj5ss1tUbO10R9uISX2c1S1S29MVNnYZoO7FpHG+03+r9FIrs4yxxXIJjrEXF
	GWAv3UD0Eaa+4nT90LpVfhqK3jq8bkEsqhV/U3n3/3071Hs6ouBF/PrzsvlIctgiPfIbWUoqmXBzN
	AopsUYB7KRzglsNBhoHh0N0gR8uKK2C01+cp+r1AjbfFRbTwSyiwklyBsNk8qNRE4u15cTD1qg8Xp
	W4dTWYBf1pmeQKpO94Zmm2jPY8926W/F/57HbjBnq5p/EhajxcvgxOXMbIUUioVCirewMkpd7WR42
	/9x1R5TIBoKIL3HhOu6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ociEw-002dgV-DT; Mon, 26 Sep 2022 07:09:18 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ociEt-002deb-IW
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 07:09:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F1841B80C04;
	Mon, 26 Sep 2022 07:09:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7F62C433D6;
	Mon, 26 Sep 2022 07:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664176152;
	bh=ZFyz9xsgaJJeQ1kuNUppXbSdEwEfhTR8PAQww7gBoFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=afl5wolvQgakUNRD6b9wDaE0fxMFJlHlLLP9m1EckmAbmq5dhsA/vn6LO/BOkjL4S
	 DPJ7DqhR8zmyVsCr0WBzUq/bBI6xzqbtocN0cy9VLG1jvrZFsuuKTP+pFlLqsrgSZ5
	 kKG7S40CkE62+B7zCN1uEOigV/173ZjYpN8RjviYjn/cyAVpAZZvUhmbBaoO4kQAm3
	 OVGB3iJ9eJcNTcxFFS8OGKseOAP/o1cz0OdRUi8mw5z4AiR0a9l1EIv+YGtLhFOAYs
	 vfxx7Z5v3jjMHiNoQ3s9ReMupn5KmPLkw3T/AeLHJuxjOhjtBM4qUdd0wDkEH8FHzT
	 RMOC+WCdz1SMQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ociEv-0003Yx-AN; Mon, 26 Sep 2022 09:09:18 +0200
Date: Mon, 26 Sep 2022 09:09:17 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
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
Message-ID: <YzFQHa/JUflySPIl@hovoldconsulting.com>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
 <YyF5SJASdCJWcPaX@hovoldconsulting.com>
 <Yy6aHB6qc/pHEZi2@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy6aHB6qc/pHEZi2@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_000915_772703_E57E5196 
X-CRM114-Status: GOOD (  20.46  )
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

On Sat, Sep 24, 2022 at 11:18:12AM +0530, Vinod Koul wrote:
> On 14-09-22, 08:48, Johan Hovold wrote:
> > On Fri, Sep 09, 2022 at 12:14:24PM +0300, Dmitry Baryshkov wrote:
> 
> > > Changes since v2:
> > > - Added PHY_SUBMODE_PCIE_RC/EP defines (Vinod),
> > > - Changed `primary' table name to `main', added extra comments
> > >   describing that `secondary' are the additional tables, not required in
> > >   most of the cases (following the suggestion by Johan to rename
> > >   `primary' table),
> > 
> > This wasn't really what I suggested. "main" is in itself is no more
> > understandable than "primary".
> > 
> > Please take another look at:
> > 
> > 	https://lore.kernel.org/all/Yw2+aVbqBfMSUcWq@hovoldconsulting.com/
> 
> Am not sure example quoted there was very initutive:
> "as the tables can be referred to as
> 
> 	cfg.tbls2.serdes
> 
> instead of
> 	
> 	cfg.secondary.serdes_tbl;"

The main point was that "secondary" doesn't say anything about what the
variable is used for (unlike for example "secondary_tbls") and that
keeping a "_tbl" suffix on every member in a structure that holds only
tables is redundant.

> I would agree with Johan that primary and secondary are too long, but
> that tbls2 is not very intuitive either...

That could be

	cfg.tbls_extra.serdes;

too or whatever. The key point was to have a descriptive name of the
tables-structure variable and dropping "_tbl" from the individual
members.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
