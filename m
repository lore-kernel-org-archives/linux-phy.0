Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4F6CC54EBE
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jan 2023 12:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWFvrXOObU9mbth/epviKkh1B4m6cy2DxbhCN3+1b0k=; b=a10ts7M6+6LmPP
	wBzBTf4ZZRa0ywHxd6ly+PQ230wfpL5zOA52ui4RZCVFESybGkP+P+Ro/C0DvI65JI6UkFdScr8W4
	UevXYraqOGk+nUi3ahYA8asKhd/DHlS6Lr4P6DHkapghxycBUViFpCFCCJk9jDYFEICtEOHIOqlKo
	hIoJKMFz9J60gvpF2n3HX6R/yPdsEG+3NCxfOBwd6Oo4ZRsMJlIteRFv7xGki2end9YpyiVTrYvBT
	bMdxc38Cx4QfmsKvr2CL5IAnVaVFmBtVIanPE1y4y8m4LxTJ0lD+P36D48CkiloyXQHVDdsqym+cQ
	Vu2+JWT0SRhoLD+ar02g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEr7s-001C2E-04; Mon, 09 Jan 2023 12:19:40 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEr7o-001C0c-L4
	for linux-phy@lists.infradead.org; Mon, 09 Jan 2023 12:19:37 +0000
Received: by mail-wm1-x32c.google.com with SMTP id o15so6108836wmr.4
        for <linux-phy@lists.infradead.org>; Mon, 09 Jan 2023 04:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jitCQv0s/QU9TR/kvFCoOvVqsRo9aYoQJwCNC9DQgx0=;
        b=NrLnlZN5pilVg5pJ9hGkyj6hqNK1xfAudXGtGmFZ4juJPji17dzQOKB6+Hisohwmu4
         YDaL0jl1IKwv+VzdDMeGbGaqZrz2GayM7qxjVci1RqKixqbo55ipujxgqg7uHy8bEWTy
         gRP1MyEnDY4WngXQnWGrjvaQSnVEQAyOVlT79aZg67hQwUe/0N8sfXeAaARGQVev6Xxz
         C+Eauq3URw/RSGw+u3BXoerQUjxwweQZKwNO2hsFp50YNCFvRok3YOtITwbZQXZdMfdh
         LRiSgKYxvETeu8m/bQXDT33vzv0Z3nVyiVCwlFIkz34hVkipn/wtxDtk2g9Xok9slX3q
         7OlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jitCQv0s/QU9TR/kvFCoOvVqsRo9aYoQJwCNC9DQgx0=;
        b=3FfC+60ZdlSkrinu2zbXdTZUNF0oSNDINW/D2J9h9C3bP4TDOpL5TovEBxu26+2NQS
         2lojCDezOwfTeKsI6W0nuIjzNDAj6adKeMxAvW7tCa71CXUYXcmBxPPYD7iWTkrMidVD
         ERblSatGWE3uwuBkAUQPAU8YtKsZmp2puAEdzlO/O+pmyHDhromYHnfrWWDS863Qyo1n
         dfmdIdHZAt4ytSspQXAdjzpKqxsBxSrhIZms8pCHgUJMVksnzBXlkOLq757j63v23Qha
         ChtugslX3iOe4N5UUxQ5F30d3QqsKZP8xTL0cW9IlvuhlPOwBBUhKT2dNzxVHFfr5u6T
         DZZQ==
X-Gm-Message-State: AFqh2kqe4S2MXtr0GCj7ii0yv02xQwcYp8eiRrIJosHK2yZpME4sfGkk
	sueMKXHqmVF4pOJK3BefiRRhYg==
X-Google-Smtp-Source: AMrXdXsAyJ4lT+wvy3BcH9rELIN1iiZ36lxt2Jac4mrXesJxSQNBHvE03+2SPcfT+LWH9MtDPHmhVg==
X-Received: by 2002:a05:600c:4854:b0:3d3:5a4a:90ff with SMTP id j20-20020a05600c485400b003d35a4a90ffmr48472400wmo.23.1673266775279;
        Mon, 09 Jan 2023 04:19:35 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x14-20020a1c7c0e000000b003d9f15efcd5sm2493331wmc.6.2023.01.09.04.19.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 04:19:34 -0800 (PST)
Message-ID: <0b32b198-09cc-803f-9ce4-8a516e784849@linaro.org>
Date: Mon, 9 Jan 2023 13:19:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v6 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for
 SM6125
Content-Language: en-US
To: Lux Aliaga <they@mint.lgbt>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
 keescook@chromium.org, tony.luck@intel.com, gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org,
 Dhruva Gole <d-gole@ti.com>
References: <20230108195336.388349-1-they@mint.lgbt>
 <20230108195336.388349-3-they@mint.lgbt>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230108195336.388349-3-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_041936_750150_53436409 
X-CRM114-Status: UNSURE (   5.95  )
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

On 08/01/2023 20:53, Lux Aliaga wrote:
> Document the QMP UFS PHY compatible for SM6125.
> 
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> Reviewed-by: Martin Botka <martin.botka@somainline.org>
> Acked-by: Dhruva Gole <d-gole@ti.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
