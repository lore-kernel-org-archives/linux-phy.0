Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A6A0C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 13 Dec 2022 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQtpeIxZr1HjS4t9Rdh+1i10ohdSusPEeS7T8D7aYVA=; b=F8sNgoOlIPoKRD
	gXkU+rhyX9Edtfexlkxs8gNYO3lJW6CN2jcETMZ7WIpOG7P1NavIIxMM8akpF4OH/ybx5ke7WLTuB
	kLqib4FegXyduJZIv1AEQ+/k8R2Pg3l0Ea/swik+uhlGge4dkMbv4v+nnDFviX6xTxd++DHfAz24D
	tsx0WZy+iRmMt/M3J3K6BDhfmK2dtNttvu0mv86LSpGjHmV0gYIKCP/I+tNSRqVVtdyZ+TMcjnJmu
	vkzIrgWNSD4JzFmcmjOdDVj5YNlynx8ofiiwI7ecTcfKVmxgoPZTnSa4f9eIvE7LhaTk03MBcvtwa
	iFnw7gifP1Dl0lseEz2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54qt-00HXOg-Gg; Tue, 13 Dec 2022 12:57:43 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54qq-00HXNJ-Kc
	for linux-phy@lists.infradead.org; Tue, 13 Dec 2022 12:57:42 +0000
Received: by mail-lf1-x12b.google.com with SMTP id p36so4718658lfa.12
        for <linux-phy@lists.infradead.org>; Tue, 13 Dec 2022 04:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1+49QAMDzPVtrYnuNI/l48IEaXsnLhyGQdsKK+6eiGo=;
        b=XsGIeHyDxkRi7MCp5j1wygAIhEt/onzyyoKl1vqHj3J2W9kLg4r38nuLOhy7IlUE8N
         QrEOA1jKJpm/XMcF0hv5NSq7bR88pi0ZaNMVDXdiPJgc31W5IIdHOJC/pt1RIad2nfE8
         4T9boL3miIyyLclCez7JNgCaV2B2dYWMOgUjAoal9/5Tazp495IChiE2+zNslS7GHqSP
         McVUtjWsi71ThfVwrBjeyJuo5Iq7APSxnIwaiu0ntN3RkRUYMA9UDdzEC/Zj03bSbWAa
         uge6ZjZ+HDWCZrkswfUsOcY5M/Ev5XxW4EJU8GFED7mKJqDhRayJmr1OCqZImBpL/zC9
         Uueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1+49QAMDzPVtrYnuNI/l48IEaXsnLhyGQdsKK+6eiGo=;
        b=j4cmv7R2eLmPC4rz1oxmV/BfDhPzvqGUfIQs3nBBHwADS+7OrAw2Mo2b/ak3GgH95V
         LNKBB3eSF0KNyHm07ExiM+DC9i2ln7Jn4/6uJCO7D7iQZhfZHGa+QHsfi0m0xSVvlzpP
         Z65pvqWaba68ZwM3v2gfwrDQFyxJmqHiTfZdVoUk8ic+ON+nhhnFLPxEU7VJymZEJgYl
         h6/y/+vEbVeu56rNmksTUjWzIOwLvN8O7nd++gRSqX2ygMd9xZwONc42czSDiDJ2jr/2
         pna11teYod8cOUE87QmdsugSeqVbfyQ3Z81KV+MKbobOeaKA2TMkt8UNiuw1QdKnp6I6
         ZjJw==
X-Gm-Message-State: ANoB5plIV6+CEKVRELN+nybFQPXUXX4pFzWeXbylJ9DW6iAQnpyNcnaj
	QtZ9m5gHiyQDgKpjZLg0go39eg==
X-Google-Smtp-Source: AA0mqf5EZjO7rMPMLfCaq148t3alQ/vkjPqZRkTeRQJdVfvfctPFRK0e1e39qX+TE2+vx/JJZqULgQ==
X-Received: by 2002:a05:6512:224b:b0:4a4:68b7:dedb with SMTP id i11-20020a056512224b00b004a468b7dedbmr6863325lfu.55.1670936254357;
        Tue, 13 Dec 2022 04:57:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u24-20020ac258d8000000b004b591c33b99sm365972lfo.13.2022.12.13.04.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 04:57:33 -0800 (PST)
Message-ID: <f1736be8-2089-7852-0848-0bef74a8f935@linaro.org>
Date: Tue, 13 Dec 2022 13:57:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-usb: Add SM6115 / SM4250
 USB3 PHY
Content-Language: en-US
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>, vkoul@kernel.org,
 linux-phy@lists.infradead.org
Cc: shawn.guo@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, agross@kernel.org, bhupesh.linux@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org
References: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
 <20221213122843.454845-2-bhupesh.sharma@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213122843.454845-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_045740_827825_2A4472D1 
X-CRM114-Status: UNSURE (   5.69  )
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

On 13/12/2022 13:28, Bhupesh Sharma wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm SM6115 / SM4250 SoC.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
