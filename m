Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E30C3C4338F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:24:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B157660EBC
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 14:24:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B157660EBC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ikv7EJLMKGaZoMvkFPlkXqf5XmGonDUYxpbliIBvoNo=; b=3efVK0J/nJcPUj
	0sRbSjhG7tBM4bs46NXuO6GSroLp9PjMsQ6Wqwkvx3UZVGWJXzPKc3KANBKfe6Glv0Brw0gvBoje4
	fWi6XXoGdEio4kvLHqy+b3VjnLlbHh7whj+2gxGSmXbSCGuWRmOw1KJhI9i/9ut0A5OaLi7YHrTSC
	cQHUdTK5b8meWu0SGUKapZp436fv8WPYZGEAvNZveOJ1/Qejn5nkvQr0ZAJYekuqJKjrdPr2A6TAt
	Qzb3cU6cRsuXfndhxHHExyRGhn2JdX/OwHP930Cmhk8O0gCyHx8i/XIPz1jUWllXiiPK0b4lI35/S
	/bl2R+VmwKg2IPFfeeUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBHoh-006Q7a-98; Wed, 04 Aug 2021 14:24:19 +0000
Received: from mail-il1-f178.google.com ([209.85.166.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBHoe-006Q62-7j
 for linux-phy@lists.infradead.org; Wed, 04 Aug 2021 14:24:17 +0000
Received: by mail-il1-f178.google.com with SMTP id c3so1832163ilh.3
 for <linux-phy@lists.infradead.org>; Wed, 04 Aug 2021 07:24:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NE14rxs7Nx1Lsqlrn/QWnMRazks8S/eA0DgP+s+Spxs=;
 b=ak6tnbhiaHKqBqWxYK8Nu/O6fpshu7f3q0b+w1ucsNEvttMFMLxIUh29D2rBdEUDa2
 xi+otT4xXz3hwwL06W9kVozoBsIbLs5qJvmTAUORN9Z3iVjY+q38bYfJrgcbX45Cd1Mj
 +3wwcuRtrDV44mS8Ja6gB2qhPl4r/7BvV1hKRfDqGGnUmqlgIWxZDupSTF0dhTsxuG//
 4FktoE5Ut+UwsD/3Iib1UG89juQGXBo1wy9UoUNALrtvmXAbuYJ34DjB7stbjQbHkb27
 Rksov0U8Pc7bfedjAZNy5HjT0Vh2tc1H+cTmGdtF0Jla0VCJrpU3eluCljYtgLWL6yCg
 R2Lw==
X-Gm-Message-State: AOAM532fkz83+c7zyxWXdKv2/Jny9Gz6ZmoaMle2xkS+RnUsc+BEI2Zw
 rwcO1h+XRSeolhxSDsydbQ==
X-Google-Smtp-Source: ABdhPJw4PnKBCsysHRUT4YwQyRmJ8CKJdCtUX7GtioXxbF/243SRujd9UByGy0dd1Hm6Gltot23Iwg==
X-Received: by 2002:a92:c54d:: with SMTP id a13mr209ilj.74.1628087054317;
 Wed, 04 Aug 2021 07:24:14 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id w13sm1208894ilo.10.2021.08.04.07.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 07:24:13 -0700 (PDT)
Received: (nullmailer pid 1150193 invoked by uid 1000);
 Wed, 04 Aug 2021 14:24:12 -0000
Date: Wed, 4 Aug 2021 08:24:12 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, mauro.chehab@huawei.com
Subject: Re: [PATCH v4 4/4] dt-bindings: phy: Add bindings for HiKey 970 PCIe
 PHY
Message-ID: <YQqjDICecHumVay2@robh.at.kernel.org>
References: <cover.1628061310.git.mchehab+huawei@kernel.org>
 <461495431dd28ad2779658659f137db4bd747aa8.1628061310.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <461495431dd28ad2779658659f137db4bd747aa8.1628061310.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_072416_328480_A2EB05DB 
X-CRM114-Status: GOOD (  10.20  )
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

On Wed, 04 Aug 2021 09:18:57 +0200, Mauro Carvalho Chehab wrote:
> Document the bindings for HiKey 970 (hi3670) PCIe PHY
> interface, supported via the pcie-kirin driver.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../phy/hisilicon,phy-hi3670-pcie.yaml        | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
