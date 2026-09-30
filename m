Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71AABCA5FB1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 13:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqDA+E3IwzUoRhR94J/TfB9SRjDVAH6KlWCtrXh+/YM=; b=UPLtwK+gbqKmcj
	cOTnSV5dtvBGzQydu8o+pLV4dVEiVYUOwilUP3UEgAuTo/7DW64ZhyV5vEyJUlDl+A+YiW0EKDhle
	eaN9JVi09N7h8hrLnssNUwVhMblY7JE/eOvoY8JCeS3Ua4CpTLm7Hcl4WT7pJG+BEWjJODDiuxdBM
	zEVPWNd+bYMCSyl3vfKXNdYW6H51fz1hgoGlL403lFnMmcCE9d7HEL6dD1QdOEfgXhzFXS/3WsU4t
	r5tA7LLN/rcFahkFZMKEhYmsESUHnZty9QqsAcfpc6BuPdGeZQocfzatMqgLNhiUlqEbf7hVHimrO
	BAyyViKXKkjHIphaAHJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBtwp-0000000657o-0hcB;
	Wed, 30 Sep 2026 13:02:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBtwl-0000000656a-2Dai
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 13:02:09 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68UB7rcC3955114
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 13:02:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nLZxX/P3cORqRfG3m1LU3APd16KiMYqBQy2nKdjCkno=; b=SGIe3Y/DDCRBVqYc
	JpH2YrZwzYxYZxozDGA7bo9hvjBKS0a8+yTiS4xzc++gFhYhiKnr1tNZUyqqPjlM
	e9Jf/cOQeOnaUK05aWXBM6Coq/iWqJrPvKXIpwKfxcYPy0jWxk+HJ16IQENPwlWK
	IvQK6gV0ilYZ6rvAQODxQ9flTnqn/3ZPzQz0AYG0kvDIG6e55XDckUnZs4WpPkQb
	kwu9B2nULaLssVGa7NYNsiUpN+1tDQLBVLQfsygEV8+CXb9gSSgD7nKArTuApd3q
	WwSBy3FUUckHcOCkeHBEcg+a3OWMJC5NIb7Kihcz+2a0EAjX/Py5R8RJR+SJallM
	8mwkMQ==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0j97ve5x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 13:02:05 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-7b7aa329c5dso1106794137.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 06:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790773325; x=1791378125; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=nLZxX/P3cORqRfG3m1LU3APd16KiMYqBQy2nKdjCkno=;
        b=YUEDSmWDEUcejLoR6e877CjO7elbEIbrUQJzlSOp+9yyOvVUwuMTBBPoL1JUS1EGX2
         RV8ybHR4OGlzUsGYsctd3+AtBYf5gLiSD3PHWfJyuHWrNxTocXgRULu0oriPE6WlCWFj
         cc8bDFcoXBlSTpNv917enV5q6rV/wXlshd9uFD/mx0jqs58uy+0NLw+6xaB+joSEYG/6
         u994zLp182tUDjsKyCUjX1Cl2uEZv5uhzkiaT2/eZuz+SDdHzyjvGAR96ns3aDFFd/2l
         3adFAEC734nW3FpMpkPmjE0pQ5XYG8l4AvdTSlT0dZMNnSJ0njM1B8/haJ4z7UUVa5by
         LOsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790773325; x=1791378125;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nLZxX/P3cORqRfG3m1LU3APd16KiMYqBQy2nKdjCkno=;
        b=g4CwcSDxl5O3/TA7VH8E0pjRG+p0ns0fxq64sajE6+cYcKjlvt3k5RVSaRPQVBnehx
         SFIKi83VDjRaZN5ldx6Ymh8tp6+h2ucnN4P8ss65uRpUj9ArrDtJD5tsuR05xuQrQ9va
         /axXbley/MRLOkEBwp0AB9GC7ntVCphsUDZjAbxUrli6d1yVcvZtGeMQo+93GBHAWzAh
         R/a5PDiokkY974i19mzZ9+XbVAG0mMxN+PGbPRjsS5Q49IfClN9H0A5DpnxJzXZxFIvM
         v3Q3vVffTG9vErKeg8ROISn0sg/MCOQcq+wwwTwTWLOBmISOYPiwcnWB3Tg9g+wxt4Bv
         2k/A==
X-Gm-Message-State: AFq9FYKZXmgALuDYTK6fPZ0IdWd060I0Kg+z5NtkgvPjKuM1RjEBzXhU
	aDtWsudG0e9cTipCUFHmvetoJ8HUf6w4Nt4VhZrPe1N8kRX6EC93Yiq3Cc4ml7NzW8wFk+JATt7
	AOQxU+nI3uu4SOgSvvdmqm8tgH/Jo8ygQ6Tscm2PXnMeCM186wiVIeIQmgJEyHvxABdn4qcbYQo
	oF
X-Gm-Gg: AYBFou3DHFNqVrVrMNA1Yqc80+Bmlt12i7j4aDxx64qaGUM7pNeqlgClY2QyLIrTn4f
	55caAD1KVFXHxH1spEWGqWhBhwMo2F2rhV09aOKeo2AKzQheWhzlXPOKcMdfTl+tIahH7bxtI21
	e+Ma8TvVtktgVpWqoEzXNErbh0fwlAl/2oh4CCLm/RJW2xdjGzBxAHpxrIvcTRixDfcEmTnJGgX
	58+UugMdHbZi87hMdmcPiEHXGTwl8SfjW2gQDs51f46jhIzsauHgkh78m1m+4W+8TV9K7Qytnrw
	8G9SFABWojTOIjpDMAk9O/dEXxx7tepv+8FcEeVrlsPnXificBFEgz4+VB1meZoeplHfG+nGeuZ
	fepwE1i8+oCSIf0TUhSnpI3Rz6Wo1ferueWTeNn/3OkPwPuzJNsC4C2qblOh9ehU=
