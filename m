Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5FCFC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 13:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnKyAq8AYnoVlGQ5QOHdvUg4Sh3aNW6hWwDRYN2l4rA=; b=md4LfIDSkNVdmR
	5CJggRNyQPO3R2JqJ+qiqPIRw1qcWvomYpsA03VsHkRH3Q474ucoH045NDpZHZu6uKAL8Z1XScYIr
	V/BhNAahY4R/9JB6MP5NyzXtcFKqmXPr2JIbPyLXcrOfqoOVC5RarR4LAiQ3zT7F9OAY0I4vnKSc+
	pzzihigqWiVhbNPskMbzyWsde0h7ECNqgs8HYfm5HjxXU/yHG+GVfx5EkDwRkPXRrYXNL/PN4YW8U
	2cdLVPHPL2IxOv548+H6Cw6zkolj1AXMjIF7frQ4GutrdpsV5Bi4rh6fzyuMbESFbKesktHky6UVy
	ue8jibcllyNdBwcWZaow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyur9-005wNJ-1W;
	Tue, 16 May 2023 13:36:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyur6-005wM7-1m;
	Tue, 16 May 2023 13:36:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1315661904;
	Tue, 16 May 2023 13:36:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9985C433EF;
	Tue, 16 May 2023 13:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684244203;
	bh=y/yWoPs8Nlf4p3CTjaVQfoHaJvHxuvjvDqaUL6F6Phs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UjFmnmvm35D7Eoud6qOlQMYj0uS3SPPHJcIUVr0C9BDKoibiNK8iuxNXsMfN8dUcl
	 mVm73t4opsFn4yO0j6dumM+xej3qJCNa76TPN9pFSHIrzPk4gJY7dHx3ArwaUhJG1m
	 mRMvXSsr3sblzY1w38uCi8+ho8rBSWj6yui36whSEGEQVWI+NM8vEvEK5OL22MkFi3
	 FncsH9nsj40e6PPPzWlCBVz6ymCuBSDoD79oWbiprWq/5FEmdYM2tn2UwaLT5z5q1k
	 ZIMNJVjtmipsCnGvhlqqu+G63uKI6zGkdoKe4c6qBlY8PSExWjIhu9bTYaUozT7pua
	 0TiA4WuBanyaA==
Date: Tue, 16 May 2023 19:06:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Madalin Bucur <madalin.bucur@nxp.com>,
	linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	linuxppc-dev@lists.ozlabs.org, Bagas Sanjaya <bagasdotme@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org
Subject: Re: [PATCH v14 07/15] phy: fsl: Add Lynx 10G SerDes driver
Message-ID: <ZGOG5iwINTcFABHB@matsya>
References: <20230413160607.4128315-1-sean.anderson@seco.com>
 <20230413160607.4128315-8-sean.anderson@seco.com>
 <ZFi/Y7wcad4hrAMe@matsya>
 <957a6bb4-f07b-f511-72c9-da4199dc8616@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <957a6bb4-f07b-f511-72c9-da4199dc8616@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_063644_629480_E2E1346B 
X-CRM114-Status: GOOD (  13.79  )
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

On 08-05-23, 11:28, Sean Anderson wrote:
> On 5/8/23 05:22, Vinod Koul wrote:
> > On 13-04-23, 12:05, Sean Anderson wrote:

> >> +static const struct lynx_cfg ls1088a_cfg = {
> >> +	.lanes = 4,
> >> +	.endian = REGMAP_ENDIAN_LITTLE,
> >> +	.mode_conflict = lynx_ls_mode_conflict,
> >> +	.mode_apply = lynx_ls_mode_apply,
> >> +	.mode_init = lynx_ls_mode_init,
> > 
> > So you have cfg with mode_xxx pointing to same functions for both of the
> > versions you support... so question is why do this and not call the
> > functions directly?
> 
> The intention is to make it easy to add support for T-series processors,
> which have a different PCCR layout.

And when is that going to come. I would prefer this to be added when we
have users being added

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
