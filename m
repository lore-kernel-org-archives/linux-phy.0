Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D08C531C9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 13:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Apk7bFUNArf6vtVFEgcrvIjggNrkjzVIm8uFa9QdaP8=; b=Itplz7a0Vhzycb
	8+oiTwAGLECq6RFRMtnqT45xq+sbsjojx1bDKWHB0ANwsbXNPQ/UUHhbjFf3iX7GLQi0YajmDkla2
	B4Ut+MlWDo5yA7b+0TA/WaWRwNPRVk4CaYJgghFYRBmtpI4y7vum41mQh32gl//gUDtxSrEU+2yd+
	+qH8uUfAuHdyUzg/xhkdxn50SdcDYh3ITqVvImLmpXQ1MgWiXkzhELBdNWX1HkYIXmw3LT2Mur+Ji
	v7LIF6z4hVu4CZQLSMajhAvHQc+RS142sU7VpNUiMxDmx7P8wX+XockD5oH//HlaGyK/ncD9SqcqC
	6/kpiS+8eYsmsfiNsEUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnGOD-0000000GWnq-1uUO;
	Fri, 24 Jul 2026 13:56:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnGOB-0000000GWni-2S91
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 13:56:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 22124409E2;
	Fri, 24 Jul 2026 13:56:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 573161F000E9;
	Fri, 24 Jul 2026 13:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784901395;
	bh=vyNF7CgMOMBwTkfpZZmKpQxiS9PJc0x6n41Yn8FVNA0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=PpeqmkEBNdlnkLxn1lCmgikolIi61FXyCRiB9cWP4HjA1K5FhcbTEy/ZnB5LNAnMW
	 AibAjFKgA186dODCEQlluEQwP2b1U4PH48nqFGvk2yDQjCJOnFJpI5uXOzZgzXkw4r
	 mZHgLc/qFWGbmLA2bd9CTZIZw1FGowCO9IXECx9PTEw+lD6INa4iqtQfsPjkgKIwh6
	 vohkXl4hF6Rxat21LKCB+9cy9JUvHORpNCIR9GKFHBfATDzDZPnNIuycwhTWaeIEMl
	 V0japaUXMK3C7Y1dXf7iplZPTyp4QjZFEzhNOygB1+VJKRZW2HuWWWSsm01eCL014h
	 48jQZ8pXpbcVg==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Maxime
 Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Add sa8255p USB PHY
In-Reply-To: <20260724-satisfied-spiked-myna-eb63c6@quoll>
References: <20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org>
 <20260722-phy-qcom-qmp-usb-8255-v3-1-e789070b48f7@kernel.org>
 <20260724-satisfied-spiked-myna-eb63c6@quoll>
Date: Fri, 24 Jul 2026 15:56:32 +0200
Message-ID: <87ik647apb.fsf@kernel.org>
MIME-Version: 1.0
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

Hi Krzysztof,

Thank you for the review.

On Fri, Jul 24, 2026 at 08:08, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Wed, Jul 22, 2026 at 03:45:44PM +0200, Mattijs Korpershoek wrote:
>> +  power-domain-names:
>> +    items:
>> +      - const: transfer
>> +      - const: core
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#phy-cells"
>> +  - power-domains
>> +  - power-domain-names
>> +
>> +unevaluatedProperties: false
>
> This has to be additionalProperties: false.

Ugh, sorry about that. I've fixed that and send v4.
Thanks.

>
> With this fixed:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
