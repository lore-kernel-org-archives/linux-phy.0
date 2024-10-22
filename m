Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A15ED1CDA1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSY6XWcWVdxbxVwXDc+uquo3o1n0XU1nNoADSXx4tPE=; b=mLQWNcBRcg4S+Z
	T0pORgraXE3ZikvFajwX6ifwkIjvP7s6lht1j/2XCV50QbVjJxgM/KFcHZRCFN4cvnM8K8e5uKlE7
	vnVHgcFvuxfz5fXsKEScuLxiGJy4H7B6/SuPHJeoOwZPLGMdz675k0litUtdQNlZN5I9DoAvRZM6m
	hODxDy9dXZ699oRjwP+EKbQz1uUt+BO15N5X0x/Ycio7A5e/bt5nbCNbmb0BKKkV9o/HkvHNOyEWX
	9UsM8VDFwajRjCsIny5UyISevZrRGu4ynszm0Mo/THFeQpl5o3PvuoODOoQP1vdyqZ6n2QlXAj9rL
	E7ye3sXJHq2Vfq2+qgmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37Zz-00000009gKS-34sC;
	Tue, 22 Oct 2024 05:37:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37VT-00000009f2j-0wSB
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:32:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 173175C5CF3;
	Tue, 22 Oct 2024 05:32:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E547CC4CEC3;
	Tue, 22 Oct 2024 05:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575154;
	bh=B9keYMouUTRP6Cr9AkKbSL9SmgGvWcUNob9kTza48ps=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jFPjyQ7gq5bIHNZ2mb4BO8mUkNktSs2Y3hN24MkOGlBxpwdDov5bGDcw6ox01I8cC
	 YlyH3hXto/nRPYg16vEfUzSmeUZ6NrUTkvYKO1+oBNxIbMY8o5AQW30f5skGDg88ed
	 4tvj5r9L7KmAO/tfcUqmZPPThMh3pNe/pBxE9wJlziw0emxY7tFpkaLv7ICupgjLdG
	 b+bg4qdB5FgqMlRV+syN9PnuzyeAifI2IZ2piOxKR6d3qrlp6677OnOB0zMh/UiM5l
	 tTIfcbqcIxoxNlXNx/vUZZSdQP2KAHzXNuM0Fe09BulnkXPvlyEVS7xrsnyDeU43C3
	 6cAGZ6RP7XMgA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <quic_kdybcio@quicinc.com>
In-Reply-To: <20240903-topic-qmp_typo-v1-1-781e81799992@quicinc.com>
References: <20240903-topic-qmp_typo-v1-1-781e81799992@quicinc.com>
Subject: Re: [PATCH] phy: qcom: qmp: Fix lecacy-legacy typo
Message-Id: <172957515183.488852.18123973313954304086.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:02:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223235_892878_225A303A 
X-CRM114-Status: UNSURE (   3.17  )
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


On Tue, 03 Sep 2024 13:13:10 +0200, Konrad Dybcio wrote:
> Introduced in Commit b3982f2144e1 ("phy: qcom-qmp-combo: restructure
> PHY creation"). No functional changes.
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp: Fix lecacy-legacy typo
      commit: 32f4a76b8e7cedec9f9aedbfc43626536bba8350

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
