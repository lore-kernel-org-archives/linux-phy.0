Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2860E606A88A
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 10:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RbblLGCS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bLCKxYxG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=trDyg0ofKSnPOZbSJvVarlkRAZmc9+PHNazbW7isCb8=; b=RbblLGCSX6J8ZftwQUh1Gfq7lD
	CHk+4PVOIqLKbZAsteDm5tl+VWLGfG2AB7SYdPxraBEe2HQ5lLVsVnSTs65XCj9iSqJeDhH9gJKrw
	/8L1t/QqfH+z1VNoj1zPqk1FlXBprl1nL4dpL/zvmyMgsPrr6ut8wbn5QvQGZAdWFaUMm98cWIM7V
	YV3lC7rgH7eEvahFZ1gqyyVBJ2lLBElXDXsx4t7761c4EIzIzQ/J5VXiLs6d8n/4roZT70U+oQY2M
	QbiKhk56Jvw5rVr5hWZciT5l88YLQFCZli/MUdJh3b/9ldXkYqpnsnzQ3sjM6G/vCy7KjOUxNviDa
	+TJnZaFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoD9-0000000CIzF-3lb1;
	Fri, 13 Nov 2026 10:08:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoD9-0000000CIz6-0a9J
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 10:08:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9532960218;
	Fri, 13 Nov 2026 10:08:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A8591F000C4;
	Fri, 13 Nov 2026 10:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794564526;
	bh=HbTVUVEbLhywMzK9PXNy1WS+vvBCdaRF5sXrgbJlc3Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bLCKxYxGCLmTJtkAVIq+poDgVQngn+bZy2ekBhpmFEhtu3JB9S898WIvaKmDyUgMu
	 DpgNATQE5Vo/WKcrOJIj9Sf1wr/lmIjFNf+PFlTiWs+UzkOXW9PQdejlejvL6KdwWo
	 9/YBGZSKsonURZjIib6bzNdbjXvWm6VrGdkLRfAVJkljkmyqQZ8wfqzdaAT3EzJkJc
	 uZ4JZbBzDYCq9e0pEBuZK1X4BRkl1c8rqNafBGfiPH1/esYNxBnrmjfqUyOiDsMTrs
	 8nZqcBOtdAD/oNfvvPIb1zJCDzC1L3jq62X8yHJkiRTj1QWLzmCCaGbf1bI3VQgdqa
	 Qd8W/1v1gvqdQ==
Date: Fri, 13 Nov 2026 11:08:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
	Shawn Guo <shengchao.guo@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: qcom,snps-eusb2-phy: Add Nord
 bus clock
Message-ID: <20261113-bold-weightless-dragon-1a2ada@quoll>
References: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
 <20261112-qcom-nord-ahb2phy-clk-v2-2-30ad3d947217@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261112-qcom-nord-ahb2phy-clk-v2-2-30ad3d947217@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 12, 2026 at 04:36:39PM +0100, Bartosz Golaszewski wrote:
> From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> 
> On Nord, the eUSB2 PHY registers are reached through the AHB2PHY_0
> bridge, which is gated by NE_GCC_AHB2PHY_CLK. Allow an optional
> second "bus" clock for the AHB2PHY bridge, require it for
> qcom,nord-snps-eusb2-phy, and keep other compatibles at the single
> "ref" clock. Since the Nord PHY needs the second bus clock, it's not
> really compatible with sm8550 so drop the fall-back. This is fine as no
> DT source uses it yet.
> 
> Fixes: 4d1f3875f328 ("dt-bindings: phy: qcom,snps-eusb2-phy: Document the Nord eUSB2 PHY")
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> [Bartosz: don't use the "qcom,sm8550-snps-eusb2-phy" fallback]
> Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,snps-eusb2-phy.yaml          | 24 +++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> index 931cd0e7d297e..fbea2129939f9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> @@ -19,13 +19,13 @@ properties:
>            - enum:
>                - qcom,eliza-snps-eusb2-phy
>                - qcom,milos-snps-eusb2-phy
> -              - qcom,nord-snps-eusb2-phy
>                - qcom,sar2130p-snps-eusb2-phy
>                - qcom,sdx75-snps-eusb2-phy
>                - qcom,sm8650-snps-eusb2-phy
>                - qcom,x1e80100-snps-eusb2-phy
>            - const: qcom,sm8550-snps-eusb2-phy

>        - const: qcom,sm8550-snps-eusb2-phy
> +      - const: qcom,nord-snps-eusb2-phy

These two should be an enum (and enum entries alphabetically sorted).

With this:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
