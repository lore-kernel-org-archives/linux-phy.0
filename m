Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF9FBC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 13:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcvqEks12DSaacOUbaa07l+vkprocWqufde+J1GUWRM=; b=JbGPLTkR2tjyvl
	nWdyYwqj/jYaVYmD6umT5RAKwdhHaerAFjSHiltfcFOyo4W1S3sNWb2vy0Kb5924rOjD9GFn70YM2
	DgyTxk+//y2h/raF9382ALeEheyAo24K/YyAiLbLktQE4ZOW6mOTjknpBGugwNDHMsROM/keqXh4o
	2IOno97r7ovFXvyCrA/AlzANVPC1i5A/qKTquSDN5sGGHtDaI4mkUg5ySxoLivrZkopuhn+a2gztS
	fw/K9E9MeyPZfULISk7gndAkGKk4jSGbA0EY3QC4nLe6dNNf9gR8vB4iZdBTbHygbz7cr6IyzsTlZ
	FjbrGQ9VZ1nzWtgaPeTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqxX3-00E2dg-MX; Tue, 17 May 2022 13:46:37 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqxOl-00DyMJ-FP
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 13:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1652794681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5P5WzWojyMXlDWaDvwnnFONKEvLDJzZaE27j1zka+wM=;
 b=VwjJkyQz1sjeoCKQYrZzZI36pGjxq351IuqhCulaH6cJ1FbToehq1rpdy2SXNg6XLIz8Xg
 VnjjpiIvFT2VgOR8CywXlVKZBaL4TYo100WyahVJP3f0qkF2f5Te1DNbuvU47LVvubrlwU
 bDq3lrFESAMaX7kNXpcAZ2ttbUuhjkE=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-483-kDIdG8xEOCubiu21mg3ZLA-1; Tue, 17 May 2022 09:36:04 -0400
X-MC-Unique: kDIdG8xEOCubiu21mg3ZLA-1
Received: by mail-qv1-f70.google.com with SMTP id
 bc15-20020ad4568f000000b00461d481b53fso3625358qvb.14
 for <linux-phy@lists.infradead.org>; Tue, 17 May 2022 06:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5P5WzWojyMXlDWaDvwnnFONKEvLDJzZaE27j1zka+wM=;
 b=O55Zm8gCB/XteEyo0CiqBIbriPWiXtbyLkKo+M9d3l6tyAN/uXZQ35D1xTcs/NgkQQ
 CxQY8gfCVwxV04gw3EGwUcgbMf2YAyqHDw9vMGZlyMr4zWBx17Zez44NyUurPUquXkYD
 umKlco9ruUyLdc6t+lxadd/BN2WpvYan+2yNphM9nNPHCBxKPbebs5blB46ryWbMFA8B
 xVytF7uAXVSdtR5qYHAiCOoegMtO5lx3uz0pK/6qm3lOcfH9TiG9qAMUE8VtksV7KdGG
 pY/4nQXb8BOvr6v6GkAGcalyKL6V/n4eFJGTaD/o8V0OwlrDfFS33WrKXQxOOr7MVlxK
 zp3Q==
X-Gm-Message-State: AOAM531gpyk5itWJkA3rB/sG+Hf0/drkOZvX1MHUuypM7NMi83+n8sky
 Pr9AFGrsMCIVOx06D173GJ6hrJuiYfxRbpKNdl58XgjNTp+PYLZlwdCBbKZBdWD+NazC7Aatl/s
 +N7M9IdZSvtUwCmCVbnd25zLkRg==
X-Received: by 2002:a05:6214:29e9:b0:45a:c341:baaf with SMTP id
 jv9-20020a05621429e900b0045ac341baafmr19881087qvb.77.1652794563783; 
 Tue, 17 May 2022 06:36:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyEdc5eDHOjlBpS8FPC+AOzBoHQp0zSLnPR5J0xOEFYvmjviuh3P28nkrVwstGyAbD+Qf1rPg==
X-Received: by 2002:a05:6214:29e9:b0:45a:c341:baaf with SMTP id
 jv9-20020a05621429e900b0045ac341baafmr19881031qvb.77.1652794563247; 
 Tue, 17 May 2022 06:36:03 -0700 (PDT)
Received: from xps13 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
 by smtp.gmail.com with ESMTPSA id
 x2-20020a376302000000b0069fc13ce1e8sm7575349qkb.25.2022.05.17.06.36.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 May 2022 06:36:02 -0700 (PDT)
Date: Tue, 17 May 2022 09:36:01 -0400
From: Brian Masney <bmasney@redhat.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: qcom-qmp: Add SC8280XP USB3 UNI phy
Message-ID: <YoOkwZAH7EM9AUop@xps13>
References: <20220513225348.1671639-1-bjorn.andersson@linaro.org>
 <20220513225348.1671639-4-bjorn.andersson@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20220513225348.1671639-4-bjorn.andersson@linaro.org>
User-Agent: Mutt/2.2.1 (2022-02-19)
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=bmasney@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_063803_606507_B4FB87E9 
X-CRM114-Status: UNSURE (   8.88  )
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

On Fri, May 13, 2022 at 03:53:48PM -0700, Bjorn Andersson wrote:
> The SC8280XP platform has two instances of the 5nm USB3 UNI phy attached
> to the multi-port USB controller, add definition for these.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

I verified that these match what's in the downstream sources for the
sa8540p.

Reviewed-by: Brian Masney <bmasney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
