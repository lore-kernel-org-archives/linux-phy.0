Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32B00C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 06:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGWs6IBsfjRLeHgGNvblvpMdsBw6JrfxQAv8zXLLEBg=; b=lEp/LLWSGzek3l
	PsEOsKbU+8rDOC2G0upH62IdUKfFqL9GQHy2BxgzhKQx8dcxXZsW8KvHfDkmJqtkMSjBoTHq9XvFI
	4xR7svv8VPj8gr4NyZ4Afqm2HBWYpU/tgmAFDV3kTFoFGImR4bGNQGk2GLZUlIf56aC4Vosx9pnCU
	aS3L3u1w4MqzhH+oUW16FbWtddchd+CHgfvCx18Iw/wodK1hZwGQxkbmbPuwTkOr7RuNjLHpm9IpW
	AV76Jen9wEcRYP4cm27nsJ6f3W3WDZp/GKlOCFLhCm/wX/V+WMiXAy2voYqse7zti0auv0dw9VD9r
	cPOIfxZzmqv/7hR0cAAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwLi-0000000AxCl-1xIV;
	Thu, 20 Aug 2026 06:34:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwLg-0000000AxCG-2o3n
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 06:34:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C5EE760A84;
	Thu, 20 Aug 2026 06:33:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 551EF1F000E9;
	Thu, 20 Aug 2026 06:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787207639;
	bh=pD0WGepCub8+i5e1jJFZFXcaekgCTPD8PN9ZPkEAxKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EEV5IBYz2sQWJcppHKtA/neiMzJ8dzTcX9gTn+cla5ZDnw1X9SGDDTAheeNnsJ5yC
	 KVSPTvmErc/gyeXhnEFzeV19QOcyqHOp6JyphfJsaIlXT2XfYPb+ZGXc8eT8ZmFEQV
	 4HqMQPfKauWSbgS6yWmck4PIsan1kxcOy0rormH/e0MXbDkLrL3Pkij93QUf/8bc53
	 baov8xWkYJvFmH9UNjAhGMwfCPAPm+GMEfsYBKJgSsMQh4rdkAO8rlGUNkQnNH0cou
	 mSxn0E5Ry9anTXI8qyd0nM1Kx2+LLc/mgWf0VFh4bhTToC7Wef+gDhrBa3LMlaIxt3
	 A/iymAZ0o4OmA==
Date: Thu, 20 Aug 2026 08:33:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Chen <peter.chen@kernel.org>, Pavankumar Kondeti <quic_pkondeti@quicinc.com>, 
	Stephen Boyd <stephen.boyd@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
	Greg Kroah-Hartman <gregkh@suse.de>, Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 02/10] dt-bindings: usb: ci-hdrc-usb2: allow the HSIC PHY
 as the ULPI child
Message-ID: <20260820-optimistic-merry-mussel-9efbc0@quoll>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-2-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-2-e5f93ea76ffa@oss.qualcomm.com>
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

On Mon, Aug 10, 2026 at 06:42:06PM +0300, Dmitry Baryshkov wrote:
> The Qualcomm HSIC USB PHY (qcom,usb-hsic-phy.yaml) is a ULPI device: its
> driver is a ulpi_driver, so the PHY node must be a child of the chipidea
> controller's ulpi node. The ci-hdrc-usb2 schema however hard-codes the
> ULPI phy child to the qcom,usb-hs-phy.yaml schema, so any HSIC
> controller instance fails validation with bogus clock/reset/compatible
> errors.
> 
> Allow the ULPI phy child node to match either the HS PHY or the HSIC
> PHY schema.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 4 +++-

USB patches must be separate.

>  1 file changed, 3 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
