Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91D30C7EE2E
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 04:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=876Q2uhSD7mQLZ9IQKJWfbVL3xF1Z2/kaX4PMrEeASQ=; b=QH5PuLI9WhPt3t
	hnaI1Bmr6hf2+nCWdSCu/OE89yTyq/9YsVFNyuo7OZOJXoAuPViPK3Bnx0Bnxhm4lNfNZYFjg8yxv
	dVObRoQ2jrQqBDccUnO4eKeRzex7nzLwTCJn7N2Sk2fMQAShv0hYvUPlq9O91+WS/z08afS6HpDRD
	65oxznE4/LyoUdQAw3OJDbEJdXcl7wVV+ju0vrmobXjlDN2hnoJJnlSGBDHxeA+/E2x89jLR4XODW
	GqgYUez/k6uEL+IrGBUQ8w3fiFkQQY2JU+94lqWFomuowsn1ndM/h/COeomba39uHkTqHjEFSMLRO
	uujc7qcmR0zXjxeMnrEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q77Ee-0082MH-1K;
	Thu, 08 Jun 2023 04:26:56 +0000
Received: from mail-il1-f180.google.com ([209.85.166.180])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q77Ea-0082LE-2s;
	Thu, 08 Jun 2023 04:26:54 +0000
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-33c37f62e24so274245ab.3;
        Wed, 07 Jun 2023 21:26:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686198410; x=1688790410;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h+tB5ELcsjPnXMUJmycfD3kXBY74Sh5XYnDuw2D5xms=;
        b=aLABrgqU8ig9/gswOq5SviBax4+f+o24lrPTBxWvOcw4jEOP7UldRPfoNH21zRj10k
         rSpjxeMGMixytNuE6K7kZPG6SYejL7IMK0IUk9oH1pOKNsr9GoNyIJwo2DCgvfa3d3ki
         8oGOKcr0+nGdY3k6YKsUfc1jXQQ6D/pDwqFm+AGXQQDDl6OvB3VAViqKkyI7FrGKyoBN
         fJXAkHwJ9dVtDqOAFfsE99ZOQ5O9zapDeT6/SW33oXtmYxiqqv38mbLptoQ03SWbTzvE
         GquQU/MC0qKhUNz42jjuNSkjVUYhbEMkd+4Wv65hZoxl7KHrq1qiprEnG7YUBZ/76Jv4
         F+Rw==
X-Gm-Message-State: AC+VfDxAQgeTDqtwvKr+6w+VLjZkRf0FwGA6Tygj0IaCr4zcxKGwEZ8b
	yLdt9HUL70b+k5xiy8FhYQ==
X-Google-Smtp-Source: ACHHUZ6gA4SFsH3efdQTd7uj0JEG0W3GLfWPRCgaw9JidNmOXDlGHa56kVdQDQvb95Ji1SF4m8O2tA==
X-Received: by 2002:a92:c52d:0:b0:338:bcd8:933c with SMTP id m13-20020a92c52d000000b00338bcd8933cmr6943773ili.21.1686198409647;
        Wed, 07 Jun 2023 21:26:49 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id t14-20020a922c0e000000b0032c999af7ecsm179802ile.7.2023.06.07.21.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 21:26:48 -0700 (PDT)
Received: (nullmailer pid 769516 invoked by uid 1000);
	Thu, 08 Jun 2023 04:26:46 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com, s.hauer@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, jun.li@nxp.com, linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org, robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20230608033642.4097956-1-xu.yang_2@nxp.com>
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
Message-Id: <168619840676.769499.9945623918727485916.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT
 schema format
Date: Wed, 07 Jun 2023 22:26:46 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_212652_932363_3DD65D1C 
X-CRM114-Status: GOOD (  13.34  )
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


On Thu, 08 Jun 2023 11:36:41 +0800, Xu Yang wrote:
> Convert the binding to DT schema format. Besides, this also add other
> optional properties not contained in txt file.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - change filename to fsl,mxs-usbphy.yaml
>  - add other optional properties
>  - narrow fsl,anatop to imx6
>  - use additionalProperties
> ---
>  .../bindings/phy/fsl,mxs-usbphy.yaml          | 128 ++++++++++++++++++
>  .../devicetree/bindings/phy/mxs-usb-phy.txt   |  33 -----
>  2 files changed, 128 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml:103:15: [warning] wrong indentation: expected 16 but found 14 (indentation)
./Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml:109:15: [warning] wrong indentation: expected 16 but found 14 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.example.dtb: usb-phy@20c9000: 'clocks' is a required property
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230608033642.4097956-1-xu.yang_2@nxp.com

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
