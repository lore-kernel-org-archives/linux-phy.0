Return-Path: <SRS0=6HJ7=IV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7F3C433DB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Mar 2021 22:32:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6CACD619D5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Mar 2021 22:32:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6CACD619D5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jDCQ8Za175qI1SdmVdSaLXXXn1wN1zEp/WP8OJIyj3M=; b=KD9NwYTl83fpVjOElMaECL7lV
	v6gUAAQuqN8qIJ7HZbcEbNLW0w97zFdk0jx+Qoa7tkxB5758tGZm7/L0LxlIHMqsHqzEom9ZJLt7X
	ihkjsV7tD7VSmMS9+YK18229NbNgwyjb6IZ0OosFTooKGTH1JHVJpQ5e2rO5MT9CcDMJ/s0+Ngfyo
	CuLtVl30AcY4zgZ5N6u4Cee5xTKqbiOwSpcAt9zCdLZxMGDQR7zNQD6CSNNRMFWl5LnFJfqDdpViL
	9wIRGo+XWLpSnreV1Q1+KIBEprgBgjTxM62d9aa7NId7Oy93UTZjBIXGbtiTqDVPDRXtaCSa+ZX62
	Xli6fo+fw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOpZE-00FtAm-OZ; Tue, 23 Mar 2021 22:32:04 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOpYo-00Ft7p-MH
 for linux-phy@lists.infradead.org; Tue, 23 Mar 2021 22:31:40 +0000
Received: by mail-io1-f42.google.com with SMTP id j26so19435626iog.13
 for <linux-phy@lists.infradead.org>; Tue, 23 Mar 2021 15:31:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ADJOQE6rRZGFPRgrhEG6DzF/Fsvk9oc1m1438uMe3rc=;
 b=KqpGaEQDak/g6YkaVygTDlrT45cV8E91AOJfqI2ogrsqXzrA106V9m4XEhZOu/Jey8
 ngOOIULwuqG5BchwJIBqzRklXiEuZ4h/w62Cno1wFfwK+/Lx49UrHQG/MXX1TOaE9M64
 V8x8gGkLinsGXxL0VxQ+GW5nZ2Vc6LE0ZwuPU/6g3toldD8kmOtZEo5Eui/oaOAvHFmA
 gBh1iBgMJyhcnAzhsswnwkcUUEaf0Te6NxORVwRoxZs6lM8PvSB5iBQyvj+jGHJwfLTQ
 Y9VTUAl9dQrJfJlepm/Ch0SFwm/4I9ZNf1N+W8NAaNAThkt+Kw6PJu41woi23/JBvPpW
 ir9A==
X-Gm-Message-State: AOAM531xRyETsNMbTBxYZgOpGyOvCSwGsU5KSTonDbORt1s6fsax5IK9
 DVCRD9nU7Hj4ZVdmG9RePA==
X-Google-Smtp-Source: ABdhPJyQXi0EFkGQwsLFtkgk7o5qUS8AFJcKo/rS1/0FHagpbUOKycPea+AB7L1IJYJ6hAxCxOFkOw==
X-Received: by 2002:a5e:c911:: with SMTP id z17mr248834iol.153.1616538697665; 
 Tue, 23 Mar 2021 15:31:37 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id x20sm103383ilc.88.2021.03.23.15.31.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 15:31:36 -0700 (PDT)
Received: (nullmailer pid 1464678 invoked by uid 1000);
 Tue, 23 Mar 2021 22:31:34 -0000
Date: Tue, 23 Mar 2021 16:31:34 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 linux-kernel@vger.kernel.org, Swapnil Jakhade <sjakhade@cadence.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 08/13] phy: cadence-torrent: Use a common header file
 for Cadence SERDES
Message-ID: <20210323223134.GA1464641@robh.at.kernel.org>
References: <20210319124128.13308-1-kishon@ti.com>
 <20210319124128.13308-9-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319124128.13308-9-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_223139_028502_3CC18A35 
X-CRM114-Status: UNSURE (   9.00  )
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

On Fri, 19 Mar 2021 18:11:23 +0530, Kishon Vijay Abraham I wrote:
> No functional change. In order to have a single header file for all
> Cadence SERDES move phy-cadence-torrent.h to phy-cadence.h. This is
> in preparation for adding Cadence Sierra SERDES specific macros.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  .../devicetree/bindings/phy/phy-cadence-torrent.yaml     | 2 +-
>  drivers/phy/cadence/phy-cadence-torrent.c                | 2 +-
>  .../phy/{phy-cadence-torrent.h => phy-cadence.h}         | 9 +++++----
>  3 files changed, 7 insertions(+), 6 deletions(-)
>  rename include/dt-bindings/phy/{phy-cadence-torrent.h => phy-cadence.h} (51%)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
