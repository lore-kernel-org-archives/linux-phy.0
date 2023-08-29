Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D9AFC6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 14:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hp9av2+DF8bhdu8GjtraGk/rH+lSyfBphFPV6w3dtXc=; b=WlF6J5iDGhdefu
	eEwhbShjsyCqFIR1CSq9WtZSBqMNqNOL1hYVe7c2DmN0WMzO03moEf5orfh053kqqcLu+EOxqLYUR
	JizsxzZpH+oBww4h/g/GiQYsDuszqklCycV8XU6ElPtdo05CLGkJrdT/St6iBKP+IOrpfnlHTjbvc
	876dUV/VD3YX8g/TDmL9GnLh+UkE6PWVqO7VnJKYtQOpEZujpz8fkjUMeXNJeb6EffE4NP3UGwXom
	gXrL4fQR4NxAsCBBIHjUNuItUlXU+MUxJLGsE5nEhDor917ZtR/F0a0qtkBk9zIEQ7amKhLkbNDo1
	EZPQwJKjn3vPPMOKMzoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazpH-00Bi2w-26;
	Tue, 29 Aug 2023 14:36:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazp8-00Bi0g-0W;
	Tue, 29 Aug 2023 14:36:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A04FC63F40;
	Tue, 29 Aug 2023 14:36:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77578C433C7;
	Tue, 29 Aug 2023 14:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693319765;
	bh=w9u5bEggXkS9KG+nPdn6lVdboqQvTRDuJDT33hsxW14=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hGisWl6Slymv6dgiTCgDzHgOvYHodsI0QFeD4m12l/dMCuaitcjXuKe5SowaJy57z
	 +0XOMxrNSZeJAVQoP8VI1+wAN4ktaQqwgQpnvo02omAc4nrk3fCSZEUjG8QTzR5OMe
	 XjSRb8FjT3HmHxKTKlpWD7WPK4lRT+O3Z9PzpD8lMHzFvc3WgxDmF4PEfclJADWl2Y
	 gVhQp0npxNwiWUMpYKZLvQFLDMaqysBddi9SrcGL1vDebakrcAYCXlgWsSjxmP2M+q
	 cBV8mu2N2yPQqXut2NbR9IsU8WxOBWhKZ5YKdR1K67+j1bPjl0NxgPRVkOb5UOCO9l
	 cQnWyDZY/lYJg==
Received: (nullmailer pid 2142030 invoked by uid 1000);
	Tue, 29 Aug 2023 14:35:58 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@kernel.org, robert.marko@sartura.hr, robh+dt@kernel.org, geert+renesas@glider.be, peng.fan@nxp.com, konrad.dybcio@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, will@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, quic_varada@quicinc.com, vkoul@kernel.org, nfraprado@collabora.com, krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, quic_wcheng@quicinc.com, rafal@milecki.pl, gregkh@linuxfoundation.org, luka.perkov@sartura.hr, andersson@kernel.org, arnd@arndb.de, linux-usb@vger.kernel.org, agross@kernel.org, catalin.marinas@arm.com
In-Reply-To: <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-5-quic_ipkumar@quicinc.com>
Message-Id: <169331975886.2142011.7345682428392154402.robh@kernel.org>
Subject: Re: [PATCH 4/9] dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS
 UNIPHY
Date: Tue, 29 Aug 2023 09:35:58 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_073606_286788_53B3E1D9 
X-CRM114-Status: GOOD (  12.49  )
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


On Tue, 29 Aug 2023 19:28:13 +0530, Praveenkumar I wrote:
> Add ipq5332 USB3 SS UNIPHY support.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,uniphy.yaml  | 117 +++++++++++++++++-
>  1 file changed, 114 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
In file included from Documentation/devicetree/bindings/phy/qcom,uniphy.example.dts:45:
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:19: warning: "GCC_BLSP1_AHB_CLK" redefined
   19 | #define GCC_BLSP1_AHB_CLK                               10
      | 
