Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08B16C83F3E
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 06:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFuXNgHrD/jEUr78O1ZXy/e7ucnGgE8AKK5+rcEH3O0=; b=ZntFtlNz40Rqsm
	9B5pPWwhfCt0sDc7nmickGX5iu25x6vYl7ChwtABfq9MC/GjUpBdQJBI5/gQqvFKVI8nRTr3+Q5Wi
	ayf+isA1fBDCre4nqQBDYgvotdeHPfGONL8JGE7y62UoHCK+1zYNY0SjgqI8GPYRj52VCSfFmGC2S
	dH6yOs+nP3fc7/fU6CDMORiIzDs5FQmGj2LPKTXtiMOiHrlkP9Ab4WLrITuFdmAIfa0N4s8MfmKbU
	AHbIGnw6pLsaYYFsc6os77UGNiGS34ZU5xW8SsqgJymItalwq48ME0WcoPsvq3BKlI9iVoA2GftSm
	+EwAALy6/5bCQwkQ5olg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPvF-005MM0-2Q;
	Tue, 05 Sep 2023 06:52:25 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPu0-005MDB-1V
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 06:51:09 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so324655966b.3
        for <linux-phy@lists.infradead.org>; Mon, 04 Sep 2023 23:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693896667; x=1694501467; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TI3fumOulphifA8hP0bCF3NnJrN6piRrNYQj+vzAjx4=;
        b=lRU7BPgZQtj2hcar3FowywlQf99mjJ9qMuFOH05HzVN8oRzEHwGMF8uKtYT4TlQqcy
         34xEmbdQjoMCnE5Uzsa3s8Cb3KaUuWXkOapwwbQjIHyAR2ZoTqlXItvPuGYPKd85fibn
         OVQiFmXhFza6shVL5tHpoULKptvceMV2TpA5f9CKf+VQjU2vxd0Y7ZOWh3OSnsHbNS9p
         12VYTQ/rI36S9MSEAGU2FXNSWUSP00LaQVQqReJqVxky6EVuksjvIOY1JCS0Xf1+oDN+
         TMoahcYrtRFBswnJzyX3ZeI7iXYbROIlNEaPfETt4ofyfwUCZPor1pL/bL7mfB2bdPVt
         URJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693896667; x=1694501467;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TI3fumOulphifA8hP0bCF3NnJrN6piRrNYQj+vzAjx4=;
        b=KtVZcIRM+zR7/jBGmAspT3ZnR+q+DcKoxiIzGsB4GcavcW12miFWRZDEURoKjf+eIk
         U9x/TyHRLEptIoTedEr8ryAWIC3E08RdIwwe3f0J+AIH3paGuWGAgTTcCn0EDwl2dwsO
         RN3eCmv5ggHfSV2r9BmKaqRKIG32Pke3ULzIE36XaS2f8WPfH4864arSKeqdAx8ee1+K
         QdRWmpi81mTrXWJlj8Bg21WzCEkAKpEwhL0fm1gZhMSxqwR+6uxL0LqcMMIDbFF8QHtT
         wDmLiXhRpCgJE8l0bMzp6D9RqChQnvnIWxDkyZUJiv98bHmrvtc+fVZZnIHyb11Ncx5y
         RTiw==
X-Gm-Message-State: AOJu0YwwvRjN8DuwXyGUAAgyyyqbeVQLxgqhAMElrAfP9JoaP//dgvfK
	l41XKK6crL0aJLL1FVgv+EKWvA==
X-Google-Smtp-Source: AGHT+IFak6u0YHk+VTo55HeDc1ShrixofDnPPoc5WNdz9phuG5IwtwKskdApHe67dMkqwxTB5lNnrg==
X-Received: by 2002:a17:907:2bf2:b0:9a1:f96c:4bb2 with SMTP id gv50-20020a1709072bf200b009a1f96c4bb2mr8684469ejc.50.1693896667119;
        Mon, 04 Sep 2023 23:51:07 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id mf25-20020a170906cb9900b0099d804da2e9sm7192399ejb.225.2023.09.04.23.51.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 23:51:06 -0700 (PDT)
Message-ID: <b8bb019d-6832-a956-b314-e7861748d188@linaro.org>
Date: Tue, 5 Sep 2023 08:51:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/5] dt-bindings: usb: dwc3: Add missing SDX65 compatible
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-4-git-send-email-quic_rohiagar@quicinc.com>
 <96c76c55-d5d4-e4ef-e7c3-ee35b2d7ad78@linaro.org>
In-Reply-To: <96c76c55-d5d4-e4ef-e7c3-ee35b2d7ad78@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_235108_508618_151F2C4C 
X-CRM114-Status: GOOD (  11.53  )
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

On 05/09/2023 08:49, Krzysztof Kozlowski wrote:
> On 05/09/2023 06:43, Rohit Agarwal wrote:
>> Add missing SDX65 compatible for specifying the clocks used.
>>
>> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
>> ---
>>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> index 5c13229..fa51f50 100644
>> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
>> @@ -186,6 +186,7 @@ allOf:
>>                - qcom,sdm670-dwc3
>>                - qcom,sdm845-dwc3
>>                - qcom,sdx55-dwc3
>> +              - qcom,sdx65-dwc3
> 
> That's not a complete change. Update the rest of the file.

Hm, your subject is confusing. The SDX65 is not missing and you do not
add missing compatible.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
