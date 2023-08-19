Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4A3EE49AC
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=su7ad/MD8Y+7jdqt0/X8rJkc0tBlmH84Kd3eiXCywoE=; b=XWo+QPCTPg0KQc
	Xu/aZyeIc4E+JUtmGNshUw4w49Ge5EUj4NwkCkT35IqxGHMa+O6ieWkk2djT7vs5lOz3U0VWlgnsP
	UjnluJzzqKRICYOx083ga4TcLXXIwn8NFxBedk/7sFP2PPeuBK0BW4ptfNvCkrYZgEc5Fey2DfloF
	t+OuSnqfvryl+5kfXIO1k/n6ZcNo+iwvDCK1XZUBD90HoT8Y/kiScxNizM4tECJi5FlQf13UNdDF0
	st71M8Fsldo+/OLOrKd+2lm3Rg0sfUPcdbYHHNVcGQtKQ/YkM9K0fNwZ1r1STfMjaOvGV4SyiXhVI
	kfKaQ7jWKVWS2eBCARTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXM06-00Aw0r-0Y;
	Sat, 19 Aug 2023 13:28:22 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXM01-00Aw0C-36
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 13:28:20 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51bece5d935so2264158a12.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 06:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692451695; x=1693056495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g2/eTmeGLIHBF7FLb+vCfZlq5lr8O3DMbn1/hvnwEr0=;
        b=IPP4vVumV3eDszkG6RRimK7qs2DHKWHs0SYQ/Txw9bpUM69YewaXB+K+ON0WZhlKHi
         /QaRSWaQPo/Q9BFzBsxvX1O4hzyKIAkvkQVMUn9nJcb0gZ3ZNlQDMi+xvl6y/xMvJye1
         s4Qm1dnccDe35absNagrltggKFvTDuoBLzHcNz04CMDNGPTxJZmq3utzsFBabOzEO2Qy
         q8A2QYMzmfPmsDwWZAEBMe023eV4jlOyinzFkYH7+0cCaCBjhOPe0vNnKYFbE9/y3CZ3
         eKX19dgYEQSJ/CNa0M/WJgwUN1etceK7lJme8LgKn/jmMVU012xyyCcgZNlYM1yT7lyV
         LARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692451695; x=1693056495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2/eTmeGLIHBF7FLb+vCfZlq5lr8O3DMbn1/hvnwEr0=;
        b=M/OczDO7TXLE0NK//BPmI1ko/X0DIZXn9v9CnnRtHky+NqkpGA7EMk+uzfrS95e6Bp
         cGEU7YYzmGdLytm/rFZfiloc8rYqGyCwvFUM6/OogPWUzWhti8v07DnGty5KIRoapkP2
         xUKzHbGYMBpm1WOrxR+yQ+GKLxosZOy223L0oeWTs+VMV1hMJW1bg51eV2Mriwxg/na+
         LPfyOutRHZ/OwpjlgFKt25Q0JVVaIsdzaSfYY1RqHzAWJ29t8fBTdxRHvSCxM7seMO6w
         a2ar6zDYMm2MrsaxiofJKJOB1r/Jt3Es9yY+yhL3wGe/7vSZZfeHr5eDVH/WQUkNxMl4
         qbBA==
X-Gm-Message-State: AOJu0Yy3pXcS6JUXvyyi5UdSgrMJEiae9dAZ20kUejvrJbcBckCHWPsX
	TDb+0lylHiqdntmiGkc7Cmsnhg==
X-Google-Smtp-Source: AGHT+IEY+//SQa8zNcZTsTQw8ncQ3H3DK6JEfU+cLSw3MgnGMw7CEFSFaX3ge9tNUR78sO6+c880Uw==
X-Received: by 2002:a17:906:3287:b0:991:fef4:bb9 with SMTP id 7-20020a170906328700b00991fef40bb9mr1393127ejw.58.1692451695295;
        Sat, 19 Aug 2023 06:28:15 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id sd20-20020a170906ce3400b0096f6a131b9fsm2710140ejb.23.2023.08.19.06.28.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 06:28:14 -0700 (PDT)
Message-ID: <18f41262-97fc-9346-7d77-32d914cf3b24@linaro.org>
Date: Sat, 19 Aug 2023 15:28:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v8 3/7] dt-bindings: display: bridge: Add Cadence MHDP850
Content-Language: en-US
To: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
 jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
 daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 vkoul@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com,
 alexander.stein@ew.tq-group.com, sam@ravnborg.org
References: <20230808083243.3113192-1-Sandor.yu@nxp.com>
 <20230808083243.3113192-4-Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808083243.3113192-4-Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_062818_015578_56927D1C 
X-CRM114-Status: UNSURE (   8.45  )
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

On 08/08/2023 10:32, Sandor Yu wrote:
> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp8501.yaml         | 104 ++++++++++++++++++
>  1 file changed, 104 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
