Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0BF3C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 12:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lM2R0lDPpNHRdFfcY41CX8406yAFWp3weuO1eHoQsuU=; b=QnU58A6s/K+WZz
	S/Kfthb25/VfOzwnoJHX0ft4E3nY3kvOprAD46/uvQy1w+LtXLBDTkC0VEQ0pf8pxpJYGlLcX8T0n
	QpjcgXnnZ6RR0m3t8aEsHlVFlbv4PZZtCy9KKACsm4hQeCVp0mrS+WMIUhsAqY4JfiMp1H8Jryfd4
	wufcr8RE8eT7tCkLGJEzdikGITZgwP4clsiNhTQvvQ4rbXU1fto3lfRsG5QHdrAxUzq9CKIGxLZAf
	LY19ArhaDq4CVqwak+N7ggw8hqdF4ZQU5HH6SBvICSWpAKgwJ8xoGoHYO0ZC2rhwrlR51TP4KSv4G
	/8jxtpCYXYL9JwM+ASsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiaxK-007zb4-6F; Wed, 12 Oct 2022 12:35:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiaxF-007za7-1y
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 12:35:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 725B2614D7;
	Wed, 12 Oct 2022 12:35:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D32A1C433D6;
	Wed, 12 Oct 2022 12:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665578119;
	bh=P1sBFZ5OfQ3xulKkj/ktcKq5OmyfyAwZboKPGajaiIU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JCu8ojD/4ZuqUvqQwYzussHK7WszyvO+WxymQNq0453fLTWCA2vXd3m02RFuPve73
	 nq9vauPqKJv2B9IRAjdOr4AA4iUOj7s5eZXlCP+nyO0jVDC2U9DrtmWS4+q2eclNhy
	 e5/dy8tR8p9T3g59BwfeLW22IIiC8Z9+Vvle1fuJCgmgD+e6JE1DMdQeUJqnwfBEb5
	 rv13pNqiZd86Q4fpnp0Davc+kDKrV+P7NKkPUQhvBNUCMD+q5dULKfgpMc5hDmeF9E
	 PtmQPkvV8iAvZHP4ARMV1ZHsAIjVM+LGC0Tv/9HWk4zhOubJb6m75ZA3fFJ/o6pYqg
	 6yNR/Zgwt5Eyw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oiawz-0008Ev-Ll; Wed, 12 Oct 2022 14:35:05 +0200
Date: Wed, 12 Oct 2022 14:35:05 +0200
From: Johan Hovold <johan@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/14] phy: qcom-qmp: further prep cleanups
Message-ID: <Y0a0eYNrexI8uwfn@hovoldconsulting.com>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_053523_393178_A194713D 
X-CRM114-Status: GOOD (  13.16  )
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

On Wed, Oct 12, 2022 at 10:12:27AM +0200, Johan Hovold wrote:
> Here's the next batch of QMP cleanups in preparation for adding support
> for SC8280XP and its four-lane PCIe PHYs.
> 
> Note that these apply on top of the following two series that have been
> reviewed and should be ready to be merged when the PHY tree opens:

I forgot to mention this series:

	https://lore.kernel.org/lkml/20220928152822.30687-1-johan+linaro@kernel.org/

which has also been reviewed but did not make it into 6.1.

> 	https://lore.kernel.org/linux-arm-msm/20220929092916.23068-1-johan+linaro@kernel.org/
> 	https://lore.kernel.org/all/20220927092207.161501-1-dmitry.baryshkov@linaro.org/
> 
> After this I have one more series of related cleanups before posting the
> SC8280XP support.
 
Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
