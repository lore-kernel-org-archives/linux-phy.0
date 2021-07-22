Return-Path: <SRS0=SrD0=MO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F841C63793
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 09:10:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A64F61001
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 09:10:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A64F61001
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIuhZt9G6hIZcDMHc14AwLHZhVRKnBphjHiT3NoaSnk=; b=KlLdL4vpNAHbJK
	Ebez00hrAHmFNCxSfknHpTyKKqHACcMu6pDpC1hNilbQ8MmomqUOQvBSsLG8H0ICcbKXka4xHQE1k
	Qgyfutk5x1cCe/XftL4DWMrziVGWGYq4UlcLumMn8NFCYmaS8NfkA2V0uPpzAI7pFIr1X+onAYbDa
	N4r+B5JS5Ddfnd0KDCzTn4YabOvQ/LBxUPvtbCW4R3dxQW65M5+FIn2aTbrQGej0IsATxPgGPd7E7
	US2doCFnVxA6isPWBignHS9TB0eAclawu1IXflYBubIkcJ5kvv4x80JkUQTqTCT3SdPqK885c3muy
	eL/6fbNqXMZz482efHkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6UjA-000oVx-Rk; Thu, 22 Jul 2021 09:10:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6Uj7-000oV4-Pn
 for linux-phy@lists.infradead.org; Thu, 22 Jul 2021 09:10:47 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 77A616008E;
 Thu, 22 Jul 2021 09:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626945045;
 bh=UFRJTyfDU5ERSeJesOqndphPGq72ZxFE2ZfifURN+3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BSErgSXc3zIsanJlbIjWVuGFwc6SVUyPtmQ+AN6t5x7jkKjscQNYahvKperrjR25f
 4L7rcX4jPE63oqQt3BZwo+NFZyFqibwNm9kAkCXca6R+bUTOMoWA8TJkm1zWbhHfIz
 4x+YUeHATUI1+M2yjvNDMz8jvYTHDq6ss58Ie6+2CxXdl7+aGCwmrzLWdVJdOfa05m
 zf7p/gn8PlLeJ+cwylepkdC5/T4jPQ8HiMzVOrJCo0slQ12nZV9W/cQYsRy4a4yPhH
 NdQqTWXPKKQtRYt4o+6WRW8DdB/QFxRqtHxyA9J8qEuJbl59a2Xm5Acn7ZE+Fx2N8X
 gOZfYmVZK1Jiw==
Date: Thu, 22 Jul 2021 14:40:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] phy: qcom-qmp: Fix sc8180x PCIe definition
Message-ID: <YPk2ERxHcJ7YgW4X@matsya>
References: <20210721163029.2813497-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210721163029.2813497-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_021045_896349_337AFD05 
X-CRM114-Status: UNSURE (   5.53  )
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

On 21-07-21, 09:30, Bjorn Andersson wrote:
> A copy paste error was snuck into the patch going upstream that made the
> SC8180x PCIe PHY use the SM8250 serdes table, but while this works
> there's some differences in the tables (and the SC8180x was left
> dangling). So correct the SC8180x definition to use the SC8180x serdes
> table.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
