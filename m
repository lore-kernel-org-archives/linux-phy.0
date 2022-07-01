Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 876A9CCA481
	for <linux-phy@archiver.kernel.org>; Fri,  1 Jul 2022 16:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Qsvy7ealfJ7FrS5W3nUY+B+ThUFMB2c7gQB0Lk2z/M=; b=jH39Rd4CE0q5o0
	thwHPiBGoj5iAiday1T79Ucv/iPN8+hwv9EIxWBuhmG6Cbz5HPeREAsB5mhgBJJWfn+v98BS+K1+z
	CzNmukIwqPWZ0BbmPG+JKp1E0WT9PwFkzv1lsatO/Z+86Mjbo59OGUAV3q9TAvGZD3+fe4zgYNfPU
	Yf3WblkKEHPgJOZicR3MqMX0NhW+8NNr/qqSq0/YRpLe8Qq0gmO/sIy+CywB1MWDfuH/BHzMOYmlz
	gkA13Sz0MqWimA253ic5xm9fuXJr/wfxFXwMSbFW7pb2FefFF/hAtUvctv53XtHD4d4WZy/Bor9O8
	ZEPi1wQUQLKq6Nw9iWPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Jb5-00611z-Qu; Fri, 01 Jul 2022 16:34:23 +0000
Received: from mail-il1-f169.google.com ([209.85.166.169])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Jb3-0060zl-FD
	for linux-phy@lists.infradead.org; Fri, 01 Jul 2022 16:34:22 +0000
Received: by mail-il1-f169.google.com with SMTP id p13so1773388ilq.0
        for <linux-phy@lists.infradead.org>; Fri, 01 Jul 2022 09:34:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uAjn3M/xOLc0u5cG3jG7mYhlyDge8bkXUKr4zNyCXGE=;
        b=mUT777unyDrsJJeHYZ6UFMA0q5A3GKJ3qpbqVigsYPC640+OF3U8DytVn+lH7AJhAs
         5z4aCmCVI9OEjzQh2KoUamPtGkQ/YguqAd+hUPxMOfA06Rhnymd2c6UmSfBYMAjUfXol
         /7CzuBkfRYGj48Gm6qJRzFNDUyGJ24+LuhebcDbkeF3IjrPsOaTOEzK+QBeLRF6nkpWw
         WfdmSrK/d2LdKmqj/31rFdmK1qXOBruPdRWckgJ0IFokiU8g7YtpB6eSWDMEa+G82pcz
         +/0j1YIyCs/TApas1KvsSii5qmu0wZqltJXJu8dAvYw8UL+ndmhTIKf8gX9t7SeVhzlN
         1fgw==
X-Gm-Message-State: AJIora93drGClvL3Q+AKPM2UUmQC/xE9t5VagePZnCNn1NI8bvGLBJc4
	x+Bzokq47jT3vRb8WmtP0w==
X-Google-Smtp-Source: AGRyM1tblTI7F8CSwI8+nerSLn77nVtswznZ0l98jaldGav40dF2BAF9sWzUeH8C1+Q3My94gw11+g==
X-Received: by 2002:a05:6e02:934:b0:2da:93ee:1645 with SMTP id o20-20020a056e02093400b002da93ee1645mr8860741ilt.132.1656693259354;
        Fri, 01 Jul 2022 09:34:19 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z25-20020a027a59000000b00339ecd53618sm9886175jad.156.2022.07.01.09.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 09:34:19 -0700 (PDT)
Received: (nullmailer pid 1091036 invoked by uid 1000);
	Fri, 01 Jul 2022 16:34:17 -0000
Date: Fri, 1 Jul 2022 10:34:17 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-mips@vger.kernel.org, kishon@ti.com, rtanwar@maxlinear.com, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 4/9] dt-bindings: mips: lantiq: rcu: Remove binding
 documentation
Message-ID: <20220701163417.GA1090981-robh@kernel.org>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
 <20220628124441.2385023-5-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628124441.2385023-5-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_093421_548618_7A1B9AC2 
X-CRM114-Status: GOOD (  11.44  )
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

On Tue, 28 Jun 2022 14:44:36 +0200, Martin Blumenstingl wrote:
> This is now part of:
> Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> 
> The PHYs are still using sub-nodes while the reset-controller is moved
> to the main RCU node. Also the system reboot is now described directly
> in intel,rcu-gw.yaml which makes the syscon-reboot node obsolete.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../devicetree/bindings/mips/lantiq/rcu.txt   | 69 -------------------
>  1 file changed, 69 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mips/lantiq/rcu.txt
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
