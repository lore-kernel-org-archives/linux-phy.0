Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C059ACD8C9D
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 18:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYnaIO8LzpG/KIHET+5bFDWRt3gu6oAOiJA4U8ZIo1s=; b=qJXkdsidUnBiYH
	gXKYO2rf7RG+k/j7NXLYIM1ObWfbBEjQdBDdPyF2DdYzEWNtUexuXXj1MhFIJROXQrTwHkpjPfpR4
	r4K+nKgywIe03E9gTL2zj6V+oLkee0zZgMkNuS1WPfab7WcYtFd3Wb+btKIQImv3HfjJ0LHHFTsen
	/dZBiy2Hzb/RnTk6hGfGgjjQejyO/pIqBxoqzIzUsSbdpWonlV1JHSjxNzvQiCl/tbWAIJnfVKC36
	8OK7F20jBs+bJcFsFmBq0/ZF/uiq/81jDk4WrX7FrwjLRGJy9VxkSIYwKslCPFnhaTuI6EIT4KPZS
	KtEHm6Z1NTXdtyfthViA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXjzK-00000009smy-0aUK;
	Thu, 11 Jun 2026 18:18:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXjzI-00000009smo-1w0d
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 18:18:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 17B64600AA;
	Thu, 11 Jun 2026 18:18:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9023D1F000E9;
	Thu, 11 Jun 2026 18:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781201922;
	bh=hFDThq6/pkUuUwQ7LYJNLndIpy/hj5He8RSY5SpOSt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fZvC0BiEi32YEBEdq5HvP5IDSdLpIuV9cUDrDHwtdZou2rrIQMM0GccYpPAWbQDBp
	 W02MrzBwmpHNpLj87aspCMDaAPfDCIohPlhA0unELniCoZYpFuLapjdy9UalsAttX4
	 xawD7WHb7gwdyhDsutvgskPg14AGRFZylTCAPBUKSI02BdDpwlQGPyKOEusJtYzEug
	 4w6LXBbeSC/LE3EGxzXOeCDvi1K5YCVwTe7/l7CSjuGkvJ+W8T0Fb3nbz93FvMhwUY
	 Hqh0OtjqAtjAmSNY24k3ccNGdcct7+d82HTKY4MJCIXyDARba7v+uLOVYvttbpt/vT
	 doJIkh0NBBjrA==
Date: Thu, 11 Jun 2026 13:18:41 -0500
From: Rob Herring <robh@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Ulf Hansson <ulfh@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
	monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v5 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
Message-ID: <20260611181841.GA3163205-robh@kernel.org>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
 <20260611-shikra-dt-v5-1-103ed26a8529@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611-shikra-dt-v5-1-103ed26a8529@oss.qualcomm.com>
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

On Thu, Jun 11, 2026 at 03:40:08PM +0530, Komal Bajaj wrote:
> Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
> form factor. The SoM integrates the Shikra SoC, PMICs, and essential
> passives, and is designed to be mounted on carrier boards.
> 
> Three eSoM variant are introduced:
>   - CQM: retail variant with integrated modem (PM4125 and PM8005 PMIC)
>   - CQS: retail variant without modem (PM4125 and PM8005 PMIC)
>   - IQS: industrial-grade variant without modem (PM8150 PMIC)
> 
> Each SoM variant pairs with a common EVK carrier board provides debug
> UART, USB, and other peripheral interfaces.
> 
> Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant and
> its corresponding EVK boards.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

Missing Krzysztof's reviewed-by.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
