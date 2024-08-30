Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65C2BCA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owjqWsgyBio+Q0mVB8CRWG9DXOtKm/jfvrVbr47Htk0=; b=fnoUy3zb70p1/V
	CdzwghE9NR0gY9l+tHWs+nkKkQxZAK2fJdpniDsRisnkMv0UqyAmILP9fQC0KnbgakqsYEo/YeNf1
	263v76sskdPi3LQ9Kac/MsvVooSfz4CdWBKkCXILpcTe+BPOL1QjJFb0RAWuqByaFLIyLlpt8OK4d
	3fI1pPrVj0d7BRbWRDfZKlze84vfp9s2hA0zD39tC2dsk8qj60pndyrnMj4ibuDeZiFHkh+h4F+gh
	xEHovWmn8FqJKvsOweKUkpsyKK5yrJuRPFeKTw8byy9kl+T8Bc5ECfjCRZJ40gN+ZaI1rDXkNHe9s
	yTYhhzR7yZue2dotPmdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwwi-00000005Koq-0Qa1;
	Fri, 30 Aug 2024 08:25:28 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwv6-00000005KPb-209p
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 08:23:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7B00FA4413E;
	Fri, 30 Aug 2024 08:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94914C4CEC2;
	Fri, 30 Aug 2024 08:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725006227;
	bh=3Y9mMq3/KBsce91Bb2CDzhvN2+J+/hQB5/+wKDGtYzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=agb3mJpHsKBiXBBdsw3MLK1eOD5wm1M0YQCjOdirZwfj4JOS6W9nuCLKAe9oRZToo
	 UFpENv9l2Ej+SlyWHrVTPicbbf+iKligkNhJ6l0m2Z1hR/5tA+RAy+MvrmhY0ST0VP
	 huMgtsNGHkuOS2SUKU28kN1vJ6l+rrJ1gS8yoR4bFmTyPN0xcKNcpF/6sxf7N9ev92
	 0se7wu82ZBQKXhejuWr233rXiJTOmQgIKV7sSboPcQ44cOph+a6TPdHzrytLThLAo0
	 N2eAYW376rP2/zWP0t0UKDpAj3FdPoRUSp8dowoUzS/LM8GYmCnabaPh6CIf8Pvtns
	 qqbXacVbJq0+A==
Date: Fri, 30 Aug 2024 10:23:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, robimarko@gmail.com
Subject: Re: [PATCH V3 1/6] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Message-ID: <e2qgpvfccpo2sd4mbrynxruvt5attqmtd5oik26of7tv7u4lq6@kvb63sglwa5b>
References: <20240830081132.4016860-1-quic_srichara@quicinc.com>
 <20240830081132.4016860-2-quic_srichara@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240830081132.4016860-2-quic_srichara@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_012348_818833_B57F17E2 
X-CRM114-Status: GOOD (  13.17  )
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

On Fri, Aug 30, 2024 at 01:41:27PM +0530, Sricharan R wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5018.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
>  [v3] Added reviewed-by tags
> 
>  .../phy/qcom,ipq5018-uniphy-pcie.yaml         | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
> new file mode 100644
> index 000000000000..c04dd179eb8b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq5018-uniphy-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm UNIPHY PCIe 28LP PHY controller for genx1, genx2
> +
> +maintainers:
> +  - Nitheesh Sekar <quic_nsekar@quicinc.com>
> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq5018-uniphy-pcie-gen2x1
> +      - qcom,ipq5018-uniphy-pcie-gen2x2

... and now I wonder why there are two compatibles. Isn't the phy the
same? We talk about the same hardware?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
