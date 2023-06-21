Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3E83C001B3
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 08:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyagsYn/xFnrOJrcVEMDHHoPEF/y4XcEeH15lhTklV8=; b=cdVH/JaKPGOv4S
	C0DUB2/e8vaPwCNbhHGUs0wNdET86ohsMMJDecxGmy1ofrPP9nrseS0kDCB1AX83YdN5O+JPGP/VD
	Y9FgeyGYuF1noL2QAgNepT7btS/lJGeYPdFf7sXgs9P7Wxmkf3kodiNzekY4EQKCtpWSKJXmLY4ZE
	OjV3V5+wPxiwWI57RIkkiWNzXxh80dLK0HKXwA5U+/0mOpP4SN5kxD/DeS81mYiVvlVEtbivqMpWR
	mI2JvoHxdOIDFWhnZw1T9RXiLqkMlQCl0cmg9/hUIL0XP/lQMOp2oL4o5MGIbNtNCl4zfPl2hgLIn
	S3hhKs0mFf4w6psjJEdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtRO-00Djk7-1q;
	Wed, 21 Jun 2023 08:43:50 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBtRJ-00DjiB-0c
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 08:43:48 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9881b9d8cbdso737113966b.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jun 2023 01:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687337023; x=1689929023;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/2Kz4mhZ5NhzflxslpPdDmilN35XglyTAYV8hsPZpaE=;
        b=jXpnIwUeuFoxX9JBb12JmmY6ewTjwwjEAokuT+H4fKpH0TDopxcDyanK9UaDI7w+j3
         6E5nSTpE3f9XWpBgK4/8WgHhdRSe7h482tsqJHfBctM5j62NkGAVWzfbLka9oq70pZab
         0Q3Nf8QROYTPA5xRN8D4ZrYBbeF196feVkIP7s1cUZUHgkUkoLDN116GjZrCbk6j97jv
         Ns9Yuu3bpCmUZRgr43tgr1pujBZXnG9xkNmb/g59G3ZgUc4slZ9OovBXRDaLjSWEMwLx
         R8Y0c+T6EsKc0a0PImDTwMTCtp0trpX5f3PP9Qs0m/COO38CO7+EtJFrnyHhJP8XX5rI
         5QjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687337023; x=1689929023;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/2Kz4mhZ5NhzflxslpPdDmilN35XglyTAYV8hsPZpaE=;
        b=C9l5dEmRJ4wyyWDS2Q3tRdqLMPNvsWbaVr7z1x7FuEvOhe8SQ+tURACC/evDS+0Wxu
         pYK/C8iSbo5XMDW42nO2JxBLztNakEdBu8e+qfq/sEHyWy169Tkw0vRUxBxNZ1+00f7k
         iYNZ9K19riYmSDcTIf1VnoXBrLXgGQsiHZQS0mAhbw30RUptDdnqwmP4RitzQVYa1Lv4
         8dmdfinjpl5/cM1rSKVQqA9nhswUoeGwGxdJ6xygVUTyzaFx/wKEQsn9/Hnj5gwp/ojg
         kp1BtXp6jUqTIyNLRAXmxeFuv4ECtjyvQTrLgwOm2Sh+LGeV7+fpfTfkn5g/1RIRNQ5Z
         HX2Q==
X-Gm-Message-State: AC+VfDyEcJFaWGTn6v9hptya+rE/IiA56CQ4QNzMJf6s50axt74bV4+d
	QVRvK3ICfk0DFwl/eLdoYp53vQ==
X-Google-Smtp-Source: ACHHUZ7vclfELi9G7yDOkfIcP1pfbpU9l07YtQf/u79BJENXrzqrZRFFBWYdHwVKmMJA/qNz7Xb2wg==
X-Received: by 2002:a17:907:d26:b0:977:d468:827 with SMTP id gn38-20020a1709070d2600b00977d4680827mr15211393ejc.17.1687337022910;
        Wed, 21 Jun 2023 01:43:42 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id n19-20020a1709061d1300b00982a352f078sm2715466ejh.124.2023.06.21.01.43.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 01:43:42 -0700 (PDT)
Message-ID: <dd78b449-8ff8-108d-cc49-fbddbb660c76@linaro.org>
Date: Wed, 21 Jun 2023 10:43:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 arnd@arndb.de, geert+renesas@glider.be, neil.armstrong@linaro.org,
 nfraprado@collabora.com, broonie@kernel.org, rafal@milecki.pl,
 quic_srichara@quicinc.com, quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com>
 <98960024-7dbc-91a3-75de-90b529637916@linaro.org>
 <20230615052746.GB22186@varda-linux.qualcomm.com>
 <aca54f67-cc09-ff4f-93ca-6973d153db2c@linaro.org>
 <20230620093225.GA9966@varda-linux.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230620093225.GA9966@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_014347_328653_807D666C 
X-CRM114-Status: UNSURE (   9.06  )
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

On 20/06/2023 11:32, Varadarajan Narayanan wrote:

> 
>> And then we have... existing bindings qcom,usb-hs-phy.yaml. Don't create
>> something similar with difference in the hyphen. Just use device
>> specific compatible thus device specific filename.
> 
> qcom,usb-hs-phy.yaml seems to be for ULPI mode phy and the
> driver we are introducing is for UTMI. We would have to
> modify phy-qcom-usb-hs.c to accomodate M31. Will that be
> acceptable to phy-qcom-usb-hs.c owners/maintainers?

We don't talk about drivers here but bindings. Why would you need to
modify the driver when introducing new binding for different device?



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
