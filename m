Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B85BC43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 09:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSiSS+2sDdebWzAiZyIAElJj/RIT4vqH1Zd0EK3vZP8=; b=Hy1x+s63MXS07x
	ZlHGboggCdXMfpu/uC8QxlpePM+iAwXQl8dRkl78+5VUniehiSSH1dokQPFSWuJE0eowuqwY96A4S
	IEWI9tkqxOtXtIQDb9nii5bO+wboqfsL96L4GpM/6sfmzXgfF5xgISLnK312nn0y3Ga8EvI5CmhkC
	GsteKsPdiHa24EDRNwu/LYS7RcZee6wBbOgPdIcK/zI58LvbfQlLRJd6qwuNvwh4ztkfKg2/buIl5
	dY/0Gs3pAw5o0eeSg2gR+JUFkNpjZ71wC9rgpdrCROW2yf+hij4pxCtGESsQO+w+QcBoDUgDdHmCR
	lnMjH5DvUclUrJMhxVBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJCa-00000009CPZ-0hZl;
	Sun, 05 Jul 2026 09:31:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJCZ-00000009CPR-2LEi
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 09:31:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9768E60052;
	Sun,  5 Jul 2026 09:31:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 228841F000E9;
	Sun,  5 Jul 2026 09:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783243910;
	bh=AhGPdjF+r5UBWPWxnx50rWXjfnljknqyyw0l2Tw+k6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=W5DotYFtavKGQ4u82DcYZuX/X+sA82xmEtnofouFEYpo8kZP6bu94ZzQsYRmNsz2K
	 N5/D7o36Piz0siQQYwguyJFDdXxl+8Cxao+I/aiEsUZ3AR6RuhOOgatm8uYz+z/91c
	 4eYqa672YwaWNBhpwmV1wdKEwSucOvhCr9FkDC2KDI/t2mR63TIhf4i6BQ94iBLI6d
	 Fa8Y5y+4AcpBb0sBTisbncEXISiHGBVq+MxsAEsr13goexUR9pURzaV6kPDI9UCtXD
	 LuVhQq7V2jiUXrZ9BVRKAIf4iHS4KBxXI9V7s4P+r1kz3XS3ctlXGUuJ1OSgsRIZYK
	 ZeUp9avQQUvQA==
Date: Sun, 5 Jul 2026 11:31:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Johan Hovold <johan+linaro@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Abel Vesa <abel.vesa@oss.qualcomm.com>, 
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/4] Add USB Phy driver and binding changes for
 Qualcomm Shikra SoC
Message-ID: <20260705-functional-vivid-seahorse-a8c149@quoll>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
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

On Wed, Jul 01, 2026 at 10:20:47PM +0530, Krishna Kurapati wrote:
> This series adds Driver and binding changes for USB Phys on Shikra.
> There are two USB controllers - One of them is SS capable and other is
> highspeed only capable.
> 
> Changes in v4:
> - Moved to using qcs615-usb3-dp-phy and added resets specific to shikra
> - Updated bindings to reflect that there are 3 resets used in qmp phy
> - Add remote endpoints and orientation-switch for Type-c handling
> 

b4 diff 20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com
Looking up https://lore.kernel.org/all/20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com/
Grabbing thread from lore.kernel.org/all/20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com/t.mbox.gz
Checking for older revisions
---
Analyzing 33 messages in the thread
Could not find lower series to compare against.

Great. We asked many times already to use b4.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
