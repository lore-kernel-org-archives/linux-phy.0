Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DEE5CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28F3JF4F5ZIC4UTOXkxvLHlQRFnvn5NpxgXw6A0sjYk=; b=i2VrONSTy0HN3B
	+jT+2MXD3QZ6pm+K5Fjt0TSNo7tgQOMCRVAMhmJwV7CoPjX5Y9UCop4LVR1GhtcWDRRSuNFMvLk7G
	NPDPCMslgT1C+O5X5jPZShDEU70dvUN5uYhOw+cx5mIJ45l4qdde3+W+tHENVcqFDTcIWKNLZ13HR
	qPYTDt4CCZyBDtpALx9ruqphl+YQG+ZpajuO8PP+u0tKENH1oKnjR+LdYK8WBC2YQcQMsVu/ozKwW
	CD6ZRZ2KWb2m1e18dv8kPIbxKmrLbf2Sd/k7yK4Y4CySCnBeiNN0K/JaU5/LkJTxfFukifVyE+7YF
	cRLGf+z/BqNIo7Qj8WCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0mw0-0000000BQTa-3zei;
	Mon, 22 Sep 2025 20:14:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0mvz-0000000BQTC-1QO4
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 20:14:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C434760243;
	Mon, 22 Sep 2025 20:14:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53C36C4CEF0;
	Mon, 22 Sep 2025 20:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758572090;
	bh=n7onidEgsOlpaTA0bHqvezDw24pCCjyLfMiCT8xJbWo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mdQqbZfgkYFBXrVlz9w8YV7KeMdkJVHmaZi+yCE+ct1RDUWErD4fWAkOq468gUbzF
	 kwuGtAghvJ1UKanzQkz0bBsDj9PbS0r7sUpYUN1YIXuG6TssUBEAnHB2oP+4Uxf1UM
	 MuVUW9dbu4NXJO0E9eJpQBchM2rAYV0c7isLon4T2e8PEUl1Nea5KraVZtVRrRJNI+
	 /Ta5aSQoxBG6YS8Bxfr/Mf0PkZ0EA1V8YlQA5f4QTFUb/VKq0ieUnoKhqfc0ZZThu4
	 U5SiDwQzpAZDBK+7kEu2fSz6mai2vfOaF0pQYvC72vBhklIXZWhFggm79ga3m51zfd
	 S+02KzwGccjfg==
Date: Mon, 22 Sep 2025 15:14:49 -0500
From: Rob Herring <robh@kernel.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
	vkoul@kernel.org, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur
 compatible
Message-ID: <20250922201449.GA1235521-robh@kernel.org>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-4-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-4-wesley.cheng@oss.qualcomm.com>
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

On Fri, Sep 19, 2025 at 08:21:02PM -0700, Wesley Cheng wrote:
> Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
> the fallback.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml   | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> index c84c62d0e8cb..b96b1ee80257 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> @@ -15,9 +15,12 @@ description:
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - qcom,sm8750-m31-eusb2-phy
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,glymur-m31-eusb2-phy
> +          - const: qcom,sm8750-m31-eusb2-phy
> +      - const: qcom,sm8750-m31-eusb2-phy
>  
>    reg:
>      maxItems: 1
> @@ -53,8 +56,6 @@ required:
>    - compatible
>    - reg
>    - "#phy-cells"
> -  - clocks
> -  - clock-names

How is it compatible if clocks aren't required now? And clocks are 
suddenly no longer required on sm8750?

>    - resets
>    - vdd-supply
>    - vdda12-supply

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
