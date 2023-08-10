Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A688C001B0
	for <linux-phy@archiver.kernel.org>; Thu, 10 Aug 2023 10:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byJwwRSsxWeXkgtm1krX3FTiH2y1dmwy5aEQqB6KOrI=; b=HXzIKRdLmkrHlS
	DyIHO3xOO2gRV9eI2b3gEtp2i4S6p3EEblWUNO6ljgJz2bVSYNXYkB2jSXCR9dFUax+BEnBL5ONYp
	DIdftEPtf6HUFGYfuAnBqL4RNsf3/IwnuUzUlM4DAxpF7VISGIsG98imUtxTWwK2ZQyoTygl0pBiP
	iLFT0gx02pg3kaY/kWjA/bn3r1ABVxXXGgt/9uQoGfBHyIOXjzzrZUPT1GFqEHcfkT9HJxnVIIFa4
	C7hsx9xxrK4HqMJ+sJxbOqEDgG/kSyhdm7vNVz727SR0zXOoqvMAOkNTyymql7LQRJjBIcHPt/OBe
	WfCeX8RSw3Q0m62a1j1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU2nM-00764c-1x;
	Thu, 10 Aug 2023 10:21:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU2nJ-00763E-1q;
	Thu, 10 Aug 2023 10:21:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0B9DF65764;
	Thu, 10 Aug 2023 10:21:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8C2BC433C7;
	Thu, 10 Aug 2023 10:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691662888;
	bh=oybIrBf8qc1EyJx3sCeJKlPY87KvRgQCcYV+qZ6Gkvk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BAodO7MMr7OOuyeY+GfD75beCBGOJnyVTnbJeNJwsOwDTzZxBa9rODobwq4npIZba
	 S5qJL1Rw7Qz43b3dj1R3q2M32SjaE9F27AxVZZYksNufFMPsUpsgWrT7hUrB1wxYs2
	 aYFzJse8FIpeTPyg4pAicuO168duOaphCp0pXKGD+mfhX6KDDUKK6DBXRfEPe1tq3Y
	 iAo8DQ2rKpOTBrLL+Txc+8FAZXXTGy9dZoerA8qBrWjLYfsUuArE2qyoixU+trRX1i
	 oIHnPgzxjQZDRXaxM2kSbiWq8a2NsS0Qzmv6harh1rwBpAK3ECbYXRBhLT+a7T7RWy
	 kmEqtiSa+65SQ==
Received: (nullmailer pid 4166374 invoked by uid 1000);
	Thu, 10 Aug 2023 10:21:23 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: krzysztof.kozlowski+dt@linaro.org, peng.fan@nxp.com, linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, vkoul@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com, konrad.dybcio@linaro.org, devicetree@vger.kernel.org, andersson@kernel.org, robh+dt@kernel.org, p.zabel@pengutronix.de, linux-arm-msm@vger.kernel.org, kishon@kernel.org, agross@kernel.org, conor+dt@kernel.org, will@kernel.org, catalin.marinas@arm.com, arnd@arndb.de, linux-kernel@vger.kernel.org, nfraprado@collabora.com, geert+renesas@glider.be
In-Reply-To: <0d42f556ab28123b2b508521a0c79c7597b8b0fd.1691660905.git.quic_varada@quicinc.com>
References: <cover.1691660905.git.quic_varada@quicinc.com>
 <0d42f556ab28123b2b508521a0c79c7597b8b0fd.1691660905.git.quic_varada@quicinc.com>
Message-Id: <169166288301.4166332.13436758125497162213.robh@kernel.org>
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: qcom,m31: Document qcom,m31
 USB phy
Date: Thu, 10 Aug 2023 04:21:23 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_032129_696577_9486FC04 
X-CRM114-Status: GOOD (  15.10  )
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


On Thu, 10 Aug 2023 15:26:04 +0530, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v7:
> 	Move 'compatible' to be the first entry
> 	In the example have 'usb-phy' instead of 'usb2-phy'
> 	Add 'Reviewed-by: Krzysztof Kozlowski'
> 	'make dt_binding_check DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml' passed
> 	'make CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check' passed
> v6:
> 	Add 'Co-developed-by: Sricharan'
> 	Add 'const' to compatible, vdd-supply
> 	Remove label and use usb2-phy for nodename in the example
> v5:
> 	Add '#phy-cells', to be able to use generic phy
> 	Remove 'Reviewed-by: Krzysztof Kozlowski' due to above change
> v4:
> 	Move M31 URL to description
> 	Remove maxItems and relevant content from clock-names
> 	Change node name to generic name
> 	'make dt_binding_check DT_SCHEMA_FILES=qcom' passed
> v3:
> 	Incorporate review comments. Will bring in ipq5018 compatible
> 	string while posting ipq5018 usb patchset.
> 
> v1:
> 	Rename qcom,m31.yaml -> qcom,ipq5332-usb-hsphy.yaml
> 	Drop default binding "m31,usb-hsphy"
> 	Add clock
> 	Remove 'oneOf' from compatible
> 	Remove 'qscratch' region from register space as it is not needed
> 	Remove reset-names
> 	Fix the example definition
> ---
>  .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml       | 59 ++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/0d42f556ab28123b2b508521a0c79c7597b8b0fd.1691660905.git.quic_varada@quicinc.com

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
