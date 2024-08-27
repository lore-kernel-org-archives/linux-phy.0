Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9451BC54735
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 12:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSMkGwxyaTELxZsm43yHD0TkES91KY3p7YIT5NJW1O8=; b=gntj7zKiJcO1nG
	nCU6+HB2f0SpltB1NwY83fcOlrjkSPXyXzGpQlzm21SmPngrtvByMXXdVRYil098X2g8hLoFgMBs4
	r8a4uvHj7NyP9tTwoQwtjCEcuKpfWvV+GhFBc9rVToQZadDPlRvL/oau/33QG76sgHvoIgbdSs3tW
	vmzxUfta1dEi9KsCwkxPL4AYqrc33nbXGtzpWoVTctb1CvlY2d/gtHeJ/6LNN9Z7UPcF0UN8EiIKJ
	8fX4cPyST0aE/fJl8+SV1GUUDJLzj9mxanoUxCnGxc7aBeaqaxh2GCp/tVvdk4GUiqG6DGqXtKNPx
	S7qYKGrgLH0hnbIBus1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siv4b-0000000BAUE-1FkQ;
	Tue, 27 Aug 2024 12:13:21 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siv3j-0000000BANb-0qxT
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 12:12:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4302BA4196F;
	Tue, 27 Aug 2024 12:12:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE09FC4FF6D;
	Tue, 27 Aug 2024 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724758594;
	bh=UcW3FlwqzuyJC9hCJ1ksNC75o+2Abm/hr0EArMLVnD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u7vwb1MMrQL1AC5qXHbki5GkSPFBcZxhTD/qXN7Is7Ck+79QFUzmvB8EmwEjnKB11
	 J0bnPk5haVavHQaqxta0wkp0As1SYqmiahukScVyh75RL6P92Kk5Lt801TeYqd5t0f
	 RSFNvqAmSXybFLkcIyUz21Ax6ZrKOnsolRf8yo6JD7AUsj29RnIcDQwrddkQf8NlxR
	 fn5ViQ7ntWiynZbWCR7f9yPJSmETgD2NMI6mtodjWGZpqRXuxhEXRu8eAk8KuU685l
	 k+/Xf3PGHPcQIovoE4G4324FEkigDbr6R3JNQVGQMYJugMm1Ukn3Itv0s9RGQnNnQ6
	 NwOmBnc295sXw==
Date: Tue, 27 Aug 2024 13:36:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 5/8] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x8
Message-ID: <jqzbpgqrbazf3rbdhag56rks74r2h3sjm6mr3tp7v2hb6pxamy@qhksqzsygttt>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-6-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827063631.3932971-6-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_051227_389893_79D1FDF2 
X-CRM114-Status: GOOD (  11.50  )
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

On Mon, Aug 26, 2024 at 11:36:28PM -0700, Qiang Yu wrote:
> PCIe 3rd instance of X1E80100 support Gen 4x8 which needs different 8 lane
> capable QMP PCIe PHY. Document Gen 4x8 PHY as separate module.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 03dbd02cf9e7..e122657490b1 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -40,6 +40,7 @@ properties:
>        - qcom,sm8650-qmp-gen4x2-pcie-phy
>        - qcom,x1e80100-qmp-gen3x2-pcie-phy
>        - qcom,x1e80100-qmp-gen4x2-pcie-phy
> +      - qcom,x1e80100-qmp-gen4x8-pcie-phy
>  
>    reg:
>      minItems: 1
> @@ -47,7 +48,7 @@ properties:
>  
>    clocks:
>      minItems: 5
> -    maxItems: 7
> +    maxItems: 8
>  
>    clock-names:
>      minItems: 5
> @@ -59,6 +60,7 @@ properties:
>        - const: pipe
>        - const: pipediv2
>        - const: phy_aux
> +      - const: clkref_en

That sounds like enabling clock ref, not the reference clock.

>  
>    power-domains:
>      maxItems: 1
> @@ -190,6 +192,19 @@ allOf:
>          clock-names:
>            minItems: 7

You need to now constrain other cases. Missing maxItems.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
