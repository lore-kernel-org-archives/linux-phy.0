Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 454D9C3ABA2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 15:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjHmoQg2pEcUG2ho63205thH+SPeemKGFl9Kh9ISX60=; b=MXMr2r8/ZOMIvJ
	8fDIDpQ/2vhxQYG4pa/lMqcI82WMYEf8nMxWQXwJPyoAfw0oxAz6IkdDMsPBq5rWo9N2Kk3Y3o0Ch
	kFA1OZWyOinnxBO/wKumGE/UbEgjTmCMVtMR50qiZVMS6Iz9tx1ZibmL6bHsoIXqIDwBNZwMupCGs
	7vSLUPSHhFxl2Ke7TjrAzaSGaUNnUNOpXEcarEA1DKT5Y4/+Tnb7DYhAgb9yIHhWJo67PLANbk0U3
	DDY5kZyoH4yeQ3Ot25SG6YsHRF7fOT4k6Trq9tD9qH7oPnvBkw0R7sRKu3xC5GQeEmlvQewQfb7Au
	TMKw9INl87hzfsZGQQoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDRu-00000004Jsn-3Yqg;
	Mon, 16 Sep 2024 15:15:34 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDRs-00000004JsE-0oi2
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 15:15:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 69CC3A4299B;
	Mon, 16 Sep 2024 15:15:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46491C4CEC5;
	Mon, 16 Sep 2024 15:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726499730;
	bh=4TdVLpYx1lgwkyzc41haI4RdxMTF/JxI6OjO9YWCj4A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BKH7k+VIZBrm4oujHkgnsLvErv4jKlX1g9fiHCjAQozfXepJ3pO9n26T0sM/A2uZz
	 ILLjs2hxjdvJmzeq7STTjBoZhpOi3EfgEANWfMrp+ssL9dIJs5YJa8xUUNL8GIZYkB
	 2wSBUUXLIimH7kKmSyqgmcCH8b+d42FBlxZ+m0ZJH+54t94z2IC1Sen+Nf87ikCEV8
	 azPRH7KtcUiCzwgkFpqUSPyJNuu2jU1wEeYs8xRm4hmQopFhp1LfWJ2R7VtwSBNZOa
	 UFGLWIwzSVYcYvt9BpTU2m95J7OQlazC1xbJE5vIKFBl4l9KCYY4gvHJSucQWiu+vB
	 tH4dqXogfCkQA==
Date: Mon, 16 Sep 2024 17:15:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x8
Message-ID: <lrcridndulcurod7tc5z76tmfhcf5uqumkw7cijsqicmad2rim@blyor66wt4e4>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-2-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913083724.1217691-2-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_081532_318065_D3105DF5 
X-CRM114-Status: GOOD (  11.85  )
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

On Fri, Sep 13, 2024 at 01:37:20AM -0700, Qiang Yu wrote:
> PCIe 3rd instance of X1E80100 support Gen 4x8 which needs different 8 lane
> capable QMP PCIe PHY. Document Gen 4x8 PHY as separate module.

And this is really different hardware? Not just different number of lanes? We discussed it, but I don't see the explanation in commit msg.

> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml    | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index dcf4fa55fbba..680ec3113c2b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -41,6 +41,7 @@ properties:
>        - qcom,x1e80100-qmp-gen3x2-pcie-phy
>        - qcom,x1e80100-qmp-gen4x2-pcie-phy
>        - qcom,x1e80100-qmp-gen4x4-pcie-phy
> +      - qcom,x1e80100-qmp-gen4x8-pcie-phy
>  
>    reg:
>      minItems: 1
> @@ -172,6 +173,7 @@ allOf:
>                - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x4-pcie-phy
>                - qcom,x1e80100-qmp-gen4x4-pcie-phy
> +              - qcom,x1e80100-qmp-gen4x8-pcie-phy
>      then:
>        properties:
>          clocks:
> @@ -201,6 +203,7 @@ allOf:
>                - qcom,sm8550-qmp-gen4x2-pcie-phy
>                - qcom,sm8650-qmp-gen4x2-pcie-phy
>                - qcom,x1e80100-qmp-gen4x2-pcie-phy

Hm, why 4x4 is not here?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
