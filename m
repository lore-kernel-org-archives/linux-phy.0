Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F2E6C77B7F
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 07:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yoBWABi3ctnACXgNeLQXIA8TVz6hZ5V5Xqxel+/br0Y=; b=TmLXwvNvzfW7Zq
	udr26kfVXMSXALtUt+UpYgWT/UqitGb3nIaIMFAS6lIRJzw3RaaSVb8MIGsukNBBco1IIHRAZl9Pe
	MycTlDO7ivOEB7a7Q2UZL1qw5RFmnDT5YK2bbE3I6oENObfgYY+WjXT9HAHLQmDsVWIiVDuBhqRJJ
	9ZHg6I6mLRBNxB8h/dEzBhTfBUEdRoTtv7+nXh9GX8dtty4QwOTD/+rPutf3976ybeFW2j1d1HuFo
	EKzp6R6IOoJWC6+rc4aNdAXY/Mr22A4rGw98ZnliFrYjuUTAb2siZFH6QEG2lx41zpnYoymmD7PJc
	yTkVYo7VU16mwPtuHrww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pupmn-009vIM-2g;
	Fri, 05 May 2023 07:23:25 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pupml-009vHf-1C
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 07:23:24 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-52c30fa5271so703482a12.0
        for <linux-phy@lists.infradead.org>; Fri, 05 May 2023 00:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683271402; x=1685863402;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A2yKNPJcgXuBTQDFXv4jaSslsM07zOnVYJZxig2x9i4=;
        b=dtQzQov+0p/RzYncCKQaVUMWU4t0WRUjybRHMJNDo1UG/1cPQe3Y8DxjAEjSl3fd57
         q74DqkaAW1ScT6BEoKbWfoebFZz2nOIX9fcHj9Ro+igFh82W5lwL97XV7LrqqoIchuwp
         d3Ijwz4zwgFkHpk6SIX8fQksa00DUyL2dUKAyhEYroI3jtJgMF8jOFQ8dpw6NR1Fx7q3
         76WWls16JOCb9I5L2qvkCxW8T7wlfBLsgPsa3Vhz/l3Ndxd+RrveS92skLlZEWnlS4xC
         IbOyilaUksuYX8xbjDxIGgOvSxnYYES4ip3NjuldvcinXYo3+nMcs8X+AuZN6ctnaqQ9
         pi0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683271402; x=1685863402;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A2yKNPJcgXuBTQDFXv4jaSslsM07zOnVYJZxig2x9i4=;
        b=DysXKqHWNe+hYjHCEuuM+uSzU8ypxAB9qmhLiMLR++ZRU0ZVa0oNtt5Xd0JGABNo0H
         PagnvrGS3QVd+ZVgKWfUZLC5BYAF5Y0BgZiAsjdAbahCOM4z/ClFz11UhebQlDjlcIpA
         DlWXBpe7+kfVPjIb98HUJUSkfLY6UeWhnVoy0Jz6XbMABUSqD6kokP+CGcvOljUmi4hB
         GwPe5pQ42R83u2uAMvc8I4fvp4QyRbHIHkoII4ty68xIzWcKBWP+EPjmLWeyIVHlcD/2
         A3RP2WDEq94mdr5VjIPzki2bOC9QlSxPefx8vRREcB4vCN/55iAkP0AIJbb6SXYhxxgy
         1wHQ==
X-Gm-Message-State: AC+VfDwqwXMolTvkVaaC9MXSs/PREngKlYXl8SqVHe6aIyV2rPX7uxCS
	VvcCIqCCH6M2fO0/hGB7SSz/3w==
X-Google-Smtp-Source: ACHHUZ6ltTmBcEmc6ra7RXQIFPm3nD026L5Oiar11un/XedEAE/88qZiBIBzWQk2h06gO9CvWul6ig==
X-Received: by 2002:a17:902:ba86:b0:1a6:bd5c:649d with SMTP id k6-20020a170902ba8600b001a6bd5c649dmr539297pls.56.1683271402127;
        Fri, 05 May 2023 00:23:22 -0700 (PDT)
Received: from [192.168.1.8] ([223.233.65.180])
        by smtp.gmail.com with ESMTPSA id v4-20020a1709029a0400b001aafe56ea70sm959277plp.5.2023.05.05.00.23.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 00:23:21 -0700 (PDT)
Message-ID: <00fbdc3d-901d-e3f7-9128-ddf070242217@linaro.org>
Date: Fri, 5 May 2023 12:53:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v10 1/4] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com,
 robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 dmitry.baryshkov@linaro.org
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
 <20230502053534.1240553-2-bhupesh.sharma@linaro.org>
 <faefbbed-0f62-e569-455d-0d21b363f8f3@linaro.org>
 <CAH=2NtzfH+7XMFdCq0JENgpJymsHNUfzwhWmDx=g8xBJ4aACpA@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAH=2NtzfH+7XMFdCq0JENgpJymsHNUfzwhWmDx=g8xBJ4aACpA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_002323_412461_A808D8F0 
X-CRM114-Status: GOOD (  13.55  )
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

Hi Krzysztof,

On 5/4/23 10:42 PM, Bhupesh Sharma wrote:
> On Wed, 3 May 2023 at 21:55, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 02/05/2023 07:35, Bhupesh Sharma wrote:
>>> 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
>>> which predate USB -> USB+DP migration. Since SM6115 and QCM2290
>>> nodes for USB QMP phy are being added to dtsi files by followup patches,
>>> move these bindings instead to the newer style
>>> 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
>>>
>>
>>
>>>     clock-names:
>>> -    items:
>>> -      - const: aux
>>> -      - const: ref
>>> -      - const: com_aux
>>> -      - const: pipe
>>> +    maxItems: 4
>>>
>>>     power-domains:
>>>       maxItems: 1
>>> @@ -71,6 +69,42 @@ required:
>>>
>>>   additionalProperties: false
>>>
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - qcom,qcm2290-qmp-usb3-phy
>>> +              - qcom,sm6115-qmp-usb3-phy
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          maxItems: 4
>>> +        clock-names:
>>> +          items:
>>> +            - const: cfg_ahb
>>> +            - const: ref
>>> +            - const: com_aux
>>> +            - const: pipe
>>
>> I am pretty sure I acked it and there were no changes here... but since
>> you did not include it, then lets keep the clock order the same as
>> sc8280xp. ABI is anyway affected, right?
> 
> Yes, I forgot to include your Ack in this version :(
> Ok, I will fix the clock order in v11.

I just noticed that the clock orders are actually the same as sc8280xp.
The only clock diff between sm6115 and sc8280xp is actually 'cfg_ahb' 
clock used by sm6115 instead of 'aux' used by sc8280xp.

So, the clock order for sc8280xp is:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: pipe

whereas the same for sm6115 is:
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+            - const: pipe


Or, am I missing something? If not, may be I can include your Ack to 
help get this applied :)

Thanks,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
