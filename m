Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D624CC4451C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 06:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRLXCUpZFs6iuKfugOAWJOXyVGyTBtxDiQfJmmxVxQg=; b=LfDC1YsadOhehS
	q1sFJRGcCYpyjX/2Hb9eljhvQFt8FFE9x69XVPJkEI7IJDWGbAQ0VCZNeeUyFs+ZEE7EOUKjstgjX
	O0zwbT40EQZSxRbMK+74EajVJr6i9PosL+2N21OwA46psK0n3AwD4VEJug0e6cQNlEgBlY88ur9N2
	2iZMq6pOjqjvqvN4e/6iVv1REGraNzqgkq0Cxv9B42IhFSIkK5Aylus5W9QOjccu7NR3nid7nWeKA
	vYFJWWORPkkVL5efoxX4/OlkA0ofGmIzqblqodYLH9q/HZ26hbqZo4i6SikoYJMrdaUd1SxWvAryD
	Y4rzIci0NMSHmkeON/EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQtw-0000000B1AJ-1j6D;
	Wed, 22 Jul 2026 06:57:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQtu-0000000B1A0-3pAI
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 06:57:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AB42360A65;
	Wed, 22 Jul 2026 06:57:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61AF61F00A3A;
	Wed, 22 Jul 2026 06:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784703473;
	bh=06XF7zpSnsetbA0eus7tkijIniC80Q0nSuvoNAK5KGQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lOEHauXRUNHaWZHe8+W3+FJCQ/xB4iOyemVEL8HToPwnAa7M5biAhvlq4PWtClWk7
	 o3J4tvqZuh4vzLuzgaVqfPHWWnQhBrx5U9zUz9BIHnFkQtR/j8Fn8vR8d7fhRPYzvm
	 7v6hssZh4LN2sy4zI9MREoxLuz4dOUGMaPKL9rcvJO85Ho9/McuJjpqZRgUqaS+yup
	 v59ryEcp6dTPxVM6W3zvlJAaEc8lqVCUq/7NxbwBvPdYZWNk51AkDngA8l/gRjN4XK
	 YHmYjEQeNNykgDaGt/PdVPZVjRUjwkqm9ziLpyem82V0NfWOY1D5D+EqgVwI/n65YO
	 f5fFy5i5gL2Hw==
Date: Wed, 22 Jul 2026 08:57:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bryan O'Donoghue <bod@kernel.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	jeyaprakash.soundrapandian@oss.qualcomm.com, Vijay Kumar Tumati <quic_vtumati@quicinc.com>
Subject: Re: [PATCH v6 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8750 CSI2 PHY
Message-ID: <20260722-literate-nondescript-seagull-cbdfaa@quoll>
References: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
 <20260721-add-support-for-camss-on-sm8750-v6-1-a5f841061d18@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721-add-support-for-camss-on-sm8750-v6-1-a5f841061d18@oss.qualcomm.com>
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

On Tue, Jul 21, 2026 at 05:46:00AM -0700, Hangxiang Ma wrote:
> The SM8750 camera subsystem exposes six CSI2 D-PHY blocks that follow the
> same programming model as Kaanapali. Describe the SM8750 CSI2 PHY using a

No, SM8750 does not have the same programming model as Kaanapali. When
SM8750 was created, there was no Kaanapali, so how it could have the
same interface?

> "qcom,sm8750-csi2-phy" compatible with the "qcom,kaanapali-csi2-phy"
> fallback, so the CAMSS binding can instantiate the CSIPHY nodes as
> separate phy devices.

Redundant sentence.

> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml        | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> index 7943049834f9..95375efb2597 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml

I just commented on very similar patch. This is confusing, there is no
such file and I do not get why you keep adding some long chain of
patches touching the same lines. Squash patches.

This is untestable.

> @@ -16,9 +16,13 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,kaanapali-csi2-phy
> -      - qcom,x1e80100-csi2-phy
> +    oneOf:
> +      - enum:
> +          - qcom,kaanapali-csi2-phy
> +          - qcom,x1e80100-csi2-phy
> +      - items:
> +          - const: qcom,sm8750-csi2-phy
> +          - const: qcom,kaanapali-csi2-phy

SM8750 came one year before Kaanapali, so how such compatibility is possible?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
