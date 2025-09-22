Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40630CA100F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 20:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ4D3TioVo5nCzw+3ArdrSaypeOKE/7TLUGWOn+hYJU=; b=utcasEHAtiO6u+
	PyKNEo42au5mPdjA+p544QNsVDRQNMJySO06s1E9iNQ4cKrsdFo94jPd+jDsG2ORV9SvSYYEFMyjR
	hLesd70S9SXw8TD1BbiNDG30ycCnJ2rsq0QKdBPUApyGIasEi8EvcuJgWBV6Tsqc/cUdEwvbkO9Fs
	AtVvUHhKqu/LkyqvqIwPqRBRGej49yhcT2MdaSEKWKKY5m5sUcq/2S2pHoVOCR5qxcnHLPVrrx77U
	rnd8SwwVN2MCBQz2F/hfjz4CSiClJTK4yxWn3Vd+NZynU7xSkIe3YO9aoRCKWAwex9wBV5eaNyfqZ
	XaLMYlFvC3EuC6r6ODrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0nX2-0000000BUVI-3SZ1;
	Mon, 22 Sep 2025 20:53:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0nWz-0000000BUUT-0nz4
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 20:53:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MH5ut8011598
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 20:53:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w9Wu9mtQgEpP2zjRZmcsIaHLYNEVblC9DYlSfNlL2BY=; b=SEhbu2QF5h7XomJp
	Vj1CGhEN9jpJfKWjsFGKoxC2XGuNzsxqyQR1EQlCU1FtmoCbrCnYtukQ1tmxqHfh
	kNGii2eEpwlFZgIwtwqSnKpfxUtam162ni19KUpK/0YNUG+/MmpI5pvrzSdkYX83
	T0Kkczmxihstc0P5l05b8ENE/RG/YO+4TVZjJWk7BLxhJ16r/L813d/dxqSixjVI
	NAssD0i3oL30XMleY9IRtugLXGYLUqAaR2zRYY7cSTQ3Z3xztY3N1e8qBV+W6/Ef
	dMe5Buu5tjK4GwMXuxCmq7Yn29cWKSHGcNZ+qe6ICjlW3v3yjonqtGzVJw+RXB4+
	n0YVdw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhp7ar-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 20:53:03 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ee62ed6beso6606848a91.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 13:53:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758574382; x=1759179182;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w9Wu9mtQgEpP2zjRZmcsIaHLYNEVblC9DYlSfNlL2BY=;
        b=DUUyVxQhtjWZTYlo9Idw8rte233iVWkQypY69qEEbwAg/rFy9O0zih3iJ48rx/lu2+
         ldI0T5v22tpAdCmv4JhD1tkb0vzvV6xSWJb0C77FX/MWBkuIJGXr+ZM+kRdi66hEa8Nb
         QA/CQ+ZUjVwlxOO/U1c+IpOdFTbessv03u+j9aqsDsCNSl/TY4QQxi06ec2h7tvmp6a1
         5Ohou90vnnJXtWU3G2Vx7gtg+fspgbVqezTWJQlIAW60n3uZTbVFCS6vzbN9Hz9CbEt7
         CtqoaOq2NvG9/oXXX/RaQ2pZXqPKhvQ9Mr8umxW/I4Iz5U2WuFLMGvgwLPpP530bkm4H
         zTYA==
X-Forwarded-Encrypted: i=1; AJvYcCW5CJHLpWjFOdWQeR50e3Ws/r4p9z7rC0e/1z1W9zCZlNW9tE3P8HxSq+m39LlssTiKu+awNExTM5w=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKDHcTllj30ZVtaNmprqF2t/Bf8lqVlCd31KoF2M8mcd5hyH84
	e8TzovRuvlXVp1ygspsZgX+NYtgpdA9eqvuN74OasSiQuzpn8uHCz39UjUoI06piPQHfwPrxfXh
	Jgr+HWPV6T5pon+mYGIvJiFICFuUVbdmUKGokhzX2Bv8fbZjhVcYqmLL9q0FGQU6/uxcF
