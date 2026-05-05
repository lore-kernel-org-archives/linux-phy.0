Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C499CD342F
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 07:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzB7gYx6YmZ+l3EG55x80RrKXArkebOIgMPXGhuxAJk=; b=BnSGKFPLSvix/q
	AKl3PGY+2UM763yVuLYcIxnMC354xcTUTk8zRMyAKTYlPYCxSBOZDgw08+nohZQi2WLX/W4ByW4d8
	LLLiiLBlammcTz7A5nIKteY36wjwyfGVkk5r5vKh1bUbs9Rl85jwqDjijdM1LOSI4vmoAg/tcyikY
	A1MwxrlBHtkVKKm8fwooedhI3IROi1c0gb0v/g03p5aOY/ygDB0nGrICNEC/7AN7pyOklWUOgbvK5
	M9pE9ppXrTx9N4EGdNew2RSVYWFycxaGRt6NOVIAnTEtbaemcZjtyl2iXtEnWO362GbDX3I6llZU7
	7UUWrdNdaVhV64ihrnBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKAMf-0000000FQmx-2NWS;
	Tue, 05 May 2026 07:38:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKAMd-0000000FQmY-271x
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 07:38:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7883C60125;
	Tue,  5 May 2026 07:38:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 907A7C2BCB4;
	Tue,  5 May 2026 07:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777966722;
	bh=ywPxxuDnmp9Eosu4CWKzEO6jPTX0XZmGTMwmBYiGgvI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CNfCTRNfolOEjDv7Rx39X+4rWljsO1EWRGpqRejg93V88E6vXOnHoKZLBBtEcjs26
	 3AtxvveEMTuNAEswIPArQg7KhjWIvBNEhh8QmuWTjWxWWuETeJQEDNaGBeSzuSgHZg
	 SOh9ZVMQrdegAZTAki8xPMeeJBaWWYgjvKR1l2I2yrsZkVTuap9nDjJ7G1FStlodBW
	 NI3mPMn7ikwEcPiM7m+6E1qLjsByFx++tafv41NgbO7W39vrZkGCp7I4gTrBDIbqHT
	 qlNFcqipTYSNSjUSfohmxbInseBB73+20vzFz7J2cuF1vtj7rERWiYDnSGMXAHoXKT
	 pTTLZkiZSwGTA==
Date: Tue, 5 May 2026 09:38:39 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document
 Nord QMP UFS PHY
Message-ID: <20260505-ambrosial-nifty-manul-b9f40f@quoll>
References: <20260504081442.825908-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260504081442.825908-1-shengchao.guo@oss.qualcomm.com>
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

On Mon, May 04, 2026 at 04:14:42PM +0800, Shawn Guo wrote:
> Document QMP UFS PHY on Qualcomm Nord SoC.

And here you explain the hardware, IOW, that it is or is not compatible
with something and WHY.

> 
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
> Changes in v3:
>  - Improve commit log to drop "compatible with" part

Devices are compatible with other devices, not with a string. And
previous commits could be a guidance here.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
