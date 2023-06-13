Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49EB6EB64D7
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 23:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLPbGh9EXGtVAL6gf1c1zVRvkeAVK53UEQ172S+tQmQ=; b=ocxoiEFBsEya/8
	6j5ds/29siVWsVzg7GCipGC7yLkUzIe0gDbmBUdGhtLmAfdNSRl1sZUI2tdVdsgq243odhiT/zb1Z
	0UgII+l/SA/BDpQ0VGHt9l+BbmAXEMBEG6XA/KmXahQyLPNMQDYv5qAgGuhMb6OFLQA/HEKswhshv
	qdwDAJgMa9v0/l/ynwOnMAcSjvksQGJ0Tfb4cM5Rjrs+Az13ReQh38vFuhz3FWd9Wh7VcADOrwK0Q
	V0XBbJw71nRR4OZtxqnoV/+C0WtlwUmQjwkK7cl0yOssdnN/f4iQUV2lBOtS0iA2Syuw+QEljKfuS
	4NXfGYXo8m60qDZVAi7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Dhr-009T3m-3B;
	Tue, 13 Jun 2023 23:45:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Dhm-009T1D-2t;
	Tue, 13 Jun 2023 23:45:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 654B963C81;
	Tue, 13 Jun 2023 23:45:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A504CC433C8;
	Tue, 13 Jun 2023 23:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686699941;
	bh=2jkdPhZImM9+D+figD0v0IHiAIgXVBcYWC3TewoLMZk=;
	h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F1W6PenN5VkeE70mUR7U1RtCCxa26O0LNdr7DQBjIyeH5sQ92Xsru4m8R4OMafqr8
	 1PLQwX1vUQuhA4ekWITILW7BwigVzlCGHTDXPuGoV0/AdxycrHBHq+IDF9OuhAcGyx
	 Hsr0xZupqMPqibu6mmer+iBwSWFt1qQg+KYq5LluxlXKNPTiLv/SGVM916TmFMHp7J
	 FJieHzwCYD7KR7gV0vOouenRwQdp11VtZYoTmF0CGvaRBtmRKHASc8sJDb+Ghj2uWL
	 80XD0avmVBr1BWvNzir1eBBk01HtXw6piJhNM8KpydwCE2rrCoHdbp6NwZ+WKjJpMp
	 jqragYFffxm4w==
From: Bjorn Andersson <andersson@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	Andy Gross <agross@kernel.org>,
	soc@kernel.org,
	Rudraksha Gupta <guptarud@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v5 0/4] Samsung Galaxy Express SGH-I437 Support
Date: Tue, 13 Jun 2023 16:48:45 -0700
Message-Id: <168670013501.1400697.8528617647603360792.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607050025.86636-1-guptarud@gmail.com>
References: <20230607050025.86636-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_164542_980304_49F68ACC 
X-CRM114-Status: GOOD (  12.18  )
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

On Wed, 7 Jun 2023 01:00:19 -0400, Rudraksha Gupta wrote:
> This patch series adds support for the Samsung Galaxy Express SGH-I437.
> Currently the following things work on this phone: UART, eMMC, SD Card, and
> USB.
> 
> version 5:
> - use enum instead of anyOf in qcom,usb-hs-phy.yaml
> 
> [...]

Applied, thanks!

[3/4] ARM: dts: qcom: msm8960: Add USB node
      commit: 80ce22e5cbe705ff2e113890828d44aa0b3ad96f
[4/4] ARM: dts: qcom: Add Samsung Galaxy Express support
      commit: 2b01dda16124696c4b64edcd31e8c2d37c559998

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
