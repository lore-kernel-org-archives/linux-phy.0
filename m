Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BDFBCFD37A
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 09:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TL61lBLWFyr3IP1inQzLIiPkXLOR9yPN4f7/NQ3/5J4=; b=GhzyGfpGnQxyui
	KXZJhP76YSfPPynT4Lrql9ruazt1Ksf+BawcTwFCwPRpQNl836mep7Vligqde8Dbs+drHUD3ofjy2
	zuCsXn9cpO+ltStIgDrN5mI36Jz7VQUgz2K2ucxHNKpzW3ct4CYvyGTTT2JbvkHKF/uNV6qyfAQ9L
	JEEjM+0a/3hMLwaDYYRTcEZTjJ24ctpmCIrK635xusjIOWzsWssfQ+zkPheU7GjnPFEIyfTrBgCMT
	S5PdL5wJcRbXvAwJkGXHwzFJ+CuT2MQOEapUT9kcBmbOIRMkwTTROcmyw6yGOp16yDwod6DS2cXa7
	/mgq7qpWIzA339FWV9zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNppH-0000000D45S-0RyK;
	Tue, 25 Nov 2025 09:59:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNppF-0000000D44g-29mu
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 09:59:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3C58644148;
	Tue, 25 Nov 2025 09:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84FA1C4CEF1;
	Tue, 25 Nov 2025 09:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764064749;
	bh=ozJ7861GQ6438EySlqEP/tdDJrMAS0tcnOH32xZ6yaA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=frEiSv5F27sxmu3HJaoLapJTZYDpn3ED0NgHCMj3jO/8dNSUSGD2er6aH54tr8YD5
	 qUMxiYOELsgQebR4YiGOu8w7m85s+XA9WLbaNNPzKOBTeEGlL+EdY1OibEUfsVyDmr
	 lypVc5VB2GCPYOh9lbGSUgRtLAHaMBEEtIm4/ZQW2wy2lvuGHqkGRvs0bp4+q03jWJ
	 qMf5WjdZS76cdG2szHAUPKXRp1B4JwHQxwnRjoX8t2CMInanoEBMkEjlcVREtlTY6S
	 sDKXJ8hoX+HLtO+sofjNXN5xQ29/wOHLgUNNW85TOsmzvdrj70ZXsA7sS4iSxYWdm2
	 Dn/lMtTtFia7g==
Date: Tue, 25 Nov 2025 10:59:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Wasim Nazir <wasim.nazir@oss.qualcomm.com>, 
	Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>, Yijie Yang <quic_yijiyang@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: describe additional regulator for
 Qualcomm SGMII PHY
Message-ID: <20251125-happy-silver-monkey-569cfd@kuoka>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-1-73ae8f9cbe2a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-1-73ae8f9cbe2a@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_015909_574463_6888BC1F 
X-CRM114-Status: GOOD (  14.13  )
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

On Mon, Nov 24, 2025 at 02:55:17PM +0530, Mohd Ayaan Anwar wrote:
> Describe the additional vdda-0p9-supply for the Qualcomm SGMII PHY.

Why... device was completely described or not? What else is missing?
Please read writing bindings doc - the bindings are supposed to be
complete, so you bringing up properties afterwards feels odd.

> 
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml         | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
> index 90fc8c039219c739eae05cc17108a9a2fc6193df..0a1330b9118d63cf5400325c58bca05ebc641055 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
> @@ -36,6 +36,10 @@ properties:
>      description:
>        Phandle to a regulator that provides power to the PHY.
>  
> +  vdda-0p9-supply:

Why not vdda? What other supplies are you missing?

> +    description:
> +      Phandle to a 0.9V regulator supply to the PHY.

You just duplicated phy-supply, no? Both supply to the phy or how
exactly does it work?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
