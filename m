Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D1DFCD98F2
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 13:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLJQ4TNfiz6x4eROnBVbJhSRrAq07DFounJm+abfseQ=; b=Q9O5OEKJQuUjOr
	R8gYcRQPL4HvLu+eDG/W6oiuvOFJrH1YB+hYXWDtl3RS/5TWxildcXCes8gQrSfqrNY2ZKgrjceIE
	0zjgcKSX94SE5h9aW4Q2ZudcQe2YHrWpiKt4ZGgHbnx47age0gby2OWc6hbrrD/urcLbgsEeYwgba
	CnlyTzS9KFzCsCtfAiFBtlT13xSUY1TnpMIubmMhVxbB6r6fvwnEF0+XWC2P8PieNLK7J4V5JIUCd
	G1Dd8EAwbog1R/HSgldWFvexFfDfw5PhHehqpfd2M2m1P1IbcGhILfKWJzgpQZENGQP/h8IH7YJeQ
	SIIciYgyRM3WgIK0y2nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbecN-000000050xT-2Xws;
	Mon, 22 Jun 2026 13:23:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbecK-000000050x7-005m
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 13:23:14 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65MDG6ft1338363
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 13:23:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CphGddleZtR7hEzVNCHN3RYvRxeTDa6IKrCwZ8q/dJU=; b=CXmV8iUNNMjpfiwY
	gGasiUzLCR8+U5VzGes7i5Kv5P0noNtoD4UvQrKA9zcUUtSCOrmVsGYshLRK9LLS
	1zhebOrFndOr9zAJR6MWktOQLNj7kY1BH049lBVVvLEgwsMn+LT9pwuvf2NaqBkD
	kVyJIDepXDL7Qun87fY7GQ5V4WuwSquTvmny2eVM6LQAH12rZ7DQcyp0FqRZTxLt
	vYlQRb/x/BVTFPVDbZIBicaFDBPNhVYvT1ZGmSOOdX1Ua1185H9f51ODEyIkHJ3L
	2OfMAVdLV/WgEHyLSoWDg+V8eLnxdADxmO91wpPZ3ghcmQKBWPdegEUb3dZRNFLi
	GM8kEA==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ey37h8k99-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 13:23:10 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-6a0e8ca12b5so3239253eaf.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 06:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782134590; x=1782739390; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CphGddleZtR7hEzVNCHN3RYvRxeTDa6IKrCwZ8q/dJU=;
        b=BZvYUV78+U3ujgV38lTqNN1eJmKLziueymVU433lc3L2FF0c/Chpko/Ln5nQGsjIUQ
         p5XmhQ2nc7XJePy85S3Lzyjc3TXbGxitbH+kNwDZbCwI2kJzIcA/P00tYkoaLiOMXLlP
         GEeu4GDshG5aOjiMNN3ChO+v6Syo+WYcEUI1uGQs3Bls1jbGDWLlRtL641zo0jZR7dqW
         y6s5MSQp8kQCTuVC0oCEqlPmJ8E9JeUAFFpYuEwZdA8ZVrthmhU5A1w8pH7nVfWouCVP
         66raZLfJVpXtcTKJ6Svc3ahqH7IHmzReNlEGR+DrkmIo6PhS/Q0/LJsjDUyetOOh0sjS
         23ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782134590; x=1782739390;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CphGddleZtR7hEzVNCHN3RYvRxeTDa6IKrCwZ8q/dJU=;
        b=GYzDsQVLrTTWmIBBhzjvOgjCtjOtYqKLGfsKJaQQsZgKFKLUbpT29/SIYKt2IgJ6da
         TRmJnTvUaEjtseOk8lkzufXtkz0PijlQEPm9/4d6NNb2zj72xN3hOgiayeCuAbFCfac4
         kW4GE0UZQMcHkIIjkfVP64mGAQ9OmIQaRu8RIBXIU9GegWvsN/T7wghqCvnO/4mnA5sL
         pElcKgS/+G2daUx61Pxv29vTjgPcPaClJDcv93rd1qJkZKId4uOU3xkoYAvDfpmbPhc5
         sCTPc6pEdKSJVKf7faDKoyCVuIvc7IMkMgDkBDrmzh/nUlONzQ6KFOBMNztQiXjJirU0
         a1pA==
X-Forwarded-Encrypted: i=1; AFNElJ+f5R4ozWTG6kD1rvhcOPN43OP8tg+I6ZtvoYm1SFgHmkrHptyb/fkrKGIRYx9q1VhUsbAJGdM5/Zk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7lkoSIdKHb3Uep/kHHhTFZ6XBT50fejCpGN/Nhzl0/lkOPmmR
	x8cFgCGjCrd0ah6ae5NnVu0w5Pkdr2BtXe2LeuGsUP2m+Hsqs0uETGi5eTqN5WyhcKWK7NXnoci
	8173SzVMMIvB4Bdvh5AtXGPHcqhu6HBk9fy7bwZA64tCI2v34AT0zleYM2x/tzsFFuOaP
X-Gm-Gg: AfdE7ckwplRV56iZoKSjFzuBoUJEzbdUIjVeJ9A8M8JZli8iyNSHCN9vuuB4W0j+jl7
	LSlo3DFjXFSu/Ub5nCbQ1AfINZzGjLQyHLJ3FxjuhMoPwCOmjxoAfP7CJOrzXc3PHmtJr4vozpi
	dOH0W2TqrMEu/z1x28Rae3LGAREuPdv46KK6CDYL4YEct4iXtd8fqG+BL5TVtSRmzx44NDs12EJ
	2l2645Lk2vf50yOxvDRTfs/Vu/4SpMvt5wttmhBAUSCmkBqzAq+J26r5+86O8UVcbOagtvX1TAI
	AIxsJeV12oeqhIM/9hNSBYin9StE8z0rDtCbR1IKcMot8udT+MZkosI4KhDKK81a9G4MROjrV68
	uOgcHouv446xj6XEGqPeu6Ea8iVUhe2vq27t4t4re