X-Gm-Gg: ASbGnctLsxqVCC1k028yrsIwSoxRAC2WXQSYJ2qQM66jzaPgYmmFVtK9DJiNXHn7GzB
	6+f6hFJFpl0Svb7aC96p0eD2n9n7crRRuU4bo2n1ZExN4y8MED0mIk66mL13MDMx66RU6Nr+iOx
	/ouTRBbjwzZpvhMXGfx2eF5uqJQ9B+TEyAsIjv+xR098kd0NguULIbtGyD2UnM4bfhwINLPs5oW
	oA+R8tKETDqOGG7AByR4viHaKjT+Py/rcTMK9zoudZxgqrR6LQItqsxCMOxoFjPQCYOgRm8PlVD
	S4dPNCj9tLlTPwZTQQgCn7IG2uwkNwc8InLewSDjUMZVyZ5r4Qzsu5VYDdmtOLjYIISe4uBlWsw
	s/70U/5KGrBF7ycmBQZ/E7YkG5KZj8rc=
X-Received: by 2002:a17:90b:1847:b0:329:ca48:7090 with SMTP id 98e67ed59e1d1-332a9a03323mr314255a91.37.1758574382414;
        Mon, 22 Sep 2025 13:53:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmGBgoTPZCCqPtAA5u6G0ADv+sA5Otpw3FKsEi++cUEokO+1hOzsSKXTEDIDmo6qjE4PrGIQ==
X-Received: by 2002:a17:90b:1847:b0:329:ca48:7090 with SMTP id 98e67ed59e1d1-332a9a03323mr314228a91.37.1758574381933;
        Mon, 22 Sep 2025 13:53:01 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33046a4d0basm16048941a91.27.2025.09.22.13.53.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 13:53:01 -0700 (PDT)
Message-ID: <588fd98b-ed22-2940-a749-d4601f77b0b1@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 13:52:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Glymur compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
 <nkkimxkdp3q3iiyv4ic6rxnwwedq5tnnn2zismqf4pdocvmono@xltxaqz6rb5q>
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <nkkimxkdp3q3iiyv4ic6rxnwwedq5tnnn2zismqf4pdocvmono@xltxaqz6rb5q>
X-Proofpoint-ORIG-GUID: LvCQTtMcLNiysUmz9ZCo83ZdJwVean9c
X-Proofpoint-GUID: LvCQTtMcLNiysUmz9ZCo83ZdJwVean9c
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68d1b72f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=Sr9xLzlp0V7X-QRcIyAA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX6oAfmyIMVo9q
 bpuSIIeavVfrJfrvgKPxa1+ITpOHonvPlkNaqvqqu0L/Z2JCGMRB30c9eV1oc8IoZ8TeEdVS03+
 hzodRA8dp5FjZHQsh3Dm/SK8ReSz28kyf+jkTGsF0kDKODsb4vz3KKIp6vwjoEaNKcf7Iwosrt6
 86AZS7Jqk8nYtpHNPVHf2DGlDify+NyqmqQMyOcY7TF37bkGwSez0XbhdnnP/tDQVoP19P69hOE
 2VGTWOCexcKIYaiXDl1DHbkPsZOMi7R6xEqpFihBVBvH5LBQSmeoFPrz5QLm/my//ONkFGMJU9f
 K7axEgXwbUtwXpZOAMeF2iqG47WSa+eLzWnoTbdv3W54P4Zfw+kr5H7dFz+l4y9iBDiHZjXnAF1
 obfNpBSC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_04,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_135305_359206_8BF520F6 
X-CRM114-Status: GOOD (  18.25  )
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



On 9/20/2025 8:18 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 08:21:00PM -0700, Wesley Cheng wrote:
>> Define a Glymur compatible string for the QMP PHY combo driver, along with
>> resource requirements.  Add a different identifier for the primary QMP PHY
>> instance as it does not require a clkref entry.
> 
> Are register programming the same for both of them or not? If it's the
> same, it might be not necessary to have different compatibles.
> 

Hi Dmitry,

Yes, the register programming sequences are the same, but the number of 
clocks are different between the primary and the other controllers. 
Specifically, on the primary USB controller, we don't have a clkref in 
the TCSR.  Was just adding a separate compatible ID to define the max 
clock items.  However, I do see that even if I only need 4 clks (for the 
primary) it technically doesn't break the DT bindings definition, as 
minItems = 4 and maxItems = 5 for the clock and clock-names fields.

