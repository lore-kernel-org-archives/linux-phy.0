Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 737F9C32772
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 18:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QY3RgPeWBM8LF44J4T5mPzq090nYfWremTJWp+9w/LE=; b=H3Hb9n7Iy18m7q
	10ucFCdNqf/7yeQO1llgG7wb+RagaJca96SAKRcuCh44wj2stsgOfeGsvxhxdF91PsIFij8YQHGeq
	Y/y7hos+K5x8LsNiBCjdx5oDq3rW+XUxMPK7h+fBopM9mjZxtqrIT5vYWnVd6BgVhVwuhx9NP5kO6
	B68pTg0RVe2Xwjo51q+PRUtxgPaKPOw5yzDOUPjMRv0o8igdj9rxR5dcdpGKqZL8IyhuvpT2KpAnJ
	R6n9R1KBU0MejhpMwUxJlNFtQniosUlsDiVZRadBH/kysIN8i9iP37m+AETWn5V8lmqMi2sXICJXf
	bOl5GbsEKkqO3mEZRSyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQC6v-00DXAA-QI; Mon, 22 Aug 2022 18:25:17 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQC6j-00DX2D-VV; Mon, 22 Aug 2022 18:25:13 +0000
Received: by mail-ot1-f52.google.com with SMTP id h9-20020a9d5549000000b0063727299bb4so8261994oti.9;
        Mon, 22 Aug 2022 11:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=KgI6tvcF5ekm6PkD5j91BZaJAeBSFOE8AYovOrfGK1o=;
        b=Auwv6mvywCfXrgczs5YCZrDEVGyyt11ecGUJX83k0/HM4uHPx4BRZmYfUv8mgs5XYp
         a6nqixbAJeCuijgIp/HG3xH5URZ8c2O5SC+rdVpx34nqwMSdsZFybrdjnpdNc3ub40Qm
         REiA8XOHo5CQ0Lip2rXau2b7BzYaN7W4PPKByAgU72h1aTgLQBst5zy/08hKqpNZhIsy
         84fd7eVbiF64Ukmg1SFT/tWhR35igH/aC1iHPDRo2yZMwYwt6jkBy2dp6JxPV26lfFTX
         mohvKBQm4vY0yn7DpqMLJrGIo+qB0jJOqRLTaYCQKYvFaU5L86tTMu3mIpBWzMoxIZxr
         WFTQ==
X-Gm-Message-State: ACgBeo19wy7kydGTN1Fs1IIURIfhBCPK/+rHXqEbjMjClkOmBV2c71Q4
	6DQD1IgCrYDQVgcDfogvwg==
X-Google-Smtp-Source: AA6agR5txWZKQZG3RQw2mRr0rNhMvBqip6eol4eL2ljd2cDvICfAIwhZ+UURdLKdP33prwbEegj2DQ==
X-Received: by 2002:a9d:6a4d:0:b0:638:9c7b:40fe with SMTP id h13-20020a9d6a4d000000b006389c7b40femr8140146otn.37.1661192703024;
        Mon, 22 Aug 2022 11:25:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s63-20020aca4542000000b00342df642fd3sm2706471oia.48.2022.08.22.11.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:25:02 -0700 (PDT)
Received: (nullmailer pid 111155 invoked by uid 1000);
	Mon, 22 Aug 2022 18:25:00 -0000
Date: Mon, 22 Aug 2022 13:25:00 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, Eddie Hung <eddie.hung@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 1/7] dt-bindings: phy: mediatek,tphy: add support type of
 SGMII
Message-ID: <20220822182500.GA111114-robh@kernel.org>
References: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_112506_049136_371BD807 
X-CRM114-Status: UNSURE (   9.63  )
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

On Fri, 19 Aug 2022 17:13:38 +0800, Chunfeng Yun wrote:
> Add support ethernet SGMII, forgot to update type supported.
> 
> Fixes: c01608b3b46b ("dt-bindings: phy: mediatek: tphy: support type switch by pericfg")
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
