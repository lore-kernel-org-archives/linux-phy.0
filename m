Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF19ECCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 07:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ve4mt8zDtGo2J+jq1gB1cqOMgBngOLk30I1X249YSU0=; b=Mn9pKw8YJpTzTs
	TSRyCC4JDdTPy/lmnMfA2PwzzYBMAj7Rc7Ab3yecoLtBYAO5G4fJki+0i0LSxBBZCL3xibwmhNQev
	B8KslDJHLD81v2wORNzmG1Dqo2CQo4CCNMS5cyMBq0j1PhIZoQHC7FG415gEW6g9bEy2JRjb2t+Zo
	SY/N5dY1zfK6JxjZWJDu7wKAp5heTNlRdkasFmssv79b70xnT+ltUgr6V60CnAqagi3ajBEnFYV/l
	DrZfyqIHwd91k6PDDIG0CzjyZ1Ta5ef06KdWaTaK8vt30TCxtvQ9FvwjZZpNIQqENdMqr3wy7s5aV
	qXg4ho0X4IzLWdFvoQxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhdE-00000006kyg-25CW;
	Mon, 19 Oct 2026 07:18:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhdD-00000006kya-0aqc
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 07:18:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 88B4A4108E;
	Mon, 19 Oct 2026 07:18:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC6E11F000C4;
	Mon, 19 Oct 2026 07:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792394282;
	bh=NxFKX9qR62f7+24KU1GagtYceb+WTVmOUQ7AhgvqXq8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WEyJrVcrvrJL6aj4TLhxqS4V5cbcodSLdIsARdvnb71QFy1n1yYkmmphqVib/xrbJ
	 6N4NItERWufbphQlyw/kPc3AJjfrRGsbZ7bqHYybIdphMpsskjvhKnMv38LiMqNzZu
	 HI6if3Ts6QuD5VSebrBx1Zml+sMQCn+idRvgY+b6mkuIIST/DC3b3jg+KGv65jtZ9f
	 BHc2i2ZO4JD6q/XrFNMVyqcZksaEwsVFOSEEXQqL8H28D2L5dNv3ACiXrS23oI4VkK
	 4ZG9+4w2UhaXKcLFO8k3EaqnSzW3JCBlKAFkjpM2bkA/7RWM54e2+CzPx93nwsTSeR
	 6Lpe6Jyx4iRYw==
Date: Mon, 19 Oct 2026 09:18:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
Cc: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
	gjorgji.rosikopulos@oss.qualcomm.com, hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com, 
	jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com, vladimir.zapolskiy@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/7] dt-bindings: phy: qcom: Add qcs8300 to the CSI2 PHY
 schema
Message-ID: <20261019-majestic-gorgeous-sheep-a9eae0@quoll>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-4-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261016235502.2274268-4-anusha.nandi@oss.qualcomm.com>
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

On Fri, Oct 16, 2026 at 04:54:58PM -0700, Anusha Arun Nandi wrote:
> QCS8300 uses the same MIPI CSI2 CSIPHY as SA8775P --
> identical D-PHY register layout, common-control offset and clock set.
> Add "qcom,qcs8300-csi2-phy" as a second enum value in the existing
> schema rather than duplicating it, and generalise the title/description
> to cover both SoCs.

Just squash the patch.

> 
> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml   | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
> index b66ec2f14189..8e60ef0714bc 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
> @@ -5,18 +5,21 @@
>  $id: http://devicetree.org/schemas/phy/qcom,sa8775p-csi2-phy.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Qualcomm SA8775P CSI2 PHY
> +title: Qualcomm SA8775P / QCS8300 CSI2 PHY
>  
>  maintainers:
>    - Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>  
>  description:
>    Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
> -  CSI Decoder on the SA8775P (lemans) SoC.

You just added this line. Changing something you added means previous
patch is not correct.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
