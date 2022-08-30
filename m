Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7FCECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l16wlfmAp1ivrbBmU2gHniAEV1DNPdXqEw1FEzf+jZw=; b=2VATrBi+yFCaiU
	M0LKHoCgLDYy8UoJ7Zj71mPIs3J/p3a4/NpTUxQ2+001yw3vTz5LHiPgBGHsHFJvNdO+kM4gyRdf/
	pXvPB5F3fIAH3al7FFYCr6R0j9HD2mryisRnX9q4EVvUE788kAiwLjhhzB2mYd+3YTF/7aq5xsXAA
	5ASvo8XvwIptmvRAsNyfpwoH4PZ3IlYVCPz7o+iHR756RV84KhX5o37XYqE0j5XmjEqg6P7o89JBp
	Yc2pe279XJF3TXnahM55U4kLYd+N9EkBiQ435eEyjuGAX4HHHD6QOvB7GXLoPIdxx73sbLyid0Sc3
	7R+mbeV2u6xLo9AfuadQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvfh-00ElH1-H3; Tue, 30 Aug 2022 07:28:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvff-00ElGU-08
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:28:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5BEDE61463;
	Tue, 30 Aug 2022 07:28:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E838C433C1;
	Tue, 30 Aug 2022 07:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661844505;
	bh=GkSxClK7X/1FOfc/IipCQ3oAZda94OTJaGgo+09EP6M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=htlzUsY7BuuVeY8cN7HRgMPs5r4IhWo13h8mkKsiKlNpAFGx52qSdlktD8K+tFmnI
	 ogjr1hfmEpJtpdDOUX+jEafafS8ikAXP4a5LBtoGixmJwVURpiplt4jkd6PPJgfgKk
	 /pzF37qaFmZ9shK8UQHshdIU9vblhLQSBsk2e2XCKXCAWrnayNxMjChLY7eQrVUstx
	 wNHel7csuqFHth2pLSS+SgRP4iDwdxSStywWmBt47LhoGj36BkptsMqcDh2SqGxt52
	 UXheoJ6dOGPX/q3UXMAjVBqz9Afg/ciINLkzxjtVHotxkbR4pXbgORwNnBPoF8uWPg
	 658A/2W+blq7A==
Date: Tue, 30 Aug 2022 12:58:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
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
Message-ID: <Yw28FdhYSv4x0a6B@matsya>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <Yw2a44l9a6zz5qTJ@matsya>
 <Yw21t1SUGjCcUuuw@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yw21t1SUGjCcUuuw@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_002827_105562_DC643FA9 
X-CRM114-Status: GOOD (  27.14  )
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

On 30-08-22, 09:01, Johan Hovold wrote:
> On Tue, Aug 30, 2022 at 10:36:43AM +0530, Vinod Koul wrote:
> > On 14-07-22, 14:43, Johan Hovold wrote:
> > > When adding support for SC8280XP to the QMP PHY driver I noticed that
> > > the PHY provider child node was not described by the current DT schema.
> > > 
> > > The SC8280XP PHYs also need a second fixed-divider PIPE clock
> > > ("pipediv2") and I didn't want to have to add a bogus "lane" suffix to
> > > the clock name just to match the current "pipe0" name so I decided to
> > > deprecate the unnecessary suffix in the current binding instead.
> > > 
> > > To be able to add the missing child-node schema and handle device
> > > specifics like additional PIPE clocks, it quickly became obvious that
> > > the binding needs to be split up.
> > > 
> > > This series clean up and fixes some issue with the current schema before
> > > splitting it up in separate schemas for PCIe, UFS and USB and adding
> > > missing parts like the child PHY provider nodes.
> > > 
> > > The MSM8996 PCIe PHY gets its own schema as this is the only non-combo
> > > PHY that actually provides more than one PHY per IP block. Note that the
> > > "lane" suffix is still unnecessary and misleading.
> > > 
> > > The final patches add support for the updated binding to the (recently
> > > split up) PHY drivers. Included is also a related combo PHY cleanup.
> > 
> > This fails at patch 2 for me on v6.0-rc1, please rebase and resend
> 
> Are you sure you haven't applied anything to your local tree that causes
> this?

Pretty sure :-)

> 
> I just tried fetching the v3 series from lore and it applies just fine
> on top of 6.0-rc1.
> 
> Note that if you've added a new compatible string locally, the second
> patch which sorts the compatible strings is likely to fail to apply.

At that time no, now I think I have patch or so ... Tree should be
pushed in a bit, you can check

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
