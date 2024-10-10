Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B220CF07AA
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 06:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31/eptXFpuk88y0KlafY5sjAa7ZQR8k4Aw4Ajcs1Zmc=; b=xt0rzBwpqYDwPy
	VZhsoI40yX0zeBNglc/3kmZfDc9sYrMh8vY/IWSy+FUSnEIlc2DUZAeiH8GpwtXemZ4x1RcMqj38K
	c5gDAD5+vircJOZKeditENt6zgmGCiJlSXf3wV1fTw/c6p+Wys/1RCCHQGJfQ+6p6aZxz+9Y6I15U
	wdiJyLj4cFaBbvgP8C/ZMmrLEgi/V1HLQU6RWjq02H7RQ7jqN0SeKvnMDnoEf24ZD899wjkIOM4ew
	jq+d8cVrAlH1/TgBsLwBEF9S6oSFGOk5CrA31e9D10TJWhTJqoPeICS3zvI3DPRKxQ14MQ1nBIlfh
	FQvzFuY/Yh0zHfLZYTZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1symW6-0000000BenC-0INU;
	Thu, 10 Oct 2024 06:19:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1symTM-0000000Be06-0gor
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 06:16:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6417FA41475;
	Thu, 10 Oct 2024 06:15:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09CEBC4CEC5;
	Thu, 10 Oct 2024 06:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728540956;
	bh=d6VHCc12/e+8/rsJ+7n8CqF7F9GlZjZTg11jZQMnNUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=doX/zZTvJ8IT6fezuGeTm4roX5dRaIoG36NhCGetLiAQnrObJvL2SRv4q7V6prrCz
	 Lsv38E7/N/TVVhqlsLx5kg19SCJcG6tEoNtetl5tAqI8dnl666iseE4nhgvh+ezKoE
	 vrSggOD3wiKY4vdsR1bR1NtZFb+j0TCFjhlU6J14P/3Zz4c9ecsYzgMtn06dZmWcjJ
	 aBafmcRM/wrAj8cjisWKlWKxR1y4wXaERDDE721Dp5oQc/wusnW2l21TQ73NOaC4Hg
	 fQ3hueyh/FVDTGfymni2QI3zjXq3vU9/7SeUShi9q9CxDkf0OabeMwMbELe9kOOulP
	 6UNu+1HzxPO0Q==
Date: Thu, 10 Oct 2024 08:15:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com
Subject: Re: [PATCH 3/3] dt-bindings: net: qcom,ethqos: add description for
 qcs8300
Message-ID: <da45vocnwnnnlo6nrxh6x4xwmnsgdp5axfvomzniw5vxlmerer@6ntl3ae4q2ci>
References: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
 <20241010-schema-v1-3-98b2d0a2f7a2@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241010-schema-v1-3-98b2d0a2f7a2@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_231628_283265_A6CAF9B9 
X-CRM114-Status: GOOD (  13.13  )
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

On Thu, Oct 10, 2024 at 10:03:45AM +0800, Yijie Yang wrote:
> Add compatible for the MAC controller on qcs8300 platforms.
> Since qcs8300 shares the same EMAC as sa8775p, so it fallback to the
> compatible.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---
>  Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> index 8cf29493b822..3ee5367bdde1 100644
> --- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
> @@ -23,6 +23,10 @@ properties:
>            - enum:
>                - qcom,qcs615-ethqos
>            - const: qcom,sm8150-ethqos
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-ethqos
> +          - const: qcom,sa8775p-ethqos

This block should go before earlier qcs615, to keep order by fallback.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