I'll just go back to one compat for the primary and other controllers.

Thanks
Wesley Cheng

>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 45 ++++++++++++-------
>>   1 file changed, 28 insertions(+), 17 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> index 38ce04c35d94..e0b10725a1c5 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> @@ -15,22 +15,28 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - qcom,sar2130p-qmp-usb3-dp-phy
>> -      - qcom,sc7180-qmp-usb3-dp-phy
>> -      - qcom,sc7280-qmp-usb3-dp-phy
>> -      - qcom,sc8180x-qmp-usb3-dp-phy
>> -      - qcom,sc8280xp-qmp-usb43dp-phy
>> -      - qcom,sdm845-qmp-usb3-dp-phy
>> -      - qcom,sm6350-qmp-usb3-dp-phy
>> -      - qcom,sm8150-qmp-usb3-dp-phy
>> -      - qcom,sm8250-qmp-usb3-dp-phy
>> -      - qcom,sm8350-qmp-usb3-dp-phy
>> -      - qcom,sm8450-qmp-usb3-dp-phy
>> -      - qcom,sm8550-qmp-usb3-dp-phy
>> -      - qcom,sm8650-qmp-usb3-dp-phy
>> -      - qcom,sm8750-qmp-usb3-dp-phy
>> -      - qcom,x1e80100-qmp-usb3-dp-phy
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,glymur-qmp-usb3-prim-dp-phy
>> +          - const: qcom,glymur-qmp-usb3-dp-phy
>> +      - enum:
>> +          - qcom,glymur-qmp-usb3-dp-phy
>> +          - qcom,sar2130p-qmp-usb3-dp-phy
>> +          - qcom,sc7180-qmp-usb3-dp-phy
>> +          - qcom,sc7280-qmp-usb3-dp-phy
>> +          - qcom,sc8180x-qmp-usb3-dp-phy
>> +          - qcom,sc8280xp-qmp-usb43dp-phy
>> +          - qcom,sdm845-qmp-usb3-dp-phy
>> +          - qcom,sm6350-qmp-usb3-dp-phy
>> +          - qcom,sm8150-qmp-usb3-dp-phy
>> +          - qcom,sm8250-qmp-usb3-dp-phy
>> +          - qcom,sm8350-qmp-usb3-dp-phy
>> +          - qcom,sm8450-qmp-usb3-dp-phy
>> +          - qcom,sm8550-qmp-usb3-dp-phy
>> +          - qcom,sm8650-qmp-usb3-dp-phy
>> +          - qcom,sm8750-qmp-usb3-dp-phy
>> +          - qcom,x1e80100-qmp-usb3-dp-phy
>>   
>>     reg:
>>       maxItems: 1
>> @@ -46,7 +52,7 @@ properties:
>>         - const: ref
>>         - const: com_aux
>>         - const: usb3_pipe
>> -      - const: cfg_ahb
>> +      - enum: [cfg_ahb, clkref]
>>   
>>     power-domains:
>>       maxItems: 1
>> @@ -63,6 +69,8 @@ properties:
>>   
>>     vdda-pll-supply: true
>>   
>> +  refgen-supply: true
>> +
>>     "#clock-cells":
>>       const: 1
>>       description:
>> @@ -110,6 +118,7 @@ allOf:
>>         properties:
>>           compatible:
>>             enum:
>> +            - qcom,glymur-qmp-usb3-dp-phy
>>               - qcom,sc7180-qmp-usb3-dp-phy
>>               - qcom,sdm845-qmp-usb3-dp-phy
>>       then:
>> @@ -129,6 +138,8 @@ allOf:
>>         properties:
>>           compatible:
>>             enum:
>> +            - qcom,glymur-qmp-usb3-dp-phy
>> +            - qcom,glymur-qmp-usb3-prim-dp-phy
>>               - qcom,sar2130p-qmp-usb3-dp-phy
>>               - qcom,sc8280xp-qmp-usb43dp-phy
>>               - qcom,sm6350-qmp-usb3-dp-phy
>>
>> -- 
>> linux-phy mailing list
>> linux-phy@lists.infradead.org
>> https://lists.infradead.org/mailman/listinfo/linux-phy
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
