Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A702CD11DF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 19:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30pEPBpGaH2SX+sFSGF9Jrz8voa/2Pov/oypk9vf1/k=; b=Djqfqrb3xg4vVV
	/27f+p8wRnNx7CCbZRTpn6RLnyaWK4ESM7lSSn4WVk/J+c9bdMMRUsSM8SzXQsvYQbCcuVGAtypjJ
	yifnsN5rr2cP9AdItpxgqWlQQuOKXUt9TLnDI/p4CtD1VQKoWZM60xfGmsABTac1yD5HD2z2PokG1
	Q39Qc64jFS2BrQC0snw0CFNe+gmneEIi7tDwYAYRdYJItJ2VYImDtcCSucw2ivc3+zaqb1No/DnVK
	w4GNwYbdRpb7Vr11/A0mk/8oTslxGCmda33qEUrC8KJ5L+qAmH6J0PKZwYOe14DznotWcgSatkuJD
	ep24Xe0rnAIZeQA/ssIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHC-0000000FLaF-3eBo;
	Thu, 28 Mar 2024 19:19:02 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvH8-0000000FLZ8-3vfc
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 19:19:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0604ECE2C18;
	Thu, 28 Mar 2024 19:18:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 031CBC433C7;
	Thu, 28 Mar 2024 19:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711653535;
	bh=/2FwrcuxW2z/ha9sIbh7100tVXqzXgvk1gda2cIs5nE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jftcwO4rh+t+5iSEKiw4//3BPGSDqE225ZiJLIkwXVLno6+pnx8oayEnKYBp2VDKu
	 W73Dws42e20irofCdvDtVM5PuDXBLb8j39L9gl3s5jXWXRuv2kJdCSp+gbQfT+79BM
	 zNxc6bnX7oV3oEW6ab2IXbNc41KAWVdaZ2N9rNoWvfcLX0UC8CU3PDo1M0g5ihzq1b
	 IyfKD06Wrz94YX+ODmpHaXVHObLIpByI2Umk/9D34gegd1FR8yzSb+fiYyexKu8CBK
	 8thgdmZNGyyldMX8uUJfw6Zt4iMv+H4drImBnvw6eCZAHUwiZQlq1ThUyuVYwM4aKK
	 n1J8ESUJsgGeg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
References: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
Subject: Re: [PATCH RESEND v5 0/2] phy: qcom: edp: Allow eDP/DP configuring
 via set_mode op
Message-Id: <171165353052.152303.10328548451703763437.b4-ty@kernel.org>
Date: Fri, 29 Mar 2024 00:48:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_121859_309309_A91B9AFF 
X-CRM114-Status: UNSURE (   8.41  )
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


On Sun, 24 Mar 2024 20:50:16 +0200, Abel Vesa wrote:
> Until now, all platform that supported both eDP and DP had different
> compatibles for each mode. Using different compatibles for basically
> the same IP block but for a different configuration is bad way all
> around. There is a new compute platform from Qualcomm that supports
> both eDP and DP with the same PHY. So instead of following the old
> method, we should allow the submode to be configured via set_mode from
> the controller driver.
> 
> [...]

Applied, thanks!

[1/2] phy: Add Embedded DisplayPort and DisplayPort submodes
      commit: 368d67dab4cc4a3ffd39fbd062b2f5796cdbb37b
[2/2] phy: qcom: edp: Add set_mode op for configuring eDP/DP submode
      commit: 6078b8ce070cad3f9a8ecfce65d0f6d595494f02

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
