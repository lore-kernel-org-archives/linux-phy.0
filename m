Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBD9DC001DF
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 16:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRu/xGEn0nExzNJ0G+SyAAyybfl7P1LxsOb4MZGVY7M=; b=1d60d+wa5NaSUH
	P1jKiiTTtxrp3upoLg26ln0JUhSJLwVMmn3AkF2f6wf1pL8nZBQsk6ncTrqAA/bwJc7mj6XdKw/sF
	l3wln4tHyQScdsIuevoPIwckpGNsM3gnzWCUioDRYOGNmR4A6oMebuFOk1LgqP251zeNUzPGrCpAm
	ZO/cn4goFoBxD2y2Ycm8s0Jx3YmrWt1wWSdxCoztX3A1Rfp+kpjWy8OuaNixW4DV4q/u8L+ctCOVb
	HoqqmgcB2L+GaSoM3O7sxnvq1ZIuf2HXLtQpwRF0voP1QJx5K1wZ5jUuqDcarZPhhW7eFItjmBcf3
	5pfX4kKeRDRR4noOCemA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNy0H-004nf5-1c;
	Mon, 24 Jul 2023 16:01:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNy0D-004neE-1z;
	Mon, 24 Jul 2023 16:01:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1600261233;
	Mon, 24 Jul 2023 16:01:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14399C433C9;
	Mon, 24 Jul 2023 16:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690214500;
	bh=obEOVXewu49VHgFG99DmRcFBdBiVyJBWFXsPB3r31fU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OojbEwQeuKb6QLqK6xMwGZ+fLq0y6ggK/tEkfAkegcfDu+8CKzOPOnuFdZePmmFWT
	 8hMsA2mSyXl2bzJd6bKTm1ew8RsSgBYz8qt/EaxqgFvdvS8dvRfiesUvQvRMQBF7FO
	 9GhbXLzIVKH4iDo8A3E5Erf9xLofT70hZzRtH9Hh0J9bSwiZ0wPOsgoE4Amd27eEKA
	 FMD5phjLHByS4SRc8y82CK1So8dFE4GD5i2KhNZQWL+4t/G1E5dF3nQAUGwsO5dKPR
	 SXSyeiVAQveObzPk/v/94s43da2MCi0JzEgEvGDRtCGL2D1o3hUn8jyOrpZM3L8WJF
	 bX5xpTCFzPFMw==
Received: (nullmailer pid 3620992 invoked by uid 1000);
	Mon, 24 Jul 2023 16:01:36 -0000
Date: Mon, 24 Jul 2023 10:01:36 -0600
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com, rafal@milecki.pl, quic_srichara@quicinc.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Message-ID: <20230724160136.GA3619408-robh@kernel.org>
References: <cover.1689913334.git.quic_varada@quicinc.com>
 <131eb1694229436919ac88bb9920fb54d6808388.1689913334.git.quic_varada@quicinc.com>
 <ymbcafqqhc6hgrfhpef4byehvfyjzovs5zeprmj343erdv5ti5@tj2iunu6whvi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ymbcafqqhc6hgrfhpef4byehvfyjzovs5zeprmj343erdv5ti5@tj2iunu6whvi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_090141_737523_F2186391 
X-CRM114-Status: GOOD (  18.64  )
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

On Fri, Jul 21, 2023 at 10:10:57PM -0700, Bjorn Andersson wrote:
> On Fri, Jul 21, 2023 at 10:05:27AM +0530, Varadarajan Narayanan wrote:
> > Document the M31 USB2 phy present in IPQ5332.
> > 
> > Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> As Sricharan is the first one to certify the patch's origin, it seems
> likely that he's the author. Please add a Co-developed-by: Sricharan.
> 
> [..]
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> > new file mode 100644
> > index 0000000..e0b282b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> > @@ -0,0 +1,51 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/qcom,ipq5332-usb-hsphy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: M31 USB PHY
> > +
> > +maintainers:
> > +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > +  - Varadarajan Narayanan <quic_varada@quicinc.com>
> > +
> > +description:
> > +  USB M31 PHY (https://www.m31tech.com) found in Qualcomm
> > +  IPQ5018, IPQ5332 SoCs.
> > +
> > +properties:
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  compatible:
> > +    enum:
> 
> const?
> 
> > +      - qcom,ipq5332-usb-hsphy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: cfg_ahb
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> > +    usbphy0: usb-phy@7b000 {
> 
> usb@

You mean phy@? But 'usb2-phy' is accepted too.

> 
> And you don't need to give the node a label in the example.
> 
> > +        compatible = "qcom,ipq5332-usb-hsphy";
> > +        reg = <0x0007b000 0x12c>;
> > +
> > +        clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> > +        clock-names = "cfg_ahb";
> > +
> 
> No #phy-cells?
> 
> Regards,
> Bjorn
> 
> > +        resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> > +    };
> > -- 
> > 2.7.4
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
