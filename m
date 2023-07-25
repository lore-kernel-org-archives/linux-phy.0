Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 378BCC001DE
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 17:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgAiwhrPgnIE+zKT1tJSN33CDXVGI0ghcsmi4M7mz9I=; b=U/JvubhYyjJ2zI
	1xLWsoPt/DhSjNziIvFl3AVJMnI0oGaHXPsuZ304nfiRDTTvrqbHREWFoqb42lFbmppSeo61RFJtV
	RYGkvtBf77lylfTHl7i2xQy1TlLLZMAx6EKfhDSO+BOAjfqARr4Z+L6/NINR7U7jJS908ClOkWOTD
	lJU1hiDPGZId/9+qQjE2PKcKYs5gLnRr5YX6O918RDuNViXadxGe9L7lX3SE+99grMpbvY3gRVAb9
	HG+IMsOBJl5aGAXZMhbqbTLteEXWbTXVPdHr9daHt2tAeT+OEzDDp81GDjY8vhUAvqKFH5XvFSodN
	kfXPHAChq95ZiiArz/xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMAA-008BcH-2r;
	Tue, 25 Jul 2023 17:49:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOMA7-008Bax-0b;
	Tue, 25 Jul 2023 17:49:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5473F61847;
	Tue, 25 Jul 2023 17:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C4F6C433C8;
	Tue, 25 Jul 2023 17:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690307369;
	bh=w7dbONTIy2Co3mAFj/AcsnLbCERRs5c4tblF0g/VRPU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qRmvy9rHWcDnpixwhpi8DTuQcPdUyIZr5ZNx9ydG3F5boc73mSyEcLxTRGyRsCrB3
	 vClccnArnxXoaiGAgIdoaS2+TOFRAoqZK63Wk0bXfrXFknhfb+CydSPKk0rOsuu3hH
	 TLEWzXb38mM81F0bbsLAvvpzt0taCiE7A8213w6F+7Ut1V3wYK9UY5byb1RK9gdLLH
	 A8/Iy7F8eWp47Q1Fq/3T9a96ynyIDqiSA2oI0PcsUAwZGhiXzTUnrxDNnd0AH129MP
	 pymfYyEwQoff+K9nqQse31QUqBocLgoqy3MvVJHBF8sdscLUh2TInqE0lKi9416xVB
	 K25mir6FU0ktQ==
Received: (nullmailer pid 3497934 invoked by uid 1000);
	Tue, 25 Jul 2023 17:49:25 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: kuba@kernel.org, will@kernel.org, linux-serial@vger.kernel.org, linux-phy@lists.infradead.org, Oleksii Moisieiev <oleksii_moisieiev@epam.com>, linux-spi@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>, lee@kernel.org, robh+dt@kernel.org, linux-usb@vger.kernel.org, gregkh@linuxfoundation.org, arnaud.pouliquen@foss.st.com, Oleksii_Moisieiev@epam.com, arnd@kernel.org, hugues.fruchet@foss.st.com, ulf.hansson@linaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, jic23@kernel.org, alexandre.torgue@foss.st.com, pabeni@redhat.com, andi.shyti@kernel.org, netdev@vger.kernel.org, linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, edumazet@google.com, vkoul@kernel.org, dmaengine@vger.kernel.org, catalin.marinas@arm.com, herbert@gondor.apana.org.au, fabrice.gasnier@foss.st.com, mchehab@kernel.org, linux-iio@vger.kernel.org, richardcochran@gmail.com, davem@davemloft.net, conor+dt@kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.
 org, alsa-devel@alsa-project.org, linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, olivier.moysan@foss.st.com
In-Reply-To: <20230725164104.273965-2-gatien.chevallier@foss.st.com>
References: <20230725164104.273965-1-gatien.chevallier@foss.st.com>
 <20230725164104.273965-2-gatien.chevallier@foss.st.com>
Message-Id: <169030736341.3497818.1740404012211043486.robh@kernel.org>
Subject: Re: [IGNORE][PATCH v2 01/11] dt-bindings: Document common device
 controller bindings
Date: Tue, 25 Jul 2023 11:49:25 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_104931_313650_FE6C860D 
X-CRM114-Status: GOOD (  14.22  )
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


On Tue, 25 Jul 2023 18:40:54 +0200, Gatien Chevallier wrote:
> From: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
> 
> Introducing of the common device controller bindings for the controller
> provider and consumer devices. Those bindings are intended to allow
> divided system on chip into muliple domains, that can be used to
> configure hardware permissions.
> 
> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> ---
>  .../feature-domain-controller.yaml            | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/feature-controllers/feature-domain-controller.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/feature-controllers/feature-domain-controller.yaml: title: 'Generic Domain Controller bindings' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230725164104.273965-2-gatien.chevallier@foss.st.com

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
