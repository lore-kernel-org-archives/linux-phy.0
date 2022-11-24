Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77477C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 17:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtqkNdLctZsvJ8HoCHeE3dioMIlEXapTkqMQ35koD+8=; b=1bpab0Z435+Zdc
	Q7wcGpG+y9kUcYf6GhpX+7rTIiChYnoYaWxoDe/tuSrzwtA7WSmRSnzD6pqxUGvUxTN55ZYu4Fr76
	xXsTCIlqYsIVI+jMdaiQsBV9A0BDyAeyUyNf4x62NuHYq5vKkkKcEs39tUCpnTNYgQ18/yaeB2SsZ
	oj3vtdiQBeieR5SrB76PjSzCjp6hSbw3Wtb3HnJ90fPcmgk95fvnYTflWGyGujwexrHb3HITde1c4
	vNtMVmDQGgj5/QIxBjSuF7JevQQ8ly3n4gqVwE9Gk+/5xQ3zfAQwXJTKBoSYU4QcvHfJjqUGNreFE
	i3XgX9EeVOYjIQDz93/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyFxQ-00ARuG-8C; Thu, 24 Nov 2022 17:24:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyFxL-00ARqD-PF
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 17:24:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 446B5620AB;
	Thu, 24 Nov 2022 17:24:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 049CEC433C1;
	Thu, 24 Nov 2022 17:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669310650;
	bh=sLYI5P+ZMh6NxKkyycCPNxF1W3y95huQkPC5wh9Z+BU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CHDCmUPTpdPyA5Tg3IK3OXznFOan1VCT1MRQ7qhxKjwENU5j79bPbPmpg52mY7V4Q
	 HyCBH9cYFLtacgn5jrDMs8doE+XfDPwtPAPrWi7RcA1ZoQ1Fx5OXFZJDXMtXyh/xbS
	 2ZbP5pyTgRsoSQamSIRkehcXlvAuvN0XRMWZZHLfqpQGmcWOC0N2BGiJgf7nLGzm/Q
	 e7leJylr/PZeYM4kyxbyHQ3VbLIsyNTNr9bzy1DPRGX0XnLppzqjJnZR8j8bbG6aGA
	 TWuXq1D33eelYRx2froKY8e/SJ54Bq5+TOcvcy30IqDpsLjHcIJ3Ynm8Dc0PpKUSj2
	 fNSP+pVlolX/g==
Date: Thu, 24 Nov 2022 22:54:06 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: qcom-qmp-usb: drop sc8280xp reference-clock
 source
Message-ID: <Y3+otgofTu8izmgz@matsya>
References: <20221111093857.11360-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221111093857.11360-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_092411_904057_C1A586CC 
X-CRM114-Status: GOOD (  10.08  )
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

On 11-11-22, 10:38, Johan Hovold wrote:
> The source clock for the reference clock is not used by the PHY directly
> and should not have been included in the devicetree binding.
> 
> As the new SC8280XP binding has been merged for 6.2, we should get this
> fixed as soon as possible.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
