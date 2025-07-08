Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7539CC83F0F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Jul 2025 08:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/WuSXHD4+/vrLB/sFF2+Ln08MnozYftP3TgxTwX6KQ=; b=ALdR5eAr+D6B/y
	/xNUML+o5L0Rf2tho5LVbr2BkBjv/yTf1YunIaH3copOCczkg+0R9+Z7SSAXaoPKGX3qA/YyQoWyk
	ZC/tOofBsJlFQJwzoYWd3Vj6au/apx5YOCKTth2q0J7s6DHrH1PbtwN1y2yF/s8DKBMNm1Y1YcpeY
	o+v4WYqj8eHArmBh9Ir0jKr9EARgbE1dkXNaV7iGiEDimoUut/3Hq+f+Gbbk5ebTlhaYhRCyTmoel
	57ZJstaLUHO8cg2w0ySeCyaf86X17qnIoa//GtEULPmeo27LpuN5juCapZOzMDOXwxq4fB15NYNu1
	TrhlYUJ6ll0S0aEsdhQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3c8-00000004jXv-3fyB;
	Tue, 08 Jul 2025 08:23:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3a0-00000004j3O-0r7p
	for linux-phy@lists.infradead.org;
	Tue, 08 Jul 2025 08:21:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3E86246699;
	Tue,  8 Jul 2025 08:21:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B7E0C4CEED;
	Tue,  8 Jul 2025 08:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751962891;
	bh=8PN/PFOLCto+wJyr7ixRplnKv9QuyDqxu1RnCpRLIJE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G3003mvuWma2TvBG0K8/VWpXIhlx4FnVnUWM1qerYmoXUDRdw2looXA7w1SbHFLZb
	 j2OBaUKu0jFDD55kYynYdqYiMZsdwbUMeuSPwMM9OgfXxOae/aBnpze2Y4KlV1qGg6
	 fPtHJnS9E9fZLpa2pHxTiN1D71kDfgs1vppAAdki9zQnJaHomqRa+xkPRqzrvLNEE/
	 oFGb3oenSFbptvYk6ppJnt8ZaYnC4tiGBbEl7s+916aXUMGQ+ZGogMp7o7zZV4TuTR
	 z3gI+gKpGPZ9VTPAuyEwjAcMmU64Tcczhu/WZQ+kZcN1j3w2dYVTQZ7m8T61jQVNEs
	 GgSrGsmj4nHjQ==
Date: Tue, 8 Jul 2025 10:21:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for PMIV0104
Message-ID: <20250708-analytic-misty-chital-3ddf86@krzk-bin>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-3-19d85541eb4c@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-3-19d85541eb4c@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_012132_298178_9D2D7DA2 
X-CRM114-Status: UNSURE (   7.46  )
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

On Wed, Jun 25, 2025 at 11:14:58AM +0200, Luca Weiss wrote:
> Add a dt-bindings compatible string for the Qualcomm's PMIV0104 PMIC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
