Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD06C369B5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 12:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dd0HGjFHwvKpWMWfmHk7n4YZ0NcKgIqVlvgvSpT7XsU=; b=XXhss71rTwLZtz
	TCvCxpSpvqzBG4aFLnswXAqlqdUY58ORxs53J5wgdCaN18ld+GkVbLfLhU5YbGhJiKb0VYCKuStlQ
	ZrJoB/nZCyylgG19YuAvvnPC0Y6BiHr2B5mXbS3L6oezK8ItY1YJpqqxmpAUaDkwHI/1P6temAaV+
	gv1rE1f82sQcGroJ0gFSGeglktRcOpiKS8gW1QlOdTk/xvdJjwWOpumTeS4JQzLZh8HwW4NInfSK2
	lFdBOjsyAzHJDWR85W5ETsXxISpLU4Oo0dABjtqzAw5Px952nv1f/TH5fnPtPWEDQ3Ek5nZ6cZcJv
	ZcCfjnwhLkRkk/Rcrjdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JOd-000000021kz-29nO;
	Mon, 14 Apr 2025 12:58:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JOb-000000021kb-2jiY
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 12:58:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 690D761156;
	Mon, 14 Apr 2025 12:58:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2119C4CEE2;
	Mon, 14 Apr 2025 12:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744635520;
	bh=ZLod5GeDITCrF893kFp2KeEfQ+aSWVu96c4Qc/UeQZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MsokLDblm+WdMl14QgRVs1R5PBaQBE3jwmg6Hc2CCxHcsiauCK3emMZr5hk82yq1k
	 4XexBZlVM4nuuF9HzLa8ErPvZqDuc7OF9sjO1BeNUeF/cSk2alseevgTIYuafDqNL2
	 RSOFs0qZTMg1BSkgerauzXTSrgValXrKfvCDHh6/wjW+iW72i/RMqMgJ2vNEM2I+z4
	 pylsamysF9amTav30VE0b4+b0yrBdGLt7MxC0ICR4inGDhZSYHaPFgp5k9NWJ0HJpV
	 X8NbV2zCYvxrP3rXaxKPOQBF50CrY5KgQVnD+XXrZ2Xd5sQs90TjMMWobCTkw7JSim
	 0lwB1PN3j5UzA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1u4JOW-000000008Pr-2SZ2;
	Mon, 14 Apr 2025 14:58:37 +0200
Date: Mon, 14 Apr 2025 14:58:36 +0200
From: Johan Hovold <johan@kernel.org>
To: Chenyuan Yang <chenyuan0y@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, lumag@kernel.org,
	quic_kriskura@quicinc.com, manivannan.sadhasivam@linaro.org,
	konrad.dybcio@oss.qualcomm.com, quic_varada@quicinc.com,
	quic_kbajaj@quicinc.com, johan+linaro@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
Message-ID: <Z_0GfAFufdAiYE_j@hovoldconsulting.com>
References: <20250414125050.2118619-1-chenyuan0y@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250414125050.2118619-1-chenyuan0y@gmail.com>
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

On Mon, Apr 14, 2025 at 07:50:50AM -0500, Chenyuan Yang wrote:
> The qmp_usb_iomap() helper function currently returns the raw result of
> devm_ioremap() for non-exclusive mappings. Since devm_ioremap() may return
> a NULL pointer and the caller only checks error pointers with IS_ERR(),
> NULL could bypass the check and lead to an invalid dereference.
> 
> Fix the issue by checking if devm_ioremap() returns NULL. When it does,
> qmp_usb_iomap() now returns an error pointer via IOMEM_ERR_PTR(-ENOMEM),
> ensuring safe and consistent error handling.
> 
> Signed-off-by: Chenyuan Yang <chenyuan0y@gmail.com>
> Fixes: a5d6b1ac56cb ("phy: qcom-qmp-usb: fix memleak on probe deferral")
> CC: Johan Hovold <johan@kernel.org>
> CC: Krzysztof Kozlowski <krzk@kernel.org>
> ---

Thanks for the update, looks good.

Next time, remember to include a short changelog here after the --- line
(so that it does not get included in the commit message when the patch
is applied).

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
