Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF2FC001DE
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 17:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3V5+TwIhSCOwb/28o5RFZxi8V8KQEwSo421nrtnJlw=; b=AXa+lXdvxpF505
	jKs5q5NjbOs9wc597BiT5Re9UdKsyBWlLGVQrJPnQwrX+bksZ68Ehk/srr/66B9MlzlA6Uj6+uOfK
	5GKQ9PslNfgFKpSibVoyfwkT14o+qHXd7zc5XmfcH3TH89JdQdyrugyfvbIdfMgNhiigW3zJHISuP
	f1k+fiOxjFskeJYpXpwt+Y9Z48ZEzLQV2mPHAVmSBQS9+F85kUX0JhDtKuKRAdsbU54Km5TyT3TGw
	JG5MX/UpA5RWWXanbY42Z3eZ38UYhpERKaEE4FRNLDKv/8Sm7ENXJHuCircH7aU3aAvSQKwmyEaVC
	b15svQm6A6OYE7UOTnBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMAI-008Bey-37;
	Tue, 25 Jul 2023 17:49:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMAC-008Bcb-1j;
	Tue, 25 Jul 2023 17:49:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B7DB561851;
	Tue, 25 Jul 2023 17:49:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6AB4C433CA;
	Tue, 25 Jul 2023 17:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690307375;
	bh=WJL53er2hn/3EEx4DOJfAbOjXZnKjKBtRagFrtg05jg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=CPO6RMRPaMRtVah/1RA1wO5FXxmP2DhlHptZXjtjeJZn524snzFNmGkI4PM2ckIo6
	 7FXzBD4qXePRo3PzLIkOFhZGyDj+4aolBAs7lhubS+/sugRBmEv5uwY2APQucc4EIz
	 1nGGt64bGnlel2IpehCbvoOPhAXT8wnt5XPyu8AhkROpI7dA7thAncucJtelJljMnw
	 atiZpLOBvBZ0F/r5WTJZfurX5L65y1q7LeSvDTjmcEUXR6SWW06bn+O1CXh/QQgkcV
	 FpqLMVfkRM4VMT0UlbHKmPRIUz4d0EWFPpNeyuIHEERTM60aZDTVat5SY/xyjqL5hf
	 qQXqITOBkCDlA==
Received: (nullmailer pid 3497939 invoked by uid 1000);
	Tue, 25 Jul 2023 17:49:25 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: kuba@kernel.org, lee@kernel.org, andi.shyti@kernel.org, alsa-devel@alsa-project.org, linux-i2c@vger.kernel.org, richardcochran@gmail.com, linux-mmc@vger.kernel.org, arnaud.pouliquen@foss.st.com, olivier.moysan@foss.st.com, vkoul@kernel.org, linux-serial@vger.kernel.org, robh+dt@kernel.org, alexandre.torgue@foss.st.com, krzysztof.kozlowski+dt@linaro.org, ulf.hansson@linaro.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, hugues.fruchet@foss.st.com, mchehab@kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, pabeni@redhat.com, devicetree@vger.kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, edumazet@google.com, linux-crypto@vger.kernel.org, jic23@kernel.org, Frank Rowand <frowand.list@gmail.com>, arnd@kernel.org, linux-usb@vger.kernel.org, catalin.marinas@arm.com, linux-iio@vger.kernel.org, davem@davemloft.net, Oleksii_Moisieiev@epam.com, will@kernel.org, dmaengine@vger.kernel.org, netdev@vger.kernel.org, 
 fabrice.gasnier@foss.st.com, linux-spi@vger.kernel.org, conor+dt@kernel.org, herbert@gondor.apana.org.au
In-Reply-To: <20230725164104.273965-4-gatien.chevallier@foss.st.com>
References: <20230725164104.273965-1-gatien.chevallier@foss.st.com>
 <20230725164104.273965-4-gatien.chevallier@foss.st.com>
Message-Id: <169030736534.3497905.9507005013968358402.robh@kernel.org>
Subject: Re: [PATCH v2 03/11] dt-bindings: bus: document ETZPC
Date: Tue, 25 Jul 2023 11:49:25 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_104936_668772_92528333 
X-CRM114-Status: GOOD (  15.39  )
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


On Tue, 25 Jul 2023 18:40:56 +0200, Gatien Chevallier wrote:
> Document ETZPC (Extended TrustZone protection controller). ETZPC is a
> firewall controller.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
> 
> Changes in V2:
> 	- Corrected errors highlighted by Rob's robot
> 	- No longer define the maxItems for the "feature-domains"
> 	  property
> 	- Fix example (node name, status)
> 	- Declare "feature-domain-names" as an optional
> 	  property for child nodes
> 	- Fix description of "feature-domains" property
> 	- Reorder the properties so it matches RIFSC
> 	- Add missing "feature-domain-controller" property
> 
>  .../bindings/bus/st,stm32-etzpc.yaml          | 96 +++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/st,stm32-etzpc.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/bus/st,stm32-etzpc.example.dtb: serial@4c001000: Unevaluated properties are not allowed ('feature-domains' was unexpected)
	from schema $id: http://devicetree.org/schemas/serial/st,stm32-uart.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230725164104.273965-4-gatien.chevallier@foss.st.com

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
