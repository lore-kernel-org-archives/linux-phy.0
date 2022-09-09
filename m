Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59831C6FA86
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qPakz8wmkvu3bCHjDjtn6mqrliPgZlOnOp/lKborwc=; b=ZsG3IrylwAAhic
	qK52baQGlIAWkKp6W34t5QW7kLkUHC3lnSsZokCXWbXMLfSwWn+BDQRW8xCBCXdV6sGnl9qxqS+T0
	DQ2WVQm8w/S/kjCnJVzbigrJ0TeAlAIXiDNZgNY+WkBa4OjG+5Rc5s65Ziw0amInB/rJ7gW7eL+8R
	0oz95w5O94Dc+/IlOIGSNt5Fuc/d/aWE2xD0lVJPPSTk105KmTF3i0AsqWtNaDPWUWDEimGttoENg
	1Z0djq11R+01XHkgigfXx+0JBjkSPFHaXsxs8h/7mbe6EHXyYWzyXX1fgX0BNTdksZthAsVoZdYw5
	ZBr4JPrJKP3L//bIki1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe6w-00GL1b-Qn; Fri, 09 Sep 2022 13:31:58 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe6u-00GKyg-Fg
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:31:57 +0000
Received: by mail-lf1-x134.google.com with SMTP id w8so2667637lft.12
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=cZxkflV/q5ieg6QIGvNNw96tN+Wgvq8rOl0y2IRENRo=;
        b=znzz2/7abQQkt4vAdjs6bJVDpUSlbqZ895K4XDM99ipILFZSxTJLF28IwoJXozPkIG
         3yBZasPtIRtEprKfyIvVdy+AhmGsczPzS4VVTBL2fmkGq0O33Yj2j5CqUihNE72Gz98M
         mc+RgWomNe37JqmX+BWIVdld8Z9bQLaB12op2V3FC0XKBk7sX4rq1Vxpu1vsHkhmTC61
         IUoTPvaq2tvgCJrbvlUD3QQbGCDsvHYTxRTmskb3WLz06+YkVG+/5HVMq1kuIg80aiYr
         07uVdrtybjEqwFmx2yji+JTosp4zqIqY7KeEZtZecIsVWAPrUuAC9ZwpcckRE5VoAAsz
         4gQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=cZxkflV/q5ieg6QIGvNNw96tN+Wgvq8rOl0y2IRENRo=;
        b=hcyRqdmO4BFBEIJMZXrJ476wH27Fc2UTroR04LwEHpJkjnf/PR07iosw4aI3yE3FlQ
         G7jvECj8t+6grcjoSqJlwuElElyhbxZX1AsiI1P+UAuxPuFJYFgHvo1q1nxENFkj48+d
         eivQy37q/IbXkZgafHLmmGmHkGXe455KxVK5ohAdFiDhzUCPZFbA2JzgVc4xZX5vx7n0
         c3OpJnpfT7ac7SGR9TtjCfPMLzHVDUZeXChZ/pN8EHBdpVxaA31cuIoTzyosk4PyRZ5Y
         xBi0/3QqHwinbkbdnQf8ik28ikVeRBq5LPGPckk/MMd2gDnMdsrnpcKTL3d3CI+8JTcE
         opOQ==
X-Gm-Message-State: ACgBeo20GsVLWyVfFMDZPDftPDQK5scLeLn7q58w0bBNBDMl3HV9MRLy
	efIM1IiTgTU3E0uckNV3iXNEXQ==
X-Google-Smtp-Source: AA6agR6SrrVszTgecSUF4mraXRXnzc9XOymrHwu9PdfD+Q5Lv2UdQT9V7Mddk5ArGOetg25usOQyRQ==
X-Received: by 2002:a05:6512:e98:b0:492:cf3c:8860 with SMTP id bi24-20020a0565120e9800b00492cf3c8860mr4375495lfb.603.1662730313275;
        Fri, 09 Sep 2022 06:31:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e3-20020a056512090300b00494974f951esm77463lft.267.2022.09.09.06.31.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 06:31:52 -0700 (PDT)
Message-ID: <c5d54b15-8caa-764a-6f6c-32ab5b07be0b@linaro.org>
Date: Fri, 9 Sep 2022 15:31:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 6/6] ARM: dts: qcom: apq8064: use hdmi_phy for the MMCC's
 hdmipll clock
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
 <20220909132010.3814817-7-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909132010.3814817-7-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_063156_556672_6F766797 
X-CRM114-Status: UNSURE (   8.10  )
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

On 09/09/2022 15:20, Dmitry Baryshkov wrote:
> Link hdmi_phy as a clock provider of "hdmipll" clock to the MMCC.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Although this depends on the driver change for bisectability.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
