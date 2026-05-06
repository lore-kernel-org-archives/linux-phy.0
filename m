Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25714CD342F
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 01:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Iso4wLCcbsAjlfpUvC/YMINGYnlJOJVDCDPaNlHyYw=; b=fQVDJt6NkyyEZu
	iOOrlvW39OCTxyP7bWd14GhNj/k3yVo7R6lXwPvDdFnXAkBhT02/SghHUAE/czujvIYPB5gvK5eD+
	p3sy0602ORpr1hDy+2G5PrzVPTcog8gxnJyBKxi1Zt9NgkrkjVn97RvDRZUgDiYLTSbzDSmLeARyl
	qtkdHrfGkWOdTqM9+K4mqJgTX60wagH8/w3mT4IheHrXnjRHtidstJVIqs6vP8iZkSmtkyA4xOLzE
	ZBjsXMUuEOFVOcdSWAAbEinT1RsXKNSs5c6LebAOI7Z7hqyMngLn4h9/WCFtcfyNEZdZpGssJThRL
	hTb53NkLk20JdSACXqKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKQvf-00000000OKa-2R5X;
	Wed, 06 May 2026 01:19:59 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKQvd-00000000OKA-1IYr
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 01:19:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5817960181;
	Wed,  6 May 2026 01:19:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B88F7C2BCB4;
	Wed,  6 May 2026 01:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778030396;
	bh=Lo2J3ckp1HHEUc7MJLC2C5rpL8Id65rwctqCEandc1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=awwUcUyW/UELBpZuRTUrQscWsE2Cg7oiPFXIPoGfTnZHPzN5o8ryEGm0dmTrCRabV
	 MdPZcjNr8hXmvRmV8j0E4W4f8jHTcbov/b3Ec76PyDbeQi03r18aIXaC71qzUGDpgM
	 uOfAm1GqEZeIhRXD2xbFwzKrvOU5dyDeyfuoqV/Bfxcyptrc77qE9PatjUr79oomlR
	 gEmiJ2AKU9AhDKD2gYHiNYvnD4Qdms9SqMltUj5CS675xbiZejsTTtf2O3/4xHOWG7
	 yTxC2x9LFi+q+iS5g4zsp1SdYwJfApuuGEvZCAGJw6kGuxzVZWVM6J59rp5tVwOurN
	 fl5U9cFeeUQFQ==
Date: Tue, 5 May 2026 20:19:25 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: linux-usb@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
	abel.vesa@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
	linux-kernel@vger.kernel.org, vkoul@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	gregkh@linuxfoundation.org, conor+dt@kernel.org,
	konrad.dybcio@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, krzk+dt@kernel.org,
	neil.armstrong@linaro.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Hawi QMP PHY
Message-ID: <177803036501.245983.2853371804362184732.robh@kernel.org>
References: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
 <20260427214217.2735240-2-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427214217.2735240-2-ronak.raheja@oss.qualcomm.com>
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


On Mon, 27 Apr 2026 14:42:14 -0700, Ronak Raheja wrote:
> Document the Hawi compatible string for the QMP combo PHY.
> 
> Hawi uses a new QSERDES V10 register layout with a new COM AON module
> and hardware-specific PHY init sequences compared to previous targets,
> requiring a dedicated compatible string.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml  | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
