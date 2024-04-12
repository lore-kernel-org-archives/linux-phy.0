Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC85C4345F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 11:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3j4tolexlRxfmYv32tFQ5cdhlY+pNlqKNn1i+jAXe6k=; b=IJA+BS3luKOB2q
	ZUiWxwV5MDiLFVJvjSMErkwuxTeC3MChh8SX3N0qy0n7Z9pI0c5jUGU6JQdP4cOj2mUbQduzvLV+0
	ECxnRrbdNj0gFbZw5BGFP5Opp4G55+TFhM+kZkL5/RETljTbdtJxN1V/INTTqWPsTcDl7QF0DaK+X
	oJ5MyOA3tEviW6JA5HivSeUXN+Oig+adJQfQssoTt0ggoS6KVFQC+fpw/kp6QZkYemIjiGzSpFiUf
	gLiNcPlxBF+ZrLG8wmvE7zb80jbYmlmqRlHa7GeolZwGRv7YQdkbuoXZmRhPlZFH6n/LqDSNlnCq2
	Y6KEW7+6AIpgvVIrmLwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFCY-0000000GxTE-3zJo;
	Fri, 12 Apr 2024 11:36:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFCR-0000000GxNu-1com
	for linux-phy@lists.infradead.org;
	Fri, 12 Apr 2024 11:36:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 94C3862243;
	Fri, 12 Apr 2024 11:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06522C2BD11;
	Fri, 12 Apr 2024 11:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712921766;
	bh=chGlz5FfpucQrwEEUPSG8z86IzC4ekByV1HkK79lBGE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=S8OS9AFxp18uOIlZJSphFOPKqagir8s5qpP7inChMTomDCiUFKyxKh/RUPMx22xQs
	 pvsYkdLS0IOeGflS2cw+5GRx0dtqo4nV0secC+cZ7BCln7qfC2EDRVY0YTjO3JhSM8
	 Fic9tA0s6b/PF7zkbGDq7QL22xGvpsqNpwJs1HCH/CMYIDnExgnNMJSMn1LLGgSr2u
	 iIkGspMCQolAjAx00h4m1GZURijX4+DqxIU0x1ZyTujkGmL9vQyU1XVZOMMuyB2WMK
	 a1UGeptY1/CGMFMzn3JeN9B+Zm0xQryJl1BTuaxZ0+kh9XLM5PAYFzRkKJElqXH3+w
	 97yg+h+fSFfew==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240410-topic-sm8650-upstream-ufs-g5-v1-1-5527c44b37e6@linaro.org>
References: <20240410-topic-sm8650-upstream-ufs-g5-v1-1-5527c44b37e6@linaro.org>
Subject: Re: [PATCH] phy: qcom: qmp-ufs: update SM8650 tables for Gear 4 &
 5
Message-Id: <171292176265.599803.1266564123422138265.b4-ty@kernel.org>
Date: Fri, 12 Apr 2024 17:06:02 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_043607_941071_F62E3EDC 
X-CRM114-Status: UNSURE (   4.69  )
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


On Wed, 10 Apr 2024 17:39:40 +0200, Neil Armstrong wrote:
> Update the SM8650 UFS PHY init tables to support Gear 4 and Gear 5
> using the overlays setup (only supported Gear 5 before), and sync
> back with the latest Qualcomm recommended values.
> 
> The new recommended values allow a solid 50% bump in sequential
> read/write benchmarks on the SM8650 QRD & HDK reference boards.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-ufs: update SM8650 tables for Gear 4 & 5
      commit: b9251e64a96f87441694d41dbe98ee9349950fe7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
