Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD48C4321E
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 15:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2trWEgGNA2wSQXzc4dnx8d3hL12hcYPg4oPKPuc+flM=; b=knMkIyqMvNJP1V
	hqCETCXjEhQBSDVUaDHqDcC5T8IjGYSCyYlvxu+cg3Frh5g7AMEpcNriLzMj6cxAMQgYo6UG6kGkx
	6J4hXmvHhW+TmhQeQ3I5sCV1a27ebix+dbtEuOSHk9+SJxu2IzZ7l/4T+8sjJwHX5gJB5baOYi5su
	7cN0kCW/kyPf0soFwIS3AoFCecHfjr68oWxgQkKE4AM1XpVl5yFFVqMXF8SINr9G1ZnmF5OLJG2Pu
	IgJDezo7BVd8ejQKq8sTzRZDrDnA4RX03QhyO2PVgFg2P3Q2IZ7AmgIgAtexx8AqEN7SAdXdqdpFX
	ulsBJEghhMnPD/gWJKjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubky-002T4y-1a; Mon, 14 Nov 2022 15:52:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubkv-002T2g-FK
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 15:52:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2ED916126D;
	Mon, 14 Nov 2022 15:52:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84443C433D7;
	Mon, 14 Nov 2022 15:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668441134;
	bh=n1AaO+JFk3+1SIAUdLI+8UQJro10H84KUKki8xFsQsQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AtUYWhdPEUsI6OernTHj+UBdtQw4l5R1N2aT8HzU9MDYZwcJONCCLFd+4/+3xgbT6
	 DvVHN1fH5YM1XdJa35M+quvFBtr2iNtPFjT7zYAszqGj5e6Iqh75Dnby2UaWuJQpir
	 iu61J4dYkZH0DCRufwb4GcIkR+ibCIb6t7C7b/DIPoVBOmK2BI1KzxzMfYODKK9vdi
	 Wq30yEKq8tUEPWVZGHK3JKyGhIcMRuXhDusmbrL7B/W5juOaPaGKjXijq9AAoRS+ZT
	 doPQcQXM9ijyk0nP0SUi9coWye6soAuql5mUBQ3o0DZxOYyxH8bFEzs8a9Qv0EL4dx
	 TpvGNGj2baSLw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oubkM-0004Um-2G; Mon, 14 Nov 2022 16:51:42 +0100
Date: Mon, 14 Nov 2022 16:51:42 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 12/14] phy: qcom-qmp-combo: rename common-register
 pointers
Message-ID: <Y3JkDt9xMVMhUJPs@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-13-johan+linaro@kernel.org>
 <f3ae781b-2046-e1be-564f-9de74107f000@linaro.org>
 <Y3I6lN6UTHg2ozNP@hovoldconsulting.com>
 <e1140358-b693-c23e-68dc-787bf6aa2422@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e1140358-b693-c23e-68dc-787bf6aa2422@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_075217_611574_FEBC63B2 
X-CRM114-Status: GOOD (  26.89  )
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

On Mon, Nov 14, 2022 at 06:38:36PM +0300, Dmitry Baryshkov wrote:
> On 14/11/2022 15:54, Johan Hovold wrote:
> > On Sat, Nov 12, 2022 at 02:31:27PM +0300, Dmitry Baryshkov wrote:
> >> On 11/11/2022 12:24, Johan Hovold wrote:
> >>> The common registers are shared by the USB and DP parts of the PHY so
> >>> drop the misleading "dp" prefix from the corresponding pointers.
> >>>
> >>> Note that the "DP" prefix could also be dropped from the corresponding
> >>> defines, but leave that in place for now.
> >>>
> >>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >>> ---
> >>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 +++++++++++------------
> >>>    1 file changed, 12 insertions(+), 12 deletions(-)
> >>
> >> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>
> >> Note regarding the last phrase: I'd suggest leaving the DP prefix in
> >> register names, it makes it easier to visually note & verify the
> >> register block.
> > 
> > My point is that "DP" was never part of the COM register block name. The
> > confusion likely comes from the vendor driver naming these defines along
> > the lines of
> > 
> > 	USB3_DP_COM_POWER_DOWN_CTRL
> > 
> > Here "USB3_DP" is the common prefix for all defines that apply to both
> > "parts" of the PHY so the corresponding Linux define
> > 
> > 	QPHY_V3_DP_COM_POWER_DOWN_CTRL
> > 
> > should either include "USB3" or drop "DP".
> 
> My thought was that we already have too many _COM_ defines in the qmp 
> headers. Having QPHY_Vn_COM_something would make it too easy to mix it 
> with QSERDES_Vn_COM_foo. Thus I'd vote to leave DP_COM prefix in place. 
> While it might be not fully accurate, it serves the point of identifying 
> the register block.

I don't mind terribly and I didn't even consider trying to rename the
current defines.

The lack of public conclusive documentation makes structuring this mess
much harder than it should have to be. 

That said, I don't really think that the risk of mixing up
QPHY_Vn_COM_foo with QSERDES_Vn_COM_bar is something we need to worry
about as you already have a separating "QSERDES" in there. Those sets of
registers should be disjoint too if I remember correctly.

> > This becomes more apparent on SC8280XP where the corresponding define
> > is:
> > 
> > 	USB43DP_COM_POWER_DOWN_CTRL
> 
> I'd still use something like QPHY_V10_DP_COM_POWER_DOWN_CTRL here.

Yeah, but then you're just making names up. ;)

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
