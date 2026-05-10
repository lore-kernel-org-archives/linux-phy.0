Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 933E9CD37AF
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p68IkcLCh1WsQ7QBffIhu+P2q9FgeD/GxFzGONfjXzQ=; b=IZoo0BouU+wVTe
	wva8g5zqVU2bYXxKJ9oFqZ1DKrJPrBBFYv4pjyTQ0KnRqliCyHFVTcXBt0BExD2evNOIzd/XMxct3
	CsmuzsfR1Uql3SIQtCWv8PxalApL7vBUpETDGIbbjQffU+0fBDjs4tJ3c7glg4L1kO+EIReDNX9BF
	4rGNrCXsj+OShVZi7lI+PxXXvhpRO4DlTmPxjzGQg90HNrxbK0DcMBCfAlLCOi9826NxvPTEdCZah
	mgJ6UNtJtXr4M5A/BuVmME3OsRBjCzsETgyoqc+tWydLeGzK6Stfdetb++X1LAkUSFe0etE4VMU1s
	iRdiBD7BnlSZRVFgoQmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM2vG-0000000AgST-3SSj;
	Sun, 10 May 2026 12:06:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM2vE-0000000AgS3-0w0a
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:06:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6E59840DE2;
	Sun, 10 May 2026 12:06:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BA8DC2BCB8;
	Sun, 10 May 2026 12:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778414771;
	bh=WJCic6gx6wQ/DFnJ7oL2MXWU3DEQuCCMibrQtMIN/44=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CXcgZvYk7XZbPGUvc/4EBro3bkJAHbaHLNBgSwKY/VVEtZ6aA0SKB7hJr6BNbFdlH
	 To6kwm6MCnB6V785ixdr/bnzg2LW/+GzWxdnA0xHgjBGGrU8HVg9tUHI97Kidnitd5
	 12Vcms4c2ZpAFFYGADYOd3y30KbIFUVa9dwWj9sm1BStzn1vO+UC5VYKW8oMhPeKvB
	 QaZPNU1m099+b8izbjqVwXliJ2fAiGu1x6XZjqduP1GlCLc/Thvk8NcvuD0m6snNnA
	 VYBA5X97o8VU5j5BN2y9hNIGTF5qe6Hc3Fa/b5m03uMi7YWaXYaEOKkiX8IimsmN2+
	 4DwKbLqQBGb2g==
Date: Sun, 10 May 2026 17:36:06 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Eliza QMP PHY
Message-ID: <agB0rvM07sgq_1Ih@vaman>
References: <20260318-eliza-bindings-qmp-phy-v1-1-96a0d529ad2d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260318-eliza-bindings-qmp-phy-v1-1-96a0d529ad2d@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_050612_283820_A5FC13DF 
X-CRM114-Status: GOOD (  14.32  )
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

On 18-03-26, 11:54, Abel Vesa wrote:
> Document the compatible for the USB QMP PHY found on the Qualcomm Eliza
> SoC.
> 
> It is fully compatible with the one found on Qualcomm SM8650, so add it
> with the SM8650 as fallback.

Can you please rebase this on phy/next

> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 3d537b7f9985..4eff92343ce4 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -16,6 +16,10 @@ description:
>  properties:
>    compatible:
>      oneOf:
> +      - items:
> +          - enum:
> +              - qcom,eliza-qmp-usb3-dp-phy
> +          - const: qcom,sm8650-qmp-usb3-dp-phy
>        - items:
>            - enum:
>                - qcom,kaanapali-qmp-usb3-dp-phy
> 
> ---
> base-commit: 8e5a478b6d6a5bb0a3d52147862b15e4d826af19
> change-id: 20260318-eliza-bindings-qmp-phy-c53be4b0b131
> 
> Best regards,
> --  
> Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
