Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2678ECAAD1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 05:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBygx7Keibhz8zMv5VoSflytkoS8ioqOo7dSN+q0lTA=; b=FRRao1LImsrfnH
	PhJ6X1YRB7FGJLtHyY8Ggn4CEmCS6JRt0ll6KAG3zTmZfZfj12Y6HczN2DMU02v4z7SAhSo3BmNF9
	IoGxKJ4vlaQNwZOA86e9Bf7D75OOZou1fpJAEKNMY7dLIWRbngLqnPciFnAOw+AjjQqxXVh5WYtGD
	my+vFs2rK0sfBwPdtAYUqJ2yk1ELw2EGGXjX61EEL2ktTDDk/j+CO+SkANug4UIWAXKMKCqTddFIG
	l8CQOkjme61o/rZc4wLSGk0J+ghyiiATwaznf6hZthCkZXAg7XKVv6UKnPwibqvCTHfQG8A4sQYRS
	zT3/tcskPicTMnYqcChA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStRZ-00E8Dx-A5; Tue, 30 Aug 2022 05:05:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStRP-00E8CE-Mz
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 05:05:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 16339CE16AC;
	Tue, 30 Aug 2022 05:05:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A914FC433D6;
	Tue, 30 Aug 2022 05:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661835928;
	bh=QByjyPDQTVmrZkD/ABp5KCdvC712AjaNKJc4hM/Cjuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YHbhzdGT4HOapIGMSBNK3IXUrhMgOrVgg+FqjL4MABT2a3cFcx8UGZ9IC/hk1qiH7
	 bOGMCfWG0R80VYZmsok11TsEsgqTglAY8k7hh8CFMGoNE6Oms4UWLHu4BceaajEfPR
	 OE13tRQxsC/tE6S49nCsQ0N3ryRgrN8L7S69Z1hE1D6fnxr/Q5RzjHZXu0TzvcAW61
	 Sjbh21VCC5/4xlK/zyMYcVjamxvfVuU7p4Eiq3k9lFVcUTzgi1VxagAExwq0X6ymtv
	 HxzPRUOayDI2kALXkY43eIelhApzL732Scv8m3IWvZHzh3DxH3jMKjruBrvA2zCw02
	 Km5bM8AqUrXWw==
Date: Tue, 30 Aug 2022 10:35:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <Yw2alI4lV7aIsA/o@matsya>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <YtVPX2WHKU61MTo5@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YtVPX2WHKU61MTo5@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_220542_800653_5369FADE 
X-CRM114-Status: GOOD (  21.11  )
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

On 18-07-22, 14:17, Johan Hovold wrote:
> On Thu, Jul 14, 2022 at 02:43:03PM +0200, Johan Hovold wrote:
> > When adding support for SC8280XP to the QMP PHY driver I noticed that
> > the PHY provider child node was not described by the current DT schema.
> > 
> > The SC8280XP PHYs also need a second fixed-divider PIPE clock
> > ("pipediv2") and I didn't want to have to add a bogus "lane" suffix to
> > the clock name just to match the current "pipe0" name so I decided to
> > deprecate the unnecessary suffix in the current binding instead.
> > 
> > To be able to add the missing child-node schema and handle device
> > specifics like additional PIPE clocks, it quickly became obvious that
> > the binding needs to be split up.
> > 
> > This series clean up and fixes some issue with the current schema before
> > splitting it up in separate schemas for PCIe, UFS and USB and adding
> > missing parts like the child PHY provider nodes.
> > 
> > The MSM8996 PCIe PHY gets its own schema as this is the only non-combo
> > PHY that actually provides more than one PHY per IP block. Note that the
> > "lane" suffix is still unnecessary and misleading.
> > 
> > The final patches add support for the updated binding to the (recently
> > split up) PHY drivers. Included is also a related combo PHY cleanup.
> 
> Hi Vinod,
> 
> any chance of getting these into 5.20?
> 
> Note that there'll be an -rc8 on Sunday.

Sorry phy tree goes thru char-misc and it was already sent and closed,
so couldnt do the needful

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
