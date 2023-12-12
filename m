Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04CE2C4167D
	for <linux-phy@archiver.kernel.org>; Tue, 12 Dec 2023 05:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xlm826YtrrhU4eBZ/bhdDUbaHnDMl6an0xpgYoP/5Bc=; b=vy+6L8GdFs1jN0
	ETwVNjdUnYimn66ND6XNON/KWQ/4rt1kAPP/pwuWPr8/OIpNSjEPdsXG6B5ZeQqixrZhCtUXYPiU9
	kOVN1rQVRWTG+zcUVSzYVKt5h6G+sSd4K6XG1J6xjWQdAnBF7D1yd4smI3cLOujGxrVtW0GBZ7Jmk
	jcQw4IivJKUlnQJtl+mDKWZLPY5UUZtBNObCtrMcjWuGWZLYJuc8gxk7ClgXOG2XtHGCz8fg3xU/t
	tQbPUWTUEKG5v/gvrOKLd7S8U8OVhAXnvxYqzOlUrPTxnziB34SWshS/JOPD+PUqvQwcmlxIzdRDR
	VjU71ZWNk1XWeNxKRQXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCvYg-00AohF-1w;
	Tue, 12 Dec 2023 05:43:54 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCvYY-00Aobs-2L;
	Tue, 12 Dec 2023 05:43:50 +0000
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6d9fa8f6535so1415627a34.0;
        Mon, 11 Dec 2023 21:43:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702359825; x=1702964625;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4BE3V109XW9XqPwVdS3nRPzEanrVkvXnsLO8JhtSOyY=;
        b=aCQxp7DGtqpoWu4NhmGmgWrpxkUPPC47Bbfr4iJR8Gk1LRmZ5prgGFr2UTbAWuECCa
         kyHn99BVIEZc6IeQPrTE5pXpq6p409PBioWbdZ7CHnpGOLQVKMqHcTqnCxC4mcptzAj7
         SZ8AlmpTEAip+kHSrv+LAHcRdEKvRkop2hrKN/4yTbfGcTadVlFNLMfrU3zZZJXT9Kt+
         3K9ps1tzP88etBYRMymDFeOMcCX1MBYUanKC9o6GVDp289zzAYubCuB2CoE2xtufnp8G
         XC08oYKTLXPFB54YGVj2UHGqHijunSWCR8pKyxuoYMEaKA/3SHMuYf/oj+fN6XM6El20
         N3dg==
X-Gm-Message-State: AOJu0YyHWkR84fsEZxOz5g3dBtGY8Etkhky9dlLzs2ejlEdPsrhDnEHc
	rTlPCosOKXmsxLUQ7cfCpQ==
X-Google-Smtp-Source: AGHT+IEidpE0OkX2O2n4hFfdJnKyo4fNvT+2jD4XWsYIQKFOko6a4ZNSvEN+75Msv3qh6bcystQK3Q==
X-Received: by 2002:a05:6808:6545:b0:3ba:d14:b839 with SMTP id fn5-20020a056808654500b003ba0d14b839mr2032679oib.104.1702359825100;
        Mon, 11 Dec 2023 21:43:45 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id so10-20020a056871818a00b001fb1f2c424fsm2934276oab.45.2023.12.11.21.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 21:43:44 -0800 (PST)
Received: (nullmailer pid 39732 invoked by uid 1000);
	Tue, 12 Dec 2023 05:43:35 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, 
	Sean Wang <sean.wang@mediatek.com>, linux-phy@lists.infradead.org, 
	Eric Dumazet <edumazet@google.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Alexander Couzens <lynxis@fe80.eu>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org, 
	Qingfang Deng <dqfext@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@nbd.name>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>, 
	SkyLake Huang <SkyLake.Huang@mediatek.com>, netdev@vger.kernel.org, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	John Crispin <john@phrozen.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-mediatek@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <510af8550385da947e2e2516629c4fbed7fc0f64.1702352117.git.daniel@makrotopia.org>
References: <cover.1702352117.git.daniel@makrotopia.org>
 <510af8550385da947e2e2516629c4fbed7fc0f64.1702352117.git.daniel@makrotopia.org>
Message-Id: <170235981451.39631.18161764579046630601.robh@kernel.org>
Subject: Re: [RFC PATCH net-next v3 4/8] dt-bindings: net: pcs: add
 bindings for MediaTek USXGMII PCS
Date: Mon, 11 Dec 2023 23:43:35 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_214346_841197_BA7D3EAC 
X-CRM114-Status: GOOD (  15.10  )
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


On Tue, 12 Dec 2023 03:47:31 +0000, Daniel Golle wrote:
> MediaTek's USXGMII can be found in the MT7988 SoC. We need to access
> it in order to configure and monitor the Ethernet SerDes link in
> USXGMII, 10GBase-R and 5GBase-R mode. By including a wrapped
> legacy 1000Base-X/2500Base-X/Cisco SGMII LynxI PCS as well, those
> interface modes are also available.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../bindings/net/pcs/mediatek,usxgmii.yaml    | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/510af8550385da947e2e2516629c4fbed7fc0f64.1702352117.git.daniel@makrotopia.org

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
