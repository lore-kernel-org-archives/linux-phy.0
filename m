Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4516FCA1017
	for <linux-phy@archiver.kernel.org>; Sat,  6 Sep 2025 00:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfCK5UCcDvTyFcW65IHqgxvawdiDi3m3HvX+ip08xS0=; b=BeEtJ89+hAWgo6
	TwC6X+TEunXay6OSUyMrJlu5XNYYo4UtCmsJ0P0HIEIXe3H6axyBN7+SfkWjJbjMYRR0ISBIQQz4s
	nrOzk6wTjRFyWVpBrrqemSFlCqB0eHseiiAK6tzJ82ePSExH/H8BGsCAbphhubpP4VxSPKmiuELQW
	xAINeiTG3DBgH4DtCaVLbZd2hXRtlCpXuWLhG4wsup9d6ylurP8OkcLSuGqQQdOKHsuVvSMp7U2dK
	fQOQDmOdAxaq4zJQcDThB80X1Sv9XkL68uEpowNYUUIYOMLRRekMZ+Dp+GuJPKiYKTFNiLQOmc3Aw
	BQdyGJA/zNvotwKdIJMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugVp-00000005SBA-3GBi;
	Sat, 06 Sep 2025 00:10:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuaet-00000003cUg-0vsz
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 17:55:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 557CA60208;
	Fri,  5 Sep 2025 17:55:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0C1EC4CEF1;
	Fri,  5 Sep 2025 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757094934;
	bh=kxPKwim24wd3P0Q4hx3iHWtMZu2xEhC+EYQ41X3JC4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IC1WPL05DV1aCcDN5QWVBGAilHhhrUtqhcJsR2c76fPIoKvzW94NrTmTTPUEvHyP1
	 hiEJtOH0l5RGdTEz1/kKtRkLNEgLflMaNclEHuuMlxBHp7SUQaHRFV7lzsLDg1k75T
	 GAuq31e7wcIqlDYB9qtJolnrl3QOmyKpXn0264TCkq6mn5S1PLuO75flRlrxu3/qGa
	 Mw6VPyERel0/9i+OhwbF0qBdKNu7GQ+Xm79S6VuJVUaN6o3hTWJtlES37Q4XVdR2z0
	 3d90TtdbNO080dJycgmBCymoiaSeLWQeY52SD5pWAXw+BqcyV3rwxLuSyuxQq+8J1U
	 yQo1Oby2VkaTg==
Date: Fri, 5 Sep 2025 12:55:33 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
Message-ID: <20250905175533.GA1000951-robh@kernel.org>
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
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

On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
> Both bindings describe a different layout of the ports properties,
> leading to errors when validating DT using this PHY bindings as
> reported by Rob Herring.
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -73,8 +73,11 @@ properties:
>      description:
>        See include/dt-bindings/phy/phy-qcom-qmp.h
>  
> -  mode-switch: true
> -  orientation-switch: true
> +  mode-switch:
> +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
> +
> +  orientation-switch:
> +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch

This is a pattern we try to avoid with references at a property level. I 
prefer you make port and ports not required in usb-switch.yaml.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
