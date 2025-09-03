Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AA80CA100C
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 09:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+dfq65SAo1wB9JIRuKlDWYLm/FTzDXMkCEJYnRVezw=; b=GRo4iLc9NENYwb
	wVcMiZEQFKp4Fdq7ioVJO37WmhKJ4g5sduV0hLYFrfGek9U1cO59oVRf10CjEkeaZx9rUn8y2qnQu
	TFdr7GKH7UsW9Uwe4dxB2aOyqhOPbH9hDKw+k41DnnG8Br/+s88G7NHkDLjajx/R/eCyOlv3uGgjw
	qvDpduB1tUtR0vr8GHpVJ0fcA+m9wHmz7gfGZzzKxkVel5rB5NG8UvEB5Z64idWJCSvjZRFgnY/WD
	hVn+JpE7rO2qSwdiAhw396X0BZArjHYXiHYufUe10HRx1cwMGmKhmwid9pX4qT9kfbh8zr2jBn5M4
	vyxL7kZR+NgxI7Y7l1+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utjtS-00000005wvD-3WsF;
	Wed, 03 Sep 2025 09:35:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utiR5-00000005Ma3-1RW9
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 08:01:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E35DD43E32;
	Wed,  3 Sep 2025 08:01:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3770EC4CEF0;
	Wed,  3 Sep 2025 08:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756886502;
	bh=QwlbbBn8XTEY2W2jNAhzP04Sv4nwcE6MqsWVHJtUSjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=evWJ5ttUngeh89aPH/g8M8G1rIv4N4j23/Q0Cnn/ZHoZs0S2oWbDNpKRFdtyqueO1
	 Fblst7nhbvnaUIOtgAgxhAiv7/FAwIk/vcro5uFYJI+W6Z53NHptYNIwBLWOHbCUC1
	 EUHMDrnZh5IAB70Sv0it42df4C3xWcVX89TY/AavHI3FvZ6VO3Ijx2FaAsDVziKJ7L
	 cEINst+m76MGTqCQEMdOPA2gxmyIdtAvfIQ5XsrbSpUcrcBkr2hmvCsX3L3X3VWYND
	 wPpGzsEWVkysIM6Sv4HQZ7NVGj5p86i+9fWM6wvfWLS7c/xUUAcr0jUlE7xj+3Hgf9
	 5JM8aXx84dLxQ==
Date: Wed, 3 Sep 2025 10:01:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
Message-ID: <20250903-leech-of-imaginary-variation-a91aba@kuoka>
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_010143_401029_E039CD34 
X-CRM114-Status: UNSURE (   9.80  )
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

On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
> Both bindings describe a different layout of the ports properties,
> leading to errors when validating DT using this PHY bindings as
> reported by Rob Herring.
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
