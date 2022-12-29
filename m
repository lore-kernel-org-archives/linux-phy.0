Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 652D7C46467
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iePaCi5S5R6Yh6tFg6peFgmZGdDBEsjs3SYbK05FFvY=; b=GoSjLi6AO8UkQ4
	TpXtzLfxG8yOtNTzYRc87jl1gi4fDqXMW0XdHDcQFV3CZ4zcvDIIQm6BUaFqjVOPLQBbLIzxsWnvN
	3yoKXvtjK2X4tCD8vHOZYyx6erAQOuOYCdrLVXqYc9aE+FZd4WkYIIcfIU3ns8tbg5LVymH3pOHZD
	yLR0aBWmVNCNzCv+XoJ/yv3Y5WZdKDnPCL99JHmaPTZ49GDqMMCfbM0fPnEcWVh7sGDaP6iTAVhXR
	TpHblynbNiNCLLbXJa8ZV1cqhs27/jbaX1BJgJAePs6S0Kqwz/GgnFpZd5KFanr7pTFKgg2rUlJfo
	8NEHPBQxUlnTxRENC3XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAwdK-000Iax-JL; Thu, 29 Dec 2022 17:23:58 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAwdH-000IXC-DT
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 17:23:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 65F66B81A1D;
	Thu, 29 Dec 2022 17:23:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5877C43392;
	Thu, 29 Dec 2022 17:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672334629;
	bh=HU4MnHmmBDb9OIPsFbHECPnG5crF+eulSsFCVAVp9t4=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=tGrxrApVFYFtZLpt5k7J3a+ffiyQeS8NEyXL61RPme9p3hHyyzmruKMyMgtFDfdPj
	 pI4fXQ/mnhBrlzSRLmlEs9wsASuV4WJbuTdS8a5nEbut1/4S1lMbaD/nsn226UT2G6
	 yPDR+/c9RD6QHwEY9Gw8MjFhZ+T2FqXzxxsa/slQ+wHzMgsNLT3ZZKpsRedIqmDcAN
	 Q56ZcuroJevj8ess9u0OEppWGk/MI8NOJJqqVOtsVhCpMZBlmU/VPXMx9L2r/eeZHl
	 5LU+DT/XwZGzEFWxn49pIthycylH7SVYjqJU27QmpQYj3EkmoAbTPE/D/MFwa7Dyma
	 66MRk1TXT/8Bw==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	vkoul@kernel.org,
	linux-arm-msm@vger.kernel.org,
	quic_wcheng@quicinc.com,
	linux-phy@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	kishon@kernel.org,
	konrad.dybcio@linaro.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 1/4] dt-bindings: phy: qcom,usb-snps-femto-v2: use fallback compatibles
Date: Thu, 29 Dec 2022 11:23:28 -0600
Message-Id: <167233461765.1099840.11639944662425293788.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_092355_618270_AB2758E1 
X-CRM114-Status: UNSURE (   9.95  )
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

On Fri, 23 Dec 2022 17:18:32 +0100, Krzysztof Kozlowski wrote:
> Document SoC-specific compatibles with generic fallback (e.g.
> qcom,usb-snps-hs-7nm-phy) already used in DTSI.  Add SoC-specific
> compatibles for PHY on SDX55 and SDX65.
> 
> This disallows usage of the qcom,usb-snps-hs-5nm-phy and
> qcom,usb-snps-hs-7nm-phy generic compatibles alone.  Do not touch
> remaining two compatibles - qcom,usb-snps-femto-v2-phy and
> qcom,sc8180x-usb-hs-phy - because there are no upstream users, so not
> sure what was the intention for them.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: qcom: sm8350: align MMC node names with DT schema
      commit: 06a0676b5de9221537156957b90b2b69dfceebba

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
