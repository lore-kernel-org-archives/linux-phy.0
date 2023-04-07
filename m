Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9406C77B61
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 08:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSX9H3LeKqdDjpyyPKxPCE29v03f1Hzdrpl/4zOl/1w=; b=MFRbfZNp1qOE3V
	h2/KU20QXZtrqrOpDQKfljHDf7W/ODhTQxIA4mgfo4M1MDDan0DHF05Ue8w1gnKcY2HMFJF8kVn+E
	ue6qHKHgc8+9qofajJryOsLa73wkAENkqSEd95q8Y4ondqRL18ob+642lRlXb8m6SIcNHUrYhwLyy
	wwhWPEz3FcyKU7dug4M/Y4ca4yBtrrm9bTC5+4AWjcJ7BCmQXF03yH9hEIoPt8DX7AUzy26Y8UJ5d
	j0jvj05rv9JzfTRJj9wJaVftiff+Wn0bqkxLIWz18gWTUshZKbeOP0HckWTjCi7ERkIaRuYDjDgj+
	YIWXdy5B8+nCgqx4ROlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkhj5-009Xmg-0x;
	Fri, 07 Apr 2023 08:45:43 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkhj2-009Xln-1T
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 08:45:41 +0000
Received: by mail-ej1-x631.google.com with SMTP id j22so6997112ejv.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Apr 2023 01:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680857137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EkzZhTvOzLRcCGpfrge05I6LlNCd0VLnVsi76p0/Q9Y=;
        b=tidL1h228tOzQTBOUqn76zpPuR/cmWNKWhR2GufNT0+O1y7j3oF2OSRoqiUVqkC5qI
         vY2BAyE2ubUgiRQ2Y/O6RRY9teFunLs7RVjucHn5es55NYCvw3LpQtTL9VsogpVwPWq4
         xXrUU3p05SPEeWazhXCGVXFC5Q2AmP7aABD7xTd/FRcPSVoY904UT6oYaJHBglQaqG0K
         5WBajTPFS/M+EtIoWUjcbVLVQpRJev7tEJwrrmHuJT0nmhKdJ+QVgMJ9TUDx1/yF9iVx
         R/nDMN+yvJtQHUv0nltGy5t/JpoOdTa1RdJaAjbPTGZXVsiNlDx916SCzNqMW7Wzfqbp
         bMhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680857137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EkzZhTvOzLRcCGpfrge05I6LlNCd0VLnVsi76p0/Q9Y=;
        b=A8ar1DLlDmJUSZ9Ng0lRxzPaR5s9KcRNWwq0s0piP36jgwncj0dvlqLKwXoBee23sU
         i1YbyiDvKnWyEpcOBqH7D9r0kozbCFABnOCNro24Tlfudohf+RdTuumW8xqGzWFofuhc
         RFcNwpyZPD16TwP2Tkrl5U1RX/ASEdY6mJJJfl0Daheff+BBTS9wKgGtsq1fvLPcgl/6
         7k6aRu6RlVbeCoHr87HAA3RyyLOKpuf+7Fs1Zm5sBhIxqopQMsiMnYukNaL599dlwEzo
         WN6f2BnFMKS6czeIj2JDQj4tH0SSqMpjmSWp4v3gvBMZ21NfLzFVafZxyubL3Jb+i6p8
         8wSg==
X-Gm-Message-State: AAQBX9fSn6+Yjyok5trQKdP3YxWJrBxETxCjWYwei0DlQRmPIu8dF148
	w4ODF84xF6jNWZZBbhgF3Qsmgg==
X-Google-Smtp-Source: AKy350brdfe8nxr1JYdpIW6N0eS4YwtysVwTUFW03OaK40Lq1FF//oAXxsoNoLZ77c3KBnpLWspb/g==
X-Received: by 2002:a17:907:7608:b0:8b1:7ae9:647 with SMTP id jx8-20020a170907760800b008b17ae90647mr1063441ejc.76.1680857136910;
        Fri, 07 Apr 2023 01:45:36 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:14a3:366:3172:3c37? ([2a02:810d:15c0:828:14a3:366:3172:3c37])
        by smtp.gmail.com with ESMTPSA id r13-20020a170906a20d00b008d044ede804sm1802700ejy.163.2023.04.07.01.45.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 01:45:36 -0700 (PDT)
Message-ID: <0762cb76-a1cb-d25d-2a8f-8f9eda21cc81@linaro.org>
Date: Fri, 7 Apr 2023 10:45:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230406194703.495836-1-brgl@bgdev.pl>
 <20230406194703.495836-2-brgl@bgdev.pl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406194703.495836-2-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_014540_521964_E88CAE3C 
X-CRM114-Status: UNSURE (   7.25  )
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

On 06/04/2023 21:46, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the compatible string for the UFS on sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
