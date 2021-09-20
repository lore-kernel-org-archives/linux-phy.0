Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 105F0C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 23:57:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA3D061221
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 23:57:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CA3D061221
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PclzAhZzX13e8thqs6vKuU0aBpjke6SZ/kyb/PgHpb4=; b=PWMQE7tqOyMcxL
	VdMQtA8oTUuYDYSxRvOxLX0w4obC00U9hVL1DY8qvGsRF+9qDXsQKkZ9sqzo/BxeMmQQplfm7mhf2
	bdnKp1wbGc6ZlfvcA05wGBAZfuTRmjC6gZqVZAoxQQc3xxl/vfaaONZVNeBVQdUjjRsZexJW9M8yY
	evHtVUlZQbIGSWCGxJN2z8SaaPfTP9qmmoJftxMewCv7M31ITbBXDW5UUpJ5zOECUeLv9Y6DABBLi
	C237up4ZSu2z4fHh34MhvkJbpDc4mwhZt8Y48qoUtZhX+92s/92QGVSeDh5pd9HVejVsRqA18vDUD
	r79+VjalAceaL2TlAsCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSTAa-003MXA-Aj; Mon, 20 Sep 2021 23:57:56 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSTAX-003MUd-Aj
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 23:57:54 +0000
Received: by mail-oi1-f169.google.com with SMTP id a3so2302323oid.6
 for <linux-phy@lists.infradead.org>; Mon, 20 Sep 2021 16:57:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UruuD629pXbAo8v51EOt1Q9Zypsx+qAnm2GEsYAK93o=;
 b=dV9Vw/XvPUoAHPZdeDHBM1gIOtFz8kSi78lGnJkKGNn2UuxxNP8ti5OpNfD64XhNtC
 BRBNMnPaJCkBxCSjofdTJQ/ttqG/XdQQGzu2tTy01xAiijOn6871f4IoRrUk82lEfx2m
 MeQ+bqncKrs1h2pdLu7LxQ2vhhB9gcfX81SGYGhMUVnubTPN+6Rvk8ojzPdgHZ5b7YGB
 P2TCtdlrcJzl2Aiyo8Z9ktsd/LVDKPoQqEL2njC3jledeaZF986NIRIqa4nrEgqfwbVI
 oAO8fITJNIYY1GowxUMFjHw9hMmoeZoYTKwy2genj8diKyMFv60fLgPI0zyrOv7quKCc
 fK9Q==
X-Gm-Message-State: AOAM530lEx+RIPn9csSoJ9c2Ktj3wFcfIFrk69nQmkVNzaqd+41GeHIR
 7m6JtatN/VQmOeD3aePWiw==
X-Google-Smtp-Source: ABdhPJz9yGQMN0ETSzATgC1fFl7Gk+YmDyRvnasrnXBZtB7PIUHnbjTmy4Pj/SBG727Ip3A7z4DE2Q==
X-Received: by 2002:a05:6808:168e:: with SMTP id
 bb14mr1318190oib.121.1632182270390; 
 Mon, 20 Sep 2021 16:57:50 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id i27sm3792076ots.12.2021.09.20.16.57.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 16:57:49 -0700 (PDT)
Received: (nullmailer pid 1071558 invoked by uid 1000);
 Mon, 20 Sep 2021 23:57:48 -0000
Date: Mon, 20 Sep 2021 18:57:48 -0500
From: Rob Herring <robh@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: lokeshvutla@ti.com, kishon@ti.com, a-govindraju@ti.com, vkoul@kernel.org,
 devicetree@vger.kernel.org, mparab@cadence.com, robh+dt@kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 p.zabel@pengutronix.de
Subject: Re: [PATCH v2 14/15] dt-bindings: phy: cadence-sierra: Add clock ID
 for derived reference clock
Message-ID: <YUkf/Kld7zgZ0yss@robh.at.kernel.org>
References: <20210908122930.10224-1-sjakhade@cadence.com>
 <20210908122930.10224-15-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908122930.10224-15-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_165753_467979_EE823428 
X-CRM114-Status: UNSURE (   8.78  )
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

On Wed, 08 Sep 2021 14:29:29 +0200, Swapnil Jakhade wrote:
> Add clock ID for Sierra derived reference clock.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  include/dt-bindings/phy/phy-cadence.h | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
