Return-Path: <SRS0=WJYd=IY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA11CC433DB
	for <linux-phy@archiver.kernel.org>; Fri, 26 Mar 2021 00:29:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51879619F9
	for <linux-phy@archiver.kernel.org>; Fri, 26 Mar 2021 00:29:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 51879619F9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CKffuYd7GJf6Z8ipt+PQzf1KKIFx86VAG0yfhaFNT/A=; b=Ur8KGCsmTftpbFSnObTtb/Ots
	cL1vRDcVUwdBH845zrZe4hpDkdzkFfBBZ4r/8pVtaZycZGAtqVZaN7PJayUJsL3+t/JXLMhOUiqnE
	BbDSAwkMlKipjmwn2E7kFab4bweQ2zuL+4RXLRt5/6HXzslEKUexwcP3GOm0Mqpy5wh1JT0bkBH/6
	hDW1pHwLYzrF1GKjp25stkhPZRZdH/nG4S3iWk/PFLWiGsALN4PCMRgeISfqg5RWDKmQT5/N+PQTW
	qb07cUDWqxgVmFFlXiI/gAivfaYxdxSQX4/MRqzs5F48jMsILaOIuVOM/U1F6iW7bo7OfE61IfGLf
	QYBuEM+jg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPaLc-002Q6O-K3; Fri, 26 Mar 2021 00:29:08 +0000
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPaLY-002Q5a-4a; Fri, 26 Mar 2021 00:29:06 +0000
Received: by mail-io1-f48.google.com with SMTP id k8so3714185iop.12;
 Thu, 25 Mar 2021 17:29:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HqP361nCuW7IrybuNXs/MVht6WlPAUMBMTJUt5NbOBY=;
 b=gXKac+3nSH+jTF9og8MCuBV37LHiu4KFmdx/whiVHAuxuGNabb7NYGvucAzNbApXc9
 XX3oOFpOxDcSpTHupIC6XawNGeR0XI4yHZp/r0/oa85sMYRDLT3Z70JfS7kAVC1da7aX
 WgBJ4GgFgyTuJKv+YXcVvMKkFwFIDpnEPgKnAx+3CEIet3psm2v8TWdjeqYg4ifq2IsS
 eto/Vt9e0pYTBltBP+sZe8REHESVEl7XMz4Ah+Y1BSUVCvj+jJ3tNXs6hsphkNmiAcJa
 azDI1pBS8x/Cj0Cid20Z3J8LFUCxbx1bdgow0NrKF/rCvIiTYujT2ZS23j3Ry+eRuGPn
 nBJg==
X-Gm-Message-State: AOAM531advTyj06ac2pUw5nCzzrYA6X+0XsmDTtjwCtzrM4htr7vYzwZ
 qMC50vXsJL60CrMynLZtGA==
X-Google-Smtp-Source: ABdhPJw6W3NHdAqO/y5OThYoAM4qmj7MMyJPG3HX8vVwI93D07pwvhmlBcQDFuiXigdabDHe9NnU5Q==
X-Received: by 2002:a6b:7c4a:: with SMTP id b10mr8401982ioq.170.1616718540205; 
 Thu, 25 Mar 2021 17:29:00 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id k7sm3417611ils.35.2021.03.25.17.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 17:28:59 -0700 (PDT)
Received: (nullmailer pid 2033074 invoked by uid 1000);
 Fri, 26 Mar 2021 00:28:51 -0000
Date: Thu, 25 Mar 2021 18:28:51 -0600
From: Rob Herring <robh@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/2] dt-bindings: phy: add vbus-supply optional property
 to phy-stm32-usbphyc
Message-ID: <20210326002851.GA2031564@robh.at.kernel.org>
References: <20210317160954.15487-1-amelie.delaunay@foss.st.com>
 <20210317160954.15487-2-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210317160954.15487-2-amelie.delaunay@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_002904_370272_E56C2B07 
X-CRM114-Status: GOOD (  15.49  )
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

On Wed, Mar 17, 2021 at 05:09:53PM +0100, Amelie Delaunay wrote:
> This patch adds vbus-supply optional property to phy sub-nodes.
> A regulator for USB VBUS may be needed for host mode.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> index 018cc1246ee1..ad2378c30334 100644
> --- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
> @@ -71,6 +71,9 @@ patternProperties:
>        phy-supply:
>          description: regulator providing 3V3 power supply to the PHY.
>  
> +      vbus-supply:
> +        description: regulator providing 5V Vbus to the USB connector.

Unless Vbus is powering the phy, then this only belongs in the USB 
connector node.

> +
>        "#phy-cells":
>          enum: [ 0x0, 0x1 ]
>  
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
