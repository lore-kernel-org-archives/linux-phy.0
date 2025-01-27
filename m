Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8854C0218F
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 08:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XTvPU/XhecWxbhdS/0YvdHduvl4D6shZfpPrSjKQHI=; b=wiBx7KjjNrd3jD
	WXr+m3KLBK5wcRL0JwrQmtJfVv8stk8uBjuCzS7Ivb7xGEqrt5C8YvMeFSMPLMEdXu8p3MMLGqQwf
	JDJc5UjiLKSzaB4G+o/QHUJQQYzcUWnFsjwHa9xDbAsINH1NvSWzeHCHvb6KD+B0tgR2J1e486QL8
	TMZ2vZn6v8pmQcTST4u8Nhj/0KFPxetTctt7Y7Jb/g4WjXHRJPov+xf8xR1IyFYnbGNuP9UoMvlVk
	Z6x3k01WrfyNWh/RLTM1KlFvWHiLtmP7NN2EmKvgnTytXZ2iX4ktSppenIW8qx6Q5KQyGyYw/LBAl
	yu4FnJ4VkmVVMlJIa20w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcKS4-00000001tAK-2crt;
	Mon, 27 Jan 2025 08:26:36 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcKS2-00000001t9v-2LKx
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 08:26:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D748AA403ED;
	Mon, 27 Jan 2025 08:24:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4E76C4CED2;
	Mon, 27 Jan 2025 08:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737966393;
	bh=Tzcdn7Xb4jr56TaKPWnP/7cIRzGEgS+eCYpGj65P5OU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uhCUgd5tBLRPHnbESmcSGdZfG0HsNpu5wLFqmifi9YfMmJ+njSApNps3zSdPvuWoe
	 uAka0m7W0Dp8fF1MbZqNDUNWmMC4+tTvysCJa7haqWR2oEQDNHS18C2yF8Pdwd8PF7
	 JzPY5ocwXrSbzdn3Fi6/uUekprfOtarP/TkWMQU1/PGMfBsGw1xJknTGHN10f3/RyN
	 S2lv6ujgocKW315OSnnqn1Anwg4YOsqzDijB3Pia69ETS2gKumD+666h8Q9iVgZm36
	 sqRXiqIyXUAEjcDS16+OGxzKBcg+pWLVgwb6yyO0OyoOM2rSbqrB5zC5VcYIl817ad
	 rMhH6YNEc0z9A==
Date: Mon, 27 Jan 2025 09:26:29 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/6] dt-bindings: phy: qcom,qmp-pcie: Drop reset number
 constraints
Message-ID: <20250127-hungry-bald-groundhog-4f7d4b@krzk-bin>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-2-02659a08b044@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250125-topic-x1p4_dts-v1-2-02659a08b044@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_002634_661649_645115A6 
X-CRM114-Status: GOOD (  15.36  )
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

On Sat, Jan 25, 2025 at 04:31:18AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> (Almost?) all QMP PHYs come with both a "full reset" ("phy") and a
> "retain certain registers" one ("phy_nocsr").
> 
> Drop the maxItems=1 constraint for resets and reset_names as we go
> ahead and straighten out the DT usage. After that's done (which
> will involve modifying some clock drivers etc.), we may set
> *min*Items to 2, bar some possible exceptions.

You drop minItems now, so that's a bit confusing. If all devices have
two resets, just change in top-level resets the minItems -> 2 now and
mention that it does not affect the ABI, because Linux will support
missing reset and it describes the hardware more accurately.

> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 24 ----------------------
>  1 file changed, 24 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index f1ffc3d5cae44b8a9c96cdcd749a6e54533c94f6..c42143bd139e30d1beabc9099d0dde17128413bf 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -204,30 +204,6 @@ allOf:
>          clock-names:
>            minItems: 7
>  
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,sm8550-qmp-gen4x2-pcie-phy
> -              - qcom,sm8650-qmp-gen4x2-pcie-phy
> -              - qcom,x1e80100-qmp-gen4x2-pcie-phy
> -              - qcom,x1e80100-qmp-gen4x4-pcie-phy
> -              - qcom,x1e80100-qmp-gen4x8-pcie-phy
> -              - qcom,x1p42100-qmp-gen4x4-pcie-phy

You just added this line, so this patch should be #1.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
