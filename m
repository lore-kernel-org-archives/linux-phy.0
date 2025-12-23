Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA6ECE6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MOL4ykyXP7NGMFQvmyPv2ituVNBD4L92yWJB4hejxs=; b=WOxHCM7FfWcL0v
	GrWP83RB1/h+Me3cbDsP7yLQoxD9DnJaK0Qt3taPvCBkx2vKX1SV1ZW0MYFwb82LU5rX4+e2brvQF
	wFuMqQGD7EQ2EkjlWqu4jmzpqWE9yiVp6klG51z3UQbeLt3HYCQfEr4R22joxiS1H5wmPg4K9qxjs
	WEzjA7APGltJSUJHMuzT9a4myTzYYUdHXomAvF4tDbCA9D0GopBwb+Zkj/KmaRPupIxkzGyh5r5Hg
	ngjV8azANj3IK3TVmT4tZR8h6Ow0RyKK2LESFpM5tuDaLGi95OjCY2TNOr8XGCwOw156dgGEv8ZE9
	J0oMhgb9bB7YSRN6nFIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Rc-0000000FrDg-303y;
	Tue, 23 Dec 2025 17:45:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Rc-0000000FrDG-0o2m
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:45:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9DE9B60123;
	Tue, 23 Dec 2025 17:45:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1040C19421;
	Tue, 23 Dec 2025 17:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511911;
	bh=Fp74yWwB0EL3oH6IPXUmyxxgfVxbhxLvcA5X9IqTBa0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Q/xtCSU0WBdYo290s9OJ4gg0vUURad0KXkqk2QKqkamz84YEETLMwajEYwJ4007ru
	 MJVJ2QxPAbnuWV0K73kknyuU3FuUeeJgKWKe+lnid7rH7Sv6XXcLQ+wXuMpOAvSsVv
	 YG5WoYLjRAT6GeniIa8Ct/jOadaaArcdcggHCkt+18CbCvSWkuNzIPDw9WH5p7Mv8S
	 Pk4///Fxb324F8Vu4XPF/gb7MnCradJHtw6WhgvBfIs2PewX0GvEtZ9LPRIIAa8um7
	 1Kg6JxyPFCvBkn/C7lA+Ib869TfiurDzQoyS6mS9gpOnBsEUudCqs4ru82GOIWYbas
	 oPmly00tmDebA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com, 
 li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251215-add-displayport-support-for-qcs615-platform-v8-0-cbc72c88a44e@oss.qualcomm.com>
References: <20251215-add-displayport-support-for-qcs615-platform-v8-0-cbc72c88a44e@oss.qualcomm.com>
Subject: Re: [PATCH v8 00/12] Add DisplayPort support for QCS615 platform
Message-Id: <176651190661.759340.9506342080628643827.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:15:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 15 Dec 2025 20:41:56 +0800, Xiangxu Yin wrote:
> This series aims to extend the USB-C PHY to support DP mode and enable
> DisplayPort on the Qualcomm QCS615 platform.
> 
> The devicetree modification for DisplayPort on QCS615 will be provided
> in a future patch.
> 
> 
> [...]

Applied, thanks!

[01/12] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
        commit: 70f12a4cc6a04869b2185be999e3849a6c17439f
[02/12] phy: qcom: qmp-usbc: Rename USB-specific ops to prepare for DP support
        commit: 9f5f6083b3bd74c7d25737241e32821adb294e14
[03/12] phy: qcom: qmp-usbc: Add DP-related fields for USB/DP switchable PHY
        commit: 0599a4b9ee13b10820fa71f058bef8cc6f06b0b6
[04/12] phy: qcom: qmp-usbc: Add regulator init_load support
        commit: 3b19374825676e0b548b808772f5ecbe8af4f9da
[05/12] phy: qcom: qmp-usbc: Move reset config into PHY cfg
        commit: 5b2dd08459ad1f61dc7037032a5230c0efd9d797
[06/12] phy: qcom: qmp-usbc: add DP link and vco_div clocks for DP PHY
        commit: 049e708e7705534a9992b24c5090d133c8efbca6
[07/12] phy: qcom: qmp-usbc: Move USB-only init to usb_power_on
        commit: cb2255822509c9dcdd1fad0cd167032dee7dc6c1
[08/12] phy: qcom: qmp-usbc: Add TCSR parsing and PHY mode setting
        commit: 9ab26cb7e652f3cdfb3d59fb42907c0229f2a93f
[09/12] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP switchable Type-C PHYs
        commit: f3198fde573be23de1a8196bc5ebb0abe9c7e02f
[10/12] phy: qcom: qmp-usbc: Add USB/DP exclude handling
        commit: 8e7670f7465d46bfa72980b310d39491a3a944d6
[11/12] phy: qcom: qmp: Add DP v2 PHY register definitions
        commit: c1282d5f85857d72cf947add3f14240fd82da261
[12/12] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config and DP mode support
        commit: 81791c45c8e0eaeba9a40927eecd082a8500f709

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
