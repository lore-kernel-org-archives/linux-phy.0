Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07EA4CF6BE5
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 08:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPydLyp4kSYwz6Si74Xm3Y0ymZn2lW+QL8fse3ASqzY=; b=C0Zk5qUaM+o7g0
	4eUEmOtWD5tPdLX1v0nbYMgyY6q4aiIzLuuX4zIiP5gMp7OBnSdGEyz3Ji6ytjMjXq9/PhkjQ3KCU
	AdVuTV6f/5LDLIoD4He0A/bj2CpWe/FX5cVS7xtgeFC2Oz0QepSswLQPu/+BJo1y8/as3I6D7OY8M
	jui9M+MjNbkUL/RV4ZWX2Z9ONe/arqmjb1nrcBK9RuOA6aZVxxVGyRF3jASHquja12K67tJaQd7Oi
	UFyeE2LgUjRaQ2/XxpQS18hFk1dUiOBWF9bi3ZQEbM3uGDDR8WiILMwR8+u8a6Fjib6m00FX+OH0p
	zBZeT/wF97rWqu0L4Nrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdl5v-0000000GE28-3DCc;
	Thu, 08 Jan 2026 08:10:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdl5v-0000000GE1s-0Ks0
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 08:10:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 39EB860053;
	Thu,  8 Jan 2026 08:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DA19C116C6;
	Thu,  8 Jan 2026 08:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767859809;
	bh=bqafzoBeyKCVtTt76rKmvJIsQoLDj2D0YeKz+fx6RN8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XXmUBHf2/weM2mMeh7utxAtVPNEQBs6I9CLEze7lVZFhNkJY1fG3mu7T0yDO+wXP6
	 I9PB8JX5uqXq7ZMr9iD8A2q5whBUSOuCVZ6XxFEYjmHB41H8sKMdLRbFxsKaB0v54n
	 t+IAMSZgvFazCNtVm4MHghKHyHK7V4nGSF0BydoJuS7+kTudbkLQm17+gQXsyAKYU+
	 xqqjLATZLvBCcf3z+jGUEbUP7v/R9T4cRPLIgkckkgwLh4qEJjeP1pdwM+Uudw6CyS
	 aKXIHsS4IH/BOrN7POYlj2xkxTxVZTBfrPNMK6o2YbDCrBArDUbnLkZlqNw3B7Emcw
	 uIJ4yopWg107w==
Date: Thu, 8 Jan 2026 09:10:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Ronak Raheja <ronak.raheja@oss.qualcomm.com>, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document
 M31 eUSB2 PHY for Kaanapali
Message-ID: <20260108-congenial-bonobo-of-lightning-5ceaec@quoll>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
 <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
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

On Thu, Jan 08, 2026 at 10:54:59AM +0530, Krishna Kurapati wrote:
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> 
> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
> Kaanapali with that on the SM8750.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> index 409803874c97..cd6b84213a7c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - items:
>            - enum:
>                - qcom,glymur-m31-eusb2-phy
> +              - qcom,kaanapali-m31-eusb2-phy

Huh? So you did not add new compatible? It's exactly the same code, so
the tag should have stayed. Really, do not overcomplicate things. There
is no need to poke people on multiple channels to ask them if EXACTLY
same patch retains the tag. It is already explained in submitting
patches.

Keep the previous ack.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
