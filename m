Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A60CCCD183
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 20:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWLPjNejvSTPQUCaqE50rctF65ULa8xthxb06L3hYlI=; b=A7FRiXWje9QtAz
	eCO24b0tyGB6yfv/vaEZt3f07wzkOunn+Sw5D5hYzk/ozHrTtNGocX/Z4gcyeaLf3LUJBa1d7hNwM
	yX7p+UVuFy6mv6WKCXpOrA2yC35WQnCXyFy/XDI0Ej1e83ZyuGg/IS3Pm1zv7XZM9zcdFhfcMM7yX
	HV/nI7vtZLzjBZUO4LQ11gFjC90qI/0TeZvy3afe3oUH8oTbU8rpXOHRpNmhUeCkFTm2K/9Sua4Vg
	o3taUmo0n/M4kn4rEYWMhLzoC042vuok5Oq+UWhCB363WDQLKSZFZgzQySJfiEJNJ2c9+nwp3yfzW
	NgY5DO7+Up8v40MLYXfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6xDR-000000074rr-0bZA;
	Thu, 09 Oct 2025 20:26:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6xDO-000000074rR-3pQC
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 20:26:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3B9AD48F21;
	Thu,  9 Oct 2025 20:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA45BC4CEE7;
	Thu,  9 Oct 2025 20:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760041578;
	bh=gaPC9IOcFFDMH77ioeI300u2Daq6lSY6TRXYvKtrd84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CgahMkn0CslWjZDiZXIskbKvsNyM1l6xHBFflwmqM3OfgmSJOw6GXSdOpvYlMCnPh
	 h3pyPpSyTzTPDjxPRAic24st2/pAYGoMrGjX1jK/laPCkHaDOc8H/iXpNZ9TsLy/2+
	 o4KM56mp/Jm8VvzNkrXZZlwHFHDoWybk8dZfcKnSQHzCjmRsa8edB6Riap6wXnVh01
	 psOns8dnHu/cEoyGQvSZNk+kCFMmPOoGF2I2vgUdBtr4+8ivqJFOYRQfBWnI360kde
	 mxgqa81r/gkLiVgcOB/kZbXCCLdvAjzHVcWPM5CMqRbic4Xq89Ku/3DjVzbjM77HOo
	 HqewFHDGZH62A==
Date: Thu, 9 Oct 2025 15:26:16 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Xilin Wu <sophon@radxa.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH v5 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
Message-ID: <176004157616.3295945.3989144090466748168.robh@kernel.org>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-1-c006311d59d7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251006-topic-x1e80100-hdmi-v5-1-c006311d59d7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_132618_973710_71E548CB 
X-CRM114-Status: GOOD (  12.95  )
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


On Mon, 06 Oct 2025 15:55:03 +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> The layout of the lanes was designed to be mapped and swapped
> related to the USB-C Power Delivery negociation, so it supports
> a finite set of mappings inherited by the USB-C Altmode layouts.
> 
> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
> connector, DP->HDMI bridge, USB3 A Connector, etc... without
> an USB-C connector and no PD events.
> 
> Document the data-lanes on numbered port@0 out endpoints,
> allowing us to document the lanes mapping to DisplayPort
> and/or USB3 connectors/peripherals.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 69 +++++++++++++++++++++-
>  1 file changed, 68 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
