Return-Path: <SRS0=IqhD=OH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC35C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 17 Sep 2021 19:49:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 815D261261
	for <linux-phy@archiver.kernel.org>; Fri, 17 Sep 2021 19:49:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 815D261261
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7tmBql79kiSMyIrIFf7eI3D/hdQtSSw+88KZFyakAQ=; b=T4iqKwhznHnnNw
	ctFTMAs9i8beMfjCuD/PpgWKbcKEAkxejE5SvsWA89NN+2+xu2sO5aP4yh//KvQVFmDDLUXrW0m/v
	/jrB+cviNiWr3AiUNnZH8gzV8TBbppEwm1BECAPa+El8ls7EgnCWp7KaE4zz/bNqcjSW3E/0DEL/c
	ITe//4Qgn1Bm0HTZrgTglDbQao53OZ18iLwUlKdnoEoqOvk/KK2dPD2i6kSqZD0EVL6UlzER7myKk
	iwbAA5c/cpwfu3VvU6lTVdTevd1tM8a41bXNE5rSfHx+jqJNcRAkuB6MgdwhK6BzKRNlcL1oHYhW3
	6r0lQyd+mn1FFs6ML9iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRJr5-00ExJD-0Q; Fri, 17 Sep 2021 19:49:03 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRJr0-00ExIH-Jw; Fri, 17 Sep 2021 19:49:02 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 y63-20020a9d22c5000000b005453f95356cso7426205ota.11; 
 Fri, 17 Sep 2021 12:48:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=3gQjKHWGeSaNy0zNHDDdRtrkC55mNwG/C1oDpHceP3I=;
 b=wZC6wZ2yfhcOwSKMOfYJsCKTSZ+qNouIM2d2rJkh1eReNOzrnNrG7JlcMjBeZgIbGk
 CwaVKxSaTnKGH0JkwvJfE8b2oHRGGM+xFN2jys92PBGDWcoPUI6/Cj2T6wx4rUENZ5qI
 Ir5SKbXwOiTiVECkb87U59wzYdhBIihIfbvq6QrMvlrJ7Nyd6EbNdUEuDnJiHK1Vp0jY
 OAwJ41jENqkftPAQsCl5ZZ6Rluw4gYESxxWk87Wove0qpVLHuXfeuJTlf3zxJ6vcQ4od
 t5bMlzcQocE0YxDJr3rQN4PX1RLI/nP5nqOrK+QtowyMwSHVTCGHvGt7q4GxzfTSs/29
 URnw==
X-Gm-Message-State: AOAM533cK4Py/ztDJ93O1qFErJriV/1pfe0gN9aSJ2+Quzr7y4oi28T/
 t4BuONXrSBMKSJU59HRyCg==
X-Google-Smtp-Source: ABdhPJy5+oo+xYyHM4w2v8HzUSH8bMucIspozMZvm12g4qt941b2U46m/yQ/lBUldmpITyvyem7xPA==
X-Received: by 2002:a9d:6506:: with SMTP id i6mr11103575otl.207.1631908136365; 
 Fri, 17 Sep 2021 12:48:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id b3sm1743581oie.1.2021.09.17.12.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 12:48:55 -0700 (PDT)
Received: (nullmailer pid 2025326 invoked by uid 1000);
 Fri, 17 Sep 2021 19:48:54 -0000
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-imx@nxp.com, linux-phy@lists.infradead.org, l.stach@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, shawnguo@kernel.org,
 devicetree@vger.kernel.org, galak@kernel.crashing.org
In-Reply-To: <1631845863-24249-3-git-send-email-hongxing.zhu@nxp.com>
References: <1631845863-24249-1-git-send-email-hongxing.zhu@nxp.com>
 <1631845863-24249-3-git-send-email-hongxing.zhu@nxp.com>
Subject: Re: [PATCH 2/4] dt-bindings: phy: add imx8 pcie phy driver support
Date: Fri, 17 Sep 2021 14:48:54 -0500
Message-Id: <1631908134.299718.2025325.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_124858_703767_111A11F9 
X-CRM114-Status: GOOD (  11.53  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, 17 Sep 2021 10:31:01 +0800, Richard Zhu wrote:
> Add dt-binding for the standalone i.MX8 PCIe PHY driver.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml: properties:fsl,refclk-pad-mode: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('enum' was unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml: properties:fsl,refclk-pad-mode: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	0 is not of type 'string'
		hint: A vendor string property with exact values has an implicit type
	1 is not of type 'string'
		hint: A vendor string property with exact values has an implicit type
	2 is not of type 'string'
		hint: A vendor string property with exact values has an implicit type
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml: ignoring, error in schema: properties: fsl,refclk-pad-mode
warning: no schema found in file: ./Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.example.dt.yaml:0:0: /example-0/pcie-phy@32f00000: failed to match any schema with compatible: ['fsl,imx8mm-pcie-phy']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1529140

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
