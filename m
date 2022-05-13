Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B59AC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 13 May 2022 12:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UA2VsKmcf3qX/R1kkXpjDB00qZmHKNMzgq7zCRw1UCE=; b=sSlCaIdBacRy32
	WIayW5YxrKvBY6KQPjq7BrsTCELzbOIX8NLx7cPDPIteBrE5yH2l88QHU/feSc3bAqYkeD/ThynN/
	/WS2gFk/EcwtM+yi7o5HU7AVaS1ZXUyv5/IYraDpO+s0xNCJyGprHXu4DG+58kMICrgJ/i694H38S
	muzTqJ+hQHQqXk7fB9D+jI5W8V75/1vqwxZJXA+L11aRWYakoD4z9yo5YAQwC95STQdtI9Igm6As2
	l3L8ZV7IyemaiSMJhWM9N5SWNOXUfGFpS3MbgKn/qJc0WOw/xtgMocYbgaVFTCOAonnuMNJS5sBhI
	cAZfEeVXbz8z3RwMhDGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npUHF-00Fyrb-U0; Fri, 13 May 2022 12:20:13 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npUHC-00Fypi-Lv
 for linux-phy@lists.infradead.org; Fri, 13 May 2022 12:20:12 +0000
Received: by mail-ej1-x629.google.com with SMTP id kq17so15931059ejb.4
 for <linux-phy@lists.infradead.org>; Fri, 13 May 2022 05:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=pFSJMVLvr3/zffWl+GK0lBhxfYPYYpTt+eChKG6Zku0=;
 b=w5GCpMOIG+eMQkvHAEyYXG6zXVO93bTa/IKwxKINmyJT94SY/TCo5xhLQbhllGxpcM
 0vvXlLE3HzHOeagb/z7scfVvhETIxN16zD6am+E9UxOwg8b+rQoRXqbb+RAYDFzIyi/h
 MpmFTLWqWhA0w/EZJ5bXNQptF40QC6P/NzZ7sPg09u9s99xPR4bA3W4gQ7RMkG47Eyfw
 hPLi6XYnV44bBZvwLv1YRtT1Vr5qUxkxcBI6SZUQBbQ3jEDZJ6F6vqQGjBtkep6i+Ozs
 D/FygOrIbGqTsFkJLBzgCcbR6gd7t89zlOiLLZYXt/zqC6/TFwulhS1tFtF+6bwf0mNU
 R2gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=pFSJMVLvr3/zffWl+GK0lBhxfYPYYpTt+eChKG6Zku0=;
 b=mbJtMBfbBHfMjiOnBwkwNTCu/EVHh6BvIEDddBPEPEEWW6Zk0MczudBWS9KDkOTZnl
 LfIqhY+VJluYgfeIj+t3XNVmIM4ZcslIJhEVvVqifsCGDJFda4baq6uMyRrgV5QwE5ZC
 ohVRmC39h0Dt3gUsAND42yPupw7oq1KZcB+72Gm9F/QA+HK0Lmyz/2S4c3glcu5dP3NU
 vRdwncWKH27gabn6SYwUB/kAEY6TfB7PF/ePWVZlqzahlIjc+Z4otXNRBakbYvw/PFNL
 6v22rKYOk0Rl/00ZB5tf1oSR3DVg465F+d9ABpty+OJgET+1KrHZRrYq285xom6qJhK0
 jO5g==
X-Gm-Message-State: AOAM531IO/U1RQCM1heKpKsp1U1wbtRAv5aQ67G+YDZsqXrm9nBbN0Qf
 o4P8awu7m7FCccw70PK1CCVsgg==
X-Google-Smtp-Source: ABdhPJz0H7FbroNYXpYWXVRyzNzhzAbYpnfXABT7xGUonv5DG8TcItHiR7y1/5qSbhhFgEsINRHc6Q==
X-Received: by 2002:a17:907:c0d:b0:6f3:ed89:d9c with SMTP id
 ga13-20020a1709070c0d00b006f3ed890d9cmr4022920ejc.502.1652444406966; 
 Fri, 13 May 2022 05:20:06 -0700 (PDT)
Received: from [192.168.0.172] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 9-20020a170906028900b006f3ef214e54sm712712ejf.186.2022.05.13.05.20.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 May 2022 05:20:06 -0700 (PDT)
Message-ID: <75d18fec-44fe-6bc6-5ff2-af5d87b43787@linaro.org>
Date: Fri, 13 May 2022 14:20:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [v4 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng
 <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
 <1652282793-5580-2-git-send-email-quic_kriskura@quicinc.com>
 <d296720d-ccbe-27f0-8ba1-9653af25dd52@linaro.org>
 <3abbb26f-9396-d024-67f6-f24f7db3408d@quicinc.com>
 <5f7dfcba-7e65-4f54-8699-e44ce11e216e@linaro.org>
In-Reply-To: <5f7dfcba-7e65-4f54-8699-e44ce11e216e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_052010_762603_AFA161B3 
X-CRM114-Status: GOOD (  11.79  )
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

On 13/05/2022 12:32, Krzysztof Kozlowski wrote:
>>
>> Would it be possible to add bps (basis point) to the list of standard 
>> units if it makes sense to use it ?
> 
> There is already 'percent' so 'bp' could be as well, makes sense to me.
> I can send a patch for it and we'll see what Rob says.


Merged:
https://github.com/devicetree-org/dt-schema/pull/73


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
