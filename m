Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C0F4C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 00:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cj3UAJCbxHc1RxlJP4F2ihAftPmht4EgRr6W28ygVGE=; b=DA2fUhsN0H5uU3
	AzaIZCk2nSDf2bEqAvUgaausNYuAkBOLlkjFE04z/QXLp5dC6WQCfCNkZ01/imBmlFvVruAVwdhJZ
	ttVfnLq6lqTV0wSN8UzWwdFFcVZBvgzJv0Kr7h7LeSec6ztCuSV8Ctao7+QssubdPMhmBS7TPJfEn
	FnE6VKK5gSbz0uUfuNEezVsnF1zPjND+v5pn2tKyfi1GyudzY9x+v03dGyeRFbXZ2n2bSnUishhho
	wTnhoJG6Q7Td8Y6AV8c4ADQ10aX23QMJ7RSwIYmJtQmLX+EQzTwOuJ54YQktal9pEIVZvWb4LKSLi
	hYSoHElAXqcTNJS39okA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFPlq-00H8jR-0I; Thu, 03 Feb 2022 00:14:42 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFPln-00H8iC-PP
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 00:14:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 43DA3B832C4;
 Thu,  3 Feb 2022 00:14:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23A92C004E1;
 Thu,  3 Feb 2022 00:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643847277;
 bh=ts0gBDf++Kle0FbihZliZrbel98An15Zy4Hwi9Y3z7k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gpd9OXDDuHrHyQGQnlR/4XTsR2OiztFHxe8znavTSfgYbgSgK+Q5jChfFuUkSpJcE
 bSCNqYCgx8NaA2/SHvU84WQUolH+p7DsIBl0/wZzOia+NbbJmhYWoe9x4doGqo/eXS
 AaOkQ42kl7kgZn0eIWri1/z18ehidGvNm++tTW5xBCJFvn4S6uq/ujD1UbneBXjAvw
 1WXUsdJl3bT30GLDX3RI23aL3MqDRqRXyqScGpsiO5u8QPjwRx8L3b6d3UPgecrStD
 y5dIla1x/7MPaiSaQWKJTg9vbrl2egaH54hMzpn+gV7qsxSqIyVrw2k3LJcylMWc4V
 5/jrIZ3sAZGlg==
Date: Thu, 3 Feb 2022 05:44:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add support for skipping
 configuration
Message-ID: <YfseaJADVocxqnOu@matsya>
References: <20220128072642.29188-1-a-govindraju@ti.com>
 <YfqT444YoGBIturt@matsya>
 <1d5c41a8-24aa-3cfb-fff0-c2695102aa91@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d5c41a8-24aa-3cfb-fff0-c2695102aa91@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_161439_971345_F927799E 
X-CRM114-Status: GOOD (  14.55  )
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

On 02-02-22, 20:14, Aswath Govindraju wrote:
> Hi Vinod,
> 
> On 02/02/22 7:53 pm, Vinod Koul wrote:
> > On 28-01-22, 12:56, Aswath Govindraju wrote:
> >> In some cases, a single SerDes instance can be shared between two different
> >> processors, each using a separate link. In these cases, the SerDes
> >> configuration is done in an earlier boot stage. Therefore, add support to
> >> skip reconfiguring, if it is was already configured beforehand.
> > 
> > This fails to apply, pls rebase and resend
> > 
> 
> On rebasing, I am seeing no difference in the patch and I am able to
> apply it on top of linux-next/master commit 6abab1b81b65. May I know if
> there is any other branch that I would need to rebase this patch on top of?

It should be based on phy-next which is at
1f1b0c105b19ac0d90975e2569040da1216489b7 now

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
