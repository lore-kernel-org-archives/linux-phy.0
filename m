Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8941FA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcsTIbeSAILS+UI+30TBGybZZuiSF6Q7KZD1uwiI780=; b=BO6vfD7FWxUVgX
	e1DTMBqjncV0TSKKjHcCaLCNOrBItj/e6zQtp+c7o2FqIz/k/UxYGzz89oEpdT2VrLic6C/s/PINh
	6d1VPJzWlykb9Y8N38q5K6Mv0sQJSAumoSqT7ZNBpQjSpM3yONRLzaiwbVl4ePw10zapB6QfViDL/
	WgtZP1vWGnqPVrhFJVhULdPDQzrPrezQJmb/VwEJZdRftNw0/gpLSS2JSS5M/myfhYP7lufhrnIE2
	vy+mTvDGnyHwl5v+nvfR0zMghtOlEbEzG9RnOF/qOrwoAmTRYn2ojfPM8ByLDQUydnBAmEjw3/4nZ
	ZOtKfFqCl0VrC78C5jMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOuB-00HAzt-3w; Fri, 28 Oct 2022 12:56:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOu9-00HAyi-DQ
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:56:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DA54A6283F;
	Fri, 28 Oct 2022 12:56:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EF42C433C1;
	Fri, 28 Oct 2022 12:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666961765;
	bh=VHuzHyK/ptJnT7l0y3XH9UJ/iKdBdii83zZaQVjzLGQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qJK0uSjCKHOuaBdb8fohf3eG1Ezo4BX544vlCK2s//gCGhInnaT0Y3Xh5qduPhxVo
	 1xJoCClTBT1I/iAGPMIZjp1q3pBJGSE1VkBpeWg19qtZxpJ3eYGh92wPjSNUXikuAF
	 1dy22fZ5u/q0+2M1wBMKsVqxqtut6tdeWxJhkP2PPDvyFoOoxklODSzWQSuTXp8xSZ
	 7Us2KxxmzFn99c1rpOtNvVzLir8Nmw8bF7F5n3dwp1WcYi+Ixvit93imqOsWYWuDus
	 TzjKR/P+cjwYi/DTQecG5tUinB/wj0YeFJjBTAwjts7u7VTd5Gmjiex6ecadXqWHms
	 cMvd68M5hNUpw==
Date: Fri, 28 Oct 2022 18:26:00 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-combo: fix NULL-deref on runtime resume
Message-ID: <Y1vRYIl1eaAzfmEG@matsya>
References: <20221026162116.26462-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221026162116.26462-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_055609_508343_9D00E354 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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

On 26-10-22, 18:21, Johan Hovold wrote:
> Commit fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate
> PCS_USB region") started treating the PCS_USB registers as potentially
> separate from the PCS registers but used the wrong base when no PCS_USB
> offset has been provided.
> 
> Fix the PCS_USB base used at runtime resume to prevent dereferencing a
> NULL pointer on platforms that do not provide a PCS_USB offset (e.g.
> SC7180).

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
