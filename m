Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69CC0C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 12:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBBiMvXNyJZwWARpDb5YTIZScFYBGeAEKsu3uTvsDVQ=; b=VGbcvLlMB5XXaY
	mCq3VDJ2dJtpRQNpap02bdbMGSAAkYEejCoW+VUkVNMmWp3uYehYiZher/0+xp/nownkIrZMFCzmo
	bMn6y3hUXdGnaUoWoO1hqoTDi3BpQX7CK8pxwai7lb06Ab3ETTg/U90F1Vo8Le5yJ2K4VIxpJWgPo
	4CHnJyhtQsO43GfGogiA9SYQNXIwA2KG9ngc+lxafoTuRdTWyUplLFM/q0ub/1daGpgnMIznWbPqi
	dq0kucFzEYPrKux0rexPBvX8tK4dZjCfonz437OKBZNW349KF5uoyh1VTqUrE1X/bicWKlGuGNrYn
	bPvPcejDufoCNQwDWw5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqwVq-00DdIH-PQ; Tue, 17 May 2022 12:41:18 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqwVh-00Dd9x-0y
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 12:41:10 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 a22-20020a9d3e16000000b00606aeb12ab6so12078318otd.7
 for <linux-phy@lists.infradead.org>; Tue, 17 May 2022 05:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=j5BrlQzLDAXkM38uIDVehzNU2wxoisuVTDhfLkPcVrc=;
 b=EEd6tnmSwc53qtok4lViqkXmti/+dQZkjc7WNFn1KGh9YKUgcttWFSYU0PyhHQ9YA8
 kWP3mGdkIgZijANJ0ZBvDFi0VXKb+3kH3wn5KWRHtizcf4mkZSKm8miE/+AIn4H4jwG4
 WupHhi6KQeOodHFeMVFvmlO1eN2Q5Hv1o5oTLu5YvPoiRqwn71MpCYRx7WKJZtO1LTCr
 4kLvxO359SnKr6nhnmUqnXsEi8XJ1qAu4x1cHY7I0Zr3lCcyycoIWO9rCIBW0OZO1BoA
 9dUsO/vmxFC2Mks4wYSg+o25YxGMELJ8wMgNzikneifEnkyE4g5is3QFmtHvmiMrgbVB
 /fhQ==
X-Gm-Message-State: AOAM533GkSotkTPpAvkpIP7OK4XfnTr+/8x4lFSsNTpPaKcWTdXRPRoA
 W7TKjpEeRjVSKsc9dLtIGQ==
X-Google-Smtp-Source: ABdhPJxJmvcvtYfkkdf1N9RF24PpCjCJKFrr+60SDWwOuXaRZwDYasMaqX9n9wa5JyRWrgIr2jVGlw==
X-Received: by 2002:a05:6830:1491:b0:606:103c:6680 with SMTP id
 s17-20020a056830149100b00606103c6680mr7862250otq.18.1652791265485; 
 Tue, 17 May 2022 05:41:05 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 r196-20020acaa8cd000000b00325cda1ffa5sm4743640oie.36.2022.05.17.05.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 May 2022 05:41:04 -0700 (PDT)
Received: (nullmailer pid 785394 invoked by uid 1000);
 Tue, 17 May 2022 12:40:59 -0000
From: Rob Herring <robh@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Matthias Kaehlcke <mka@chromium.org>, linux-usb@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Doug Anderson <dianders@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org
In-Reply-To: <1652723410-1630-2-git-send-email-quic_kriskura@quicinc.com>
References: <1652723410-1630-1-git-send-email-quic_kriskura@quicinc.com>
 <1652723410-1630-2-git-send-email-quic_kriskura@quicinc.com>
Subject: Re: [v5 1/3] dt-bindings: phy: qcom,
 usb-snps-femto-v2: Add phy override params bindings
Date: Tue, 17 May 2022 07:40:59 -0500
Message-Id: <1652791259.453681.785393.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_054109_114773_98211057 
X-CRM114-Status: GOOD (  10.37  )
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

On Mon, 16 May 2022 23:20:08 +0530, Krishna Kurapati wrote:
> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> 
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 105 +++++++++++++++++++++
>  1 file changed, 105 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-rise-fall-time-bp: 'minimim' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'type', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: properties:qcom,hs-crossover-voltage-microvolt: '$ref' should not be valid under {'const': '$ref'}
	hint: Standard unit suffix properties don't need a type $ref
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml: ignoring, error in schema: properties: qcom,hs-rise-fall-time-bp
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
