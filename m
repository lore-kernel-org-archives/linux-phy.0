Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F44606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 05:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ic0cJcNr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XHbdAQM2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=F3f9WxZS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UiasAGnynYmv9D2n3mOyG77qtKM9q99oP/w4zSRSKEI=; b=ic0cJcNrgmAlYSKLqj5oR6D8Kb
	1agdMIB8zBABzyH944StzhfGCAMukv8+LPPwsOz2IHVEpvIGE5TK5MP9K9Bm0gPm22Q94do4jMfjv
	sHCwNLJplmAdw31cZd3PLDACejbEuK26FFtKkwLfT1ukfPNdPWJbxYsVII6li6dajYMCzHrZIDku/
	N9PPldqYWwxx71ckAH3cKYDlTRqwIh6WInKc7McHnu6S7gXdZW+IHC8D/tK0z9bhY8QwpP+KzJwdc
	izeMpQHPsA3DUaLHM13nhQUhrzMtCG6jggBL4XwtCQ/rVbd2HYaLhI8JO5N1x0nms7aLcweiTeI1K
	8tEzXIKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWSEX-0000000C8h2-3NGc;
	Thu, 26 Nov 2026 05:41:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWSEM-0000000C8fj-1oeY
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 05:41:22 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQ36WxK2175893
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 05:41:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KaIkBumHdEKKdnazl1dkdI7RsBJJnknjh5eFZLYyAK8=; b=XHbdAQM24AiJSbus
	R9doTO40p6club4sn6vQEj4a9nZB7tEZwXJl7ZBUiVq3KVrTin0EEyYqyLTMBix2
	FUoNg2y48oSp/+ujhKn7jSWN5sqKGucDTXffGKMfVPmYfWg6pLsu024bNiT9QOc2
	aSyNbANF+QMDFSMGO4C1jkUa7CzSFkXefKO5QgLidvf74XOHFitpLl/QUUl9HAJV
	J1LoFcK2AyM1YX6fPvMLkwlYTHVHJpc0Ak0jRlQqPIUAmKrgZejygEi65NObCmrM
	VFm5Ijgon/b8GdyxEhPMXUDPJsv0XgGzFnHR6bzzmrWLcxlMaNDxaIsWy4hoamU6
	MRttcQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5vuhv55h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 05:41:13 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3b3b4208826so4681690a91.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 21:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795671672; x=1796276472; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KaIkBumHdEKKdnazl1dkdI7RsBJJnknjh5eFZLYyAK8=;
        b=F3f9WxZS1CwproZd3yVa3m50AmwqQ6aKDzc5fseQzY6Sy4PfTkI4N+yuf81F4v9Nf7
         RuJEuLFYrUpP+1Mxr/MjSj+RRA6p+gBxdcBKSa5L7AIWjqPkG+t4YSFwDuGHMwppEYba
         nO9nTO3YjyriNVyqf6hB6Ly9L62oJYvylk5aeC50V+xRlY/Rcflqi/3gUMK/vYDa5iBX
         gk650OAyu2Npq1bBBbaN0vuL7PJIftwwBbZMaJ9z1IjcEdQwycsZMuz+/Vxq0vSWWzus
         NhY4f3HbjuJRTLYzc1wSzaQfvQPyCL+dsrJbw+5dbkKdwGVFg6HNXrwTPUpb5Z0TFf1V
         yzmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795671672; x=1796276472;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KaIkBumHdEKKdnazl1dkdI7RsBJJnknjh5eFZLYyAK8=;
        b=uQDI0AlmZ5A9CV86MHYZMXD8/btEM6L1XYA4sBeptBkZoarFsePfVL+iOjD4VN7vLH
         ieUPH5Anj2CLukE6P1CudjfJuecpU4DnJQimbmRfcTutJmN+XE/c4f0/ALGL178Q0OKu
         DLZ1JVfa0pNIvxDi5NDTN31cbGckMdoQ2aCZcGdGlxQhYQEwbCQdNhtinOUWETqFE7Uv
         gnOIjSumuaStu8c0P+/S1reGtBKUvBNtRJZpvXGGLMk73IZVB1OA6Rnxa/K60dlN3GdE
         ZDpE8jUEwPrBRvFM+hpdenxGGVlSMRaQZnEvO/GLal7dAahiTAObtX/CqtdoUZj/EFyS
         hx3w==
X-Forwarded-Encrypted: i=1; AL+hErFQ7pJh42jkknoX9nc7zJJXtqdy2/irSpI45txZuUfwBTZo5usNMAM8hp2XcVqMDOg0BFissr/RgkY=@lists.infradead.org
X-Gm-Message-State: APuU4Z/utWA530zaw4lEE2HDCDUaDWca3UAEASBWRI9nV0RbBOgkmM1u
	3028a/qYPGby3iPXgOymlMWhgRmboGlkKc/V1WCCWt4rhR+4MjJ3FOUGRTTFNwPLKQOLdlmIWyj
	WEeagVId1kMJXiygOBojSpcoePc9BWuJxlNlUVEn96knNMUh/oij3OR9ToHAYeU05QsA8
