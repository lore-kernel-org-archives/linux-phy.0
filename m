Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24303C88E56
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaM9+1jdCKE1IvqBzzFwSgTji4lk2xVIklUhJNpZVnw=; b=sdDdSJQ10Xe2eJ
	AJjkyfYx9WHWfhNaaPkbmP6UsK9XdQdADpPp5LTl81/PsgsrFBbjGuBIyOnGF3bn+qBHRN75LJ85c
	o6nMEHyAGpuLqNNLQ1TqU0s2MIHflrxVnc66N0LPA/ZKNDkgYj6MB19d0pHfb2DSRER+cfv2mH7ws
	Fs8fi0wEjmgVgXZ3gCno5xZyxTeu9KY2qcF8PYz1+u+1lTeLmdP+FgmUG2+YGXhpxIipjjpRuZwpW
	O2sUarqrhIDu9OroZBF0TBvkgsK2dnKP8yORQC7lHGZ184Yjw7NFY21bFkWkmi0986kGr8qt4nqy1
	mPaxbf7jrYaaFD2Wbowg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5ht0-00000001bWo-3UIw;
	Sun, 13 Sep 2026 10:56:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hsz-00000001bWF-1WZb
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:56:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CC0C360DF9;
	Sun, 13 Sep 2026 10:56:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63BAC1F000FF;
	Sun, 13 Sep 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789296996;
	bh=pF1niYnfjh7vJ+1BiQA9FjBf0i42IB7zTZsbxD/S+Pw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=P5nNfUGL7en9tXW4alxr9D1WgfEzOH92KG04BpOntcpvUHyr2v0rtqFXiS/7wUO2g
	 cUOMSPBP9sDBJ/bzyfXkycwdDIqkxWcu7nHgeDeo8MinUfJ28ZAzaOs488K5ESqk9A
	 qeqOcAa/jQVz/QpOLcv/mTv8xmazO1HL6uSfNjsbpeCxdj3DU+sjL7/sC1p5R1fQQZ
	 KNPpMO089TYNtrPzCTCPwpQ5BDhktj28/iSB9qFDqhwd1+BepRI9fBwrpS0u5KWcYP
	 FV7oP4+7OH6BmdT70tHZigQdAm9H96h3R0v+g/PqVWunA5Olh6EWaOauObPAuZ4Pwn
	 jmSJNRcuhcTFw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, 
 Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260910011500.659353-1-shengchao.guo@oss.qualcomm.com>
References: <20260910011500.659353-1-shengchao.guo@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: qmp: Fix alignment in pcs-v8_50 register
 header
Message-Id: <178929699301.215437.10095052705588925527.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:26:33 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Thu, 10 Sep 2026 09:15:00 +0800, Shawn Guo wrote:
> Fix up the whitespace so all offsets align. No functional change.
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp: Fix alignment in pcs-v8_50 register header
      commit: 7773e2d88b87c9e7385a5b8edc466360edd31d8e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
