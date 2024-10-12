Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89DA8CF2572
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 17:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTgmkOpqlAfHRX7kZ4XlgNzhMJpyWqP7rgAst32SlkA=; b=Chq9MI9Hk9jNTn
	KSZRanujfj510HVAVvt+AOHR+hEn2qVq9w3ft5v1Qfc9Ppqh2k1ofO2epL5aBcfvNn4VSytXy7rxY
	ishq2vQqp3AqNVdQVFJPCfpQO++Ac7o4LCSD3L7r8PRmXPnr4n+hgxoC2OFdRMaz9qyHubExTOz9H
	aCXCTt9V5MQ8USTNw5pbjmeX1Fi5qsvcYY8+dyWrSfuT9zMw+3c0W/C1nbCIviacJkvjJ9fMvm/Kv
	x7v0H9fzTinD1mewW2P40qnvQo/iU4C4N6ZvNMaiEQy4HQlJA+zuLXeIm0S18bX0xXBu9VK3kB6Jq
	e9S90nu7h/VDeIldOvyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szgHZ-00000001b4u-0bZz;
	Sat, 12 Oct 2024 17:52:01 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szgGG-00000001awb-0p0J
	for linux-phy@lists.infradead.org;
	Sat, 12 Oct 2024 17:50:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8AD18A40131;
	Sat, 12 Oct 2024 17:50:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5BD3C4CEC6;
	Sat, 12 Oct 2024 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728755439;
	bh=fAEBmmofSsVxNXuLtxHoLa1uKg1SgeDJSbs4b2Sljj0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=OXAJS9PCXAD0th5WEI/pUclLqfgWo3zKr09yyqgvWwUvYc09MxDiB6uhki/lJYkAX
	 pBsYUQON8ktRY2zNMK5t+hVoZZmD25BIFYAHohPqHhtr7Bp4/PFjqI4QEjb7XHjli5
	 Dij3sj6/KUGtksMutUDrR9+YXgbppQZ+Qmd1YS0dGOzDxAwtbma3+db3hNYyHslCGA
	 4Wi7Q2LFztmx1h08GEegxu294ubXaHEdFxEMPPSrZrpQpyHtoWvX+0MK7bPIUI1Vkx
	 is7UTHyNLcPxuszTdmlWzi2YTak+gCAQNDSr13JKVHGJXtTFXCXUvBW6V4dcCdeSZ2
	 jVo24FJmFBsqA==
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mantas Pucka <mantas@8devices.com>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, 
 quic_jackp@quicinc.com
In-Reply-To: <20241009195348.2649368-1-quic_kriskura@quicinc.com>
References: <20241009195348.2649368-1-quic_kriskura@quicinc.com>
Subject: Re: [PATCH 0/4] Add USB Support for QCS8300
Message-Id: <172875543346.55946.1656101661343748887.b4-ty@kernel.org>
Date: Sat, 12 Oct 2024 23:20:33 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_105040_339245_5E7E6388 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
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


On Thu, 10 Oct 2024 01:23:44 +0530, Krishna Kurapati wrote:
> This series aims at enabling USB on QCS8300 which has 2 USB controllers.
> The primary controller is SuperSpeed capable and secondary one is
> High Speed only capable. Both the High Speed Phys are Femto phys and the
> SuperSpeed Phy is a QMP Uni Phy.
> 
> Device tree patches will sent separately. DT Binding checks done on
> the binding patches. Flashed and verified working of NCM over primary
> usb controller.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: usb: qcom,dwc3: Add QCS8300 to USB DWC3 bindings
      commit: 3624fa00ae76be6a93d46071db12bf9218090cb4
[2/4] dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QCS8300
      commit: c5a3519eae7c491646a87c4861e91f1a1a9f461e
[3/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add QCS8300 compatible
      commit: c2b174209bbb3341444c899f0a06f21eb953b1f0
[4/4] phy: qcom: qmp: Add qmp configuration for QCS8300
      commit: 5ee213bdbc6c784c28fc9e2dbb5243906e1f8217

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
