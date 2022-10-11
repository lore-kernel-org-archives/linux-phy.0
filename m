Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C57C7C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 14:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIbxKROZKcMuKvXaZHQufcE3f89GANkYoBfWti837tk=; b=owb6kQOYhFVjlc
	D+omY3mqlYMrdikg2zJ/5wtPqtxgd1mecLuwvoOzAIn4ATVdiwMOf/X88L7Eax5T2jlEWWaPapHy4
	FwpSjZnvk1vSY4CpWT75vQ6MYyw3nv/B/mttW2ZcbEQlifTv6Bs8ebB+VbN2Zc0k69fROc8mL8dTS
	k+2ym0dK7v6Ws9PM1opg6FRCryXqcLK3SgmduObg3FfZGbdUPoJ1VGqKFmipqQ8q0Iw9YZ6IKpnEH
	x64UzhwIU/4g37V0C1LJ1cKYkgo6FGL5/x1hK7iu0yM1B3lrBOxzgBGFr18mXVsURr8Lq9HRkMohv
	MmjLuxCo0kLoauQIkWxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiG8G-004U7B-6j; Tue, 11 Oct 2022 14:21:20 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiG8D-004U6g-RI
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 14:21:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5C3E4B80E70;
	Tue, 11 Oct 2022 14:21:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D325C433C1;
	Tue, 11 Oct 2022 14:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665498075;
	bh=Uw7HGYkOrkomzkADPrKZvJ35Fxs2ojCfT+PTAwSqXuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mXw0FpxB4UieVbku/lpyTy/KLulq2zn7OdKkkDbIqhlaBUfMOICqQtkUy2WaV3pnB
	 R5Sad5dbAuJqxuYSPmJpGTAw8gBbKprAvZvD0+vNgyK/+s/+EiGEF8j26JCQJLuC84
	 wRtkN5HUG+/HvqeXpIvgyFivtfVLmob5XMHcX84FbcAvUXTeHmoI71zKPs1bgrBaP5
	 +uKPbVjaXQeHfy+7gg5HK7G09v4QoOVojw8KkOvrNvsZzwhFqNVAucLxQMNpjxIaX5
	 H9vSrqiLYLB2TFIE26Nnr2C7XVw86oR6Sne5qJvfMSdnDzIljXX6arjq4985gIxmoA
	 tAaw/shN0yYNg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oiG82-0003Cu-6d; Tue, 11 Oct 2022 16:21:06 +0200
Date: Tue, 11 Oct 2022 16:21:06 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 10/13] phy: qcom-qmp-combo: drop sc8280xp power-down delay
Message-ID: <Y0V70n11uaztrYHo@hovoldconsulting.com>
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-11-johan+linaro@kernel.org>
 <ce6370f9-962c-905b-5188-a9b6ff9e2fd3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ce6370f9-962c-905b-5188-a9b6ff9e2fd3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_072118_043225_ED0D024D 
X-CRM114-Status: GOOD (  16.28  )
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

On Tue, Oct 11, 2022 at 05:07:16PM +0300, Dmitry Baryshkov wrote:
> On 11/10/2022 16:14, Johan Hovold wrote:
> > The SC8280XP combo PHY does not need a delay before starting the USB PHY
> > (which is what the has_pwrdn_delay config option really controls) so
> > drop the unnecessary delay.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ----
> >   1 file changed, 4 deletions(-)
> 
> Just an obvious question: 'does not need a delay' comes from your 
> experience or from some vendor flag (in ACPI/DT/kernel/wherever)?

There's no corresponding delay in the vendor driver; the delay as it
is used in the driver (before starting the PHY) makes no sense and
shouldn't be used for new platforms; and I've verified that it isn't
needed on SC8280XP.

I'm confident that this was just another case of copy-pasting. And the
buck stops here (with SC8280XP). ;)

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
