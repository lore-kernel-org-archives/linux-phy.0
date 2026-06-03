Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97DA2CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 21:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3db8s760sY/ehVsgnO3MvnoF/dR75Qwd00E4vN8iAA=; b=JtQA/+8Y3HVquo
	lnZiCx3cuCNY1LSSV+uu0Fvcn4WKxoU/lLsDU7rtVkHPMdLG9ZZP+IRQnUyM60rwksdcQWK67B++k
	qG+c2ukHF+6sr3hizRduaY5voCWCo7/gz5iXApLfSKpPqZM6UnOaDiRZXsQdvI+BecvljobMFF6qF
	jfEpUJR0+G8UMFrOriNN0YjkEldXKCt4y93USsRMnUNcU3ooxjmJyqZDcqKh8MtqQ+TTbVm/t+ZWB
	sZb6uzMiU0LQxnsbeOtUVVpskdorU2ihbTfV97PkxltiMzA7hpAPc0WeiC4Y555U1pZ2CzhqNhTna
	vAxKfq45jm8k7yRA6fHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUtR6-0000000Fs6O-0QNf;
	Wed, 03 Jun 2026 21:47:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUtQP-0000000Fs5E-2xpa
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 21:47:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653GjJLs2260834
	for <linux-phy@lists.infradead.org>; Wed, 3 Jun 2026 21:46:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YI4SVhkK6E0eWN6DtYQRlG4n4FVt4g9e2Fn1B2lcMFM=; b=dtOMp8RSacUZoCYe
	efjvGKC+HAT7c4p7w5nn4raTde7oWIY5XZlQgiRfGawn8NrHS9oFSxPGWbOR1n45
	MIZnFNNphA3PwHJNnaqkyKQSIK6zxhABvK9/wHqTMtJrHLONWZHrEWFLYYefwj09
	reHvVmClMJxAzr1vpptI5H4u22+dosRl3wOs1LuywneUwJcp8lTBZ0/P8WgWcC6I
	KP1E8waRuSlG2krZMV8ig9P5eGZ5C7AtevDb0q4h4v6C9zj66jQfX8+DWkkmNgpD
	Yjzss6O8AOrKmUya8ylbqjE63vsZC6XfcZKGKh+EYD8hxIEnX2jFes5RTuD4BNiX
	u5a3Lg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejr2mh6dw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 21:46:56 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-304d8613efbso7444595eec.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 14:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780523216; x=1781128016; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YI4SVhkK6E0eWN6DtYQRlG4n4FVt4g9e2Fn1B2lcMFM=;
        b=Myzp5iUpPtLmGAyqKTCnEpvXZ8LdyhPx9wG9E/1eNa1AqlSjMqH9S/Fa7zEsN6coWt
         fR/RHvm/u9V9CQx+FlyrLmpIFDfr+Vtg5sAJnKp+bZXrXqGEEZWdSFy01J3G/qX5qYn7
         w6EE4WPEGjv1rz6EL38D8Tmz/7he2URXD6+qan0bRvxedEnnPNnPAV9Qvt8HVWS64grO
         NpdVI+7y1IO3rJGVrrwdkdGNMp+grOFJHAy5n2GC9aFwjLRcR+P1SBsRVkZfX4LN13yY
         BKLQDQ8pXXrpdJF7RS5S4FZuuaPnUCeGwlZmud+OopwBPYANmZWu/HTC92I7RMw3WkSu
         R/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780523216; x=1781128016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YI4SVhkK6E0eWN6DtYQRlG4n4FVt4g9e2Fn1B2lcMFM=;
        b=mCn0aufM9IXBqx+25BBT7rClIFvoHeALr3AWJljLcZIXxYAQZA7B1/uvbP0Il4U/Ar
         ZYMRWPfpnn9ltqCoPQAkxaACkzi4OpSmtqOKLdELDIA/e/l9zXOayr26/+/UVGjKQqow
         LJ23+SHtckfjexLZHJ+f6VeMKTjJ0i+NuyW5m+P+IddVhwl3wZgk8TbyaQo3mXm8a5Y3
         G9MqSmzcJm23Ze/TrjSWLAEzNoyfqx2B9qVL1dx1MIdAkCqthb6ImNPa9CtxleXgPwLo
         4Yk9XbCT2DGAZ1+tbXp4ueeQYueHld2bz2spV4z1WeXaqdpSuEfZE0MIq5kbxRk4nth9
         yeXg==
X-Forwarded-Encrypted: i=1; AFNElJ+Y9pwCDt2XklI93kD/0P3ZMhgFU53YhZyGNkJtgA6sq1k96RxBZvMh2sbUFrXDmM8uMOI63er7AJg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOWnra8tuhQwrrEej3ozE87VGMy1vCjzCqAVnTZMPyFQQWf28E
	89prNIfLQZj4LM+FOAk0taTFUK37BW4dfTmWEA/rmEI/sq4YKagngcErLRCKTVQDCeYRlVzVN5L
	yRKWwH3A/6VnCP6Fos1ivNyiS4jPqqIY5KjOJuDmsalx21UVAX0yOQj4JV6zhnU57lnma
