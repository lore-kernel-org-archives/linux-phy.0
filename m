Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEF19C5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 13:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+3Jb1lHnSpEozyk1/TEOc5fMZaZ7ximZCIpUUIG9bdA=; b=q8etMGS4gmmrwpzKEStG1DXSdd
	6lIn2YtQELv/V2mC4CpiE42/lFEfloIrWlSqm/G/pBqUPbI/cNn5htWsuksIhQe0g4g0/nkUtMsns
	/LIOo/FZvISJvNFMf9FXPcEf3E9MZxug4M0NVpZpCAUyORABTzsWtd2+tMEz1n7arbOsAPODziE6P
	XfeGTBAVXYsoTONp/+RHqEkES1hbh8Q6KeKSA9gaShVk/RX3s0kOrOHZR6YXUFE0S3QgzrZ4Sg+hv
	U8cqsVp94wN7G40NgLURPZygRaRn764fLtXHAVt8aeB4m8JngXNKLvoDVcsjdB9Y8Q7bjnF61UJv/
	HaMrZdEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtPgx-0000000BrK1-2ZCT;
	Mon, 10 Aug 2026 13:05:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtPgw-0000000BrJk-1X0a
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 13:05:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8D0BD601E0;
	Mon, 10 Aug 2026 13:05:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B4441F000E9;
	Mon, 10 Aug 2026 13:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786367121;
	bh=WdMXfO+4J5HY3QJYR60bAsdnMR+oU8E8qjW7lfZO6qY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=d5r6usI/VOGYLpu84JHB8q8uE/zmQgCQACBfhS6BERqNWeBe4ljXncxdgLVjcy19t
	 lpPf+QZcAzsFSXAIuY0JE7gNwqTS6jzHclRAyCBr2qXWl4W+ITxUEhUZC/hmsFej6O
	 WO/FV7Sqw6ldYMc4AZ2F24rkg3SHUDEpuw5i20OV85WP59ENzr0/ZCVaMpxRu+GMIT
	 p/+laVnKJWSO1UUJATXusILJrhvbeQxhwEAFVgjxQAZEzktSzufVT7hPNLaf7orxsg
	 cxKZ3p3lonuYKgFHpT4HGJ7NKREjRtOZxmN6INRpepxfnwtquhgBwk6a0XAUGuOOWn
	 CYeUIEjm1pYgA==
Date: Mon, 10 Aug 2026 08:05:20 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Wesley Cheng <quic_wcheng@quicinc.com>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Andy Gross <agross@codeaurora.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
 Christian Marangi <ansuelsmth@gmail.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-3-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-3-1a47e1185524@oss.qualcomm.com>
Message-Id: <178636712034.1325078.17514969313752139000.robh@kernel.org>
Subject: Re: [PATCH 03/10] dt-bindings: phy: qcom,ipq806x-usb-phy-ss: add
 MSM8974 SS PHY
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


On Mon, 10 Aug 2026 14:42:33 +0300, Dmitry Baryshkov wrote:
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
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-ss.yaml: properties:compatible:oneOf: [{'const': 'qcom,ipq806x-usb-phy-ss'}, {'const': 'qcom,msm8974-usb-phy-ss'}] should not be valid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['const']}}
	hint: Use 'enum' rather than 'oneOf' + 'const' entries
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260810-msm8974-usb3-v1-3-1a47e1185524@oss.qualcomm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
