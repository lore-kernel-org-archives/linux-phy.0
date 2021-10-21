Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45501C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 06:09:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 10FE560F57
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 06:09:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 10FE560F57
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyXkBGOA/tKnhQJqFoNxNLxweuZCLA4OdAhatpqGvPs=; b=TIGOcGua7sM13b
	0othH3Q5vrg6B2RGPWVApiI1m6kAg21gkjoVdYLQjIwuyxUxspNYG2KhxlLMhVVCets2A0eOyQIZe
	4d8tODAyuPyhXSjXEWhaM5PLDS/x+a5qjqKn5tOqWpO0kr3IT/HWCH42vvNZ7siocEGYKcYgXkvyE
	vYXcxLHuTItERAHBpS5otE/kakuBIJzuo3UhYxC++bQp3TpT3cjougIdmAEvhrTcTXfYi/4IYomL0
	So186hLGuNwrq0pUutSm4DRSk67qlSyHVMh7MuF0Jo0CI8tb0WJUtIP8XWH37/ZLdQxLgh+LblzNZ
	zFEUTcczPbkx6dxSsISg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdRH3-006UUd-JW; Thu, 21 Oct 2021 06:09:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdRH0-006UU6-R4
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 06:09:56 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 09B2060F57;
 Thu, 21 Oct 2021 06:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634796593;
 bh=NlpZ+tRRFszqoSX8V5iXnjX/Amqqcnl5RIAZP/WUKYA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nCz7acZHYP2rMtrIwrl7LHZtYIPnTHSPw2Yv16mxP25W/QMoL7FeQN41o3s4Dxw7X
 drFuLvr0QoEFHOO6Io46KCHObs3T1K4tSFy4UnXJBDxWAdliJnYj9av9tgOe9ZoHml
 e3XiNooGPmV9qaRAw5xcdPUj1yOWHSpVBzqQR6HC0atqWs7+md75QYSG0Q9cn4KBRR
 +rUMwKkzOXUuAhVzuf9Bhcjx/jGjUFYsZv7q1fr/NOFUmEZObXPWOIcyhYOZBB0dPK
 gn6aFXSzqZj2DMR+ebaHeq3p8lSTpCM6Co8tqNdizObD5LoLLDx7KPy6pkrSHlPe71
 YZ0Vu1bouTDNQ==
Date: Thu, 21 Oct 2021 11:39:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qcom-qmp: another fix for the sc8180x PCIe definition
Message-ID: <YXEELLHeCerNrQ1a@matsya>
References: <20211020155604.1374530-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020155604.1374530-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_230954_938616_932D81FB 
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

On 20-10-21, 18:56, Dmitry Baryshkov wrote:
> Commit f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support") added
> SC8180X PCIe tables, but used sm8250_qmp_pcie_serdes_tbl as a serdes
> table because of the copy paste error. Commit bfccd9a71a08 ("phy:
> qcom-qmp: Fix sc8180x PCIe definition") corrected part of this mistake
> by pointing serdes_tbl to sc8180x_qmp_pcie_serdes_tbl, however the
> serdes_tbl_num field was not updated to use sc8180x table. So let's now
> fix the serdes_tbl_num field too.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
