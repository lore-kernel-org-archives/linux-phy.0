Return-Path: <SRS0=z2Tz=MV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2906C4338F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jul 2021 21:23:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A46A960F00
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jul 2021 21:23:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A46A960F00
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqn5dosS1kXh0kuhUGKADaNCTsB2+TDa6HrjBY3yhoA=; b=1RlRRUHMvEfHOv
	y1pe2VwZ2wGIlHk1CZ0AwZ3cuA96VOeBi1FYPBwy5JP8YlmJ4G2XGrUcOMqkirTYOz2R8Zfa/aFD7
	DUKiOfOiAxb9A43wLSk7Tq2JHCYdiObRQ+XO0LgTn5DweZIb13Q/aGCoAODZy18xLOi6SyOXqR+W2
	LAqOmgcrmesZj5QSDXW5K30CazIEXp5lMPgd1hLd0HwVERkzFZzixdU/t8VcIOpSaxHtMjIUSaQ4D
	vUYSKMHwuEQLYLx67hm4zTDsMpzv0YjuxTGhiIhH1IvcZMLf3DbRCxXkDGga4GmPwNQSsu95UXyH9
	uBE8JHP0y2NLvvPI4uuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9DUt-0066Xz-6m; Thu, 29 Jul 2021 21:23:19 +0000
Received: from mail-il1-f181.google.com ([209.85.166.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9DUq-0066XH-Sy
 for linux-phy@lists.infradead.org; Thu, 29 Jul 2021 21:23:18 +0000
Received: by mail-il1-f181.google.com with SMTP id x7so3980176ilh.10
 for <linux-phy@lists.infradead.org>; Thu, 29 Jul 2021 14:23:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FZW94h1H39rcv+FtZXS3JtZAWRYyq7KjWtyIy+ADEfY=;
 b=Lb+gRUPOxuWXHfeAQBtkotdG6e19qaQ83cuDlHdEGPZ5DbMWEca1HbQTMPGOP/arsZ
 1Gth64HkdFcRsdvpjNxuBM9RG7MsRZUpZ1fIVmw7wFdsIzlhODvjSIoG7yUJbFW8VRQ9
 lF5HPLXGs7LW+0eKPDz1Fun28R7sI2iWusN54Xz5IFa6JhY/TVl0xxacCTPDip8mnRKS
 61HmQSMjajic2pVW0zsSXeaBFGSn31eBEulRE6XC3FrTyskzm3EDrFEiJWcBRCs9DQqd
 gIrvRZsKUn3G5SYEjBKub83bCQO95CkKyLH9vmpy+lnP6u7kz535drXKCdRbYeykgeXT
 5oeQ==
X-Gm-Message-State: AOAM5314+CrfVOqzDHuz3J5V7BffK4dT3Pebk0EYw6u87V8FjEpnVu2B
 fxwyyUW/9sLdAX74lJRCuw==
X-Google-Smtp-Source: ABdhPJzTFWVM255v25a+cNpfULd0/j7AfVEKs73rjAXZXFUxBZdValTxXcgb5paDoIp7XKFCHT1zDw==
X-Received: by 2002:a92:db4c:: with SMTP id w12mr5410487ilq.306.1627593795671; 
 Thu, 29 Jul 2021 14:23:15 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id r1sm2406728ilt.37.2021.07.29.14.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 14:23:15 -0700 (PDT)
Received: (nullmailer pid 915595 invoked by uid 1000);
 Thu, 29 Jul 2021 21:23:13 -0000
Date: Thu, 29 Jul 2021 15:23:13 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: devicetree@vger.kernel.org, lokeshvutla@ti.com,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: Convert AM654 SERDES bindings to YAML
Message-ID: <YQMcQRy+vlI/L2G+@robh.at.kernel.org>
References: <20210723135605.23572-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210723135605.23572-1-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_142316_961512_FD3B23F2 
X-CRM114-Status: UNSURE (   8.40  )
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

On Fri, 23 Jul 2021 19:26:05 +0530, Kishon Vijay Abraham I wrote:
> Convert SERDES dt-bindings for TI's AM654 SoC to YAML binding.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/phy/ti,phy-am654-serdes.txt      |  82 --------------
>  .../bindings/phy/ti,phy-am654-serdes.yaml     | 103 ++++++++++++++++++
>  2 files changed, 103 insertions(+), 82 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
