Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B969C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 21:16:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 091FC61107
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 21:16:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 091FC61107
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tqVQ+vYlVuFz/pEKUy846INIcHf/rzv1UaFPrr9Vqw=; b=Chg3fIixwVquQe
	8T7eWiuhPn5vkzoz39bdLWywkLzsqhcyJzW3+tid720/tOr75orc5OY3MUEd0Y7NUNZ3QSIB4cvx/
	Nxw6FyRaBiN6CT6h1YvnVdDf898ZDPt0cn7jKH9gjwthdwKcOHDvq2IwuiqWoJ0UwSlgty6GaECj3
	SrNM/VfiYVd8P4QE9t5noLZlzlSxy6FFTMA7oyrTkxQaqU0t4ggVHS6nyY12xmOuRx/CslF3JRch5
	6gwsNICQilKzGTU9BT53Co6U/BSfOkGGPEywHJypQGjrvaI1X0m3r5kzUSi64mQCV+SmutT3PEYC9
	F9wptwu7HopofX7wVXgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT9be-009fa0-Hs; Wed, 22 Sep 2021 21:16:42 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT9bc-009fZU-N5
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 21:16:41 +0000
Received: by mail-oi1-f172.google.com with SMTP id y201so6591017oie.3
 for <linux-phy@lists.infradead.org>; Wed, 22 Sep 2021 14:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Kh4Ghm6qYxW1QP5eDOkkCFbtlvfqc6r3kIiF78R6ML4=;
 b=72TocbIbsU/OdQ4X3EsJSnMEOJtHbFxiGNoDgL7VkjPUXSaGSfZeFmFkqY/g+i6Rdd
 7e73prdeVVJdcrnh2v3G734mDnqiKzaspMDomYM610xFlW4kI6JV07FTm6/TKyxSacDa
 8LBeuv2ZMIQqdwHC26b631Wl89Rzn/AT21I65O0Oq57xVMjNqMpn2mN4s4yuNinQJUEx
 ou8JOoi/AIl7WKjPF67UvkjztT3bfSPQTUE/KleSEoD+5dMzlQMWYFwkuxpKYAnCEndu
 xANd6gPA3H8TxjLNvHp90UGGxrd2UDcj/cbZlEblXADxQxOiOCZhLCinAbJdM/1J/cNw
 vhTw==
X-Gm-Message-State: AOAM532o/FMq73bFateJqJbwX5d5oYrvkk255lHt/LkZoPZPVspxkOS8
 o3rpDd0cr/4L1zAZk49TMMQro4gJpA==
X-Google-Smtp-Source: ABdhPJwKzojWvsxGCdpvga72I3IhSMl5L8xtOQdbUXjk42Y7eW8ZDGoiKlWf+b/oOud7SP6AAwzn/Q==
X-Received: by 2002:a05:6808:2110:: with SMTP id
 r16mr1011645oiw.117.1632345398451; 
 Wed, 22 Sep 2021 14:16:38 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k4sm792618oic.48.2021.09.22.14.16.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 14:16:37 -0700 (PDT)
Received: (nullmailer pid 1308640 invoked by uid 1000);
 Wed, 22 Sep 2021 21:16:36 -0000
Date: Wed, 22 Sep 2021 16:16:36 -0500
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,qusb2: Update maintainer email
Message-ID: <YUudNLH6wsgQVk/c@robh.at.kernel.org>
References: <20210919033519.29559-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210919033519.29559-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_141640_795130_A3BE2009 
X-CRM114-Status: UNSURE (   8.80  )
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

On Sun, 19 Sep 2021 11:35:19 +0800, Shawn Guo wrote:
> Manu's codeaurora.org email address bounces.  Before he comes
> back with his new email, fill Vinod's address in there.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
