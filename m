Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 079ADC43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBru26fsjZqERHmLMnuk9s4SznV7i2rwGPRXgMY0U7c=; b=yhxDgpMf/r8pia
	zaRjSB7QWqK9ikk7F6an43acQYXv2v8z3eOe5wOXu7Nlpw9ITRTavU0QMQyiH6daXOn75dXghSmQD
	3dOxW7HuPr8pAArdrKnCYxvvXsosdoe1uu6D6F7LnLS1cNNAxxi/0p9mKrg7aNuOkZMJsjFKE8oIn
	rtfy8tRRToPXM9oCRJAfUH4BsqDmYNDIj5kXI3Ya60Y6uqZzh5lvMZGm+asxLRcVhiV+loBeafS7f
	g1oox7XGxJHE6xPzp23f9H0xNNFJjNdhiZL/Qih5HG2tjLxoPbVFSLGB8eeXvOk0y8Fdn72nPy3bI
	WKDLwBWeXMTD2xHpxKhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv0O-00Ckpi-FJ; Thu, 14 Jul 2022 09:19:32 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv0M-00Ckmr-Ax
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:19:31 +0000
Received: by mail-lf1-x133.google.com with SMTP id d12so1761833lfq.12
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7QxUW5JMlP7swDnKQEo+sHfu77Q/PjxZ/uJIQjymj+A=;
        b=GJo55pzcoqaMBfitY8O5/LH4SNF1gDtDM0JsAgkTFil8+G1dr4nroUct1DckujY4yy
         eyUjFhJMEIAmgwP/xY6CdRWAEe2s+viuOvp8wbP9GyxBdVmlQuSPvRL/M88csbvsEJm7
         p87qmSS/or/EU4On0QdCniSvQFoNJyuZxvgNTP1PQDlStyar5yeAycYYYx27T0WO70VD
         440Qv6PB2ZEWkiQMjOZDPN1K338Z18TxLKWGDdq8CK0K5H6A9zHZd7cB/tj0emVFCLuf
         I+dF2Hqbi61GSTgXCB/Ka/eKgGUGg2kgUXm1nUcAKSF/HF61aTV2jjuFNSa/o7myobwd
         g+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7QxUW5JMlP7swDnKQEo+sHfu77Q/PjxZ/uJIQjymj+A=;
        b=Vpe3H86wWSrAkakAgcPDYtlYHVjyPEiY0yOLIkNUohP63whozc+UVwIx7dVLU7wQwh
         w3uC67Ebco5u4FLHpS7faHdRKIP+v6IGrRSvTGXgFXaxEzi8Yd2pRliZ9N0p4RmvI/Yz
         7iylJ5PCzpoNmnqKk/LaaX8ZbkDtHj/AqDmBp/H1AfvA1gtefRiqYB3GrgJCLwYlaKXb
         +UuKtID9Yf9Ve9b7vBDPEcW6bR0uKGd4K6Gw59E0Wb74IUualskFmLqZg696hdfTRVID
         P8TwSrpqEQrIbSZdyyNOJnS86i47Zr4CsOSqJmTSniec2UlFXQaNlDtf5/LCC35begGL
         rNcg==
X-Gm-Message-State: AJIora9kqN/0Pgn9pZp3k43E47ScsgPe2Sz1T7zHM12JrzRRmiBTiZjy
	z2pwOsa1FyXn4TRlEE4FZftS1A==
X-Google-Smtp-Source: AGRyM1uqSRcNrXIWIdcfwf9tIvKqf3frD5YHCR/8Kn7uL8tqp0xj+ZmXyCUNNLyjPIxc9dcE9oXkdQ==
X-Received: by 2002:a05:6512:2610:b0:47f:74dc:3205 with SMTP id bt16-20020a056512261000b0047f74dc3205mr4404989lfb.429.1657790368758;
        Thu, 14 Jul 2022 02:19:28 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id l23-20020a2e5717000000b0025d519d0609sm183071ljb.44.2022.07.14.02.19.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:19:28 -0700 (PDT)
Message-ID: <0d626c44-001a-dd1a-4255-966a3f53f79e@linaro.org>
Date: Thu, 14 Jul 2022 11:19:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 15/30] dt-bindings: phy: add QMP UFS PHY schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-16-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_021930_402214_D5ADC523 
X-CRM114-Status: UNSURE (   7.15  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> The QMP PHY DT schema is getting unwieldy. Break out the UFS PHY
> binding in a separate file.
> 
> Add an example node based on a cleaned up version of sc8280xp.dtsi.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
