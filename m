Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72868FA372A
	for <linux-phy@archiver.kernel.org>; Fri,  2 Jan 2026 11:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUh9DOMBOSjnIPHjeUHk3YVjVw6/twW2mSyIBLNqDcg=; b=SI8adIsFqBJy2Q
	Ok9h/RjoQPzvbGeU3eFMDkxj1zpwWSBTeVSGX+aBsOv/eJS92alTn5GPhcd01412D8KdtlO9FWgjJ
	ylJ5yOqcuicHrNOkTP7oqD+f0qfZ4dHMO0wIFKsLKI6Ktx3KzYooVsnhB3xFL6Q/UMD63QwHMq47P
	6Rcm76JwcOGWI94HjSXeRs4voc2exPJ1eP7Sj+iin7xjkk4a+2kE33NRao5Vh2CPwS58IjZz9bPlN
	q6QBjg5L1OB5elCTfQ5U6csE1lJAvVF1QL3zW1XQ34LOHCxBCtjnPcJMLnCRyYXMCyvFUcg2IbgQW
	BgFBlhxcaQ1tQYpkiPYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbdFe-0000000882W-3uJP;
	Fri, 02 Jan 2026 11:23:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbdFb-0000000881q-3J1D
	for linux-phy@lists.infradead.org;
	Fri, 02 Jan 2026 11:23:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8FD5A4076F;
	Fri,  2 Jan 2026 11:23:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E21B0C116B1;
	Fri,  2 Jan 2026 11:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767353000;
	bh=A0hT4+hoK/1Wjwpp9+mpnmzYk20Pow4qRCSe9OUBA9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YzpZn9HjXfd4u+T5s8YZNUM7DkF4sf9eS3CJDzH6pkLxgi3sTuO+dNsNwIg7UcUDi
	 zW5zu1t2gmxVJ7XqgY8WG2UfdngAKSJ2yQzo591opVdEskyGZ/qz6mV03S9oFDNjPs
	 eO1cxcB7xqTTZsRZynnvXqaNnfASKoQNFxeg/OlgZHXI6YNa3QkGD/h0oOngYpZCqN
	 spb3H8FFcogV46m8QkjedbcWqKPM33wTWhf3r5uGFcspddgtRdJwCgFMBMFzLR07Dz
	 iM0E3dTunxTVpQy0uj8Jc1YXfIeH8wgIOIsdrHAdhg/5Tfgepn8wwzuXFPfog8yQUK
	 evSyTR4WzBRtA==
Date: Fri, 2 Jan 2026 12:23:17 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com, 
	andersson@kernel.org, konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V2 1/4] dt-bindings: phy: Add QMP UFS PHY compatible for
 x1e80100
Message-ID: <20260102-heretic-angelic-narwhal-5d9d8c@quoll>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-2-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251231101951.1026163-2-pradeep.pragallapati@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_032323_848233_8D4A82B1 
X-CRM114-Status: GOOD (  13.62  )
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

On Wed, Dec 31, 2025 at 03:49:48PM +0530, Pradeep P V K wrote:
> Add the QMP UFS PHY compatible string for Qualcomm x1e80100 SoC to
> support its physical layer functionality for UFS. Use SM8550 as a
> fallback since x1e80100 UFS PHY shares the same tech node, allowing

What is a "tech node"?

> reuse of existing UFS PHY support.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index fba7b2549dde..552dd663b7c9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -28,6 +28,10 @@ properties:
>            - enum:
>                - qcom,kaanapali-qmp-ufs-phy
>            - const: qcom,sm8750-qmp-ufs-phy
> +      - items:
> +          - enum:
> +              - qcom,x1e80100-qmp-ufs-phy
> +          - const: qcom,sm8550-qmp-ufs-phy

85 < 87, keep the order by last compatible. It was already screwed by
Xin Liu in previous commit but you do not have to grow discouraged
patterns.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