X-Gm-Gg: AZFdTZf/20qmxkGzlhStOblzihc98qJfzFg4VvnEVrQA2Psw66MSMGP5NzEiTb0ed+Y
	5lMGvzNJAjrmL8S836ZUG2PZEI7rlXnMhAQPTcBGLEvRrs7eGDysbCUv2C9KoyWDNuM1Pfqv6Ax
	HWLx2kRIFc097v7Kh9Q4WZNxZKSC0Qs6OoF6txRA3+SUkD15otSr3hZFgRjd7wqMe3LRjb+7q6k
	HzIIfFgoHLCxmbyGLsrqvQXxntrxZnoDuEnoh02gNvEmsP2YN6rFbJwzzo/Rx+G/2nLC0Ox5b24
	b6Czc3y8K16Zr4sz1/19iCXgYlHZehhVYCsSKJ4mj8QpKDFkU5ov8MkMNt0esM82U/UIVl2hNiN
	SKYo7rqyDHR9wm7Koqg4Z7XeUXzt8fROwQSN5BzQdY3sr/coTTbpWik8uiCcJMiCmJk0JOxVhPQ
	Xu
X-Received: by 2002:a17:90b:4490:b0:3b0:a7b5:c044 with SMTP id 98e67ed59e1d1-3b41c7bbef0mr12554567a91.1.1795671672143;
        Wed, 25 Nov 2026 21:41:12 -0800 (PST)
X-Received: by 2002:a17:90b:4490:b0:3b0:a7b5:c044 with SMTP id 98e67ed59e1d1-3b41c7bbef0mr12554548a91.1.1795671671671;
        Wed, 25 Nov 2026 21:41:11 -0800 (PST)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b405ec698dsm33365160a91.14.2026.11.25.21.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 21:41:11 -0800 (PST)
Message-ID: <238a552a-ca4b-4997-aecb-fdaa278ca1c4@oss.qualcomm.com>
Date: Thu, 26 Nov 2026 11:11:04 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
To: bod@kernel.org, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-1-d7c2983d6d7b@oss.qualcomm.com>
 <179561294019.462348.12092000419789488599.b4-reply@b4>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <179561294019.462348.12092000419789488599.b4-reply@b4>
X-Authority-Analysis: v=2.4 cv=FPmOVOos c=1 sm=1 tr=0 ts=6b07c679 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=CZpgSDYph55k4HqUXiUA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 5mmvDsnUPv5k_5LqGRRGM7GM6DFeN9wK
X-Proofpoint-ORIG-GUID: 5mmvDsnUPv5k_5LqGRRGM7GM6DFeN9wK
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDAyMSBTYWx0ZWRfX7qkjdvuDL/Kk
 yv2ZRKk1np2tBEGTfZ86Wid/D+tVoNB4U56hUbpc215bMswQj/Po8RKV9yern20cojRWT1C+Smw
 wboKh1Ikgzo2+S7HZnNYjT0H7Z2CqTs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDAyMSBTYWx0ZWRfX5gHmlOxP0yy0
 EPJ6pOmJdJhXeqikOIvIvZx55JtDpQazu5/RwyAcWjZ9QYH7/gre2juHb6l6YkGrUsnxB/LSHDk
 i5sxkMvESWo+9aIIyi3rBH5Ul2TaG0WZQyu9NdV5JWOHv4fKKQu+MyZ/yN7W6oaeE+B2v0YwlYS
 edSeWtQWprahEi6ZbbZO0f0B1OkjWnSFKTU9cPC+Rky3oo0gsy4hN86QUaaFaPL1SfQrZxdjV0E
 V8zbzPCMQ6J7rceQDhYAuNeOx9VBouNc+WkzgB2zYyrtiw/thOV7J/uJ8z9tOGirXuzONzxj4Ob
 asBRhLTn1ZfgfXRx3MexyI6OHzkEvcMFUp+GQAqVI4e2KwC6xS9839c/6ukQ0pR7RP2jP4vE0V9
 ilGk1U8eGDc1A7nt5rSydp1ySjX4S35N0MaOrQGj6kyaf5x7GqBMotqQUzFiGs9vDYa2Jz05Dls
 3/DSZw18D/PaQFdSjQg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_01,2026-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_214117_988871_9614B9BA 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Bryan, Vladimir,

On 25-11-2026 18:52, bod@kernel.org wrote:
>> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> @@ -16,7 +16,11 @@ description:
>>  
>>  properties:
>>    compatible:
>> -    const: qcom,x1e80100-csi2-phy
>> +    oneOf:
>> +      - const: qcom,x1e80100-csi2-phy
>> +      - items:
>> +          - const: qcom,glymur-csi2-phy
>> +          - const: qcom,x1e80100-csi2-phy
>>  
>>    reg:
>>      maxItems: 1
>>
>> -- 
>> 2.34.1
>>
>>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

This series is already present in the mainline tree:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/media/qcom,glymur-camss.yaml

I am not sure why it appeared in your review queue again.
Can you please review the follow-up changes instead?

https://lore.kernel.org/all/20261123-glymur_camss-v4-0-d7db74f59e22@oss.qualcomm.com/
-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
