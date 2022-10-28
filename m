Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4C48C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eMTdggwksRSu3SkTPM5OcQiTAeHFOG5H3ujOx9dyHE=; b=gdmb5ad4kQbsjD
	2U0ql9deLltyM0zU3vNuDAjIhLSQE1mHUcQAxS6Yzfp94RKrdFFbDKByy+CItWZ/RlTze0EKa+VxO
	KrCK8B7kgTzxE8igFLXFCoWEj+2lQZv9iTQxrTdgCW6tDEQ0hRhU5OsGjxeYGAVcG3dZxzlaAqmNH
	dtrJb05+rBAbXaPmiUt5056ffWBpees6eY27hrdHKYVh9fNcsMIn8oEaNDlIGWE1L4dLDJu730GaR
	Cr37UPiYIGO0iI89hGEoNtMf+hC3GIa5lhk/04kEb2OP/KpM6oJxuBc6zI/g7C6s5OXHvLBMfaCVO
	R/fglQk60JRAObPavEbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooP68-00HFDl-4H; Fri, 28 Oct 2022 13:08:32 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooP64-00HFBt-Vc
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:08:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9EAA6B82A04;
	Fri, 28 Oct 2022 13:08:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CF53C433D6;
	Fri, 28 Oct 2022 13:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666962506;
	bh=ECi5ZL9/CovQrvlXRqJIBv8wWvMwdtva2tmSf8ayGz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YHCV8/xrqJ4VydITOXS6s0km2idgLo5DtBEjthmVLki9+Blqo7INGNTqczdDJm2sT
	 mK767JbQIE7BlOVsk0Z5DZ8H/HLzqQMMVT9rO+aynsEWPr5PmN6r7WDQtFPPKbpq0x
	 lTlTZbQoS9DQ3OSYADBVZ8xT2iyWjj2esS1qSG9KqC0sEUrXlJ5/xyyYZHoLlO+vkg
	 jfqPyEPZO6BBpZAqrOXB4zmKiSar/7WatDoceZJVlQ6UWFAQ35vZhijJQyeLjy82Fl
	 S8T0WP/bRw9VxtHA/k+Dshomv9ornM7Dbz6ThoDAJwMuTVNNwbU3yaS+DKybALYX0w
	 xOYxbceKs4/iw==
Date: Fri, 28 Oct 2022 18:38:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/15] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y1vURr4xPZD5/bh0@matsya>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
 <20221021110947.28103-9-johan+linaro@kernel.org>
 <932765e0-ecbc-8c9b-69c5-ce0bb0c8de68@linaro.org>
 <Y1KDXD9n0cCqjTGy@hovoldconsulting.com>
 <Y1vRDv+hrMmnqwPj@matsya>
 <Y1vT94blD9PJHKDp@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1vT94blD9PJHKDp@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_060829_186533_078167E4 
X-CRM114-Status: GOOD (  22.35  )
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

On 28-10-22, 15:07, Johan Hovold wrote:
> On Fri, Oct 28, 2022 at 06:24:38PM +0530, Vinod Koul wrote:
> > On 21-10-22, 13:32, Johan Hovold wrote:
> 
> > > [...] This is not about keeping the
> > > diff small, this is about readability of the new helper function as I
> > > already told you.
> > > 
> > > And this is a *local* identifier, not some state member that needs a
> > > super descriptive name. And the rest of the driver used "tbl"
> > > consistently until your EP/RC mode patches for that matter.
> > 
> > I would disagree here... You can change tbls/tables but then it does not
> > help _this_ patch
> > 
> > Right thing would be to change tbls to tables first and then add init
> > helper... For a reviewer seeing an undocumented change and unnecessary
> > diff is not right..
> 
> I still think that it belongs in the patch adding the new helper
> because it is essentially only in that new function that the improved
> readability due to the shorter identifier matters (the earlier helpers
> where per table type).
>  
> > Pls split if you would still like the rename
> 
> But if you prefer I'll split it out in a preparatory patch.

That would be good thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
