Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B19FC32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 16:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXN43YQNdyDnAtK+kD3hHRr9CaE5T7uG1I0eC12RM1Y=; b=Yu0defgWhAFhG2
	1r/yFmfCclgE8z3vy2j/t/Fy29LV2pApB25tcyymr4FTEqLbh2/mAj0e/QnaBHPs9pR5n4FKslUr5
	QM9CJa264Qv2/NwYv8GKTHp8b7nCRVeFrX5FMa3xd2qyWihHJKV+jBGdlqgXaaTNDf54lit23whZF
	8Lbj3j/BWzmbppS9xGCRhtfwXm/IIL0P/XFAchMNgYOwOBGkzHFgaqSONnN/aiHsROWo6+EGBEY6Z
	Cn8kU1ojFjt4D1oV0I6/N6NuVi+x2Fe5zJylWIN0V6boKDS20lWLEW/yLsNRY0K8kyzGXr/xevKDY
	aiLvxUHxoLHkMjyw0GMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBYW-001t6r-FI; Wed, 18 Jan 2023 16:44:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBYU-001t68-6f
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 16:44:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B2ED3B81DA8;
	Wed, 18 Jan 2023 16:44:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D111C433D2;
	Wed, 18 Jan 2023 16:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674060291;
	bh=pmYmioG0fcrEcbWXBBM408S3FTzU7YmS8Z5jlCpig6A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ny6f4nxMYkCU5Y+pJjIKC/bjQoZcIvf0N98mKvejArUr+EOnAx0KErq0ngOMxfsHP
	 5VvnHtNGCiXPasyyfkwZ7Gd7sPeS/TVFPGkVeWrlpzdSq+8dLnsyvMOW9fiD7QhSct
	 DdKTs/ds6NqASMoAvzolEl9krHbxP1mpO3Q9SieoH6ae6Ww3kyEDyLSuhsy1moSn/h
	 UxY7tp/8GL4NYTlPeDLn3e0uhPq38TIvOGdyiy/wVEG0qDFd0xA+UDEumZso6G/Ttl
	 e0gC2b7bs4Bqk0zs/g5cglUsgFEUDxYoQgtCpWa4lCQM+/8Z6U1nD1G7F+ayaugohh
	 z7sEBtroQRxHw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pIBYq-0005t8-2X; Wed, 18 Jan 2023 17:45:16 +0100
Date: Wed, 18 Jan 2023 17:45:16 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/8] dt-bindings: phy: Add QMP PCIe PHY comptible for
 SM8550
Message-ID: <Y8giHJMtPu4wTlmA@hovoldconsulting.com>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-2-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230118005328.2378792-2-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_084454_414387_53A0DF94 
X-CRM114-Status: GOOD (  17.28  )
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

On Wed, Jan 18, 2023 at 02:53:21AM +0200, Abel Vesa wrote:
> Document the QMP PCIe PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 8a85318d9c92..65f26cfff3fb 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -20,6 +20,8 @@ properties:
>        - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>        - qcom,sc8280xp-qmp-gen3x4-pcie-phy
>        - qcom,sm8350-qmp-gen3x1-pcie-phy
> +      - qcom,sm8550-qmp-gen3x2-pcie-phy
> +      - qcom,sm8550-qmp-gen4x2-pcie-phy
>  
>    reg:
>      minItems: 1

I don't think I'll have time to look at this week, but I did notice that
you fail do describe the clocks, regulators, and resets (as you also
did for the UFS PHY binding) which are currently different from
sc8280xp.

Please be more careful when adding compatible strings so we get this
right. You should also double check that the differences are really
warranted and not just due the vendor using different names for the same
resource.

At least the reset must be renamed ("pcie_1_nocsr_com_phy_reset", e.g.
drop 'pcie' and 'reset', maybe more).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