X-Gm-Gg: Acq92OFRwflBvSch2MHZJ0CjJZDViNbT6Ap0DsEIQKYeJ4x+Pu1y6/GJHPgREPXzLoN
	GtXF81KiANFwMI2v/YDblKVdqn3XfeftBoAFFm/e4+XA18itZ6/M5iMx4t0p4nqyzXlGpEnxDT4
	VneqjEM5JEVkJNrgxs6gpLVrvg79CRcHfBz9Eh5pEvrY/FA5psDqb8+fssbh6bc1+zr53Knf9wC
	moARWSRHd4IVC8ZxJQl+nSI3tqd8lpqad4kOTh1nqgIu/UftsnbItOIoxP46OOwzE7e2c1h360A
	aWZTt+mkXBe4PHEvASA6gibJ0PejIOjzUUZmUV86je3okZHWCb2xRxigNLEK/s2QSRmeQzytq3f
	ybrbPXeFintXt5hi+J8Y12+XJndeWJ+xD7MKRUil99H51pX37oZ9kb3UzwWzm8zmGO7VjayAvgC
	SRCEfsZdYUJ3w=
X-Received: by 2002:a05:7300:7250:b0:304:997c:d4b6 with SMTP id 5a478bee46e88-3074fb4847bmr3287902eec.17.1780523216063;
        Wed, 03 Jun 2026 14:46:56 -0700 (PDT)
X-Received: by 2002:a05:7300:7250:b0:304:997c:d4b6 with SMTP id 5a478bee46e88-3074fb4847bmr3287882eec.17.1780523215500;
        Wed, 03 Jun 2026 14:46:55 -0700 (PDT)
Received: from [10.62.37.26] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3074db85e10sm3362286eec.7.2026.06.03.14.46.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 14:46:55 -0700 (PDT)
Message-ID: <21facbaa-c001-4e82-954d-f2f6838d41b3@oss.qualcomm.com>
Date: Wed, 3 Jun 2026 14:46:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <rpnNMsR9GY8gbynzeBO8Zm61JAOq3ubt6sp0x3WDPPwkMAJzlcofECD1kabN-IUoK6sSwP5P6l28UIZLFCOpjQ==@protonmail.internalid>
 <dda32577-04e0-4507-acaf-a5694f4f31b3@linaro.org>
 <478df3ed-d4ef-43aa-bb84-e2075798542b@kernel.org>
 <ec98ef2f-02b4-4086-8b4b-07b6953dbd20@oss.qualcomm.com>
 <514cf213-5778-45e1-8d70-d3fe27991fcc@oss.qualcomm.com>
 <7JNJ4dUNz4ennJ5dkzhfLSuVo72JpfZAbprICPRqlRYnSzVDJw6x3h-1nESd_PK-3us9f1V3qOiLiywsTqP8vQ==@protonmail.internalid>
 <f01c0e22-4e5c-44e7-9ea4-4bc8d53aea2e@linaro.org>
 <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <29e8491f-20e8-4082-8943-66bee7e3af1d@kernel.org>
X-Proofpoint-GUID: uSH5Usc5d_K2dO4IyTuq4k3ZPzl9cfyC
X-Proofpoint-ORIG-GUID: uSH5Usc5d_K2dO4IyTuq4k3ZPzl9cfyC
X-Authority-Analysis: v=2.4 cv=A91c+aWG c=1 sm=1 tr=0 ts=6a20a0d0 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=R4he3g2KxIACXk2nk8MA:9 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDIxMSBTYWx0ZWRfXw/9wtYjUuomI
 kSY3egbceI0MdLBzjePZRO9PF4ZNErHaOrYXKFqOGMu2q6FtUhkHoAX2QR3XtdknO2GLIvSiPtD
 buQZMfkNBOQgCnwWDbx+BJuxgCPj7GQxTN7YCMjDJYE423knThwVwwSwrehyAP+XzrLLeuxxN1k
 mAAflAeu7i2Q7ggp8uJfxmvnOubXk9YgnI6/teThMXOAwldSQXHfdySXF/bOO2lI+PDlT3M0dbM
 RMmM6cN/mcTi29+3ouGZzoppOjMSgO/yhCIWOhyGQKEjNRqssBkolYdhRCLIhxLt/tm51pXo5gI
 stCBwJyM+O/QPYkxohnY99u2gT0Zf907De1xF6oT2l0mykNN/p93AQR09gxgset7F2AbU7FNQCR
 20uuubF4vRDJOn5P+01pK538k8sCaBNgaOvoNvQz7jyYWXiTn2U/yG5sn5Erv8Outs4AasvbfYm
 /b1HiSGllxJHDFdu3nw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_06,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_144657_782297_4148C778 
X-CRM114-Status: GOOD (  14.12  )
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



On 6/3/2026 2:18 PM, Bryan O'Donoghue wrote:
> On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
>>> Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
>> If CSIPHYs are true subdevices under the umbrella CAMSS device and well
>> described as subnodes, then likely none of power domains are needed to be
>> repeatedly described in the children device nodes, since this information
>> can be obtained from the parent device by the driver.
>>
>> Technically 'power-domains' property can be safely removed, I believe.
> 
> The policy is to describe the power-domain dependency fully since DT 
> describes hardware not software architecture.
> 
> Also for a very practical reason a sub-devices can probe/run 
> asynchronously of the parent device being active so in fact we do need 
> to describe the PDs fully.
This makes me think. When the PHY devices are made the sub nodes of the 
top camss node eventually, we can discuss for somethings to be avoided 
in each child, which we can come to later but for now, you need to add 
the top AHB clock as well in the PHY node, Bryan.>
> ---
> bod
Thanks,
Vijay.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
