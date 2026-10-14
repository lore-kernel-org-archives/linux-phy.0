Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3019FCC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 11:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxOoym+HOa9Mvxd7eV5ZBhz6XqQKaq2fes7pywfPU6g=; b=QIj65Nt/7g6qxY
	sAtVLUuSLXIPth6Vs+uwGdKVqTUhmOjZBfyqQ72fvyRLloaqFz6twm66q/mezfLdoSDi2bAIimgTJ
	22UkkH48u+YqyGvKDMIv9iJljTT+mpmgjBzXALYfMrL9g+mPAeQTKqkSGYNSkxYrlh2UBw3v+3uVG
	3LXgyJO3OCAddvmwcsjmR/b0mcfF/IJaSJFLAm0rigxEPSGfSP6c+rEVRvVqmdkwXm6qs1OSeEES1
	9xUqrbpZSPd0zTdKdqRA6PRvi6cdNXWXU45CwTgs0oSJ9LqBoUkkUs7sUUN0vof5Uwdu2gx3WlErO
	3ct8IstTuxWcagmck3xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGwym-0000000FJ3f-2mxj;
	Wed, 14 Oct 2026 11:17:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGwyl-0000000FJ3Z-1e4J
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 11:17:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0695E40334;
	Wed, 14 Oct 2026 11:17:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 438D41F000FF;
	Wed, 14 Oct 2026 11:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791976621;
	bh=rBhUfWwmtFV9SH5R0eRvnOKIMcnSynjkjTl8PjeSz4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Lhz7UHzQM0jXiZouCibvkaiGauM3hpNDGjMg+VlCq380+NSW8GiphogCmEnlZKKjZ
	 NXg9rPsmnjLpumojiAuMedZIytMofuvi+mxKXOeBtyZbbiJ3eX4qSmTHF49o/0k1qU
	 k4XCEp2ZLrWe1o2MrjMAfTbLYgfRykioG6PEm/CJswqeI84DiJud1Q3tVfg6Q/kaMF
	 ndu/bBpxSMnQn79piZq9wlMrqUxzWQq145tw4MGIZbQreWP5F/FnzFztM2qilHWKoM
	 rVlSyqE7/rj+dXWnuUH3z61KLJOKxdjJeL1Ov1gdYVWkOAKxe3hzwD2jkGoRZtzw9+
	 Hf0HjyraSng7w==
Date: Wed, 14 Oct 2026 13:16:59 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Suresh Vankadara <svankada@qti.qualcomm.com>, Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
	linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [PATCH v2 4/8] dt-bindings: media: Add CAMSS device for Maili
Message-ID: <20261014-gifted-dragon-of-lightning-bb79d5@quoll>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
 <20261013-hawi-maili-camss-v2-4-fc93222da89c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261013-hawi-maili-camss-v2-4-fc93222da89c@oss.qualcomm.com>
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

On Tue, Oct 13, 2026 at 04:32:46PM +0530, Nihal Kumar Gupta wrote:
> Maili shares the same IP as Hawi. The only difference is
> Hawi has six CSIPHY while Maili has five.
> 
> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)

There is no such file.

> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
> index 5bf0dca3d24621bfc4a09feb8e5037a925869751..d1d53d6f024cbf7d2a0f2525aa4040260353b200 100644
> --- a/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
> @@ -4,17 +4,22 @@
>  $id: http://devicetree.org/schemas/media/qcom,hawi-camss.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Qualcomm Hawi Camera Subsystem (CAMSS)
> +title: Qualcomm Hawi and Maili Camera Subsystem (CAMSS)
>  
>  maintainers:
>    - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> +  - Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
>  
>  description:
>    The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
>  
>  properties:
>    compatible:
> -    const: qcom,hawi-camss

Did you just add this line to remove it?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
