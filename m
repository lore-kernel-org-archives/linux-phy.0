Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC465C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 04:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AexE/XM/wQjwDpwsUaIiPvGMa8cZTBTHVIexLZPVoqU=; b=1gFulCI04WH6Gq
	xLjLgfrPooP/RPHkHPo3sftcGVJdmYqyJF1v2hlc2UqXChpcD68vhCMoqTgFc98R8hTsPEI+Qkcjk
	5LhwGWRdjZyl70RHpqj99diO2MZ0XvXFuoJuNsvtdmK9rNGfGBSh60xI+UMUJD3tm7fc2yz7zfUjQ
	3XqVuSsekTAdN166biFQcU0/07Mxg28swPU5kQoLNNkCmZjCi0ARztXOOGKtvPznm0WgVNTuBfs/8
	xiAJsWSum0i8IaDtC0/D1h34gNybL74x52Kg+f8Fh9nMaTC3bcowlNKsKx0aaIuYT5kbYfZcvO5MF
	7GYnT77qna1KO5a9X7GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nynZR-00B4rJ-73; Wed, 08 Jun 2022 04:45:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nynZP-00B4qi-Bz
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 04:45:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C23F861910;
	Wed,  8 Jun 2022 04:45:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38246C34116;
	Wed,  8 Jun 2022 04:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654663525;
	bh=R6Xo1YvH0iFNdmL0mjGM5aiDNUJDlpFLuABV7ZxFy3M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ac6o6WfkLerqFddjOq9ta1T8t7eaQkrbRahFgXV9P0JxlXI8xY2MOVqtQvE9guXD1
	 kcsL1YAkxjMeG4MH52tk57ojHBr3c1bdU9TioU4DFbiaz6rL7j4uPDPtZ/4XpIRSb4
	 k+JXHiX61g9yeqxZYC+7eKMa7UZHBs2yvA+bQpmIxE/Z74qNO6KbOBedoegj0zJmVo
	 9urHzGbfMTU+s3ulZLTzaV4csYL5AW15nBlFJCTCvlXJciSI6KBuCjzZhcchj6fDOY
	 XEYltArAZ4sxXu4lhpo6wF2IA/p4F3blj1LNm64CpAKKF7vpBhKjxg+R6Ug2YhG07l
	 HYy1E7WeABuvA==
Date: Wed, 8 Jun 2022 10:15:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 00/30] phy: qcom-qmp: split the QMP PHY driver
Message-ID: <YqApYChLEIbvHbbz@matsya>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_214527_485066_697BA170 
X-CRM114-Status: GOOD (  14.32  )
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

On 08-06-22, 00:31, Dmitry Baryshkov wrote:
> While adding support for the PCIe EP mode support to the QMP driver I
> couldn't help but notice that the QMP PHY driver has slowly become the a
> beast with tons of conditions and corner cases being inserted here and
> there.r
> 
> This an RFC for an attempt to to cleanup the QMP driver by splitting the
> QMP PHY driver into five smaller drivers, each targeting a particular
> family of PHY backends (DP/combo, PCIe, UFS, USB and a separate driver
> for the MSM8996 PCIe PHY). Yes, this results in some code duplication,
> but I hope that the end result is still better than the current
> situation.

I have applied this to testing and if all good should be in next in a
day or so.

Thanks for doing the big change

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
