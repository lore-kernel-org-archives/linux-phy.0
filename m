Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5A5FC001DB
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 13:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeRFC7ajcsp+Ip83jtBlsSATnj9mq/JiK7I/hFuJ0Sk=; b=n5hRkRcTc0ILPP
	Ai2V5/kN/Ydbkn+7ouUn41giKkvSJSqQcNuhMlHvWWe5gPEQ4pYwgXPWBPi2JTogRAiXVM0tMLGKu
	YQot/rZIeReW+tl1jYQSQ42EoQUtsy8bamE1mfRx/92+ZVEvU6feZkY8pxZn/KLztW1y0tq9sqGPZ
	CK2CffWi74qjoxfZT63tt8vHSVQHd+/nzDY5665AaRUMpJ4MJePsRjE+SFOeNCyoU9atLW5KUPDo9
	SOB1DzmL1a332OdOjN3UBGN0Ep6sn04EaCuhxjNfDtdd3hHT9qjkrA+5yLuavHycPcWclE81bKmfP
	3c0SoKJnzm4Kol9yYqtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qT0WI-00HRCq-1I;
	Mon, 07 Aug 2023 13:43:38 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qT0WF-00HRAd-2H
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 13:43:36 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fe11652b64so7018631e87.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Aug 2023 06:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691415809; x=1692020609;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Q98lyuvE1I3w5lq0DAIUXX2CZJx1fl6gZyp/DMqbeQ=;
        b=CyoDk109aZXA8aBA8hfWMowusRvXZzY/ImX3+qHHTOMbzAzE49mZgZDSfG50l03skb
         dLXYpOxAKHb9pQ1iZAfyTwPtiB7uTRotiJs23gw+q64tQQy9xLsyvhSy7CfmVlsKHSNr
         OUUeu4zBqYvu2wwTgKkmAR490Ev1aL5j0JOhp7zlLMRxU0idr9+LrPXMFWTqqSHhe2Zw
         HdIe5KeRqY9QoAnHQextvX7J7YvDtudYGaxMxGTc4+gs5hD5FDfmkUOJQRjqDzACGRV/
         AGr97vmbBVhPZojatsaWNOJPcrLKN9nTix5mddOAUUmURVQ2NAeM4b9RalmKO5nDv5nd
         9zSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691415809; x=1692020609;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Q98lyuvE1I3w5lq0DAIUXX2CZJx1fl6gZyp/DMqbeQ=;
        b=ISeRXLQPlkAzVtSJBcRfoAX0VQAhTcjzXzdLAufR7ei9zSNU5cVFGGND8ScNljg++J
         fXIb2/gycE/5YS8CPZ3LKWlHXCzX7eaPhsd0LLUKeZgfYhlSyEe0QhxesOSovmt4HRXC
         2J4XRVZ4Xe80AJJLl4HTYVCVdFsYRYFCBNVpGp+DKUKDN6L/bQ0VKdhSAdhqUsgyKzQU
         Vlq/0Sw1KLG3ErAklizYTGzuXMEAkdFKCjlC5IkHf6xYDV5C5w7FU3Frvrh9LkWbW8Ld
         LXEz5lYDH9FKYrNDdIbbsvXGPhuAcAPVy1YgPcq7yUflAP+2hNiKNCPEyQUAvMgTqrPD
         1caA==
X-Gm-Message-State: AOJu0Yy3G1ZmGY7ncXgJdIEMoFTF7d29f8OM7ogdfXWSJlrvTQ9O5ueH
	7zTYT5kupHRCw5LIKjal7bl+DA==
X-Google-Smtp-Source: AGHT+IE/7f5hb2IxLkMQD7JsUfoacy5RSJu8uKCkUYCCSZNBbP/zTp5xQiIdCsY1/2XzwTF2aovqSw==
X-Received: by 2002:a05:6512:313b:b0:4fe:28f6:d542 with SMTP id p27-20020a056512313b00b004fe28f6d542mr5453873lfd.13.1691415809419;
        Mon, 07 Aug 2023 06:43:29 -0700 (PDT)
Received: from [192.168.1.101] (abxi185.neoplus.adsl.tpnet.pl. [83.9.2.185])
        by smtp.gmail.com with ESMTPSA id r6-20020a19ac46000000b004fe3a2e3952sm1511134lfc.100.2023.08.07.06.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 06:43:28 -0700 (PDT)
Message-ID: <d3f5651b-ecbc-4836-9f53-6d71e6b16072@linaro.org>
Date: Mon, 7 Aug 2023 15:43:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v2 8/9] arm64: dts: qcom: sdx75: Add rpmhpd node
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <1691415534-31820-1-git-send-email-quic_rohiagar@quicinc.com>
 <1691415534-31820-9-git-send-email-quic_rohiagar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <1691415534-31820-9-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_064335_753118_8B20919C 
X-CRM114-Status: UNSURE (   5.06  )
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

On 7.08.2023 15:38, Rohit Agarwal wrote:
> Add rpmhpd node and opps for this node to the SDX75 dts.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