X-Received: by 2002:a05:6820:1999:b0:69b:5486:e85 with SMTP id 006d021491bc7-6a0d8935983mr10656619eaf.36.1782134590288;
        Mon, 22 Jun 2026 06:23:10 -0700 (PDT)
X-Received: by 2002:a05:6820:1999:b0:69b:5486:e85 with SMTP id 006d021491bc7-6a0d8935983mr10656589eaf.36.1782134589908;
        Mon, 22 Jun 2026 06:23:09 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.218.240])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c5e4a14d4sm362337866b.7.2026.06.22.06.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2026 06:23:08 -0700 (PDT)
Message-ID: <0a6f92ba-de8c-48ae-9025-a7570e53e453@oss.qualcomm.com>
Date: Mon, 22 Jun 2026 15:23:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: Drop incorrect usage of double '::'
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, vkoul@kernel.org,
        dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org,
        linux-phy@lists.infradead.org, olteanv@gmail.com,
        devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
References: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622101959.37DB41F00A3D@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260622101959.37DB41F00A3D@smtp.kernel.org>
X-Proofpoint-ORIG-GUID: sJVY-tmEIekJhNbg61MqOI0Z-3g4rZV3
X-Authority-Analysis: v=2.4 cv=ecANubEH c=1 sm=1 tr=0 ts=6a39373e cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=qMZSjPy+XpteAuilWfML4g==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=fqWYVyBuAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=5ID31NFv_XroeS7ycB0A:9
 a=QEXdDO2ut3YA:10 a=-UhsvdU3ccFDOXFxFb4l:22 a=3EkFFxAVN7Xjp7FSp-fE:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIyMDEzMyBTYWx0ZWRfXzKxvzFwydWwn
 YT+ZLfi9HwI4vrXiZrsTfbCxfDnR/9FixR/hFLv1bIiYw0xCPA2FRLFxG7jbwTGwQmILeaGADOL
 4SEAmI5yVg6Y8zch53JPc9bIjD3L0oA=
X-Proofpoint-GUID: sJVY-tmEIekJhNbg61MqOI0Z-3g4rZV3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIyMDEzMyBTYWx0ZWRfX6t4wAjK+P69w
 8GbYKILFJouFrhhvcSG1bblsRX4srIByeSFoiGNgJNb23+DPUvhTxYNBpI8puwNarMRFsdEjBev
 aYvo9A9pfgA+Ib/G/6AQRZbVeS4Trq6xV9RW/BniT3JWhYnMDmDHJ2suVb4yfq7pW7K/aLuJEbs
 S8wYCWTyxwwRBWr4KQOVGtchRESYSJ3j1cPTIAUaRlGdl5Gfsu43zPXnNdxJxFht5STGKPG29HT
 ZihHYJ1a/XI9rOkuHn1O7dG7FaDdAVsCMLrsexuaJOVW4nCxwgRejND36ODz2dovdc/mHUmftO7
 Ms7Z8vKnMlJnr2fPpoylKWLH03npfT+czZmHRa5hXXBE1PaIT1yQXHC0PKWE+ClAP8kU9N/tvN7
 g1sCFBdqffeYHpbAyl+ovv6l6QnkGEkOPDuUysip7qIxjbVK8yDJAgCU2iGRa5Fr6YSMZeUL4jF
 aHOEoTExfo3KLjbN3YQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-22_02,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606220133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_062312_188392_DC67110D 
X-CRM114-Status: GOOD (  12.94  )
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

On 22/06/2026 12:19, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] Unintended replacement of BNF notation `::=` with `:=`.
> --
> 
> commit a9fdd0b065eb5b6394a9c33ffba0fd5194e80115
> Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> dt-bindings: Drop incorrect usage of double '::'
> 
> This commit cleans up device tree binding schemas by removing the redundant
> double colons at the end of descriptions inside YAML literal style blocks.
> 
> Link: https://yaml.org/spec/1.2.2/#literal-style [1]
> 
>> diff --git a/Documentation/devicetree/bindings/mux/mux-consumer.yaml b/Documentation/devicetree/bindings/mux/mux-consumer.yaml
>> index 9e2d78a78e409..769243a2bf046 100644
>> --- a/Documentation/devicetree/bindings/mux/mux-consumer.yaml
>> +++ b/Documentation/devicetree/bindings/mux/mux-consumer.yaml
>> @@ -13,8 +13,8 @@ description: |
>>    Mux controller consumers should specify a list of mux controllers that they
>>    want to use with a property containing a 'mux-ctrl-list':
>>  
>> -    mux-ctrl-list ::= <single-mux-ctrl> [mux-ctrl-list]
>> -    single-mux-ctrl ::= <mux-ctrl-phandle> [mux-ctrl-specifier]
>> +    mux-ctrl-list := <single-mux-ctrl> [mux-ctrl-list]
>> +    single-mux-ctrl := <mux-ctrl-phandle> [mux-ctrl-specifier]
> 
> [Severity: Low]
> Does this unintentionally change the standard Backus-Naur Form (BNF) ::=
> operator to :=? It looks like a global search-and-replace for :: might


I wasn't sure about that... and indeed this should not be changed. I
will send a v2.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
