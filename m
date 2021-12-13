Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC01C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsbQ4pK2+ESl8F/eZCKhm4NCiJHc5ceRibDCIbd89EA=; b=gDV+id8gJ04ZNs
	6nK/6gTDA4XyKDm/yQN2qJb07yrqWOvS31yj6169lJooGLZsUW49pBkr7q1byUBIeBAaU6mpEcbmv
	Azxopo54uVCRF9+mS5MI4X9rVy7Ns5KikxTtewz/1QSvkKgir1P6UptWnax6qe/1a9jNolcMEJM3J
	U93INMmZsl9a5dO/aLLqmxx31SteqT1k77dM6t8M7dQgF3yIewoDHzjTnFclpx7JdLEJsBEKj9hl+
	53e8UOAd+NuUpwzy9l4VgWVJ9ZC++bzs5TrcQ3Mg/4xRS+270N4G39ht9pXEmw9oBHVjFfOBRWsjX
	ISSbp0uAoKIUpZLoRlrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwqan-00B3xa-Dq; Mon, 13 Dec 2021 19:02:33 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwqag-00B3vf-SB
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 19:02:31 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 n17-20020a9d64d1000000b00579cf677301so18479241otl.8
 for <linux-phy@lists.infradead.org>; Mon, 13 Dec 2021 11:02:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0fubgbgx9ePcOziip1K7cv6Cmzix35sp4+0AX4HSLE4=;
 b=A5YY6Ftx+sZSSWoasDMAk/UQwtbrr9PVhsbCroW2t8nZQKJ370zNh4KrE8WROk0wpU
 EJW+REl0QhdoVUYNmYnLfJPmxkR3nOO+cTzWwfOiXW3al+Rby7MAxdquJ9Xqf8QDu1ie
 HTU0XJxRNpaikJhgC6E4AL91YWrTtK5xk9+FhtMzctXQUD3Pn064RQu6EsQ7sfKK5jYZ
 mSGAcFaBgv9PGfKhG6aVYeCmXMq2FVMRNk9D0xB4yoY19NbqVl1Q9fz/mMXy90QaqYBu
 0Ffqifb6wx8Sx/uP3EDTPEZg2YRp3nVGjhBmTq6LLtDsg4fgbwnNJXReGvI1lmYfAkqD
 lTJw==
X-Gm-Message-State: AOAM530tS2CXwsgIGL93SwdF4uvoVVyWTwHxtepn9j9aCaWAbRK7Qa5J
 cOMOTHZaLKHck19Yamf/Nw==
X-Google-Smtp-Source: ABdhPJyMsgr2UInJjR8/ysYtjabtEQNJr3MQaSWAEYuXk6a0UyPm1noJJjPYtsxnkazoWthTYb1Kzg==
X-Received: by 2002:a05:6830:2806:: with SMTP id
 w6mr365139otu.382.1639422145545; 
 Mon, 13 Dec 2021 11:02:25 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e20sm82453oiw.32.2021.12.13.11.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 11:02:24 -0800 (PST)
Received: (nullmailer pid 1386896 invoked by uid 1000);
 Mon, 13 Dec 2021 19:02:24 -0000
Date: Mon, 13 Dec 2021 13:02:24 -0600
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>
Subject: Re: [PATCH 1/3] scsi: ufs: dt-bindings: Add SM8450 compatible strings
Message-ID: <YbeYwMShL6d3A6fD@robh.at.kernel.org>
References: <20211201074456.3969849-1-vkoul@kernel.org>
 <20211201074456.3969849-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211201074456.3969849-2-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_110226_937560_76092022 
X-CRM114-Status: UNSURE (   8.34  )
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

On Wed, 01 Dec 2021 13:14:54 +0530, Vinod Koul wrote:
> Document "qcom,sm8450-ufshc" compatible string. "qcom,sm8450-ufshc" is
> for UFS HC found in SM8450 SoC.
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
