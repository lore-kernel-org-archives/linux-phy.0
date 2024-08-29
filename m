Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B5F1C87FD2
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 19:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5v8V5YJyjuc9DEHFy483mD8HoIkzq82EG2YgELWtP9g=; b=BKSgWnN0igjJBf
	GChhrWHySq1lOcqqHmFfRclXjWEntsOY9u44JszXy/DhuApvjYuhJzoUST+xpgJGHcHWYAx1rqKK1
	NbeOtHkO/h4podBW+Z3ZsEwr3Q3qeHAt52OvBIc+aJyzv5w+OfXYmHWoAA7qUwxh50zs661Bb/dn/
	Dw5p85lApVfmzRAKljl7ZzQnVL6bWYrxZf9/iM5dVNk8WdLFn+VSvWHefEEGGq62wYyCwBsYzi9z3
	AZZFvhiwFKGJdjZ7swKMth8WkFXZ2g4rMcy1y8PrNc5nif1JN4VfFQpS5ZRR2Ux/xtsPxzZ0vIz7C
	CtzLY/9s8D58nEtVlnQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkSh-00000003I81-385Y;
	Thu, 29 Aug 2024 19:05:39 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkSe-00000003I7N-27GV
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 19:05:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B9BBFCE1C36;
	Thu, 29 Aug 2024 19:05:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99CE0C4CEC2;
	Thu, 29 Aug 2024 19:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724958333;
	bh=/iNnvS9L1fXTjGz3fzdrIG16tzQk111vX0xu7VQbKRw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Su3+N65F8SCLhVmIKkbkdYOqxNvdHVw9KFHCmWybUJfn4dMzlJvyec159e7rcUh4W
	 xYYOHWrQUqFp0qyGsUFgPAN1/GM0bxKRGTnvgyPoGH8vZPZN/+mLI9T1NfrPjKSnei
	 59OWjwbp1UdraQK8LPF/KNMeVT0uTtvQXVet3VJCaUWLRzg7ygG1490WGhHXRllF0g
	 zeItbm9xG7J4Hvu9jg67AHKx9/c1/S0TDcGqSdN73/JJTCRrYrvplMMxEjmWIK04NO
	 amfeK09fDUUTgXR3SK7qH4UDJk4g8jmh93K5/jQbekJryb02NSwQpagn2PYTehIbzk
	 yjSkr+Co3KC3Q==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20240801-phy-qcom-qmp-pcie-write-all-tbls-second-port-v2-1-6e53c701e87e@linaro.org>
References: <20240801-phy-qcom-qmp-pcie-write-all-tbls-second-port-v2-1-6e53c701e87e@linaro.org>
Subject: Re: [PATCH v2] phy: qcom: qmp-pcie: Configure all tables on port B
 PHY
Message-Id: <172495833122.405683.1905233025604889518.b4-ty@kernel.org>
Date: Fri, 30 Aug 2024 00:35:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_120536_750166_E13FBA74 
X-CRM114-Status: UNSURE (   5.52  )
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


On Thu, 01 Aug 2024 18:54:53 +0300, Abel Vesa wrote:
> Currently, only the RX and TX tables are written to the second PHY
> (port B) when the 4-lanes mode is configured, but according to Qualcomm
> internal documentation, the pcs, pcs_misc, serdes and ln_shrd tables need
> to be written as well.
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp-pcie: Configure all tables on port B PHY
      commit: 00c5f32283f377ec60870bccbd518d9feb7fbc52

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
