Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AEF0C4332F
	for <linux-phy@archiver.kernel.org>; Sun, 16 Oct 2022 15:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIvrzFVhJPPJq6ZEfam+TYPAK5GD/QXClbHrGy3F3qQ=; b=0hKgIm6sw/pJxA
	H/dnaEk4G+kPMut8giepiXBYiokk/pyG/Ra2guKwnNdxOw3EeFowRBymfdcTSJQbzciqCrfusB1Y6
	daM/RQWXXQH+h6WhTgXbntRjePfoU0l1uwJfaUaOrro6ktpWWXEjbWtJ8XxUbtcwkmh6+HDWK5wCJ
	8yQ6tFhxMnaFVxHd8uRdnkQagXZL9Z1ZRhilPFDIfC9mw86OWSfOd1EiLKbDZ/ewreAgO13WJ99yU
	hxPXTQIecXJkjYAn5EMHmNwpfGWeqrecSY1TypuCWLaG9e28c9m5zKaYg/GitWzzanZgN412O+CCQ
	JwunlLJ4KXqP8cSq7Idg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok5Bk-001tNn-Hp; Sun, 16 Oct 2022 15:04:28 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok5Bh-001tMj-W1
	for linux-phy@lists.infradead.org; Sun, 16 Oct 2022 15:04:27 +0000
Received: by mail-qk1-x72b.google.com with SMTP id t25so5348224qkm.2
        for <linux-phy@lists.infradead.org>; Sun, 16 Oct 2022 08:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fi70MGjSm9HkG/D1Y3M3ujYZ+UrZWCkBwt/32HJ7IXY=;
        b=QIhhwBKZFq4fKIN1iEVInLMJ2WyXHfa1dMR39rqUuSExvwqRyXg6qbnY7aFnIPR7Ov
         8jVpnfIuIANcwg9coiHCuhBqVqQiblvFxzLPCwAWdFsxqLTePRRvZ6FKuQeWjOCyKwBh
         4D0KNFpfjLVL4NHm93Se2zeV6zA1IYHTEG9fXCEfPGB4erUpFrQAtjIowE5/5cKMF1aa
         G74FrwI+fFs1BLIyOJPXyJKyHchohsRTmQ7IAIVEI9v760+2I4uKNt2GZXyKieGWyH19
         b/DdCjo42yR+hDBAE5TS3e49CJZtOvQDdstE5ry2716Wo7LHt+Dpb8E7uagSGkw6QK04
         itUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fi70MGjSm9HkG/D1Y3M3ujYZ+UrZWCkBwt/32HJ7IXY=;
        b=7mjzHRi0iIGw2DV9SY7Oebg0v02i4oEEVTycxToo/WcU8sACxZ49B573MAlo4tf1el
         BfLF4a1CEK3XYkDSOTFDa5iBFrRIKYmFVtS2G0d/LkzkFuTWzVSbkBIK+R4CQgTcJVnE
         qTuTGmlk4iJBIw0xhOpcBIb8Y7kFHxzKkucYD8cVU2zNuu75GoalhxZ4iGqVR+8Y0Cbv
         g4QzNb9+F0gVUg5OTu2Q0fS9rJ2XRFgk3pXnyk4sIT3EB7nVh6OLYU17SJ39eHuSoKYR
         uQ+CNMvm7S1rpPXSLIf8EsHgUPCu95J1ih5fA19206IHYCQBNbJ/gkfBsV+3L/q4sN+4
         sztw==
X-Gm-Message-State: ACrzQf1uzJDAI+zlnn3BExHkHf4LcuLhE9tqYqdfWkTgplInIepaeOVw
	EAGZ4oP8rs9YUjTTP7Jxb8rKhA==
X-Google-Smtp-Source: AMsMyM4b3Dd/FBVDNX+cMLBWiboLSdQHY41EG1+QT6MgFHT5ygsaVddMCxlnAswOrCiev1fRqn8FBA==
X-Received: by 2002:a05:620a:bd4:b0:6cf:468e:e092 with SMTP id s20-20020a05620a0bd400b006cf468ee092mr4781145qki.583.1665932662312;
        Sun, 16 Oct 2022 08:04:22 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9b13:d679:7b5b:6921? ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id e14-20020ac8670e000000b0039a275607c3sm5908496qtp.55.2022.10.16.08.04.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Oct 2022 08:04:21 -0700 (PDT)
Message-ID: <73c4c8b3-69ef-9679-84b9-1782162bf097@linaro.org>
Date: Sun, 16 Oct 2022 11:04:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j784s4 compatible
 string
Content-Language: en-US
To: Matt Ranostay <mranostay@ti.com>, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221015201123.195477-1-mranostay@ti.com>
 <20221015201123.195477-2-mranostay@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221015201123.195477-2-mranostay@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_080426_056749_0619B85E 
X-CRM114-Status: UNSURE (   5.70  )
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

On 15/10/2022 16:11, Matt Ranostay wrote:
> Add ti,j784s4-wiz-10g compatible string to binding documentation.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
