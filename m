Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA883D3C523
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 16:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWqC65Wlw5mupf1H+UBZ9VzyOSgQKceWnWO775GIVs4=; b=awW4TwALVn6MJQ
	Uz2LLovqKihHB+mAfGzA3opCwiTIeQAbJQWVjpEGEdRR1CI/6pTCxnDM+vA/UuMMYt3kR8nACAS8C
	/ctPSP5ghaFxfy3gFC8O8zTmPPlX/H4cOtCRbhgiH8kNYsv7OAyWUYSs8NiprnLsvLmRHuf66AiGu
	AUCJcW+pBi4ehW4nep7StB7BbMxjPvSZDlscZT8OPynYybU78TLzQNzv1tUpB7QPP2YTDds92nlcH
	k4jYHz/3fEVDyApFis44egQK3FEmDFbaQa4zWGOqO4X7XrlcBFm7KaeLl6xsdOirIVQCWTcY7lNBY
	ePE6Dn13A7B2i+6A9OLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1TdR-0000000FYzq-1SWz;
	Thu, 17 Oct 2024 16:46:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STF-0000000FHmn-1byn
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:31:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6E5675C61B0;
	Thu, 17 Oct 2024 15:31:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D8CFC4CEC3;
	Thu, 17 Oct 2024 15:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179084;
	bh=vieJQes47g+OA0SB8CvhHf0OYDbiZxyy/v7m5nYIs80=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ot76Chu5TodD1919cJi+65JJ9Xhs+aC7GVlLcylqSctx00QpCcGV8UzFzfjMcge8l
	 TluKUtkEqcDy7wkD+krSS2KfaHDIfUhemK3C7bzdwsjysnTL9f8424MPx/qwRec0mT
	 CiLIy/Tp7AuLc0vKybw8UNo0LHt/1arn41+QVD1usZ1JUWBrFmBVV3pd7oAWg92ZM2
	 YwsLJmyOUxg6I4g+47MGA7asVF8Wa7v4d9r+cTjpfXHIelz3sO0GeucjOsqNctQ933
	 pC+uavXG0n2az2J68R5oBEVx+U4BjA3FDyarSu2Yer/V9qMOIRiM56Qb7N3E3CmAh3
	 Zwq8qq/3a9eOg==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241015121406.15033-1-johan+linaro@kernel.org>
References: <20241015121406.15033-1-johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supplies
Message-Id: <172917908201.278159.9935539018681259704.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:01:22 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083125_506187_5DB10403 
X-CRM114-Status: UNSURE (   4.16  )
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


On Tue, 15 Oct 2024 14:14:06 +0200, Johan Hovold wrote:
> The PCIe PHYs on x1e80100 do not a have a qref supply so stop requesting
> one. This also avoids the follow warning at boot:
> 
> 	qcom-qmp-pcie-phy 1bfc000.phy: supply vdda-qref not found, using dummy regulator
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supplies
      commit: 031b46b4729b1a6ff8484a1e29cdb41b710ed740

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
