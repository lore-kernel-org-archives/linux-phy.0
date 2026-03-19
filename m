Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C981090223
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 13:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZOT1bxUlhEFw0NC5JBYovRep48gRqmUU9sTfYUnPfc=; b=tNPiSKsOBsOHV3
	kqLoH5gXBiJN0buIlb2rJufEbiQ6T5tOotuspn1amg8rhj6tQCI7KRYp2SY87rZgUkPtDk3IfUFgH
	94ku/kwkQ6jSb+PbBEzs7oaeEIrlMBPQrRdAF5hD7Adfw/lFW9ds6NSLkcjq2gU2uULqOf1M8APtn
	nxpp27Tq2YwC9p2/Viyv/wynbIM2Iek4iSLA2WhF/N9jyLno90sHqP0p1o5lE5JoweTmbeZGobT9H
	Yy/0IlTb9Am6NYfeJvemQ5TAJsirA8paITc71pKh9jegnW62zU+1/PX2f7J8x4goAFUm5BgUWs5q2
	7stEm05IcGECWeo3b7mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3DFz-0000000Ag2E-2Kcv;
	Thu, 19 Mar 2026 13:17:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3DFx-0000000Ag27-31zQ
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 13:17:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BA31D60097;
	Thu, 19 Mar 2026 13:17:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8395EC19424;
	Thu, 19 Mar 2026 13:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773926264;
	bh=NZlbAz1x3bJFNwyQ/jeMy7DD41+VCnD1WXAuW8TtbGI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=RtnPFzM8u1MThlIHxWAIl7u1aOKDu52Q4TzCHzVgkUwytHNxZFd5sQ1FrS5hzGCtS
	 bmDjB7IKpX4W0jwJnFCMkjwswrkHVVMvh4meoKRx0T2Id9pWsqpWXsSt4y9/O9qgCW
	 W/iwnSWW68E/+bVdZSwb3Y7aIYm89Ir8wNqEGmZuOPNsrCrhWd4Ln5kUiklLkQt8fd
	 U3HvDJUSCrFimN4bdDFrHcMwBCEI0lZl1xnRCpg6CxpJwu4QRIB+QDvi2nyvs7ZX9h
	 HmNw15C8RZibNCbl+0XrJAmmkbFdryuCkBS/s3qT3ROs2aC+41bZOcdM1LlqsEPZ2g
	 mBMduRUE4Eq2A==
Message-ID: <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
Date: Thu, 19 Mar 2026 13:17:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 19/03/2026 13:08, Vladimir Zapolskiy wrote:
>> Why do you want a media driver? Isn't PHY driver enough?
>>
> As for today CAMSS CSIPHY are already media devices, and a user applies media
> specific properties to them, for instance media bus format, resolution etc.
> Technically this might be removed from CAMSS, but if so, then it should be
> done before this new PHY driver model is applied.
> 
> --
> Best wishes,

There's no reason to remove that from CAMSS - it would be an ABI break 
in user-space anyway.

The media entity in CAMSS msm_csiphyX handles format negotiation and 
pipeline routing. The PHY driver handles electrical configuration. They 
don't conflict and there multiple cited examples of this upstream already.

--
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
