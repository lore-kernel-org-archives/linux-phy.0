Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A8B7C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 19:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaBc1X5GTM/ngV0plhWf5uHrmPKRuv58ne4MA5FTgUY=; b=PPXHTFOHe0GUgx
	5A9PjfIkQqDEDBNFUxQhNC7oPm/G8VYzlMZqB4zPB2NXez7UhDG7FDm2OfAK2VangFwLPjjrejs6D
	MC51SGGcNPK8df/Gk0JgRBlZpJTVU6q7ADIOxzU4DYHbf36j6Z08ps/tpNe11fJNaoRXPT/mjrp59
	P5DHG8I4yUrD8ojtQzsunHiY/CIX3Q67/KShUJbkxI7NDxTOC5KwImqFL6y63QhFnYNqh464bFUye
	wjBCTDBFeHQfkeuAnT6vwZygUHTDRVk1OMInvMlDGBT93SD3hodYwo9MsplGNMBAVRtjlAbVDR/Gh
	VezB5dg0EvVemaikTWNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzigK-00000005kxP-0CWH;
	Wed, 24 Apr 2024 19:53:28 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzigG-00000005kvG-0Chb;
	Wed, 24 Apr 2024 19:53:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E2543CE1733;
	Wed, 24 Apr 2024 19:53:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1C2DC113CD;
	Wed, 24 Apr 2024 19:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713988401;
	bh=HZkky1K43bSZGSblXrPp3EAM8NlSsdMp1ndHmpJJXwQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NTTcczTrGnFaxAa1kcfspxMTN3/ePhg12mnST33XA49fFlgQuXuSnkLe26jrPzCQC
	 J1oxZAICxWCxa0bAApRRhf6JBaQ298OaMehmKj74FeKFuCnfBNpYeswE9haIIg+jmz
	 Q/QZUKJAI7MbPzLLi+8YOH+Xfv/R053F0CiIy/BzGEVmHB91IganAP727lrF/IA+R6
	 bm6D3XwKX35MsHWKr/tUh/MtpWNiq3t9KVNMlP07PO0lnGKkPp7XTeEu+B8yu+Hzin
	 AiV94wDgJFifjC7MInUtd5m20iQLLKrdS+4QKpuas+p82FqLW4tgeDwJsB8Tm5FSZ3
	 3Ak4vINNx/EJw==
Date: Wed, 24 Apr 2024 14:53:18 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, James.Bottomley@hansenpartnership.com,
	ebiggers@kernel.org, linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org, andre.draszik@linaro.org,
	saravanak@google.com, willmcvicker@google.com
Subject: Re: [PATCH v2 03/14] dt-bindings: ufs: exynos-ufs: Add gs101
 compatible
Message-ID: <20240424195318.GA367166-robh@kernel.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
 <20240423205006.1785138-4-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240423205006.1785138-4-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_125324_564737_620FD0C3 
X-CRM114-Status: GOOD (  12.95  )
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

On Tue, Apr 23, 2024 at 09:49:55PM +0100, Peter Griffin wrote:
> Add dedicated google,gs101-ufs compatible for Google Tensor gs101
> SoC.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  .../bindings/ufs/samsung,exynos-ufs.yaml      | 38 +++++++++++++++++--
>  1 file changed, 35 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> index b2b509b3944d..1179527d29d1 100644
> --- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> @@ -12,12 +12,10 @@ maintainers:
>  description: |
>    Each Samsung UFS host controller instance should have its own node.
>  
> -allOf:
> -  - $ref: ufs-common.yaml
> -
>  properties:
>    compatible:
>      enum:
> +      - google,gs101-ufs
>        - samsung,exynos7-ufs
>        - samsung,exynosautov9-ufs
>        - samsung,exynosautov9-ufs-vh
> @@ -38,14 +36,24 @@ properties:
>        - const: ufsp
>  
>    clocks:
> +    minItems: 2
>      items:
>        - description: ufs link core clock
>        - description: unipro main clock
> +      - description: fmp clock
> +      - description: ufs aclk clock
> +      - description: ufs pclk clock
> +      - description: sysreg clock
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: core_clk
>        - const: sclk_unipro_main
> +      - const: fmp
> +      - const: ufs_aclk
> +      - const: ufs_pclk

'ufs_' is redundant.

> +      - const: sysreg
>  
>    phys:
>      maxItems: 1
> @@ -72,6 +80,30 @@ required:
>    - clocks
>    - clock-names
>  
> +allOf:
> +  - $ref: ufs-common.yaml
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: google,gs101-ufs
> +
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 6
> +
> +        clock-names:
> +          minItems: 6
> +
> +    else:
> +      properties:
> +        clocks:
> +          maxItems: 2
> +
> +        clock-names:
> +          maxItems: 2
> +
>  unevaluatedProperties: false
>  
>  examples:
> -- 
> 2.44.0.769.g3c40516874-goog
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
