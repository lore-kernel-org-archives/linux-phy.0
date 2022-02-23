Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6F0EC43217
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 16:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlyqP8utrXk16q1XGi4udT9ggmMy2GR816MerXA+uWI=; b=pvSUwFy4YSAE4P
	WsqkKHFOpsWdG63BwXI7Upiwpf8rURWkYO+DMaxqgvvoXNB1hyRdVCodyqJnSIFFkoGJBDL5L60LC
	3jtr3TtKDUPt3c3ZSUFc6PsE0FOfQpQnp9g66CKo0xhmbHaDocgGCXPbXd8dsY1MVdfdu5+HJVnng
	4LTttKnApzXw2WDB/erVF+XFxgIL1MAFmxZYZFiHaUM4UJ/rwzpbGEbxak2cVQkM2iCZZmmxQWPp5
	759CXB/TF/HmcLk9GN6gDy3EFDA1Y/60lFndqS4me+PlfFUKfGGaHtwEDx3kFfnqLz2W+KW28bbEE
	xHrUSsE/wbqG9k3L3/Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMuBx-00FFG6-77; Wed, 23 Feb 2022 16:08:37 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMuBu-00FFFK-JC
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 16:08:36 +0000
Received: by mail-oi1-f173.google.com with SMTP id j24so16631682oii.11
 for <linux-phy@lists.infradead.org>; Wed, 23 Feb 2022 08:08:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=VlLFX4EqJjMes8RQHVfh/XZ71GjRDL6L1TFesEM7wzE=;
 b=yKeSjW1tsvsnObabEL5XoNGFadiC13bUFVjfNX9tTt0EyP/1pf91VQtfHXFOvbyAaC
 gF+GJRVrA8b95Mweduc90HvyO9WuLM5DLDIAeWb22ty/PZM2671FK8zGRI8z0PZz7JcA
 hkpaaA/SjLacY3UIxYo7Wwz5cfZ5Uj6d2r8KaWaR6gyoluRYD1ViXfGjd0Joo4bms/Qf
 NeRDN47Q/yC7620Hnr3h1BJ2Y4xtRi+4G/+I1XEOMY2x1NOOW9NX3MXRbhoggXNXXJSC
 Jut/AG95kWG8d/Xe6bCAHRPhzFx4M/2W/ibn0SdtSwgL///G1BoTweFgPOu61ljKPXcl
 aOhw==
X-Gm-Message-State: AOAM530BPpBi0GxEX6rrBz+dSMOmsv/UV9x6QZ9wgi833rpAkBG115fq
 pg1xUwfTBzW01avaErjxaQWrJbQp+w==
X-Google-Smtp-Source: ABdhPJwJKDQ6JefrLm3QtPQRxB642eYP2C3FBUp8cNjO1ona+VQ8wvG7WgEvKHU/GtcuAWfkCx9uoA==
X-Received: by 2002:a05:6808:2101:b0:2d4:2b3a:9acb with SMTP id
 r1-20020a056808210100b002d42b3a9acbmr4960666oiw.231.1645632513102; 
 Wed, 23 Feb 2022 08:08:33 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bc16sm10542255oib.26.2022.02.23.08.08.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 08:08:32 -0800 (PST)
Received: (nullmailer pid 1021548 invoked by uid 1000);
 Wed, 23 Feb 2022 16:08:31 -0000
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>
In-Reply-To: <20220223044213.3776600-1-bjorn.andersson@linaro.org>
References: <20220223044213.3776600-1-bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,
 qmp: add sc8180x and sc8280xp ufs compatibles
Date: Wed, 23 Feb 2022 10:08:31 -0600
Message-Id: <1645632511.468790.1021547.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_080834_655622_CFBD3EE5 
X-CRM114-Status: GOOD (  11.98  )
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

On Tue, 22 Feb 2022 20:42:12 -0800, Bjorn Andersson wrote:
> Add compatible for the UFS PHY found in the Qualcomm SC8280XP platform
> and document the required clocks for this and the SC8180X UFS PHY.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml:284:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/phy/qcom,qmp-phy.example.dts'
Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 46, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 434, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 119, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 773, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 850, in _ruamel_yaml.CParser._compose_sequence_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 773, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 852, in _ruamel_yaml.CParser._compose_sequence_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.scanner.ScannerError: while scanning a plain scalar
  in "<unicode string>", line 283, column 17
found a tab character that violates indentation
  in "<unicode string>", line 284, column 1
make[1]: *** [Documentation/devicetree/bindings/Makefile:25: Documentation/devicetree/bindings/phy/qcom,qmp-phy.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml:  while scanning a plain scalar
  in "<unicode string>", line 283, column 17
found a tab character that violates indentation
  in "<unicode string>", line 284, column 1
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml: ignoring, error parsing file
make: *** [Makefile:1398: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1596499

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
