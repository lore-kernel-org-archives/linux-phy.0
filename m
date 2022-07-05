Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C05A6C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Qtt7wSGXUd1l6K0+uQf6D6/hJa+7he+1UDqSJf9K9E=; b=JPrL/YVx351BJr
	n74KXpcCTXOy/8J2h2TjeIuipBEpyMqj199AW0r8mHmTLFXjj7ZERBa/D+8+ap8IGGe2RoEO7Kvz0
	NuGVD07gH+lFFEfGDK1aKNliWoH7i0f5Qk7WnucueuPuiBEPVCRrGQSRczsFDZBBZq+GLeI8hEAMY
	yR/7ixlTGiN/W6cS6WoBymP/vHS5rhNgQLayQ0DLha8Qylap8HuTusKKxGNEs/Tvoxind//647xpe
	kk18GDfhRk9ogUojEa3/ALIRwRuTt5xjhb0lZWS4FXOT64zsQh4uGAfzUA30hG60j9Q08aVPZwFQT
	ZZv2qylgdmlZFBwb2/RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOb-00H3Xn-7B; Tue, 05 Jul 2022 10:03:05 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOY-00H3Vz-O7
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:03:03 +0000
Received: by mail-lj1-x231.google.com with SMTP id a39so13851909ljq.11
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=w9+SQsY/NLl9h6xMjjbnzFOp0g9U5sIW1EUYanyyw+c=;
        b=HxGx8j+pPyygvzH4xlqJHqV6m1QNJxV4cPrs2F+AGjML6Y/2hCEL0JqlTSxgBqw1uF
         ObIdy/JmJaNkNCR0ccJCZXrdwJr5hitpKZHHiabgYKkcfEWr+sFr83PBScyKmcJDNhXF
         LNuOPmpjJvgTkQ9JS0tBwA0RsodAOTXEvM1w9xEXHzjzZ0gXx/AkzN9HVYGm92vJmUBW
         0omqDIVJhHeR/O0jgt/X0qDJicb6IGh1H/dTXVw1MYSiwuprvc/8dd3l4KQl1uexv/xf
         0PKX9REU3os1TA811cdPExcyH/+9RhDzWFOCGVu+IkKoGWTsmtmhnSyDKZmN/C8EKyU7
         hJyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w9+SQsY/NLl9h6xMjjbnzFOp0g9U5sIW1EUYanyyw+c=;
        b=H3zFeQldGizfxcJx1mFAMxUOBrWWWz6G7eZi8/AHaV+uuNRdoCu0lxe62e8rH5qMnh
         E9sCrMelwFinGYaMDQ/8onZMfjMa99lxR989kYodwPy/FLyTJfnUW0ajqwic4PLrby2Z
         cMQFvGaWMGUhUiTDlP7Z7QGd8cSmck930YNUtPFjzGgV4JFGDWLxn+8LCh6DA8ytZpil
         2D5ZlYQVHPGkG+ZxIiI5GGqVvaoPMoqstGaMBTPg2+r3XgrhCq3mYQyOxVfKVtGBDhb3
         YzC9Yx5isMkrD6PD/5oKdmyMDgb25ySe+92akY+fGwJdEukiq0jXNI6bQNf+VoctmnpC
         0aCQ==
X-Gm-Message-State: AJIora/wkPtA5JxdiNXJm9ib7wG1ydTHzvbTNBbs0zZe6ZL8iYhfMYko
	0g28ItRbbi8gQKt+dpmSe3lforJEfPScDw==
X-Google-Smtp-Source: AGRyM1uwnvOcoQafM3SLYRmg5cf9HHvDJs0sgnpJ9Zzs28wWHyGPma2Rftkuh+3aPkH5nmdGjaunTA==
X-Received: by 2002:a2e:8958:0:b0:25a:852a:c302 with SMTP id b24-20020a2e8958000000b0025a852ac302mr19530866ljk.130.1657015381066;
        Tue, 05 Jul 2022 03:03:01 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id u16-20020ac258d0000000b0047f6f675ea1sm5610685lfo.161.2022.07.05.03.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:03:00 -0700 (PDT)
Message-ID: <7f418618-a40f-9ada-629a-6d6b08a29fd3@linaro.org>
Date: Tue, 5 Jul 2022 12:02:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 03/43] dt-bindings: phy: qcom,qmp: clean up descriptions
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-4-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_030302_819377_97000036 
X-CRM114-Status: UNSURE (   6.58  )
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

On 05/07/2022 11:41, Johan Hovold wrote:
> Clean up the descriptions somewhat by using uppercase "PHY" consistently
> and spelling out "clock".
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
