Return-Path: <SRS0=B4Pq=PG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE27FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 12:14:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 805FB61077
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 12:14:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 805FB61077
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIbr/JzhZuzzDMHN+OYOeTq3BsU8I4fFXkOw8jH09fw=; b=SFATx/IaK64Pyq
	kT+eHCEE4uW3EtOkehIlcmM4pquGL6eF8tq69gcZ8TlpwMCYuO2ZDWlSJ/0Dy18RxlVYaGfSs0uyy
	ZPqJeK7CMoJCfOEsAfa/21eYNl3bx8/2HEWMgOG+gQBHSb61LBfiEJK7C0PM8lK+YHZkYWWCmuO93
	jL97QM3Uv+iF2aM7J5p/Kflqxnd4EGlAN7fibKD6haykPbfyeUP3DwS8x+4RH//RC0RcphAEIbtGa
	dSReWvj7ffRLwUXbCkJFsobrw1UuQ44/Budl8fjRc7p8z2UbC2h2nAGXLa1BaWgAH2box+pahIPzp
	UwMOya/63JmXfL3blVWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcRWr-00FbBv-Vm; Mon, 18 Oct 2021 12:14:09 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcRWf-00Fb8o-L8; Mon, 18 Oct 2021 12:13:59 +0000
Received: by mail-oi1-f174.google.com with SMTP id u69so24038073oie.3;
 Mon, 18 Oct 2021 05:13:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=o3tDIMhbFnjnaWFNKY8OECJ7Mjc3HAYXOLncYD0rywA=;
 b=PO9+l/sA9h44/Mvl5iTRbIdKWS9edMEYAkH98+prSwQdEJS5AOSG6DbMvgtDaEikmF
 cTLKwfu/Ygq3gnNL10M74dH2Cilgg+zLqGqSiIdQuAUD/kjX5c53Q2Uw+R2/n2ZVBtS2
 +X8vqIQ8X6Z31tg1b3dCKMGq7yyhDKcUrg6A3K97kF3bomGDuBqnbaUZG5NCcXyhNe7f
 C296fwpdmvF9b9ZVCdGIsiu0YmSJBqa7EbbHCXklokpmTreXm/bLCboOBCddT6/QQ6wF
 1bI+3rMaKA0/qKsirh6MpdrM84CkKusf78rgkrHh1DEH5/4U/vkwKsRb9BVxRofxQND6
 Xvdw==
X-Gm-Message-State: AOAM530/imDzIFcVFNR7FyZcbqwi+X3lalPqdhg9LF9ciE7ZOpKJGlhX
 q3Yi/jQmky4lErA2LHKU6g==
X-Google-Smtp-Source: ABdhPJxV7uU4axirSj0liNe2NLPhByiv9fWa6hEbSEpOSjIoe+pp9Fhp6hojMfVWh0viqHFC56vw7A==
X-Received: by 2002:aca:a94c:: with SMTP id s73mr28462897oie.93.1634559234829; 
 Mon, 18 Oct 2021 05:13:54 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id s5sm1828281ois.55.2021.10.18.05.13.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 05:13:54 -0700 (PDT)
Received: (nullmailer pid 2074238 invoked by uid 1000);
 Mon, 18 Oct 2021 12:13:53 -0000
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <1634521033-17003-8-git-send-email-hayashi.kunihiko@socionext.com>
References: <1634521033-17003-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1634521033-17003-8-git-send-email-hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 7/8] dt-bindings: phy: uniphier-ahci: Add bindings for
 Pro4 SoC
Date: Mon, 18 Oct 2021 07:13:53 -0500
Message-Id: <1634559233.449347.2074237.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_051357_713344_472D8DFE 
X-CRM114-Status: GOOD (  10.70  )
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

On Mon, 18 Oct 2021 10:37:12 +0900, Kunihiko Hayashi wrote:
> Update AHCI-PHY binding document for UniPhier Pro4 SoC. Pro4 AHCI-PHY
> needs to control additional reset lines, "pm", "tx", and "rx" and
> additional I/O clock line "gio".
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/phy/socionext,uniphier-ahci-phy.yaml    | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml:35:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml:50:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml:56:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1542355

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
