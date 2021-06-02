Return-Path: <SRS0=/oO8=K4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F29AC47083
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jun 2021 20:03:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0533D61360
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jun 2021 20:03:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0533D61360
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pIBztwIYhiLqpdkXUq7LD1XYEMhk27Zt6NZlvbtVZtg=; b=W8kmoVfaxJDePA
	nYTFcLwah1EpL4N9L8Hdj/DzmXrz4noyyDO8s7N8jJ/hm2vjBdSRDw141ilZVdEQ9UmVqksNEUO8n
	9tgpd7pjY4t699W1XPZ0OrkNO8C3hl1eqLJ9pTctapPNqBH1j3SM7KfEKuymDswXeMWJdWub5EFOe
	iWd2dCTK5chwk86Eq3weTD1y4yq371NHtd9slYOmGrczuCeOtps7b7qFdDUf/BT2FFAMwGAbqk6S/
	p6B4q/4JJ2mE6f6c9bV0t/qDIjmb06XJ9fdnanbyRccbK5qnjT5FIW0q/KUXDkwde3DG6Xs1VUkKY
	scKHBTiDfKgy+iEoP6bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loX5k-0062zx-In; Wed, 02 Jun 2021 20:03:52 +0000
Received: from mail-oo1-f49.google.com ([209.85.161.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loX5i-0062zM-HL
 for linux-phy@lists.infradead.org; Wed, 02 Jun 2021 20:03:51 +0000
Received: by mail-oo1-f49.google.com with SMTP id
 e27-20020a056820061bb029020da48eed5cso846911oow.10
 for <linux-phy@lists.infradead.org>; Wed, 02 Jun 2021 13:03:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yW3ZDfBnMJBUJsuopQmswVdlQKbkuOB9JOmMNmyuRXw=;
 b=nHtKntvRI8OB3Yw1G+4GDzMgK0eLQOT9/WRw40vK6HxOhSb9BwCzD8YAzxxUeXzMba
 hNNooIuv7ZuacynVvRMBfwc/Mt3ZLEU+dhRqgU+vg9hH7Rg++FhTdpQnVWlN/8LqqUwF
 Fal8sYb63+s2qXFkEKE317iBRw3l8GaNFZ4g/x3mMc/FELUnoJDtPlD5mXpQptjo3Kbx
 jcPku4EBDzGv2EAVRRb/cdG8RWzb7lwnKgaA0MqCvp//1i0rF9jgTJcnfeKNHERNv2RC
 tG2C1wqLQnbA9FMF8HVeqYzVBPgEbGjfli7pEM98Gws2GBgClt3h9bquMX2S6CWUabvt
 5uYQ==
X-Gm-Message-State: AOAM530+waLAV3YPiSE5TSN4QzGtgSLrayAV/OLxhNVBr4YBlvx4G9nf
 gFFOOb5yDQt04nKPkuOb1A==
X-Google-Smtp-Source: ABdhPJwrDyos+fxWLzP98HAh+IdIrCv3fpALGzWTZZnndNjfcH2+Po08xUnsX9UZkVt6wzpaxQFD4Q==
X-Received: by 2002:a4a:9b0b:: with SMTP id a11mr26347406ook.73.1622664229254; 
 Wed, 02 Jun 2021 13:03:49 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x24sm194681otq.34.2021.06.02.13.03.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 13:03:48 -0700 (PDT)
Received: (nullmailer pid 3895929 invoked by uid 1000);
 Wed, 02 Jun 2021 20:03:47 -0000
Date: Wed, 2 Jun 2021 15:03:47 -0500
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: devicetree@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Steve Longerbeam <slongerbeam@gmail.com>, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Benoit Parrot <bparrot@ti.com>
Subject: Re: [PATCH v2 18/18] phy: dt-bindings: cdns,dphy: add power-domains
 property
Message-ID: <20210602200347.GA3895900@robh.at.kernel.org>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-19-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526152308.16525-19-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_130350_584218_10F1F016 
X-CRM114-Status: GOOD (  12.52  )
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

On Wed, 26 May 2021 20:53:08 +0530, Pratyush Yadav wrote:
> This property is needed on TI platforms to enable the PD of the DPHY
> before it can be used.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> ---
> 
> Changes in v2:
> - Add power-domain to the example.
> - Add Laurent's R-by.
> - Re-order subject prefixes.
> 
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
