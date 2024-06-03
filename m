Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8650C25B75
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 14:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDfuUK5/BnatP2bvTe9vX/BtFUq8dbrEH3/cM6HynAM=; b=4LnLSxGxbFj96D
	NlyvmQNXTOYB2FCQ+L+rz8KJU4IgzZxWOL++xmYVbE2UlGtDc2B/yGL3FPin5+rKfxI99NHnof/HY
	aW44BDJIGt6D39CJrVXKygytB3pLLSX3v0+OSh0Xcw5BE75+wnfJzsGPCRlehrBIl7j5JUiqwH7qV
	4Mua1BQC/1P6Ytv8yP+0ycw4jdj17i0kY992btA9DiyeyCgLM4PYJvW1dmo98eN9XHtMIVMQ3+iQD
	HWp4t6soLDbnI0iCOJgQZxkmHqbM3/bgiNJeza3SvikhJuw3UjMXsfqsLTZqcKiLoSSWtkMV5A4xM
	e4H5UnB+SQ5hnY2hv1hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8dk-0000000H3nY-2Txn;
	Mon, 03 Jun 2024 14:26:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8di-0000000H3n0-147g
	for linux-phy@lists.infradead.org;
	Mon, 03 Jun 2024 14:26:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D091160A4D;
	Mon,  3 Jun 2024 14:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8611BC2BD10;
	Mon,  3 Jun 2024 14:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717424780;
	bh=YqSAUIrmXDsmPykiWr2zCB7ZKvMjgIMT+q5ZXvGYhUM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QnyIc7q1zGvzOSVpTVCHpx4BPU0by2RQL2W0ZKN8QEFC5G2/x3Sj1SKahkcoJ8e/j
	 2s6lc5p8xPastD514m+z9ynAA7alOtvR2wJy+fn4rXrcZ+VgJr+tfL2EcYMsiHPY2W
	 Rw9evUM7qcoC3F1Xhkai8PqDo/XiaJGNcuAhVAnRPnsh9BHXiGCZCUTeCXGzWPlUgy
	 4GB1YFN/TTVxvgCe6PrxCybyquak/JYMkkK7gBQuJ4UqZjA/wW4qb4Nvg+Xrt8ibFy
	 mgSxickTj2mC5dzLzqSrZPrQy3DAHEgAcCT4G1Heut0f2sWQEdoz2g15iV0h1oojL+
	 9j12QeOEezCkg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Kuogee Hsieh <quic_khsieh@quicinc.com>
In-Reply-To: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
References: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
Subject: Re: [PATCH 0/3] phy: qcom: qmp-combo: Fixes needed for DP
Message-Id: <171742477811.106652.12217474825972080387.b4-ty@kernel.org>
Date: Mon, 03 Jun 2024 19:56:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_072622_398124_39679998 
X-CRM114-Status: UNSURE (   5.80  )
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


On Mon, 27 May 2024 10:20:34 +0300, Abel Vesa wrote:
> DP is not currently enabled on any of the X Elite platform boards
> upstream yet. These fixes are preparatory work for when the support will
> land upstream. The USB part of the PHY doesn't need these fixes in order
> to work properly.
> 
> 

Applied, thanks!

[1/3] phy: qcom-qmp: qserdes-txrx: Add missing registers offsets
      commit: 5314e84c33e7ad61df5203df540626ac59f9dcd9
[2/3] phy: qcom-qmp: pcs: Add missing v6 N4 register offsets
      commit: 99bf89626335bbec71d8461f0faec88551440850
[3/3] phy: qcom: qmp-combo: Switch from V6 to V6 N4 register offsets
      commit: 163c1a356a847ab4767200fd4a45b3f8e4ddc900

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
