Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BD28C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 15:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhWpxVfOWL7rujrjrzQL3/tInM4PAU9Nz/C/Mfk5mK8=; b=WWqG4WLknop8hQ
	ehxtBnEf0yZ7CIZwBDMGbHOhXAyCjpH9WGcEiRBJXcSzyGc1uAE6487HeG49/+QVfzPrZ2A8ht1q/
	+XEanHu2+e/Ar9TJr8sdunbrMuSwxbQ9UrKuhBVTjKM76CAIfnVG5g1pIq4QcOo20yAAVuGbcR8sf
	UCyeQmEEa5MqnmgnTU615XZkQuAOoabiVF6vw16xlarciu4wtq2m5vOOjvVm5ldJLxz+KsbIlbYmD
	25M0SVSiWXqrK8SgaGScCao6MGfWzp7SRLA71Cquf4PG1F58C6ubocx8x2py9r3ZTQlM9AriW+ejX
	pUULHl7qz7b8f/LAMhVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noo70-007VIN-4W; Wed, 11 May 2022 15:18:50 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noo5p-007Un8-22; Wed, 11 May 2022 15:17:38 +0000
Received: by mail-oi1-f176.google.com with SMTP id n24so3038090oie.12;
 Wed, 11 May 2022 08:17:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dpNz+LwyfT9jjhoJa/sP1irt+XTKs3LHfBiFKQv6gts=;
 b=DjrrAMbVHTwD0dI3c2VYsLXmk23x1pm6qjLVctEj6w7wXZWX2VkI87bDsL/M11Yiu1
 0xSQbFinRzTcsmIXAzEN9hM0gKDdHL2BrqI24NXjK4f6yHNzvXyUrBnZlAuHEt3tlCpc
 wISGvsUUxaC37VinTcKjSSwUCCx9kLJPOdnA5ay/sebIaEtlrNUDiKz0s+x0Ja8gafyS
 g8xFHb90zJHhcpY14i3VOH3dYwoqopc40GicW0ucHfr937zIMTywQS/fdrKN9v4s4KxC
 YpVvs8F1RHKBwu5LjnL2KUpwu07U5vcPTqVLRA1gRd9t7q9onQipo2e8wvRVZ8MoFMD7
 /4zw==
X-Gm-Message-State: AOAM532OC57/flnIE8zZNc01+8vLv779mFmC+CnaWkixmNWE3t36kEJC
 aj+RMA3/jQdTF6JZpv5bnA==
X-Google-Smtp-Source: ABdhPJySwMiBeMQ6yXtbQUnyyCcnwB1XuD7UhAgD6UU+usUZdQxvCqjQ7Xgz3SrtyJhV1lmc8zq67Q==
X-Received: by 2002:a05:6808:1b07:b0:328:ab46:623f with SMTP id
 bx7-20020a0568081b0700b00328ab46623fmr2629768oib.152.1652282254672; 
 Wed, 11 May 2022 08:17:34 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 q3-20020aca4303000000b00325cda1ff8fsm840345oia.14.2022.05.11.08.17.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:17:34 -0700 (PDT)
Received: (nullmailer pid 329835 invoked by uid 1000);
 Wed, 11 May 2022 15:17:33 -0000
Date: Wed, 11 May 2022 10:17:33 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Eddie Hung <eddie.hung@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>
Subject: Re: [PATCH v4] dt-bindings: nvmem: convert mtk-efuse.txt to YAML
 schema
Message-ID: <20220511151733.GA313710-robh@kernel.org>
References: <20220509014521.10248-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220509014521.10248-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_081737_152593_74D6D5DE 
X-CRM114-Status: UNSURE (   9.78  )
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

On Mon, May 09, 2022 at 09:45:21AM +0800, Chunfeng Yun wrote:
> Convert mtk-efuse.txt to YAML schema mediatek,efuse.yaml
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v4: fix duplicated unit-address in example;
>     drop reviewed-by Rob, due to changes;
> 
> v3: add reviewed-by Rob
> 
> v2:
>    1. remove description of subnodes which is covered by nvmem.yaml suggested by Rob
>    2. change the example which is commoner than mt8173's

I'm assuming this will be resent with all the changes from the other 
conversion posted[1].

Rob

[1] https://lore.kernel.org/all/73b1feab3ecb20fef0339b322a61d63146b5790a.camel@mediatek.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
