Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE179C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 08:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kd30tuPHo7Lv8ehQczv6zxZ06D835iyuShX/kh4+z3k=; b=aTfUfOPg1hSige
	mWmkKWkFhDGbDX6kkWx/KIMXd+1q6qCutn9I5W71SF1vAP4wMGuOysYMwseGxHkoqFGXLbX92wFIB
	Lr1C+PhZ8TScZWvuCrUarEo2p9FuxIhVt6pczYlUzVBB4Bn3agB+ZV3vbb8zHa6K0z3cDBVddvD4Z
	kacVli4GIRjiE7arRuAfeojd6r2UJ9WticdMgv6vD02606liOvSzIQ1cdg3RCdyG30pSoW1cKAmGF
	B6v/i3dkF1Vr5/O43vHEXXCpyazAwEkfCzNjqMxAcRT0Hzt8omO3EOLfQuKV0PdpxNAMnfRdIveJX
	/F7u2BcTOWCxV/ouxpcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUPc-00GdxQ-6d; Mon, 14 Nov 2022 08:01:48 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUPZ-00GduG-Ve
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 08:01:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id ABD27B80D3C;
	Mon, 14 Nov 2022 08:01:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54D94C433C1;
	Mon, 14 Nov 2022 08:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668412903;
	bh=+kGmZ2sr1MoPvw4pQEbx/x2LSke6RIWI3WFIYXcquC0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qoxRhZKBInOC5h2N75rNgmfDJiMzUYwas+6qSzBFYdRPbgVF46SahuG/Xk73Gl/2/
	 FENZvSKkiCgUCo9mbsQXDgSepuIBH4llVukrwTAoYENc/pMxPYZkjKuXXSXqISjw3Q
	 QKolX1/bThNCpaQQLCsO8G2JoOnC7apghRvabEUdmrq6NPwLVCYuyj+ynzFb//xXAe
	 mJS+xAX+Lzw5X4XpWoluergq8yzAz9TQSq5rwJcH44H0Zwcx2CvNN/RoV7PvvQM1/D
	 kmSk3x4IEkEpfeFjxG17e0BJjGU/nPedp8WVAPBVvk5NdV5neDB+/TSL1L8B+kFJKi
	 oKBV8fjLEWqdA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouUP0-0000za-RS; Mon, 14 Nov 2022 09:01:10 +0100
Date: Mon, 14 Nov 2022 09:01:10 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/6] phy: qcom-qmp-combo: fix runtime suspend
Message-ID: <Y3H1xjtl+dMGssDU@hovoldconsulting.com>
References: <20221111084255.8963-1-johan+linaro@kernel.org>
 <20221111084255.8963-6-johan+linaro@kernel.org>
 <c685cfc8-adec-31e6-c45a-f0e63d85cfcf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c685cfc8-adec-31e6-c45a-f0e63d85cfcf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_000146_187284_5030B50D 
X-CRM114-Status: GOOD (  15.08  )
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

On Sat, Nov 12, 2022 at 09:17:29AM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 11:42, Johan Hovold wrote:
> > Drop the confused runtime-suspend type check which effectively broke
> > runtime PM if the DP child node happens to be parsed before the USB
> > child node during probe (e.g. due to order of child nodes in the
> > devicetree).
> > 
> > Instead use the new driver data USB PHY pointer to access the USB
> > configuration and resources.
> > 
> > Fixes: ac0d239936bd ("phy: qcom-qmp: Add support for runtime PM")
> 
> I belive the Fixes tag is incorrect. One can not easily backport this 
> patch on top of the original ac0d239936bd. I'd suggest to point the 
> Fixes tags to the addition of phy-qcom-qmp-combo.c

The Fixes tag should document the commit introducing the bug regardless
of what kind of changes happened in between.

That said, the tag should have been

Fixes: 52e013d0bffa ("phy: qcom-qmp: Add support for DP in USB3+DP combo phy")

as this wasn't an issue before adding DP support, which intentionally
relied on these hard-coded indexes ("luckily USB3 is the first phy").

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
