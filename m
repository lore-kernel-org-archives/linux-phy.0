Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1201AECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 19:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gU2t7MddsthHsdd5FEqqmpiCDVA/YPLabQFAOWY9jSk=; b=WgdT0FrvcB7RG7
	RpRw1uw0wjFsAOWB2MzSg9VQLQSV1yKp2vY30LhWEMwrzRBXrPJJj8ngG+cFiu6WxtSgygDS/YlwS
	SQTOGv5tzBfqg9JP/mL/66MQ0OMS6xRibiHhob/AQzgIqG1cTx65quoAuWP1RI+pigLfdKuVtqYnv
	Ap445wDm1YnQNLM/xM4o+Le6A98Aim3hB2jzY+Lzt31HjusUHsNIr56hOGJ0Wn1zI3stTDGCw1RnL
	Noiz3VAg9jB0wfaKlEwZp2oB9fhaiYXpcHkiHz/BLybchAukm4n6pJSR4kjPBz4W++jL1jEFr6g2i
	3GdCaMZQxsdwjfCRXxKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obRus-00HZM7-73; Thu, 22 Sep 2022 19:31:22 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obRug-00HZJI-G1
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 19:31:12 +0000
Received: by mail-qt1-x832.google.com with SMTP id g12so7071659qts.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 12:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=NWcgMuOu/DRb30hVDSf+gjGKztVe28VznYCH2jRwr2w=;
        b=Uv1U0RJbEpqFZrbA9uyr91kswnGSB3cjK6Aj9EXiOeZ7e0XWQub4bxwG+sbRw5QAA4
         44JMp1BuOrUDUJ0uP0C6KSA8VHC/IuXF6Kqv6lVLWrpR8Nw200fkrYzWK0LLM3GfbgbA
         NCqH1+i21BykwSS/x2OqgxCdNhFdsFfsXRuCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=NWcgMuOu/DRb30hVDSf+gjGKztVe28VznYCH2jRwr2w=;
        b=wRb94N7EYz4dM29+WeoC8oKWrrIZ1dYQN6MY47nllNGEL0WkHfp8BFEqbHoxwfWUXX
         e2idse9y/hkJ5h1t9C1gkPwdl54Zf7P+u3JO6krGX4gXgYFLxYuMST8ZDFqhGQI4bsMX
         ChMZw/9AeP+VnCN3Zwe8rhuXUORFHgPkMfnEm0UdjfK0RIywD/gOczwGOXurZG6HtpVI
         Nd9HGX4SGZj51Iy8reN1SS9SPv0A1KG77VgszQp0nwuSxzQvJBcZ7bBJPOMwOua7bP/j
         N/CeYrmrmc4oBhvJRBa56WiShIxkDdqGj3VyfK4aCEolqWo26FPTPDOPwIvSwk0PtZCt
         +OMQ==
X-Gm-Message-State: ACrzQf0njqWH1xIWpwE14NmsWopKvOkzgoHSJvSSSndk9UMbMxRQmdVi
	6TH9fOugnuYQ+CJZ7eC17WBqtA==
X-Google-Smtp-Source: AMsMyM5X3spJySOGhlhXn9TKeJ1vUC4PQaWa4xgYswhH4zjD3fT+v5idDUvkA6X33EHtGeHu/7U0ag==
X-Received: by 2002:ac8:5c0b:0:b0:35c:e066:998d with SMTP id i11-20020ac85c0b000000b0035ce066998dmr4195776qti.336.1663875067117;
        Thu, 22 Sep 2022 12:31:07 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id i12-20020a05620a404c00b006b8d1914504sm5393430qko.22.2022.09.22.12.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 12:31:06 -0700 (PDT)
Date: Thu, 22 Sep 2022 15:31:04 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Bo-Chen Chen <rex-bc.chen@mediatek.com>,
	linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
	Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Mattijs Korpershoek <mkorpershoek@baylibre.com>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v1 01/17] dt-bindings: clk: mediatek: Add MT8195 DPI
 clocks
Message-ID: <20220922193104.4qminv6adrajkhw2@meerkat.local>
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-1-4844816c9808@baylibre.com>
 <d01e4a03-1d6d-9616-45ca-1c927f2d8237@linaro.org>
 <CABnWg9uZ=FrumgUzyUoUiS6T51nZTEf5JZ-1KF0-Ra9Ood5ufA@mail.gmail.com>
 <6b24be8f-94d7-6973-6f35-18cb15fc8cd4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b24be8f-94d7-6973-6f35-18cb15fc8cd4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_123110_539863_2863C051 
X-CRM114-Status: UNSURE (   8.26  )
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

On Thu, Sep 22, 2022 at 02:51:00PM +0200, Krzysztof Kozlowski wrote:
> Thanks for explanation! Probably your patches are perfectly fine and
> should apply, although I must admit diffstat is often useful.

Krzysztof:

The patches should indeed apply without problems and there's a fix for the
missing diffstat already in place.

Best regards,
Konstantin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
