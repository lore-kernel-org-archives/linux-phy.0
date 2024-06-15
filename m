Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91EE8C27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 18:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkOKy5kiqEmLEV8AgQhHtPnhnK8ikH3wSA2wHO2p/1w=; b=R2kP2yquyV0CqJ
	Xun/gAm37+5sMh/Bz/1rLT/UI/rpNxEdybhO7fV7DQKIi1OSBe5BD8w91RNLzjNC+GNRvofmjRD3d
	CCRW3v9scgAMEOb6CYvMM4Fm442vEGCN3ZOifA7ZfJkIRR5O8J//DT3olk5M7xwqyIaZ93gCXVH1Z
	w3wqsf/7G7XF5LtX2gXDLk4ZWYeVpQpbfL0EdpQePnN620n1xRrw2IEonWomF1s9DyWQxeuqWYeBa
	DpyiNxHmd0Rgy31sC/Du9WA2RdhUuQep5K8SwhcRPnIQmSulYVOeGjAMctnlOP9rnyS4CtoBUc7Nx
	FJqFXvlyYJXah5fAHdyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYVj-00000005x7L-16mC;
	Sat, 15 Jun 2024 18:52:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYVg-00000005x6u-27i8
	for linux-phy@lists.infradead.org;
	Sat, 15 Jun 2024 18:52:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A2ADE60B97;
	Sat, 15 Jun 2024 18:52:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B506C116B1;
	Sat, 15 Jun 2024 18:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718477539;
	bh=enrBKJyKrU9vC5DRQWn1UK9WzDWEr1TxDOe1KX2Jmd4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=eovqLs4JeCzg6zV8iHc7O76k2SjW6YtkXUFva2ahd71eDgraXPVoCtYe99mPcLscK
	 SSgf1MzRPQWW87w0F/q3JvJdZVLOeKe8xTtBFcVZF4Ok8P+rIj3biwRBLHnAlMwgxi
	 3JxW/CUtjQwapSoXXA488w/JHO7GZ+2bc4CTaw+CMVWnjJ3ojvoWQqUAQx3cIkGdBH
	 wlkWlCS1Yue4zfOJ3hSIgSTEXIEUeno+4fhmqm2xcVunEQbO+9HZo8LY1V4QAtdMzR
	 aPEMPftu0gZFWGI35hXJW5OlB5j2kR0t716DiWOYUhp+hSJDocl2pzIeoX1UPwKALK
	 VcI2TSotcDHew==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
Subject: Re: [PATCH v3 0/5] phy: qcom: qmp-pcie: drop second
 clock-output-names entry
Message-Id: <171847753469.716119.16988871542371189941.b4-ty@kernel.org>
Date: Sun, 16 Jun 2024 00:22:14 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_115220_710607_058B3592 
X-CRM114-Status: UNSURE (   9.27  )
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


On Fri, 14 Jun 2024 13:18:23 +0300, Dmitry Baryshkov wrote:
> While testing the linux-next on SM8450-HDK I noticed that one of the
> PCIe hosts stays in the deferred state, because the corresponding PHY
> isn't probed. A quick debug pointed out that while the patches that
> added support for the PIPE AUX clock to the PHY driver have landed,
> corresponding DT changes were not picked up for 6.10. Restore the
> compatibility with the existing DT files by dropping the second entry in
> the clock-output-names array and always generating the corresponding
> name on the fly.
> 
> [...]

Applied, thanks!

[1/5] phy: qcom: qmp-pcie: restore compatibility with existing DTs
      commit: 912cee11c14376a6f707d72fcaf343a40bff48e8
[2/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: drop second output clock name
      commit: 7cd3e586068aca123ff244fc259ba62ba96b6d31
[3/5] arm64: dts: qcom: sm8450: drop second clock name from clock-output-names
      (no commit info)
[4/5] arm64: dts: qcom: sm8550: drop second clock name from clock-output-names
      (no commit info)
[5/5] arm64: dts: qcom: sm8650: drop second clock name from clock-output-names
      (no commit info)

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
