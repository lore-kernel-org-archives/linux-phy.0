Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6C61C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 14:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqlTnS22pMNzOlb+YG3dCKtkqa+z/FQ2aP4FoEDNHAk=; b=JkWdqm4UhpmIFK
	89zD8cCNNvaxo6uXTpk0HureEnPqN5gUBFOEzaIraevQ3EYI0qYgH5Ep2C63KswfQ41A9RegwQ+P7
	Xi0Ph76qpfchr46JnYpq/vMCtKk2mOeXsIcRsiMKgd7YlxIuPhiDPRNk4WO7FOP5J2Psl1MXr6CnE
	GDmhx6czyEAVo36Gu6WnTBowO8m5rbP7xXoZaMwf+N6BPaFhNLnWQVxhdbPprlXrjPld+h5ybAt/8
	qhz96r+5jr9j1co/xDdknVGzoIUQQE3BzFLXen5qaPSq+1REVEBpJZMwFmZviCGfFO3CNmPJMuq2q
	E4mhptabYQEmlAxbi5CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPPyL-002zaT-8r; Wed, 02 Mar 2022 14:28:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPPyI-002zZ5-J4
 for linux-phy@lists.infradead.org; Wed, 02 Mar 2022 14:28:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3EC7DB81FFD;
 Wed,  2 Mar 2022 14:28:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BC28C340ED;
 Wed,  2 Mar 2022 14:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646231330;
 bh=x5NhZSDTe+nBk7s18b/KMi3nUIEuVJYY1jAlwghRTyk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lZCrFgAVl4vJwdBUJKqCZreKsAfPLt6WCJ3rKSfZYE1Ygf1C1lKiVYAWqo51qTIkz
 hKteFm4C9635nJ773d5Me4M+0h1bSFNFgLy9hk/ifpwHZvqMWT/JpVJQJfv6yuI5vw
 scC4wN4I/KiENygKF0tDoUUsxzRCL4mFlcp5opU0DFa2/rjXybuTqQ7AWpJFp10NVE
 U29UZSVNmQz7Zow63+JcBshpMw6Fjy6iG/kRaNE8rrtl45v4EH7r51r/Zx7GpJo6+N
 V9OCGCciFnIG3Xo7awHeaWrnDJRCyHXG54eTik6I6XNbwbjcJ/GHRSyKqXiTjI3yl6
 Ncm56n8TBwBEw==
Date: Wed, 2 Mar 2022 19:58:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 sc8180x and sc8280xp
Message-ID: <Yh9/H9SQilPoHaa/@matsya>
References: <20220225034049.2294207-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220225034049.2294207-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_062854_802925_DE6E329A 
X-CRM114-Status: UNSURE (   8.05  )
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

On 24-02-22, 19:40, Bjorn Andersson wrote:
> Add compatible for the femto USB PHY found in sc8180x, sc8280xp and the
> generic 5nm form of the latter.

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
