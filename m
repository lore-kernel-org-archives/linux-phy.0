Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E2CDC001B0
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 11:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDoqs6qCrcuvlD1DEgIlCjHJPexqAofmUvvTqxksSVo=; b=KCiJJ5weVUt3g+
	Zreta/4AcT1gE0I3obIZAc443/0O6EYCrdZtToIfe+1Z3C9okEXhPkZN53KGwFWwSlMo01t1T6Zn6
	efAtl8fRr47ID8h24JzRPDWvjMxlPRbLoJlx8kwqqFCKnNfP9VxLV2wNE83wiRyzvv3jJK5XgBcYT
	HPMFHLNca6IzZwo5W/FUG67E2z81RKT51adf87yDdMkOPInJv4t+2FlEM5azC4bkbq3PTN/FggJm0
	SsoXEzw4u3d/qIbbpnh+HuNIrxf/5dAMqFtPy8j+a3pe6eWWo0k1iFRoWWMmO27AA566l2Z5YmeMv
	aeljAbohzO2xCDqWbHgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJY3N-00HP0m-0g;
	Wed, 12 Jul 2023 11:30:41 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJY3K-00HP0L-29
	for linux-phy@lists.infradead.org;
	Wed, 12 Jul 2023 11:30:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0116F6174C;
	Wed, 12 Jul 2023 11:30:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCA6AC433C7;
	Wed, 12 Jul 2023 11:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689161437;
	bh=NDBF8dBjRANnGKRrDvxMqE+Lw2noCTWhhXn22ig51mw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nitfw/gukMrGiwHAYDuudY/3e4DHA8NJmkYTP8Q7dop1CW1NxeeznW324UIqfv43f
	 dYVaPb/7BdTXYEVN0uvmzSxqgtzIFZ3Zu+a3eSjnZqXAO0DcIgi5H/vWtklOlmIQMo
	 wgaXO4V+MPqMaCAaSiV2h+R+XiaHteqGlieK2TANbz7KQKrPpbb+hCOCATC79pN1WL
	 cRgV60JsxR615B5ZQt1lfab8XmsuCrRycs5C+xq+6CyYm29wOt0cUbVXUslfq40Ouc
	 YzmsIgCOPsTt6DDRgfk1m8VCrgG8T1gmVMZlmWRTP6aj6QZgI3rvJNTExb0rmI9v2J
	 vVzxB5LPGdeuQ==
Date: Wed, 12 Jul 2023 17:00:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Yangtao Li <frank.li@vivo.com>, linux-arm-msm@vger.kernel.org,
	dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/5] dmaengine: qcom: gpi: Use
 devm_platform_get_and_ioremap_resource()
Message-ID: <ZK6O2b88Nz6J2JeN@matsya>
References: <20230705081856.13734-1-frank.li@vivo.com>
 <168909383153.208679.15343948792914219046.b4-ty@kernel.org>
 <c3373ebe-2f52-bed7-7f59-98e1268c9af2@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3373ebe-2f52-bed7-7f59-98e1268c9af2@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_043038_746677_72655798 
X-CRM114-Status: GOOD (  14.06  )
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

On 12-07-23, 11:33, Geert Uytterhoeven wrote:
> 	Hi Vinod,
> 
> On Tue, 11 Jul 2023, Vinod Koul wrote:
> > On Wed, 05 Jul 2023 16:18:52 +0800, Yangtao Li wrote:
> > > Convert platform_get_resource(), devm_ioremap_resource() to a single
> > > call to devm_platform_get_and_ioremap_resource(), as this is exactly
> > > what this function does.
> > > 
> > > 
> > 
> > Applied, thanks!
> > 
> > [1/5] dmaengine: qcom: gpi: Use devm_platform_get_and_ioremap_resource()
> >      commit: d9313d9f1fbc14cae5147c5130bea54aa76ad65f
> > [2/5] dmaengine: qcom_hidma: Use devm_platform_get_and_ioremap_resource()
> >      commit: a189107deb574fd08018bbf2fe5cd86450a54b13
> > [3/5] dmaengine: qcom: hidma_mgmt: Use devm_platform_get_and_ioremap_resource()
> >      commit: fe6c2622473f3756a09bd6c42cffca6fbdce391c
> > [4/5] dmaengine: shdmac: Convert to devm_platform_ioremap_resource()
> >      commit: 0976421c5a339b1b1a89cfba4471a6de761130ed
> > [5/5] dmaengine: stm32-dma: Use devm_platform_get_and_ioremap_resource()
> >      commit: b402a7eeaa35aaa3300a4ba6bd5b381112ae183c
> 
> I noticed all your new dmaengine[1] and phy[2] commits contain a
> "Message-ID:" tag.  Presumable you added a git hook for that?

Thanks for pointing that out, yes something is messed up for me.
> 
> However, the standard way is to add a Link: tag pointing to lore
> instead, cfr. [3].

Yep and if you look at the dmaengine and phy commits for 6.4 they have
"Link" in them, so something is not working, let me fix that up.

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
