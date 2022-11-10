Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 009F4C43217
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tR3AmPTs3oNWygEVqspkatc6ZxtSNIP4gHS/2aWbh8Y=; b=cF/bGxxfs2CC8d
	fFV2hUPXVybTOLtu2UJcpdwmDePIFgPUfeZ36Vm5inRxBGzFQYFwvPXUi5RssSOAbpr4X0psfCsUE
	jI7o+Qqznt4WBBXYDzEZH2266D7tQT2Q/cdfK27KsCq3J/yfuzBSSfadkMnda1uoofRSZwLjQYN10
	ERp8kKW2zB0SIuBC6LpYOJjsnmqTQxlFVBYHAtwlkAB5DRHlnH8QBEwVmbAzgSngKCqRS864F3zma
	aP3IpdZRTJyuGmWtb4tKK8JJVA9pIQnAxAFtz4HJL34iuOniSOyJ8a/uZn16cZju0bdvDWfnjxOTW
	2KG/prWHzk15447ncENA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1cp-003jbQ-EQ; Thu, 10 Nov 2022 07:05:23 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1cn-003jaB-5E
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 07:05:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7DFB5B820DA;
	Thu, 10 Nov 2022 07:05:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A5ECC433D6;
	Thu, 10 Nov 2022 07:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668063918;
	bh=RFP7u4DtH4wfIt/9mEj6qpj0E+6kLfpEIQp8ULbixtc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q5aODT/82s22PBaa/1LelNb9329TnNvYO2/Kq1ccoP+k+U4lmKwd8mY8rlEqkFxNf
	 meFs+QodxSJPgcpVtT9BzubnWhznsfUgVK/CSAA2YcMUwXeXRwM+EOTN7REBPSxqXt
	 50PdV6qmmJ4GLBPRTBVW2MTPNtGL6gb/vBAuG28iG5Z7l7rLqTh7q5OkBdHCrvT9To
	 c31hFgqSm30QvKaxpkUr6YcEksudNjU3W7Usni60xlzpkLJzzlsgyafdX4UDcFnXNB
	 FvRtNQQCTRE0xajX9JsJ6fLIrohPb1Q1geb0jCBCD9eDhZL4b2fdgdJEXi0ssqBF1O
	 jzcQSSTYATxiQ==
Date: Thu, 10 Nov 2022 12:35:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 00/16] phy: qcom-qmp-pcie: add support for sc8280xp
Message-ID: <Y2yiqflyAXgVgZXG@matsya>
References: <20221105145939.20318-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221105145939.20318-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_230521_377775_682BD47C 
X-CRM114-Status: GOOD (  10.86  )
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

On 05-11-22, 15:59, Johan Hovold wrote:
> This series adds support for the PCIe PHYs on SC8280XP including its
> four-lane PHYs.
> 
> The first half of the series clean up the driver in preparation for
> supporting SC8280XP and its new devicetree bindings that drops the
> legacy child node and the (incomplete) description of register
> subregions.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
