Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84E76C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 17:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpgJl7ugz6sy7wrdL/XvED2fnnFewZM5VPF7hDKQtzw=; b=qrdibqlDOusIkH
	1YO4v5JeruSHFySfwuOT+QtxI95oYt/86g34i7A+rFrrEm7QYNzQSYPiF+KbwjH1kEu5JbmuLWT6Y
	p//GpH8LBtHTaYG5K1K4oaZ5GU44joBSBfzi4KGC3h020qr6Lja6HJQbcFwzJY2bs9nPZuVVzr1WX
	e3+7M+4eXhgY4Z8iugfoMKrscheerw4nY7qtOvNXKb8q+khbtqmb2U/nBR8cnM111RDbtKIxYoPO4
	vJy7OeoBkmk+hCe9knvlfKEajRjpisBKqppQ9imWJkEPwJjZbmGhOyDXUSd+ycVMcT6IUrAzMtvgT
	nYQLTf9OvaSVWqMFY7PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwSHP-00HKOf-Qw; Wed, 01 Jun 2022 17:37:11 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwSHM-00HKN7-8G
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 17:37:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1654105028; x=1685641028;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=obRWwBxWo5wxourlKoQ+72J1NaWg/JXxo6pkl6dj4kI=;
  b=aS9Pr06u8Ecv6RiSoH+GwZekWVqHxC69CbohpyumJklLQq4e2iX7ST1H
   EtoX9KcYFPsfN/i8Y0QwENXecW/OcHOaGxmCPc3ZgygBZeLM6Z/SDJA3Z
   N88ljOjWOMcJjhal6NH2GeKU52RkJ+XbHVcD5xaNkeQTk4qMj9SdrWpJO
   0=;
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 01 Jun 2022 10:37:01 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg-SD-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2022 10:37:00 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 1 Jun 2022 10:36:59 -0700
Received: from [10.216.18.22] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Wed, 1 Jun 2022
 10:36:53 -0700
Message-ID: <5d3797bd-915f-2746-b593-1b8a3f792c5d@quicinc.com>
Date: Wed, 1 Jun 2022 23:06:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v8 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
CC: Andy Gross <agross@kernel.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Doug Anderson <dianders@chromium.org>, "Bjorn
 Andersson" <bjorn.andersson@linaro.org>, Stephen Boyd <swboyd@chromium.org>,
	<linux-phy@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sandeep Maheswaram
	<quic_c_sanm@quicinc.com>, <quic_ppratap@quicinc.com>,
	<linux-usb@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
	<quic_vpulyala@quicinc.com>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <quic_pkondeti@quicinc.com>, Wesley Cheng
	<quic_wcheng@quicinc.com>
References: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
 <1654066564-20518-2-git-send-email-quic_kriskura@quicinc.com>
 <1654086533.981346.3753217.nullmailer@robh.at.kernel.org>
 <20220601173326.GA3993065-robh@kernel.org>
From: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <20220601173326.GA3993065-robh@kernel.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_103708_384209_31E59EFD 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Thanks Rob !


On 6/1/2022 11:03 PM, Rob Herring wrote:
> On Wed, Jun 01, 2022 at 07:28:53AM -0500, Rob Herring wrote:
>> On Wed, 01 Jun 2022 12:26:02 +0530, Krishna Kurapati wrote:
>>> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>>>
>>> Add device tree bindings for SNPS phy tuning parameters.
>>>
>>> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>>> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 96 ++++++++++++++++++++++
>>>   1 file changed, 96 insertions(+)
>>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-rise-fall-time-bp: 'oneOf' conditional failed, one must be fixed:
>> 	'type' is a required property
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-rise-fall-time-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'enum' is a required property
>> 		'const' is a required property
>> 		hint: A vendor string property with exact values has an implicit type
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-rise-fall-time-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'$ref' is a required property
>> 		'allOf' is a required property
>> 		hint: A vendor property needs a $ref to types.yaml
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
>> 	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,ls-fs-output-impedance-bp: 'oneOf' conditional failed, one must be fixed:
>> 	'type' is a required property
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,ls-fs-output-impedance-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'enum' is a required property
>> 		'const' is a required property
>> 		hint: A vendor string property with exact values has an implicit type
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,ls-fs-output-impedance-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'$ref' is a required property
>> 		'allOf' is a required property
>> 		hint: A vendor property needs a $ref to types.yaml
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
>> 	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
>> 	'type' is a required property
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'enum' is a required property
>> 		'const' is a required property
>> 		hint: A vendor string property with exact values has an implicit type
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'$ref' is a required property
>> 		'allOf' is a required property
>> 		hint: A vendor property needs a $ref to types.yaml
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
>> 	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,squelch-detector-bp: 'oneOf' conditional failed, one must be fixed:
>> 	'type' is a required property
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,squelch-detector-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'enum' is a required property
>> 		'const' is a required property
>> 		hint: A vendor string property with exact values has an implicit type
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,squelch-detector-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'$ref' is a required property
>> 		'allOf' is a required property
>> 		hint: A vendor property needs a $ref to types.yaml
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
>> 	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-disconnect-bp: 'oneOf' conditional failed, one must be fixed:
>> 	'type' is a required property
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-disconnect-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'enum' is a required property
>> 		'const' is a required property
>> 		hint: A vendor string property with exact values has an implicit type
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-disconnect-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'$ref' is a required property
>> 		'allOf' is a required property
>> 		hint: A vendor property needs a $ref to types.yaml
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
>> 	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
>> 	'type' is a required property
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'enum' is a required property
>> 		'const' is a required property
>> 		hint: A vendor string property with exact values has an implicit type
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-amplitude-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'$ref' is a required property
>> 		'allOf' is a required property
>> 		hint: A vendor property needs a $ref to types.yaml
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
>> 	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-duration-bp: 'oneOf' conditional failed, one must be fixed:
>> 	'type' is a required property
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	Additional properties are not allowed ('maximum', 'minimum' were unexpected)
>> 		hint: A vendor boolean property can use "type: boolean"
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-duration-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'enum' is a required property
>> 		'const' is a required property
>> 		hint: A vendor string property with exact values has an implicit type
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,pre-emphasis-duration-bp: 'oneOf' conditional failed, one must be fixed:
>> 		'$ref' is a required property
>> 		'allOf' is a required property
>> 		hint: A vendor property needs a $ref to types.yaml
>> 		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> 	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
>> 	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: ignoring, error in schema: properties: qcom,hs-rise-fall-time-bp
>> Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.example.dtb:0:0: /example-0/phy@88e2000: failed to match any schema with compatible: ['qcom,sm8150-usb-hs-phy']
> Ignore these. A tool issue which is now fixed.
>
> Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
