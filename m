Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EB3DC4345F
	for <linux-phy@archiver.kernel.org>; Sat,  4 May 2024 12:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7fXGlMt2BTOahoOP0HaC22/EUZl3ZWUNt3hoXJZeCw=; b=wEX01VmCCcgRwd
	0xjNuLnD/vDygWviW6hhYEoaJjvj1nPe/vBjjLh8aW6f6PyNKWKDjtK1hoISvL2dTfvrmiNXxT4jG
	qAvz6jjk2Uy5vR4D/WdSNHJUFjcHdBf5+/kFw7mW7QVojWjvlNER/BxbZj6e2p0ofgpHhphBtkkia
	DCgdj8zDHNo71NI8M3ORiik1znSuXyWcQdu8jt9AWPRfOQjDANWeMJ2xxS9X5SH5ENE97ARwWbwv2
	06hNWwNiTPGWu/NNu0fShqpnVaSUFkSqVROy5elIG2bo7VyD9dXFTjVVu8S2BFSLy/CKQyyAmjPkU
	b5LQ5xepEVFuNFB4TC8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3ENI-00000001yxL-00SQ;
	Sat, 04 May 2024 12:20:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3ENE-00000001ywq-42sB
	for linux-phy@lists.infradead.org;
	Sat, 04 May 2024 12:20:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ED04F60AEF;
	Sat,  4 May 2024 12:20:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85901C072AA;
	Sat,  4 May 2024 12:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714825215;
	bh=ineIkKnUDuzzAdF1Glab7iGxw6dnoH+T249xBi2Kn1o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tjvlCWALAkayeTgJvVNm6gTy5MqAIbqLLZNjDRYl/VrIsc/bigU5Fn1woEByqb2/I
	 mHVTujEgQNR6ILF/KVLv8KX/IAtazQfVJf0Mb3svLY2HOIyuAIU5VeLNOnAxK4qrvy
	 JDqikK7Hdv8zTwUG9u/v7bVmi2lOocYF5zPEH2i4O+k3VA9DBspailcJH3aks464Wx
	 T0Es8jT74T/XD9+Zx3QfN1SMp8W+BfC2U/1BdsUJhhjYzVKV4G3Zl25RNKFFrwxhq3
	 5u8i4PTckLtYTyBZLGiuM0TEUQSAFJCcVd/XUmk662HSRG087I7VwxhiLvow2scU/S
	 i/+ll8/LrMKsQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
Subject: Re: (subset) [PATCH 00/13] arm64: dts: qcom: fix PHY-related
 warnings
Message-Id: <171482520711.43908.14495514942152454655.b4-ty@kernel.org>
Date: Sat, 04 May 2024 17:50:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_052017_090698_5DAFFAF1 
X-CRM114-Status: UNSURE (   4.95  )
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


On Wed, 01 May 2024 19:19:26 +0300, Dmitry Baryshkov wrote:
> This series goes over Qualcomm PHY bindings and device DTs and fixes
> obvious errors and warnings reported by dt-validate.
> 
> 

Applied, thanks!

[01/13] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: fix x1e80100-gen3x2 schema
        commit: 484b139a4cd7e629f8fcb43d71997f400c5b8537
[02/13] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: fix msm899[68] power-domains
        commit: 59e377a124dc9039d9554d823b1cb4942bcee9a0
[03/13] dt-bindings: phy: qcom,usb-snps-femto-v2: use correct fallback for sc8180x
        commit: 960b3f023d3bda0efd6e573a0647227d1115d266

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
