Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9B13C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jun 2022 23:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDsN+tPaptKtURja7rNjBiZrIVDljJJhb1dKmnwiqTc=; b=RiuSVhRKTLjgip
	IgngDz9o6Wq+EY4wAXiT2HsfeOECKKV4PrvGwVYxf4aMXdZRVOkv2EtTBFU7Iomek1J5A06EMf9AF
	kPUvIzZq5EIdFh7ZKKpISRA4m7GY2aKi6ZxLZ12HtsmvjK3cJOEbCOMUnhbKb/ZE007zImrCjLJzO
	1nzKB6beIeqibCrlm2wNZzEnav5T4D2A6QzqZDWk4uTM+MTUSrIYljaXDQdYhQztVG4wR9ihLVMnT
	/j1qMx6pZAUUJB6dDvqFslBkmmsW8jSz+xA6yHz8/7JQSRXsW6GQwK5K/v6EgiEMl501/jNHL7EkB
	JQeCWRavs+10xn2A5E4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5ySI-003KvQ-BN; Mon, 27 Jun 2022 23:47:46 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5yS7-003Ktx-LB; Mon, 27 Jun 2022 23:47:36 +0000
Received: by mail-io1-f41.google.com with SMTP id a10so11264932ioe.9;
        Mon, 27 Jun 2022 16:47:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oRvWZ9TeKvYoId4Is7bsf/P3csJZYeH6unVDw+FoBLU=;
        b=2cAz3UHhU6DWqTWw3aVldUrKdf/nlok2VLwOmKlmaUFXAtwaVkq03Zw69qL0Iea8Wi
         WuV6b7OtnOT+phqiJfYVDYHGKgVSQcYXLXt8/0pTpQLSDrAIHNJ3X6CR5TOuhbgigl9X
         XOeWMgJ+M+OHNWneibZhotq+xA7VmSq/yzj+5vqWQ9MxaJwc99H0qkJSHAZT3d4Jposg
         7SjHZwAi36XzuJBY16aN2TDNE99ryHA4YBsQpV/dEQK+JkDM2tAzH2bv/wxoMHI71cA5
         FxHGkMVjYP+tlaec9+0FdOBZw3eCIk93nntx1Wz982OFIwjwpJg/EpH99bhS5R6OkoDf
         qS4Q==
X-Gm-Message-State: AJIora9aLip4zDcbNIHu1FCWqe366Cat0va8TYxrUyLFnmHv0bUXGW8e
	AJdn+YFhL+CRPTXrsuUl1A==
X-Google-Smtp-Source: AGRyM1sfviI8ea8JVeUGZ7ysyjsRGHtyP3Kc3Y6dB0rkpSKEubWLB6skv7nEn5awW3d9L+56SWnBOg==
X-Received: by 2002:a05:6638:1344:b0:331:f546:69e with SMTP id u4-20020a056638134400b00331f546069emr9894555jad.131.1656373653305;
        Mon, 27 Jun 2022 16:47:33 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id b201-20020a6bb2d2000000b00674c8448c3csm5993564iof.6.2022.06.27.16.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 16:47:32 -0700 (PDT)
Received: (nullmailer pid 3193779 invoked by uid 1000);
	Mon, 27 Jun 2022 23:47:29 -0000
Date: Mon, 27 Jun 2022 17:47:29 -0600
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>, Michal Simek <michal.simek@xilinx.com>, Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Sean Anderson <sean.anderson@seco.com>
Subject: Re: [PATCH] dt-bindings: phy: make phy-cells description a text
Message-ID: <20220627234729.GA3169775-robh@kernel.org>
References: <20220619113325.21396-1-krzysztof.kozlowski@linaro.org>
 <Yq8LHN+WGVpXDwiM@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yq8LHN+WGVpXDwiM@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_164735_734383_3B1B5D2E 
X-CRM114-Status: GOOD (  16.12  )
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

On Sun, Jun 19, 2022 at 02:40:12PM +0300, Laurent Pinchart wrote:
> Hi Krzysztof,
> 
> Thank you for the patch.
> 
> On Sun, Jun 19, 2022 at 01:33:25PM +0200, Krzysztof Kozlowski wrote:
> > The description field is a string, so using YAML inside phy-cells
> > description is not actually helpful.
> 
> Does it hurt though ? 

Unfortunately, I see this a bit. It's convenient because the schema 
passes all the checks. Doh! And I usually stare at it wondering how it 
passed.

Though I probably did review this, so IDK...

> For xlnx,zynqmp-psgtr.yaml I wrote it that way to
> prepare for a future where it could be described using a YAML schema
> (but such future may never come).

There's 2 parts. There's the resolving the defines and then applying the 
schema to the cells. I actually think the latter would be easier. At 
least from a documenting standpoint, we just need to define our own 
keyword to stick the schema under. With the tools doing dtb based 
validation now, the tools already get the phandle node and get the cell 
size from the DT. It's just another step to extract the 
node's compatible, find it's schema, and get its cell format schema. Any 
volunteers?

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
