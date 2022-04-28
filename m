Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 914AFC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Apr 2022 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/Jo4oSPuoTI1h4fgvwaNLETNPkVmme7i3MjQxchitE=; b=lcaMA+C6W/l6Iu
	rrpKbDmvjFWeYRKzQ0wd9b4NkyHgk4QUbk+qiCwcPgTHbT8YHp/BwUDm2EqWeLP1w4HuDhSbICg1Z
	5qtfRjHx5a29QprevxCDCTIJ+OE2K19TWSnerAv7bILoMIYnAuBkJAo6+82ri7HY2/elFFMmwcyya
	TQXw/l7youApZ2uwt7OYTsKhWGgTApu1VH7c9xb73tNP2AKSu+UcM9gXklS1Xn5VqQz7gfC1eTr20
	KoKvsbZlG9qWI7NjMyCMxK644MtsUqHNtnFmoPjq5UyVcU2v/T/6U23TFPkt3KB4aaJk4Q582y+ze
	wPznSJnSR7Fu2+RUeVdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njya4-005BvV-R2; Thu, 28 Apr 2022 07:28:52 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njya2-005Bsz-7s
 for linux-phy@lists.infradead.org; Thu, 28 Apr 2022 07:28:51 +0000
Received: by mail-ed1-x530.google.com with SMTP id e23so4468314eda.11
 for <linux-phy@lists.infradead.org>; Thu, 28 Apr 2022 00:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=LzAss+yWW53YzSONceMNkK0Q7IigElaU4OnCLX+9NDc=;
 b=ExKfTnzhRCQc2W2mn0A5I7yP94j59JDTD5atexxyP/btGR4lJkhtcZ6J1YNX0GmLNg
 yaIkG852LKYA29T1UX5tH/wCQUohRdhTwcKcfPV/+ImCbeHfdyn/5rSRSVEYVvlFShuc
 gCBcdX9u5mD/n/MWVNG/AQvGnz6DiqZ8GHj/gmmIBk/ZP192kCIx+lBjCffpxJ2KtGzA
 4lQmZnOEzinIA6eCka8PA3xR8HUDDhn3i5paIvgWmWHy1GqG3yuOUT6InP4ElmxTzja9
 Z5Ij1BTqMcIg499GREScTqLwJnzkLwwrwYxeRb2q964aTeFLtDRj1hAUZsTSeUrn+ZqD
 MApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=LzAss+yWW53YzSONceMNkK0Q7IigElaU4OnCLX+9NDc=;
 b=FEqEhgP3fNlDHOmq2kBtiBAATWPM0C4LZ0K3cCBGLDZ7HSQVVGRBGbaO12BQk8Y3DH
 a8IlUOk+yaZ7xcVfh0amL8RhQl1pO3vEnXxQRMeDrAVth8HBgzlYJCRNFFifmazX3v7i
 j30EZk9iAGQBVdVokGvxq2Q0YBnhGdnRM62VTmEnPIjyRbwHIf9hccP7XscddcYsHSNU
 sNZc9wU6u7Lm9We01ZnCGDKFcIk0Hv5DIn06ucZrRiUAcBZdsYEYk8iUC+BgPAevpSLt
 T9D7iENg07NYkEMoHd/PawqkzZ07m1BosSHbFNftq6IW6Hqoy3e5uoAW41XiQETWTfkv
 dQWg==
X-Gm-Message-State: AOAM533RpwIERtVn0DNYO72bwmqs+2LA+Lg1UHAFd9JFdnIzBnsrHjOu
 tOTXPsa6+++JiBK3KDfZQ0jAmA==
X-Google-Smtp-Source: ABdhPJyK1jHpX+NE6cA3JKcnEjDunX0hlgWftKz57IHJeSxi6G2OWUgrhcIRVO9fBzAuaKhXf2RzjA==
X-Received: by 2002:a05:6402:43c7:b0:425:f1cd:5f13 with SMTP id
 p7-20020a05640243c700b00425f1cd5f13mr700720edc.208.1651130927826; 
 Thu, 28 Apr 2022 00:28:47 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 g12-20020a170906c18c00b006f3b99d29e0sm3573545ejz.223.2022.04.28.00.28.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Apr 2022 00:28:47 -0700 (PDT)
Message-ID: <9c93c210-dab5-8c2a-81fb-2e52e6a4d38c@linaro.org>
Date: Thu, 28 Apr 2022 09:28:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Aw: Re: [RFC/RFT v2 05/11] dt-bindings: pci: add bifurcation
 option to Rockchip DesignWare binding
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-6-linux@fw-web.de>
 <ea6ccec6-81a3-b22d-46db-c31a9f1e85f3@linaro.org>
 <trinity-fcca248f-cb76-474a-8227-5b7188140bdf-1651130723782@3c-app-gmx-bs20>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-fcca248f-cb76-474a-8227-5b7188140bdf-1651130723782@3c-app-gmx-bs20>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_002850_328301_DC4A3551 
X-CRM114-Status: UNSURE (   6.03  )
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

On 28/04/2022 09:25, Frank Wunderlich wrote:
> 
> i guess same here, description+type needed, but how to describe an array of int in yaml? do you know any examples?

https://elixir.bootlin.com/linux/v5.17-rc4/source/Documentation/devicetree/bindings/arm/l2c2x0.yaml#L74
https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml#L101

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
