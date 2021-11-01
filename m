Return-Path: <SRS0=aeVy=PU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46951C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  1 Nov 2021 19:20:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1622F610EA
	for <linux-phy@archiver.kernel.org>; Mon,  1 Nov 2021 19:20:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1622F610EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeXqW9c263Vb95PmZlhFThqR8KU6hZnhXcFsoLe9dJ8=; b=p1JuUozZwCTGdL
	KUVaO5h5bZZt7vr0qtsVhbEdfFgDs4y4XYUn9tiFLYnogtI2W0kKSBMAV1deRmAMuCSRNj5pbFv7a
	wlTN24Ib0eX2vlwSZKBgUfxyk3RiMAPQYwDNcuO80vgRTkPQtZY1gtWgDDXEycNCC6GqJZFl5RlbR
	5TZZnoVtghNeHZfb1BVonS8wOarMX1xo1wWaWrXMQi5HytCuRnW5TXvbZARDqnG3JUkmI91rjbLWS
	l3MvNLv0TSKTswbM0UsLcK7ye1v2zW3lPxkLwLUDpw3A67DVcWC4mbwmEppbkeIRASsogR6zxMSRz
	zuZfgf1VLT/X/HFpzESw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhcrK-00H8IH-Ja; Mon, 01 Nov 2021 19:20:42 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhcrI-00H8HG-Gv
 for linux-phy@lists.infradead.org; Mon, 01 Nov 2021 19:20:41 +0000
Received: by mail-oi1-f179.google.com with SMTP id u2so7238083oiu.12
 for <linux-phy@lists.infradead.org>; Mon, 01 Nov 2021 12:20:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qnlgup2nPuigrBK07/+ipFujxJBXEGw/fmGyNY/BIAA=;
 b=B4ROC9VhMnHhRF/IL84LcEJVIKYb0dBfWBU3XO8u4L/9xmRm9Vow9ejrsyV8qCrD/m
 kAMBYfxUdx+ZF+BqDmVK6dzGXWvSl15eZMJRoUFOLaBD4K/XCMCzMuXSugUjx9uGjUx3
 Yo/vWSaUyMqEiAA95ML/HqosilxX5WLJSsMixoLE4TMV54ivns5QBQbvug+KNbWrT2dC
 1InU7DBtHxbeeVMd/1e8nqgZJYGHAIcfRcLFvv275K2+/icFm/+MsOkVKth3U2bOgKKA
 jmLzfV3PGDWZ0mv0H+RX+lgsj+tJCxesbLGgi5WD5ZUNrUefn49PTh9PcQ8/4VD0j5cV
 UFMQ==
X-Gm-Message-State: AOAM532cd+M7U5ew9L3i+VcBM3QS2H8OXVrz6i9HGgXcAk3n7ZvUAY+h
 /kMhwslOvnRV0CgDkgE2Lg==
X-Google-Smtp-Source: ABdhPJydRoF7Coj/95HW2ujIlqgiT94jABT8VFdmFF8KXQFh4ELSGADKjE89MgQcKWhaTCt1xae/ig==
X-Received: by 2002:a05:6808:3d2:: with SMTP id
 o18mr762987oie.121.1635794439033; 
 Mon, 01 Nov 2021 12:20:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id n10sm2166547ooj.42.2021.11.01.12.20.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Nov 2021 12:20:38 -0700 (PDT)
Received: (nullmailer pid 866927 invoked by uid 1000);
 Mon, 01 Nov 2021 19:20:32 -0000
Date: Mon, 1 Nov 2021 14:20:32 -0500
From: Rob Herring <robh@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: devicetree@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 ~okias/devicetree@lists.sr.ht, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Thierry Reding <treding@nvidia.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Tegra194 P2U convert to YAML
Message-ID: <YYA+APGxn2i8ZVj/@robh.at.kernel.org>
References: <20211031113236.29712-1-david@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211031113236.29712-1-david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_122040_590391_B5C39744 
X-CRM114-Status: GOOD (  11.26  )
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

On Sun, 31 Oct 2021 12:32:36 +0100, David Heidelberg wrote:
> Convert Tegra194 P2U binding to the YAML format.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../bindings/phy/phy-tegra194-p2u.txt         | 28 ------------
>  .../bindings/phy/phy-tegra194-p2u.yaml        | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
