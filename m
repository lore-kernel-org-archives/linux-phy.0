Return-Path: <SRS0=vk77=MM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92632C07E95
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 13:12:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 531EE610D2
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 13:12:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 531EE610D2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Lgu8RjoPh3wowiFVJakKEMGw9Wj/vOaU7X1FJ2HCmg=; b=SdWOYsEbEhJ3/W
	IUTPCH5AtQCuocoftxTamIDJ+/iHWyMeVBVc3o5RehSOs7u3XhfkrZVBtkSzOSCpNrV0/Ttj3Ot+x
	68AZFDI0UTfbQ9ThcV+wbGS+pH7bj8mEsNpyaArUqHfmMv5tbnp69kPu1rXs8k5PTI037V5oR3Ycd
	wFst/PgE0EANdHTkaBG4DaemWIBYjMnKrt4ZBo4uv7LRzlG8CTLIVci49I/20fJ4O7BZKfPXXPeDh
	ah+RMXRQLWfV/CSiXQxaEkgAIH5e3PdmkAqc2eHT/SoiEiraUBaOqg7NTe92KpCzE6GNSmLlz8AXP
	WYwt71f5UYKoVzhT+hEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5pXn-00CuI3-Rb; Tue, 20 Jul 2021 13:12:19 +0000
Received: from mail-io1-f45.google.com ([209.85.166.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5pXf-00CuGV-Eh
 for linux-phy@lists.infradead.org; Tue, 20 Jul 2021 13:12:14 +0000
Received: by mail-io1-f45.google.com with SMTP id z11so23951179iow.0
 for <linux-phy@lists.infradead.org>; Tue, 20 Jul 2021 06:12:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=abnffZ4MtGwQDAxtUagurofgQJnEps8wWqmtotQHpvs=;
 b=KnwF4sDSBba2YDydJixdEfVKllhd26pnhO8yV8sQ5WAQJbY2qGBAbws9RA7NGyKeuI
 OpGtqJQ4P7D0tjnTiLtBNcWNCdR4TLgzmRdD3CVlGJ1umTt7YFcSfJrinA8pL7pPW9Ot
 9YooZHy3dD+y5RglwOGkgtXGDIHtuNQ9afq1Mk7IlZl+J2BUVzRsInNUuEFx9XIlj1hK
 RpHIxgTETjW7DebWogiFV8RrG54/Sk10x6EI7GI876U5R+6d6c7RmfJ4VC3behkRvOPH
 Ju/BuGJOiS0onaTXtyfNqvEUQgkmj5Wl9JOo+mWgZ2pr33LHqKnoEIMuEa/+VB/U5/Nv
 EFSQ==
X-Gm-Message-State: AOAM531h9XG2ef2lLp6Qw5QYLQhMttSu4VvYU2sqsyCz+WCGwxZo4SMk
 TmOprtVV5YEC9MJEe4Etcw==
X-Google-Smtp-Source: ABdhPJyKoIf00du5/ZAkd1mRiGtw0/iyDLxUKFdDVMCyrHFwePjpZT3XzrY/eI4EnXfeG3vsDsFrug==
X-Received: by 2002:a05:6602:1814:: with SMTP id
 t20mr18779191ioh.204.1626786729379; 
 Tue, 20 Jul 2021 06:12:09 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id r4sm11231806ilb.42.2021.07.20.06.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 06:12:08 -0700 (PDT)
Received: (nullmailer pid 4121606 invoked by uid 1000);
 Tue, 20 Jul 2021 13:11:58 -0000
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <04943d3dff73e2fd5c9336540cb31d70ccf7b9cf.1626768323.git.mchehab+huawei@kernel.org>
References: <cover.1626768323.git.mchehab+huawei@kernel.org>
 <04943d3dff73e2fd5c9336540cb31d70ccf7b9cf.1626768323.git.mchehab+huawei@kernel.org>
Subject: Re: [PATCH v6 5/9] dt-bindings: phy: Add bindings for HiKey 970 PCIe
 PHY
Date: Tue, 20 Jul 2021 07:11:58 -0600
Message-Id: <1626786718.742548.4121605.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_061211_543755_87FC0D36 
X-CRM114-Status: GOOD (  12.35  )
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

On Tue, 20 Jul 2021 10:09:07 +0200, Mauro Carvalho Chehab wrote:
> Document the bindings for HiKey 970 (hi3670) PCIe PHY
> interface, supported via the pcie-kirin driver.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../phy/hisilicon,phy-hi3670-pcie.yaml        | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.example.dt.yaml: pcie-phy@fc000000: 'reg-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1507427

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
