Return-Path: <SRS0=80zw=J3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BD09C433ED
	for <linux-phy@archiver.kernel.org>; Fri, 30 Apr 2021 15:04:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF34C6143A
	for <linux-phy@archiver.kernel.org>; Fri, 30 Apr 2021 15:04:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DF34C6143A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iIQKftJmO9eKAjdfKuM/CfwlUXL2y9v3vCq8VrOyjaw=; b=nzjRowt1x9kdpUasghDJYeK9R
	66rPot9AH2GryYZBTLVQIqNU698hcTv38MrZjahe21VLzr6vyAnR6IIf4FyBElsTYig7AUG5wN0+g
	jsyGV0czmiRJSvV0Tv6ZGgk2tn2w/YZwmLx0XE5nYFH+Qw9ZzbuwPsbmkIQdYvKpoe6TXb/Ih0Cr/
	5IX2U/hS2D7Aaa3vRC4fnaQbHAuB/ddNYhnPKmaOBqLDZN1mzxY0OTOYgNlGYvXZRQRedcgcDTLU2
	BWz7geoDE4PhBmPWGNO+wQZWIzqtOsxSBM3eCp3GhVJNOwiGhME+EtrsdzSa5gz9dU+oA42+ihmtp
	baNivT47g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcUhA-0080iE-8w; Fri, 30 Apr 2021 15:04:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUgx-0080gY-Eo; Fri, 30 Apr 2021 15:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/INWjCRM1B9+70V8iiUyLDnZTxKydu+XSX6q0Y8SkH8=; b=cjxo0GBW2qXHdnLyWbZCIFtNQz
 anv5ok85QcOPSTlVQ1pPHf1ymloEMkCssKGYOLQ9mPrEa+zJkd7C/QMT7vfI4+DVnVWVcnwYNTPbV
 PDk/knW+UygfoU1U+5FwlmxgVjPU5OfcwfV0yPGtLIMUn0rTg1UW14GgbG35T1n7393nZqyNqsDp3
 lZO+sZCxemeNnXRbdH2l3qq8lFp5fttf0y0yA8l/10CNtWVk7QHYMAaM44qhxY4kEG0lBwpCg+gSo
 P4ML5VaqiPxepY78jdprOiTZvkuu3Mixm2L8pKFmjwqnYvkJHksFlUp/+B1+i1kWl+s5QYjDgSHlQ
 i5lZynug==;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUgu-001TA3-OY; Fri, 30 Apr 2021 15:04:29 +0000
Received: by mail-oi1-f182.google.com with SMTP id u16so52971573oiu.7;
 Fri, 30 Apr 2021 08:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/INWjCRM1B9+70V8iiUyLDnZTxKydu+XSX6q0Y8SkH8=;
 b=ELq8MjjlqRD6ihXkt+xGl8mFOYxwn9BK7pq3DoHZ+U08rxe5csBEVBb6eVaWZgB1CQ
 gfQ1uBqB8gLICcc0qPG1hXIEfNBC3yoVzv3TgZoD+k6+ybDVUa1ftA5r9KETDcv8Uu+e
 9KG0ylv8NMscE9jIY5BilzZTxA0Xu2VGn+Nz1uVD/SSS/aVYWmY9TIFeDvDROvXqFT0l
 vi4+TJTRbj6ONSqQj6N5ob0OgQD7EasbmV9svORXUi2szgt+em94KNw6MzuVZQV/bxzE
 zvgs7H8PBwn12S+4hECGhtWcQhP+Q+B3cQ323hRFj6PLHmdV7ZkIXgqRbWCFEl3so4Hg
 ZnkQ==
X-Gm-Message-State: AOAM532E/s3e6gh0Gwy0AHie87RD00l/HQUOsJ1ejLc0lQ5tUvUoSo7L
 Q07QWH760p8/cXYhy6/JtQ==
X-Google-Smtp-Source: ABdhPJz6HzVAj0or5d1D7Hnc0EjbBhimRieQL/4bKusYwgFYusuFeT5uNTTaBlN49s62e34R6js8GQ==
X-Received: by 2002:aca:dd86:: with SMTP id u128mr4230463oig.155.1619795065227; 
 Fri, 30 Apr 2021 08:04:25 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 68sm740146otc.54.2021.04.30.08.04.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 08:04:23 -0700 (PDT)
Received: (nullmailer pid 3321318 invoked by uid 1000);
 Fri, 30 Apr 2021 15:04:22 -0000
Date: Fri, 30 Apr 2021 10:04:22 -0500
From: Rob Herring <robh@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Kathiravan T <kathirav@codeaurora.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 4/5] dt-bindings: phy: qcom, qmp: Add IPQ60xx PCIe PHY
 bindings
Message-ID: <20210430150422.GA3321286@robh.at.kernel.org>
References: <cover.1618916235.git.baruch@tkos.co.il>
 <f787ca496eae2a0d5ff4f17655eaff9f39a14321.1618916235.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f787ca496eae2a0d5ff4f17655eaff9f39a14321.1618916235.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_080428_820978_4A6EEE73 
X-CRM114-Status: UNSURE (   8.79  )
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

On Tue, 20 Apr 2021 14:21:39 +0300, Baruch Siach wrote:
> Add ipq6018 qmp phy device for the single PCIe serdes lane on IPQ60xx
> SoCs.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
