Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B5C3CD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 21:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD8g/PtMvIUBe0O8/PloMt0rZvO27L9waQ40h5qEto0=; b=YLQUEVOFAvfJJl
	jaCT0ypjAb0Y2ZGlVnguKsTsK6toHj4jrfIr3ZrAV5Sd/jDKe5n8h9luPJdIxF1kdLGIRgjqwvTpt
	wXcCTIww4oq+nRg5NALc9QJFp4/Wh4/kdzKY0/19k9phRB1Ej4bd3PjIQSlIFxk10WnxGEPh8XZRA
	qgRKa8VT5u7rAd1M1CuLExP4xsbZ/P3D9RUSTereQWwGf935lIziu3UOA+junOBXsNIdP0OfhMl2L
	nmdEHNYAa/STnuCaZSxejea/mQfaOzK0sa/CMXa/ZuGYy1150ckzV2GxKbA0e9TNzCF9AtKuuPkJp
	Dhw8/Z3MKu4GjcTJnBEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQXZ1-0000000C0Yz-14Lk;
	Fri, 22 May 2026 21:37:51 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQXYz-0000000C0Yd-0rSv
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 21:37:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7D67060103;
	Fri, 22 May 2026 21:37:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8D4D1F000E9;
	Fri, 22 May 2026 21:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779485868;
	bh=rKySuRH7zxmKCkRj+vsH6WLK86VeQbARbGCmHU+Y/HI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=bfU8jLI2yGgJ3S8yrF4rdgC5styfISFtbqUQutRoKEdI6SnhOTpvbwhLfdrndcTsa
	 +bfIF8AAU0aOQ4Pk7SAfasWZTu0J//QGjMm+0Mw0YB8p+UO2PdO/mFGahGimEqKJx7
	 Z19tzRTKvAefScpofcsg1goggwxVwonn1DOpcfBm403OGjEXxzigt7hy09yItg4y48
	 5grJVQcaY3fJpC6I4rsmmJvQbAlGt1Uklz7Fetg1MQaBskuPcKc8A7PcW7oPRBM1me
	 bGrkadhxfZ3g74ZO1eRP4pDSPL0UVo+Kxr6iwZlwoHdZU8lWjEELBA1iIEi+M+to9C
	 jiIjbyCsEraBw==
Message-ID: <b5dc7f51-b71c-46b1-823b-76f02d325acb@kernel.org>
Date: Fri, 22 May 2026 22:37:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20260522-x1e-csi2-phy-v7-0-79cb1280fad6@linaro.org>
 <20260522-x1e-csi2-phy-v7-1-79cb1280fad6@linaro.org>
 <svzHygggdG4PSd3qFMz0chRKqXNkhZwTvHoC3_oynq8e5HYOEn-_EHLnXm1w959nIDz9GaLZG9MgXqAJPNhWSA==@protonmail.internalid>
 <177946855028.3571140.11988520251406266072.robh@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bod@kernel.org>
In-Reply-To: <177946855028.3571140.11988520251406266072.robh@kernel.org>
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

On 22/05/2026 17:49, Rob Herring (Arm) wrote:
> 
> On Fri, 22 May 2026 15:45:09 +0100, Bryan O'Donoghue wrote:
>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>> PHY devices.
>>
>> The hardware can support both CPHY, DPHY and a special split-mode DPHY.
>>
>> The schema here defines three ports:
>>
>> port@0:
>>      The first input port where a sensor is always required.
>>
>> port@1:
>>      A second optional input port which if present implies DPHY split-mode.
>>
>> port@2:
>>      A third always required output port which connects to the controller.
>>
>> The CSIPHY devices have their own pinouts on the SoC as well as their own
>> individual voltage rails.
>>
>> The need to model voltage rails on a per-PHY basis leads us to define
>> CSIPHY devices as individual nodes.
>>
>> Two nice outcomes in terms of schema and DT arise from this change.
>>
>> 1. The ability to define on a per-PHY basis voltage rails.
>> 2. The ability to require those voltage.
>>
>> We have had a complete bodge upstream for this where a single set of
>> voltage rail for all CSIPHYs has been buried inside of CAMSS.
>>
>> Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
>> CAMSS parlance, the CSIPHY devices should be individually modelled.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 208 +++++++++++++++++++++
>>   1 file changed, 208 insertions(+)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@0: Missing additionalProperties/unevaluatedProperties constraint
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@1: Missing additionalProperties/unevaluatedProperties constraint
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml: port@2: Missing additionalProperties/unevaluatedProperties constraint
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.example.dtb: csiphy@ace4000 (qcom,x1e80100-csi2-phy): ports:port@2:endpoint: Unevaluated properties are not allowed ('clock-lanes', 'data-lanes' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml
Frustratingly

dtbs_do_check2 phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml 
qcom/x1e80100-crd.dtb

dtbs_do_check2 () {

echo "checking " $1 " and " $2
make dtbs_check ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE O=$BUILDDIR 
DT_DOC_CHECKER=$DT_DOC_CHECKER DT_EXTRACT_EX=$DT_EXTRACT_EX 
DT_MK_SCHEMA=$DT_MK_SCHEMA DT_SCHEMA_FILES=$1 CHECK_DTBS=y $2
make dt_binding_check O=$BUILDDIR DT_CHECKER_FLAGS=-m 
DT_DOC_CHECKER=$DT_DOC_CHECKER DT_EXTRACT_EX=$DT_EXTRACT_EX 
DT_MK_SCHEMA=$DT_MK_SCHEMA DT_SCHEMA_FILES=$1 CHECK_DTBS=y $2

}

Neither my script nor the Makefile throw an error when the yaml name 
doesn't exist i.e. when it changes.

I really did run the checker - just for a file that doesn't exist.

Feels like a bug I should blame on AI enslopification but, it was me..

meh

---
bod
phy/qcom,x1e80100-mipi-csi2-combo-phy.yaml

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