In file included from Documentation/devicetree/bindings/phy/qcom,uniphy.example.dts:18:
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:40: note: this is the location of the previous definition
   40 | #define GCC_BLSP1_AHB_CLK                               21
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:20: warning: "GCC_BLSP1_QUP1_I2C_APPS_CLK" redefined
   20 | #define GCC_BLSP1_QUP1_I2C_APPS_CLK                     11
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:41: note: this is the location of the previous definition
   41 | #define GCC_BLSP1_QUP1_I2C_APPS_CLK                     22
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:21: warning: "GCC_BLSP1_QUP1_SPI_APPS_CLK" redefined
   21 | #define GCC_BLSP1_QUP1_SPI_APPS_CLK                     12
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:42: note: this is the location of the previous definition
   42 | #define GCC_BLSP1_QUP1_SPI_APPS_CLK                     23
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:23: warning: "GCC_BLSP1_QUP2_I2C_APPS_CLK" redefined
   23 | #define GCC_BLSP1_QUP2_I2C_APPS_CLK                     14
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:43: note: this is the location of the previous definition
   43 | #define GCC_BLSP1_QUP2_I2C_APPS_CLK                     24
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:24: warning: "GCC_BLSP1_QUP2_SPI_APPS_CLK" redefined
   24 | #define GCC_BLSP1_QUP2_SPI_APPS_CLK                     15
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:44: note: this is the location of the previous definition
   44 | #define GCC_BLSP1_QUP2_SPI_APPS_CLK                     25
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:30: warning: "GCC_BLSP1_UART1_APPS_CLK" redefined
   30 | #define GCC_BLSP1_UART1_APPS_CLK                        21
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:45: note: this is the location of the previous definition
   45 | #define GCC_BLSP1_UART1_APPS_CLK                        26
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:32: warning: "GCC_BLSP1_UART2_APPS_CLK" redefined
   32 | #define GCC_BLSP1_UART2_APPS_CLK                        23
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:46: note: this is the location of the previous definition
   46 | #define GCC_BLSP1_UART2_APPS_CLK                        27
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:42: warning: "GCC_GP1_CLK" redefined
   42 | #define GCC_GP1_CLK                                     33
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:48: note: this is the location of the previous definition
   48 | #define GCC_GP1_CLK                                     29
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:44: warning: "GCC_GP2_CLK" redefined
   44 | #define GCC_GP2_CLK                                     35
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:49: note: this is the location of the previous definition
   49 | #define GCC_GP2_CLK                                     30
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:98: warning: "GCC_PRNG_AHB_CLK" redefined
   98 | #define GCC_PRNG_AHB_CLK                                89
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:62: note: this is the location of the previous definition
   62 | #define GCC_PRNG_AHB_CLK                                43
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:117: warning: "GCC_QPIC_AHB_CLK" redefined
  117 | #define GCC_QPIC_AHB_CLK                                108
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:63: note: this is the location of the previous definition
   63 | #define GCC_QPIC_AHB_CLK                                44
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:118: warning: "GCC_QPIC_CLK" redefined
  118 | #define GCC_QPIC_CLK                                    109
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:64: note: this is the location of the previous definition
   64 | #define GCC_QPIC_CLK                                    45
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:122: warning: "GCC_SDCC1_AHB_CLK" redefined
  122 | #define GCC_SDCC1_AHB_CLK                               113
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:65: note: this is the location of the previous definition
   65 | #define GCC_SDCC1_AHB_CLK                               46
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:123: warning: "GCC_SDCC1_APPS_CLK" redefined
  123 | #define GCC_SDCC1_APPS_CLK                              114
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:66: note: this is the location of the previous definition
   66 | #define GCC_SDCC1_APPS_CLK                              47
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:191: warning: "GCC_BLSP1_BCR" redefined
  191 | #define GCC_BLSP1_BCR                                   8
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:126: note: this is the location of the previous definition
  126 | #define GCC_BLSP1_BCR                                   30
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:192: warning: "GCC_BLSP1_QUP1_BCR" redefined
  192 | #define GCC_BLSP1_QUP1_BCR                              9
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:127: note: this is the location of the previous definition
  127 | #define GCC_BLSP1_QUP1_BCR                              31
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:195: warning: "GCC_BLSP1_QUP2_BCR" redefined
  195 | #define GCC_BLSP1_QUP2_BCR                              12
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:129: note: this is the location of the previous definition
  129 | #define GCC_BLSP1_QUP2_BCR                              33
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:203: warning: "GCC_BLSP1_UART1_BCR" redefined
  203 | #define GCC_BLSP1_UART1_BCR                             20
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:128: note: this is the location of the previous definition
  128 | #define GCC_BLSP1_UART1_BCR                             32
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:205: warning: "GCC_BLSP1_UART2_BCR" redefined
  205 | #define GCC_BLSP1_UART2_BCR                             22
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:130: note: this is the location of the previous definition
  130 | #define GCC_BLSP1_UART2_BCR                             34
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:260: warning: "GCC_PCNOC_BCR" redefined
  260 | #define GCC_PCNOC_BCR                                   77
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:148: note: this is the location of the previous definition
  148 | #define GCC_PCNOC_BCR                                   52
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:263: warning: "GCC_PRNG_BCR" redefined
  263 | #define GCC_PRNG_BCR                                    80
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:135: note: this is the location of the previous definition
  135 | #define GCC_PRNG_BCR                                    39
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:274: warning: "GCC_QDSS_BCR" redefined
  274 | #define GCC_QDSS_BCR                                    91
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:165: note: this is the location of the previous definition
  165 | #define GCC_QDSS_BCR                                    69
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,ipq5332-gcc.h:290: warning: "GCC_QPIC_BCR" redefined
  290 | #define GCC_QPIC_BCR                                    107
      | 
./scripts/dtc/include-prefixes/dt-bindings/clock/qcom,gcc-ipq4019.h:141: note: this is the location of the previous definition
  141 | #define GCC_QPIC_BCR                                    45
      | 

doc reference errors (make refcheckdocs):
Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
MAINTAINERS: Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230829135818.2219438-5-quic_ipkumar@quicinc.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