X-Received: by 2002:a67:ff0e:0:b0:7ab:d498:aa69 with SMTP id ada2fe7eead31-7be72eac357mr194596137.23.1790773324262;
        Wed, 30 Sep 2026 06:02:04 -0700 (PDT)
X-Received: by 2002:a17:90b:4d05:b0:3a0:eec6:b065 with SMTP id 98e67ed59e1d1-3a4d276edf1mr763347a91.13.1790772898774;
        Wed, 30 Sep 2026 05:54:58 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4ce16abc2sm3270351a91.9.2026.09.30.05.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 05:54:58 -0700 (PDT)
Message-ID: <04f98e0b-e54f-4641-8a07-eea7a998c2b1@oss.qualcomm.com>
Date: Wed, 30 Sep 2026 20:54:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Subject: Re: [PATCH v17 02/11] media: dt-bindings: Add CAMSS device for
 Kaanapali
To: sashiko-reviews@lists.linux.dev, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, media-ci@linuxtv.org,
        vkoul@kernel.org, neil.armstrong@linaro.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-2-dcf3fd37f76c@oss.qualcomm.com>
 <20260929060809.5DBA61F000FF@smtp.kernel.org>
Content-Language: en-US
In-Reply-To: <20260929060809.5DBA61F000FF@smtp.kernel.org>
X-Proofpoint-GUID: RcTlNBdxKEzXpdN_n06aHCELPGb0o5UK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTMwMDA1MSBTYWx0ZWRfX8uHiH8fiCckA
 bVtG1njRQseh1my283ORWz4xcBvPCc0aT/hbN9a2emcSMOMbzqB6kHcJAFK/yaFq/UNZr3tfXEd
 xaSi6hrm1l3GMxJVvkW2Vcv+2jMVEtzpKCFltu5NrSRicWnKs6yxFMrYtqoRE1ereKkD+zrsz1a
 cVPsZKczwpYGptxNAWmrfTVvUIm9tqCns1M/DhHqw7zh9/gaKDlPj1lnc4BrthcXzZv1fFHuu87
 MJHRmxEJhuKUT9kacgiWGALbayDtZwwlZQe3eqwlF4FxNm2C26H8tLmyj7Ms8woFztpLWDgOr0J
 2AHov4LQBgL1rD1OAvUPY/lZFyZcHtv3aYpJsac7mL7LT01MDA4W8l1zeBTd/+FNIOSs+FUhhzF
 DTLz7v643XaSEY2JOjk45BM6t8sZ1ylVl38Xb63/aLF9BjW9lnqmsfjMUkD55GpbLlZ0JeerYXd
 c11jiPoJKkGGplLK9uA==
X-Proofpoint-ORIG-GUID: RcTlNBdxKEzXpdN_n06aHCELPGb0o5UK
X-Authority-Analysis: v=2.4 cv=BPImP1QG c=1 sm=1 tr=0 ts=6abd084d cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-qPLxJttfSs1q3B3DocA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTMwMDA1MSBTYWx0ZWRfX0nDcs5gYSsD2
 w6Kf6sTQMbNVJmGBAuAOi1QKpMVnCUrMffy0EPEIMdOeZvyqO/noW9f92v2+uvRMU2/lVnaUzbX
 VCRSGMR3JE4kFLSZznKGaCPGN4YdxbU=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-30_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609300051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_060207_933396_463C57E0 
X-CRM114-Status: GOOD (  17.15  )
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

On 9/29/2026 2:08 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] media: dt-bindings: contradictory port count description vs schema
> --
> 
> commit eaf675a1ac25eea3cc950df0432cfe59f97c1517
> Author: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> media: dt-bindings: Add CAMSS device for Kaanapali
> 
> Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Kaanapali
> platform.
> 
>> diff --git a/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
>> new file mode 100644
>> index 0000000000000..1f8b18517e13a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
> [ ... ]
>> +  power-domain-names:
>> +    items:
>> +      - const: ife0
>> +      - const: ife1
>> +      - const: ife2
>> +      - const: top
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    description:
>> +      CSI input ports, one per CSID. Each port receives the CSI data
>> +      decoded by the matching CSIPHY.
>> +
>> +    patternProperties:
>> +      "^port@[0-5]$":
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        unevaluatedProperties: false
>> +        description:
>> +          Input port for receiving CSI data from CSIPHY 0-5.
> 
> [Severity: Low]
> Could this description be updated to clarify the port count?
> 
> The commit message indicates the platform has 5 CSIDs (3 regular, 2 lite)
> and 6 CSIPHYs. The top-level description for the ports node states there is
> "one per CSID", which would imply 5 ports. However, the schema allows 6 ports
> ("^port@[0-5]$") and the nested description mentions receiving data from
> CSIPHY 0-5.
> 
> Does the "one per CSID" text need to be updated to match the hardware layout
> allowed by the schema?
> 

Exactly. It's reasonable to remove this misleading description "one per 
CSID". We control that one-to-one CSIPHY and CSID mapping manually and 
the real multiplexing result will be different.

Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
