Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9E58C77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 28 Apr 2023 21:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lU2d5zd/CAt94A0CXET5kGPSUsJmSpMRbgeSpx36Jtg=; b=qmR2x3QsYneIyN
	DREGQldqOV8WZ+zgYYvOC9OAkguzUAIDgDX4MmjJbDxQaxPL4TJRz7HOpMQfwA3QXDTKjJ+VSWaos
	y8BbhVuby80kw0MxWDUoNyUnrpcjVvpKXbOj0grQApOHhLA3dXGmKsgQ1yKLv6Axk7wX36ikKXAr5
	Ic3fGxrny2ssSZvwV0jllvgT067ltPajVkJXCqL4DF1yXl4tx/JIX+CwzcHq1lxgJbLyWx/YrEyrw
	9MK3PvQuMup+QaPYQJToAc85mr3bBL07C6CiKbF8vtwAeY0gl3Bg0T9Xqspy9XWJ+V+zkaNkxDzaE
	Mo35EcBWbdR4usV//XNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psVqd-00BocV-1S;
	Fri, 28 Apr 2023 21:41:47 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psVqb-00Bobv-0S
	for linux-phy@lists.infradead.org;
	Fri, 28 Apr 2023 21:41:46 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-2f58125b957so194660f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 28 Apr 2023 14:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682718101; x=1685310101;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E1Eb5RgOQ6G6T/ToVAmMxv+nVh8+Egk1H9oMyEZ/kPI=;
        b=B/Iiy08dVrTDqQP14DEVLVYhm+dghBPD41nm5Po2ZOuME8qd4mRykxC/KUS1dma/B8
         OYe4mDjjXpKf/mjMk/TINQ2iqlM7f9KPy3QRKOW4LctPN9VjIQFkKZ9bMxW3L71cjS4n
         5Vg0L1BGlUKVQxuvhloewhVnEI5cwoh1WLquTnvm8+uN8LOIW8L5mxApE/yg0hq+CPvf
         AxJx5nX4jrGwm5xKVJ4ZcxJLOV8AzTqeA5Rlp/1R318ochH9XwDOwv5ykAM+4socbTnM
         3GDRpzhwcs1Yc2y0k6suRwULbbgiY2ZDeB51EF4xiUDHCQlaAuVq2nInSiOXRthJQS+q
         hOgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682718101; x=1685310101;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E1Eb5RgOQ6G6T/ToVAmMxv+nVh8+Egk1H9oMyEZ/kPI=;
        b=FxoKB9aCYuizWvOrwzc0Aizf2Ayer6f7I0r+w1IBiOdMhKsRbwAVnnTHV9AtlLH2UY
         3BrBBU/tkE967RGRtaI8Wfj5Ec1Krz8rYRMeM3WINGqUoqP6n7YVppEXb4DA1eLT25H8
         CVbhbZdDAeEmmiVZpX99saV3gypDLWHtTrt0rwqN6P47J2gBgVhQ1tA6c/D5HtdJqIJh
         cvzBZtyvKu9GIs/jGGG89dCWyO9yKfRaVNksuZltjj7m/paeGHuYy+MN0ilbKzAFJpEy
         6GqIuklwkpByGK66AldQszxOYs30N+rAhr9iqXwg0gPHDu0gMsEcNHD90X1H+bqemBTl
         sX3Q==
X-Gm-Message-State: AC+VfDzWK1ex4iAHnHd7e3BapGJ64Evd368WjUz7YfSCvoCpJPRs3FAs
	tsI8qaL1gi32PlLUzjdZ4S3A8g==
X-Google-Smtp-Source: ACHHUZ5RGdr21sjT6mATshpr/YItNaJEnWe3GQDudidU/5n3YX0H1yKJh85dhh6eziC69IuYXUMV6Q==
X-Received: by 2002:adf:e481:0:b0:2ee:f1f0:14bb with SMTP id i1-20020adfe481000000b002eef1f014bbmr5138651wrm.49.1682718101303;
        Fri, 28 Apr 2023 14:41:41 -0700 (PDT)
Received: from [10.6.26.43] ([212.140.138.202])
        by smtp.gmail.com with ESMTPSA id d15-20020adfe84f000000b002fb60c7995esm22205929wrn.8.2023.04.28.14.41.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 14:41:40 -0700 (PDT)
Message-ID: <3dc6e993-bcca-4e0d-5aca-686fcc8b5b73@linaro.org>
Date: Sat, 29 Apr 2023 00:41:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Content-Language: en-GB
To: Adrien Thierry <athierry@redhat.com>
Cc: Shazad Hussain <quic_shazhuss@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <ZEcEGJiikEC2wIVE@fedora>
 <CAA8EJpr27=2jAXbamN6J7yF+7G=L5Af8+XReB5UnFuihcEwMQA@mail.gmail.com>
 <ZEgV+H3yZLp48Dlc@fedora>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <ZEgV+H3yZLp48Dlc@fedora>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_144145_334418_AEE2CF48 
X-CRM114-Status: GOOD (  10.84  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 25/04/2023 21:03, Adrien Thierry wrote:
> Hi Dmitry,
> 
>> Semi-random suggestion, but could you please try using
>> clk_regmap_phy_mux/clk_regmap_phy_mux_ops for USB pipe clk src?
> 
> Which specific clock are you refering to? I'm not very familiar with
> those, in the device tree I'm seeing "pipe" clocks for usb_0 and usb_1
> phys, but not for usb_2, which is the one that's causing issues.
> 

Ah, I see. Could you please try adding the 
'qcom,select-utmi-as-pipe-clk' property to the usb_2 host node and 
running the test again?


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
