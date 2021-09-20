Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA117C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 23:57:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FFAE61221
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 23:57:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7FFAE61221
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rE+rlbIQfJ4loYgnitx5MD6DqWz6JNNF0AGK6t6JJI=; b=YLYhu0CHaH0RPE
	QoBiqkoLSB8S4abJzPOsz7rGR28AuI4KkDtlVQfDzDQ4r/QjQOhZpmCKvVYx6Q42eL3/8aYUyeNbB
	HjYmBj+Se2zThGCI0D4j6fOeqFqnSe89ttL+Qu0xr3qElcSg935nIi1QxCAwrafcOvHaxf4k3X+Wr
	yB3lgKYWImyNg/P80rpgrAZG7zgkqIjJgbd0vlPJabnGWD5veLqu5TYdvQkhX+vv/iFPfjso0gmnj
	cyk6zR3WqQ53bheKtmmpIz1V/d113ittANKvIuCBqMAG+9m183KrISrvM1ROWOP4Jy3Tz7Ux501GJ
	yvoXpnAQH6cnnuKnqT6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSTAJ-003MQJ-23; Mon, 20 Sep 2021 23:57:39 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSTAG-003MOr-18
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 23:57:37 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 l16-20020a9d6a90000000b0053b71f7dc83so25925017otq.7
 for <linux-phy@lists.infradead.org>; Mon, 20 Sep 2021 16:57:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=27FPWfQ3xHskA0+KKGpEItqvWnJm7YpWtLApCe/IIEw=;
 b=qVIf7rsBPWDvOMIHm2jfCgtvp6DmjnuTZAKKYvhWBNjzMlpAMBX3VTrR24pCdy4HNo
 qLeSsy21+l1BzTuI6mWUpb495FdJd/jKsvrSjRtF6In2NOC7zsZr57a08n7VnysfDz5B
 GjlNpTjcWHJbznfrD03F8zyzzhMvFSvZgPJdTq/1buunAG+/VZitpUXe8+HcHV6y/7us
 dy00NK7AevFpK+3d+TPyn0k3SoigU1CJAfPPcZ21Vb7ddlWB1Je8qM6+Mys5e377cQ2v
 //cftwWFseWQLB1AjrQLDgmN35F/GM1FF06HY+DbcUtBQ55swFDC7JXJFEWlq4RXyuOB
 R1eA==
X-Gm-Message-State: AOAM532gQt+tncWfbJ5Uwiqm+ETtPGzv2pIcWP5rXy+A2jqod8wwUNH8
 kiNWVxhvYj9c+gMy2XCvsQ==
X-Google-Smtp-Source: ABdhPJwH1+emzRzbD1Bt/8Y858uJ63SylbkiAwBXBK0v0HNJg8rphZaH6+hhSCA0wMbfVImO+bLvKQ==
X-Received: by 2002:a9d:6206:: with SMTP id g6mr8049570otj.62.1632182255103;
 Mon, 20 Sep 2021 16:57:35 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 9sm183706oir.10.2021.09.20.16.57.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 16:57:34 -0700 (PDT)
Received: (nullmailer pid 1071008 invoked by uid 1000);
 Mon, 20 Sep 2021 23:57:33 -0000
Date: Mon, 20 Sep 2021 18:57:33 -0500
From: Rob Herring <robh@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: mparab@cadence.com, devicetree@vger.kernel.org, a-govindraju@ti.com,
 linux-phy@lists.infradead.org, vkoul@kernel.org, p.zabel@pengutronix.de,
 linux-kernel@vger.kernel.org, kishon@ti.com, robh+dt@kernel.org,
 lokeshvutla@ti.com
Subject: Re: [PATCH v2 04/15] dt-bindings: phy: cadence-sierra: Add binding
 to specify SSC mode
Message-ID: <YUkf7SsrR7fw76y9@robh.at.kernel.org>
References: <20210908122930.10224-1-sjakhade@cadence.com>
 <20210908122930.10224-5-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908122930.10224-5-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_165736_121481_EC8AA394 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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

On Wed, 08 Sep 2021 14:29:19 +0200, Swapnil Jakhade wrote:
> Add binding to specify Spread Spectrum Clocking mode used.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  .../devicetree/bindings/phy/phy-cadence-sierra.yaml      | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
