Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F357C7618D
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 18:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RX3JbF4LZDJfeuIeqZlgHJ68autXGm5cFiRGnD4MgN8=; b=nS0MzVoaLS7oiY
	J3tn8g3UaUaheiIDLKC8qH244COAKHHpcYTdIvyJ8L/da3aHOLQ8u8G6zvwsOCBsX8EmIqCC9v+yt
	hjtRokxgrHRsY45ponEl9xqjVCtBHY2PI3/6nJN2HndIEVqxnuIscprd5LejCaT5s4aZHYr4lcAVY
	Bnn983nBnhn3zAIiSPGOZHGAHyT3U1pO1f2GPRv+nd1iMh3fgGhsjB64EZ3akrAVr+vKfXERdr9Sa
	89xT7+EmwdMqrVrNxNEzeFLItkVEflRz4ZAbSjgPakxPfPFgpGheu+K4pJIiDPLZBprRTyWtb14q/
	helY7SAiCMHujIFbDdYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUbA-008IAJ-08;
	Thu, 06 Apr 2023 18:44:40 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUb7-008I8z-1D
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 18:44:38 +0000
Received: by mail-ej1-x633.google.com with SMTP id sg7so3653484ejc.9
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 11:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680806674;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q8g90x98LXVZKTYfPdZhxPdL74gdette1vAfoZX+cdM=;
        b=kcgv6yi0QLB7ShwPAKe9m7cXZfGh1sUgla0uyOzsjY5uGcAxJ2IfbzNF6bmQ0ubrOT
         hhIF9q51mp03MMNIKiCfDrSaHbREV/TXY2/y6sqI7RhB1zF7bWgfaxHljti5KIbe0rij
         ZUZDZhu/oxeQG6YOUEL82wi+TwrKYfuAuaQrsj2VffzSYfCIRjl/vorFTCnbCobQ1d1R
         HOmivUXAjWRgclFMneyzgagcvPXeS06eqh5Xmp59lmC4Zh1BmorYzYtwmx+9wleBgfMx
         7DXnFvUwl3VzQPAypx9+42kU2zL/TRdQ5G87765BGRWghf4XpEOju5u3CZaX/JnuRJ+q
         nXsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680806674;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q8g90x98LXVZKTYfPdZhxPdL74gdette1vAfoZX+cdM=;
        b=MnIRtXb0Ze85oc4k+iwmyygPa32Y1WP9a0z5EJWGv8QqBhbh5t0n/vaV6ZSTJHwUY9
         NzB8oysQrRZQZ93QiGxj3u/BW3ntx1YHGcK2wFnJTW5teZ31OS342PgJvuLBao4cWwTw
         2wRvqjD7AhcQ/dX7iThuuczk54swQghpX2Cvrh4l1ind838OrznYrPzZrU30InRush2z
         70t1ekTe1eNDR/Ttm1ZW+GZ6ccM38oB2OngG7gZxLGj7DJXsybz8wSUdM6d1YPE3FXI+
         x1Thzu0pyENqtO6jgpAOnu44jPoNZVFz/2DdUgn0u1OPjbMBRtgSVpw4/bX4wcYCUEAc
         eGnw==
X-Gm-Message-State: AAQBX9ew3sXuC+TOWF+X5MEswRiEAmpwuD+lWX49PnDGIOTEmfZn+doh
	2lg5QetFXEdMop233nhw6EeKRg==
X-Google-Smtp-Source: AKy350btA+NYro6fqR3M06UURUJD1z7vnVctka0f92M2FXEcjuP+Gr0jLKj/kQbkTtek6kiTjEYioQ==
X-Received: by 2002:a17:906:c2c2:b0:933:2f77:ca78 with SMTP id ch2-20020a170906c2c200b009332f77ca78mr7081258ejb.28.1680806674282;
        Thu, 06 Apr 2023 11:44:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id h6-20020a17090634c600b00934823127c8sm1136596ejb.78.2023.04.06.11.44.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 11:44:33 -0700 (PDT)
Message-ID: <4fd0edf8-519d-082c-29df-b96c3d5466e9@linaro.org>
Date: Thu, 6 Apr 2023 20:44:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 4/8] clk: qcom: gcc-ipq9574: Add USB related clocks
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>,
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1677749625.git.quic_varada@quicinc.com>
 <cover.1679388632.git.quic_varada@quicinc.com>
 <24293be77ccdcf5e9b1fa0fd219de6152f234616.1679388632.git.quic_varada@quicinc.com>
 <20230406184506.65d2gjycuvrley6f@ripper>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406184506.65d2gjycuvrley6f@ripper>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_114437_421774_E53C6C7D 
X-CRM114-Status: GOOD (  10.37  )
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

On 06/04/2023 20:45, Bjorn Andersson wrote:
> On Tue, Mar 21, 2023 at 02:24:22PM +0530, Varadarajan Narayanan wrote:
>> diff --git a/drivers/clk/qcom/gcc-ipq9574.c b/drivers/clk/qcom/gcc-ipq9574.c
> [..]
>> diff --git a/include/dt-bindings/clock/qcom,ipq9574-gcc.h b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
>> index c89e96d..96b7c0b 100644
>> --- a/include/dt-bindings/clock/qcom,ipq9574-gcc.h
>> +++ b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
>> @@ -214,4 +214,6 @@
>>  #define GCC_SNOC_PCIE1_1LANE_S_CLK			205
>>  #define GCC_SNOC_PCIE2_2LANE_S_CLK			206
>>  #define GCC_SNOC_PCIE3_2LANE_S_CLK			207
>> +#define GCC_USB0_PIPE_CLK				208
>> +#define GCC_USB0_SLEEP_CLK				209
> 
> Please split out the dt binding/include change in a separate patch, to
> better facilitate picking both the clock and dts patch for the same
> kernel version.

Uh, bindings must be split to their own patch as they are exported from
kernel repo.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
