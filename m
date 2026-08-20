Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C6DBC5DF82
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xycXPoiwPZLeJcH9W6tUyxt0aqc+l3gpuHyU0WEDYI=; b=2IJlHghdMKdsyB
	NCZXzoqSHAreUKjEi7DYfEpwjRaorKMo6njUew/kHD/AlfuDD7JkpihIE6JKmEjOHP0QJqLT9i3cG
	NZizxt4f3inlom0VyTf4Bzb5Lup5h6MiZ2K6KRpU8PCUa0mi9kv6VdBpvbWI7ZtFAm/AMfDKkdyaT
	EE5V1t+YTSdfaMaCEEQu9+L54ponqeTnyABoYQudUOYVmVQC4hWD8IB8BS3pgk8vb8LjxkZwECnfX
	tDu5NK8O4JR9xTrTayQHLrsej/0aPjLhiLo0SGh/7NXD94NPe3a94J2MYTXJ65IsLzIPkfNh3tplo
	lZA2MY/xKnPTNykiq/yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwJB-0000000AwyL-03JD;
	Thu, 20 Aug 2026 06:31:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwJ9-0000000Awy8-3Wfm
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 06:31:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2849741362;
	Thu, 20 Aug 2026 06:31:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F94A1F000E9;
	Thu, 20 Aug 2026 06:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787207483;
	bh=900O3VEyybH1aCttG4gYFZ6ZQef1hSFgt0IBxSvtlbc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XaY2PjZZh9/4Puww5cBXgf2vNZyzChaDGitUPW55YoiVWeG43wWZkATUbXMPiGFh1
	 AvKoNnMJ5r/dAT7KfQHOKhXcZ2ur8f/+pDxD011cXKdoLb+R689Ss3xEu9ahJqUSxV
	 5iimGhDvbUXtH0yz/xsFOON5tDgk4T7a1on+AHdh076JgIOLaRkVUK6NzMvUHkVJNw
	 mnA+vstJwbWo2BfLTMrTWIi7rBvM6++bGCBH02a8X8mE7kQF28HqiDEfWZplpFq5OH
	 i4rfpo9m42tmpqA1W/qFkXgJ07mEL2kFt8Fo14Cwsq1mHzIdVcd/Y9P/TJ37pTNHes
	 MRfYRvVQef6yg==
Date: Thu, 20 Aug 2026 08:31:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, Andy Gross <agross@codeaurora.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 03/10] dt-bindings: phy: qcom,ipq806x-usb-phy-ss: add
 MSM8974 SS PHY
Message-ID: <20260820-copperhead-of-pleasurable-wind-3db2a8@quoll>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-3-1a47e1185524@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb3-v1-3-1a47e1185524@oss.qualcomm.com>
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

On Mon, Aug 10, 2026 at 02:42:33PM +0300, Dmitry Baryshkov wrote:
> The MSM8974 DWC3 wrapper contains the same QSCRATCH-controlled
> SuperSpeed PHY as IPQ806x (SS_PHY_CTRL at qscratch + 0x30 with an
> identical bit layout, CR protocol port for the lane registers). The
> SoC-specific params differ from those specified for IPQ806x, so add new
> compatible for the PHY on MSM8974.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-ss.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
