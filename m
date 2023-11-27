Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9739CC0755A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 13:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmcnTYh1eUWtkGmSGh+ZOMC6haZiFfhn77dl4laNcfM=; b=S9yVVQb17qusbF
	HiKnI/TK0PVS7p/MSlQDOk4VBHCiuvwK9oj7mkPCzqZVTU0FqYOfbJVekrui0ZmrioiPx/BK7W8JD
	TZi4T6UPVH9thDNWRarQuDJfq3YoY7fm66hG1ir+QzHqKd4W/q+yyWs2ikEmV1NZ/nOIAnBl1gA+M
	fCCzhjYDNJYlnGLTp/++SPQ0jzLjRZkUQSb0MPKKV4FLroPsSN55Ov+WQpV+w8uFIMz3Usph0Sfmc
	vQ5K0OEfZDamgsDyMwwbNeykrGpO/Tv9LH52vAUBj/pw5hgdJnAxZl4gcegZqoI61Lsic/HXBiRdl
	rR7HZIT+1Qd/VND9y5oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bZQ-002YUE-0S;
	Mon, 27 Nov 2023 13:22:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bZN-002YRb-1Y
	for linux-phy@lists.infradead.org;
	Mon, 27 Nov 2023 13:22:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EBEE0611D9;
	Mon, 27 Nov 2023 13:22:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78255C433CD;
	Mon, 27 Nov 2023 13:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091356;
	bh=35mSssdQ32iia6B41JAGWk9Z95xz7+xMRF65KM9/eUM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=u0kxVcFL1u3Tut+idFGtQrKOgeBXK0Q9kX+gNESLPwytck9pOdMAca5r40EtdASty
	 CbcOWKmsPxbKTUbfCulvFSxoUul56xoqpvpopxl0oDfDglqR/v4xSVleH0dWh2NWST
	 b0llnAQ7g0CSlov87WUFzoSYZqj39oRfuSZH+PVUjprQeAs2aKMgZR6FbP/nbriYXw
	 e56EiPxa6C6qhNr4SeJxixN2MPPxMt3JSdkr1jmGrfxA29VgIkGrucdMDQynZG3LE/
	 qhRPct7jH048cWmt4ZsU1fQsJqnhF6tOjK/FF/MPwAWWp5tiUzsA4om8xI+1q2iPCR
	 RCoEcx0JZ3u4Q==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org, 
 quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, kernel@quicinc.com
In-Reply-To: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com>
Subject: Re: (subset) [PATCH v4 0/5] Add USB Support on Qualcomm's SDX75
 Platform
Message-Id: <170109135110.42627.7639304783931136606.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_052237_578382_428B1EF4 
X-CRM114-Status: UNSURE (   5.57  )
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


On Fri, 22 Sep 2023 10:42:00 +0530, Rohit Agarwal wrote:
> Changes in v4:
>  - Replaced the v5 offsets with v6 offsets as per Dmitry's suggestion in patch 5/5.
> 
> Changes in v3:
>  - Removed the unnecessary change introduced in v2 of patch 2/5
>  - Added Fixes tag in patch 3/5
>  - Rebased patch 5/5 on Dmitry's cleanup patches.
>    https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/
>    https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: qcom,snps-eusb2-phy: Add compatible for SDX75
      (no commit info)
[2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
      (no commit info)
[5/5] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY support
      commit: 7f6f9e0def00cfaeb1d034fd13dbd84470aeccbd

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
