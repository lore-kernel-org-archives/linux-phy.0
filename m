Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877EA606A326
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 13:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4oOISdHY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WMax0dVv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mzhywBmC9RqXs9GhZTUwKOje9bi21/zgrANh0bAG/yM=; b=4oOISdHYSR4sFO+QX1Bs+GmdtA
	ykMsjbatAqMtfA+B8KvFZ7l9WOAaBpbff5g6W+ViEQBO3f2urIUW5Md/G+fvpaKenOcMJK+g6po/F
	LC4OZGKrnyVdsTr0NR8ctoUWkpy6ve6nyTg413OLmkSzb77H4t9FNGd1dT8WAJAM2R81Obc/9j8Pq
	X8+EcaASH5xYqObnuqJoQnNhQOK4un/URk2QMp/08s2tCGU/Zzb4Lxg8ykYRiDWv2f5RiwMZ7uWrK
	92DY/8rTxd6O1ZR8zCqbWszJCpzOQCTnM7qRsueIfAGwetBPtTXebQXcJ5T4Eu1QqQVhhLu+Z9wr0
	saBH4QOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWCxE-00000009yQe-1Ihf;
	Wed, 25 Nov 2026 13:22:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWCxB-00000009yPs-2f07
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 13:22:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CD9446022A;
	Wed, 25 Nov 2026 13:22:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BEC71F000D2;
	Wed, 25 Nov 2026 13:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795612948;
	bh=emxCZDEqzWJYlKf+mDUqiOGrtxBvSatF+1Fxzn3DErg=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=WMax0dVvZgXApebiAX4owea/ncCsj+Hv3gYSZBbIwWJcAms4ujW/EFru7UPYgSqRv
	 liq/MAk5nS/FodvzWGWPoJiO0FVka013qljWUL4CLrdI0g4PMy391mNIoKAUzxJQPt
	 dmD58wVvYZft4jaAYkMxKxMi6PnD9lvhJe8OyK4SEAPGsZMij+bQ3kPHrlDbk/NH9Q
	 ZNIRCdwfc0kJY7nMJql+CK61iVmmiNRD+HwJE9eKIxjxZzq3XR170cKphtnqm5N8MW
	 hf4cboemDpBSLohT64s5g+uWco0DDRivA9rg/aEwkHT7nWyMS2c0lbGx+sYUKPqbQO
	 Reey9n7j4NYxg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
From: bod@kernel.org
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Suresh Vankadara <svankada@qti.qualcomm.com>, 
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260925-glymur_camss-v4-1-d7c2983d6d7b@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-1-d7c2983d6d7b@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 13:22:20 +0000
Message-Id: <179561294019.462348.12092000419789488599.b4-reply@b4>
X-Mailer: b4 0.17-dev-cdd92
X-Developer-Signature: v=1; a=openpgp-sha256; l=1279; i=bod@kernel.org;
 h=from:subject:message-id; bh=rWQ9EFQFoqQKKyg2XNS8sq8Dzx9hxSQ587GJORFIsXA=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBrBuEMunHzLxOnI45eJbn64QO0L8cOtYEyplyXK
 ZETsgYbj4+JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCawbhDAAKCRAicTuzoY3I
 Ou1sD/49VTUjW2oTClmGtgYYvMZppDicFSjmKCMyrdaqDzTBej1Cg3ZYG1XYu9lMW2JrbY7KwRb
 8Mceo/4GV8vWPcn727f1qDVf4l142Sm8OQgohwjs0CSgMoMnKjr2JzYe+jOH4qAmDAI5GDRcy1x
 a+R0VJFYhqqYaLiNhCcCDGfOIJtup8x0iMcmZ1zOI5offBJ6t1Nb4J59hXLpQlns62KuZl2Hssn
 +gm/2GS299hlZ6qzStDrY/mw6+8Flk9AocftyIgT2YVFsN+wMPxMj6+aj0lPcVDpQ6Yi62gDL2Z
 o+BRFOdzktQOv353oOYwpo7hbVRyJsawxRbZDDi0OQoOmgx75pTQ/N6WBNakVqmFPxrLMz2JRQ4
 1X4boIYywXERzmCtL3jA8xV7a2N6F7uPIdkAUDYcwXW4wPWHoHPyKi2pIBMXYGpNrw5PPFhbpUy
 Cb5UIrWRz8zOYtm39nZJE71h9xgatGcBx6QRwK7AapLNqp7ZcQueaeDulBdkzFwFW3qO7nsIqDM
 ckMeL0qSd4bAW64KD2VgAYI/agpJctRdPFG63EcM2NnJ7WD46tf6TVwP6RFGNOkJmDnAeuArYQ0
 PFzSrqcZ9MxFVQDlUE4Q014nTtbH+PjCyxZWeaT/VghhlgXAKZ9PGB6WU0WdEbzUgpXNEK9eYiL
 0yo3XzTiEdlbUXg==
X-Developer-Key: i=bod@kernel.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-09-25 11:18 +0530, Nihal Kumar Gupta wrote:
> Glymur integrates the same CSI2 PHY IP as X1E80100. Add
> qcom,glymur-csi2-phy falling back to qcom,x1e80100-csi2-phy.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> index dc64af97da6c659628729a758316353798aa98db..1f1e2a4993b2aff9a1519640bc4e04ca98fa4baa 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> @@ -16,7 +16,11 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,x1e80100-csi2-phy
> +    oneOf:
> +      - const: qcom,x1e80100-csi2-phy
> +      - items:
> +          - const: qcom,glymur-csi2-phy
> +          - const: qcom,x1e80100-csi2-phy
>  
>    reg:
>      maxItems: 1
> 
> -- 
> 2.34.1
> 
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
