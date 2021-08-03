Return-Path: <SRS0=vwvf=M2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1FC4338F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Aug 2021 22:29:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5851E61102
	for <linux-phy@archiver.kernel.org>; Tue,  3 Aug 2021 22:29:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5851E61102
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJyy1cd81sXZvcKey+wBbfLVYytG8TknpKJInMWbQog=; b=FKxwaxEPpHDoPP
	FhrSYbfMSCPqR//SJy41fltJi0IS1gtXQ2CGiFWCEnyXh7HnprKQR43GfPgjAwbGgFR1OZgadZiS9
	xlfotcnyfV41mjkVGZ2jZNhu7SgbVk4pumk17f+xO4T89aOuszUMLXPNOoKcZNl/VNfm9PtORrP+d
	6F27jUXnTzW1qolLaGk7bjjlJwUfjjXwRN0njxW7g+fPe47OVYcwGSQfxKc3jqlHXFsf3d3dUdMnV
	LcLqtu95fzMnAXSLJ5xRJ7Uh4QppDeAY5Nxx52vhz1nFlpk50eg/+OJL6ANODHJzwyQvNwHKycgG/
	ZkYTvcKpglKJu6BhLVrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mB2uI-004Lmq-TK; Tue, 03 Aug 2021 22:29:06 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mB2uF-004Lm8-Ko
 for linux-phy@lists.infradead.org; Tue, 03 Aug 2021 22:29:05 +0000
Received: by mail-io1-f47.google.com with SMTP id a1so201555ioa.12
 for <linux-phy@lists.infradead.org>; Tue, 03 Aug 2021 15:29:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EIElEyRSM53MLE3+1DvYpQLnAdfHbUBM8sLtZAJMDa8=;
 b=EEWAYNrm+YCTdA3Tk5O+DuTNY3XHiF8Wdk+edv3hZW9GcYjjOP5ykT4mO8HbBnpNhp
 2lGKzLn3Q6k9BiiKJmc9sO/I4WENotztPSsqMfrduq7MfEh4xgkZI3g0BIGWGoTPi+0d
 vIhXtY+RGvZELVfTEG7u5VUVBgVuOIX66cw7ovVbWe5YNBYNNu3m3mPBIlamq0TJYzaB
 TdqcsAyB0uFfG+vhDfzsVei2f8MBS1c7x/dPxKYKfHOzfMNBFOrEcOsTaasShg0UuJn4
 Y9wpkc+BhFc3FtwK7cySZTEuOh9BJXMJF7Y/UsicHf9Sx75CMM82LK69MBrMeBMdybPZ
 iEtg==
X-Gm-Message-State: AOAM530Q9XuGsAqWuzj6sxSh3JFzG7BrSA75EXtGo1sIowITVSbc0oGq
 Y73br/AN3FCsOx3nmhDFPA==
X-Google-Smtp-Source: ABdhPJzC/sOjRlF3AqPXMRIf3nwj9myK7PMuHWJzsHWxC2L4m8Q4yn24FuoLuAd2V6EtStJc3TFR/g==
X-Received: by 2002:a5d:9ac1:: with SMTP id x1mr629577ion.191.1628029742852;
 Tue, 03 Aug 2021 15:29:02 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id v5sm155949ilu.19.2021.08.03.15.29.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Aug 2021 15:29:02 -0700 (PDT)
Received: (nullmailer pid 3843862 invoked by uid 1000);
 Tue, 03 Aug 2021 22:29:00 -0000
Date: Tue, 3 Aug 2021 16:29:00 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/4] dt-bindings: phy: Add bindings for HiKey 970 PCIe
 PHY
Message-ID: <YQnDLFmvV3AtihBy@robh.at.kernel.org>
References: <cover.1627965261.git.mchehab+huawei@kernel.org>
 <b5809d8acf257834dd84807aa0474f68a94d8084.1627965261.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5809d8acf257834dd84807aa0474f68a94d8084.1627965261.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_152903_734918_F1EAB41A 
X-CRM114-Status: GOOD (  16.03  )
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

On Tue, Aug 03, 2021 at 06:38:58AM +0200, Mauro Carvalho Chehab wrote:
> Document the bindings for HiKey 970 (hi3670) PCIe PHY
> interface, supported via the pcie-kirin driver.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../phy/hisilicon,phy-hi3670-pcie.yaml        | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> new file mode 100644
> index 000000000000..1e0153e4f4a5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/hisilicon,phy-hi3670-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon Kirin970 PCIe PHY
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> +
> +description: |+
> +  Bindings for PCIe PHY on HiSilicon Kirin 970.
> +
> +properties:
> +  compatible:
> +    const: hisilicon,hi970-pcie-phy
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +    description: PHY Control registers
> +
> +  phy-supply:
> +    description: The PCIe PHY power supply
> +
> +  clocks:
> +    items:
> +      - description: PCIe PHY clock
> +      - description: PCIe AUX clock
> +      - description: PCIe APB PHY clock
> +      - description: PCIe APB SYS clock
> +      - description: PCIe ACLK clock
> +
> +  clock-names:
> +    items:
> +      - const: phy_ref
> +      - const: aux
> +      - const: apb_phy
> +      - const: apb_sys
> +      - const: aclk
> +
> +  clkreq-gpios:
> +    description: Clock request GPIOs
> +    maxItems: 3

This can be dropped now?

If not, at least use the same property name. (But really, why duplicate 
information in DT).

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
