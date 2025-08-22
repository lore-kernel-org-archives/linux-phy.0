Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F0E6CA0EFF
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 09:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3jy5s1PtxJlXfSCn+nXDjFtPzU/q234gbbyttLUf3M=; b=BvKA3dOfxhnZnf
	GzHRPXPsgmi5Hg486EjhhwKrI+QAJMR+qYpRvW7V2SFMvdhX4RfJdzPx2kuZhkz58RrL+oBcxChMc
	FRgPTQ+rrHvsx6O5wUeMOJaQIsOR9vWHf/8WLX+GvZyU2hpYThvTyq6vUsIYd1hh/aN+foVAaph0C
	xM95kWlPfcTV45SLZKWkGktMA/5YwgaP+CWCjtCf/hBocESEa+YV8txe5BfaFiVMwEUUF8raZTy48
	6CZSml3pZ1pvXMmaMMvJ/bRkS1GvUhtpXHQgyymUat2XJKclRVxGNPAnFX00JjtiH5k6fi+Xx2GEC
	Q1VL6K4EHKs49l1tHlKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upkg1-00000004Vli-2VKC;
	Sat, 23 Aug 2025 09:36:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZBm-00000003UC2-1pDz
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 21:20:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A021B60242;
	Fri, 22 Aug 2025 21:20:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ED3DC4CEED;
	Fri, 22 Aug 2025 21:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755897644;
	bh=vtsRBb4sPfT6W/YuCCdEbbOfe14BIwGnGP4Fd7ycMyo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o4gwtYPve2kzqW5VoEoRCbZfLcL2oSL+8xpjZXUzaw5f2WKCbpmr6f40mHE00Bqz4
	 618bZC932KkR/cmbVhsqYsCLMlYSlutIfBYmCkHkucmfln+V10ch/D8D3XagzlpQTX
	 JHRa1n9EvkxC3k6zkCV1gCZoviAiLRAo9ywDMGhaMiCfyhhtHZaVljD9MjFwJO0dm5
	 /ElPtJfF1E715k/R/7Wb1fqRARAXlLj6VlsE1R64yrBOe8HNWtwTyQvjATNSnjc7Zt
	 VqjuRqK8ZXk96UkWiK4MH1NQDJh/iDE4RQ1sNHga3E1TtyLLtyWrlywtDIKUWWlzIn
	 cNXZHGODn6Xgw==
Date: Fri, 22 Aug 2025 16:20:43 -0500
From: Rob Herring <robh@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch
Message-ID: <20250822212043.GA475528-robh@kernel.org>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-1-43272d6eca92@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-1-43272d6eca92@oss.qualcomm.com>
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

On Thu, Aug 07, 2025 at 06:33:19PM +0200, Konrad Dybcio wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> The QMP USB3/DP Combo PHY can work in 3 modes:
> - DisplayPort Only
> - USB3 Only
> - USB3 + DisplayPort Combo mode
> 
> In order to switch between those modes, the PHY needs to receive
> Type-C events, allow marking to the phy with the mode-switch
> property in order to allow the PHY to Type-C events.
> 
> Reference usb-switch.yaml as a simpler way to allow the mode-switch
> property instead of duplicating the property definition.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 38ce04c35d945d0d8d319191c241920810ee9005..c8bc512df08b5694c8599f475de78679a4438449 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -73,10 +73,8 @@ properties:
>      description:
>        See include/dt-bindings/phy/phy-qcom-qmp.h
>  
> -  orientation-switch:
> -    description:
> -      Flag the PHY as possible handler of USB Type-C orientation switching
> -    type: boolean
> +  mode-switch: true
> +  orientation-switch: true
>  
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> @@ -106,6 +104,7 @@ required:
>    - "#phy-cells"
>  
>  allOf:
> +  - $ref: /schemas/usb/usb-switch.yaml#

As reported already in this thread, this adds a crap load of warnings as 
it makes ports or port required. Sigh. Can QCom folks pay more attention 
to this please. Every cycle the number goes up though that's often 
temporary because there's no coordination of taking .dts files after 
bindings. But generally, progress on QCom warnings has stalled.

Here's the top (bottom?) platforms in arm64. The first number is 
total warnings. The 2nd number is unique warnings (to remove inflated 
numbers due to lots of boards per SoC).

mediatek:785:166
hisilicon:133:112
qcom:362:104
broadcom:286:104
marvell:558:80
apm:78:58
rockchip:128:57
nvidia:199:53
sprd:30:29
xilinx:94:22

Congrats on 3rd place. There's a bunch of pending Mediatek fixes, so I 
expect you all will move up to 2nd soon. 

All this data is updated daily. There's some scripts to get and process 
the logs here[1].

Rob

[1] https://gitlab.com/robherring/ci-jobs.git

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
