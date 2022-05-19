Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2642FC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 19 May 2022 13:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYB4Of4LSUConPyfOJJSM7RVtZ/LdtOfGiOazH9IYNk=; b=yb5M4GQkjZCqsu
	CTZX9s6UojSCiAI5UjsRnD1mXIWrAZ6v2P5+0bjepQJQuHbJjquAd1EjGXuBtFEuWZmSb5MPn2GV5
	V3M/M/ByF1pjb7PPLbpKTgSVrBiL/UBp46k2t9KbR9z6D/ke2hSLgdaB4bC9DJRIDIKrYiQLomNiB
	+Gj3TH7ZusC7NQIHzjbq4rEyivp45TxL2iYqSUSNMZnrv5Z/wUNsv6Vrtz+X4ORcO62H4v+9j+/md
	YT4CrcGcXAiJMR8NnG+nRTVOqu98dJpe1T4QvrWLwoDV1qDv5aScG9QcPTsK8geFo0eOVKCa/bKDE
	LDykVYqnNiHNAvvPDvGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrfz1-006wiP-9y; Thu, 19 May 2022 13:14:27 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrfqe-006syo-H8
 for linux-phy@lists.infradead.org; Thu, 19 May 2022 13:05:50 +0000
Received: by mail-oi1-f182.google.com with SMTP id w130so6448320oig.0
 for <linux-phy@lists.infradead.org>; Thu, 19 May 2022 06:05:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=tFD9Ep9d5N4cqpkHCZF36LTDzwqxsTVwinwUztF4sXc=;
 b=MSlqSlUkZlvMaBmGzRBvUAAan1+/+FQ3kXt+FKCHWCeXz8tm029WcXAOWupDPcvX22
 pJHjjX5e8zhTWwALyC+QxucjzOy4eWcbBKnDuPdcsuwmxAg7Zagk66ZUFIMI9ulH4rgs
 LLk2ZGVr33yMY/lyV50Ndsvo0vM28aQyxDWDdRKcQVQpwhPKpol6yOeaGYS+ze+C23gk
 G/HbBHHSO35cQEAFZiSqLY6e2osE5f/OqU0G7GO/puDT89OBlOIHXRQTufTNfS10cMx8
 JlOAi4/u5MPAqpcCsf1vfU77GgoHkw1Kkyvdutlch7Db0T4eWfqS09EQ5RRuU7iloNFo
 Xmmw==
X-Gm-Message-State: AOAM530IYfLXDrZ4inx0xZuY433o2MLMfmgEC7RNCszSfePdopvnYbAI
 5XgUqPThMgdUiJorr3GYvQ==
X-Google-Smtp-Source: ABdhPJwQtnG93BKLCktwo6FewQ5JfQHelZVqP6QatjA/FeeoFl5DGAAXs7FkP7P8AAiLI7CyLm1AcQ==
X-Received: by 2002:aca:bc57:0:b0:326:b2b6:2548 with SMTP id
 m84-20020acabc57000000b00326b2b62548mr2458741oif.226.1652965541810; 
 Thu, 19 May 2022 06:05:41 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 o204-20020aca5ad5000000b00325cda1ff93sm1831257oib.18.2022.05.19.06.05.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 06:05:41 -0700 (PDT)
Received: (nullmailer pid 1359562 invoked by uid 1000);
 Thu, 19 May 2022 13:05:39 -0000
From: Rob Herring <robh@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 devicetree@vger.kernel.org, Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, quic_ppratap@quicinc.com,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 quic_vpulyala@quicinc.com
In-Reply-To: <1652934489-23386-2-git-send-email-quic_kriskura@quicinc.com>
References: <1652934489-23386-1-git-send-email-quic_kriskura@quicinc.com>
 <1652934489-23386-2-git-send-email-quic_kriskura@quicinc.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: phy: qcom,
 usb-snps-femto-v2: Add phy override params bindings
Date: Thu, 19 May 2022 08:05:39 -0500
Message-Id: <1652965539.923055.1359561.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_060548_643529_A0710BF5 
X-CRM114-Status: GOOD (  11.47  )
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

On Thu, 19 May 2022 09:58:07 +0530, Krishna Kurapati wrote:
> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> 
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 96 ++++++++++++++++++++++
>  1 file changed, 96 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-rise-fall-time-bp: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-rise-fall-time-bp: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
		hint: A vendor string property with exact values has an implicit type
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-rise-fall-time-bp: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,ls-fs-output-impedance-bp: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,ls-fs-output-impedance-bp: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
		hint: A vendor string property with exact values has an implicit type
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,ls-fs-output-impedance-bp: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
		hint: A vendor string property with exact values has an implicit type
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
		hint: A vendor string property with exact values has an implicit type
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-disconnect-bp: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-disconnect-bp: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
		hint: A vendor string property with exact values has an implicit type
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-disconnect-bp: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,squelch-detector-bp: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,squelch-detector-bp: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
		hint: A vendor string property with exact values has an implicit type
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,squelch-detector-bp: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-duration-bp: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-duration-bp: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
		hint: A vendor string property with exact values has an implicit type
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-duration-bp: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: ignoring, error in schema: properties: qcom,ls-fs-output-impedance-bp
Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.example.dtb:0:0: /example-0/phy@88e2000: failed to match any schema with compatible: ['qcom,sm8150-usb-hs-phy']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

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
