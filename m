Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527CCC433FE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 09:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXkGZ3q8YydSq4aGIhSXdnwMO5nDwdJSRqmfFhQQPME=; b=ZEM+5MTEPsuehA
	SWfcteW8djuF8U0FLRqZoqKgUkHkcM908BeZkj2XkRc3KE1SfT5xbPYxM0ftFVgglT9kSCgvTJ3Ug
	wVsBvs+BpPfsqFMUNDQHyB6x/Dvx6FRZOrS6cy5oAwkcuVHHD52Uyrwti7oA5QeqM0OF2mVJJi+1K
	VzU7jFp2Vq19xxfCN7D7ff9HWech+uMju6R98F1tKRTdBoUlJDzX10okhwQj7lKeYf8oASuYi/uba
	P5wVlkWhMEmP1a+HOzZz3YEFBBBcURXUh6fBPJwgsuCD9DWxRlZMEQAz1MCvYcjwIqVp8fA+A2JK0
	vh+2g+sUJy9KOMy/FXgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOYO-00AuAD-5H; Thu, 07 Apr 2022 09:35:48 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOEY-00AkrY-Cq
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 09:15:20 +0000
Received: by mail-ej1-x62a.google.com with SMTP id bq8so9469790ejb.10
 for <linux-phy@lists.infradead.org>; Thu, 07 Apr 2022 02:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=unQfTgqeQZWyCG4CKIwW81rtnRzgcWAQJNa676fN02I=;
 b=LUII6HZ52R2BXGsCinwoXA7ZKD8j3+HdDEHYyZpvvKf/cBjymjr0XA+PSMIiSXwDB6
 +3STtlNbNTEM7dhW/DwEVx9m30IM5tDu0Qm0uKkIVO3EdnHmyWxxI25Gwz5LtYMYXrne
 Wr2v5W+DwP+Cs3qjDREIp+lNi1BLAOCYHfQ0gWD8qq1e40/YT9T0yhN+GEsAPsS6pvov
 7ep8L30sxWe1ySj3kyaihN9UdfM3JBtgFYJ1u4fQxXtV52f6+knvuy9pAgUMNimt5qMd
 fvhYjVYErWg/O6qn6X6eh+VhP9K4cRiVY9ZHPg4RaP6zEhv9ow4aGxm/C74s0bF9glON
 IIkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=unQfTgqeQZWyCG4CKIwW81rtnRzgcWAQJNa676fN02I=;
 b=iFWkhvhPNqF0QzQ5mcvEIRNw5qUGqhyGtaOmlxAKEzvTDFV09Rs2sbGOf8PKf2TLtC
 zGrsDAoNNxuuMOH7fpCWV70i8vBwjmjyjR9ISDBVKZVqcSCwLyprGZIOvfEftNUA5Wav
 pWr0A6ws9YZosyoyCpbk/EefmSR0Slp2X/AkEKglcJZx9RArz0+yKs59nfK+poHT7/1C
 Vxi/Q2JAQWAa6s37OZJb41/whBFMBOk8JUU3qRl6z+Ey72LAOpl2VmlshkG144a5MJgZ
 1wNzKEVJIn7AHDfzYrKiS9UYNB1K6+EGJVyhz1OqWGiwdnmzxhIX7akZGA8Kr1u34BTh
 cQ4g==
X-Gm-Message-State: AOAM532h/tLokL92Zx7ri7B6Xgu2rz/mbtXI1QJh6+Nj2oaIMjiQk8Gp
 WjvyGKkACuqeerTpqYx/1lvmtg==
X-Google-Smtp-Source: ABdhPJzX7Qq8MseVUYhFiZ5y/Q8CYtiMgJnoYcI3cdxQ15X5vk2KJaRQOYRMPmRopxQLQi34LCtLPA==
X-Received: by 2002:a17:907:1b07:b0:6e4:b202:db8f with SMTP id
 mp7-20020a1709071b0700b006e4b202db8fmr12350681ejc.76.1649322914960; 
 Thu, 07 Apr 2022 02:15:14 -0700 (PDT)
Received: from [192.168.0.185] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 j8-20020aa7c0c8000000b0041934547989sm9085028edp.55.2022.04.07.02.15.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Apr 2022 02:15:14 -0700 (PDT)
Message-ID: <84fbf3d8-7066-6c4d-0980-5ca803605a0d@linaro.org>
Date: Thu, 7 Apr 2022 11:15:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] phy: samsung: fix missing of_node_put()
Content-Language: en-US
To: cgel.zte@gmail.com, kishon@ti.com, vkoul@kernel.org
Cc: alim.akhtar@samsung.com, lv.ruyi@zte.com.cn,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Zeal Robot <zealci@zte.com.cn>
References: <20220407085958.2491783-1-lv.ruyi@zte.com.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220407085958.2491783-1-lv.ruyi@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021518_459905_159924BC 
X-CRM114-Status: UNSURE (   6.95  )
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

On 07/04/2022 10:59, cgel.zte@gmail.com wrote:
> From: Lv Ruyi <lv.ruyi@zte.com.cn>
> 
> of_parse_phandle returns node pointer with refcount incremented,
> use of_node_put() on it when done.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Lv Ruyi <lv.ruyi@zte.com.cn>

Ah, now I found, that this was already fixed:
https://lore.kernel.org/all/3eed8d0c-e009-2daa-ba66-899fe8f48a90@canonical.com/


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
