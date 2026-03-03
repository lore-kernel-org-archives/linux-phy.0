Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29AE1EDEBF5
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 23:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoLcfCGwaHy0doJRLXSxvEV3nDkmOD8ZQuu1ZmouhUw=; b=XbSN5OxIxxpiUt
	Pda5DRV5J8BwGXGpaAxbYuhdBjtYwT1rsWpup4BEWx6s/wyUYJktx9sTO5kMVqqxZIq3oO3MpCnUO
	uzs1K3NnDo6jrg/BEQp5rkutAzGcKBagBJMCUCQk+x5UX2q2jV4JF3PFH7bftTI8O2n27JfSyxG1A
	QdJeNSilj/INUdWFe+/Qsi6IT+gY/xN6gc9tFI6LOhFMhETCK8GNYLhjyDwRnJl+XpsUJr4IMtFuT
	Eva+BFZdJN+yPIlVCNjdAJSLcvsuyYTPZRHTCDsQXce/9FxU4NHSfxFa0YbuwbHvj6VqmZWNAkR9l
	N08PzXN9UI63NQCxXgwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZ6E-0000000G5NM-3i7x;
	Tue, 03 Mar 2026 23:24:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZ6C-0000000G5Mn-12jb
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 23:24:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0ODT3708654
	for <linux-phy@lists.infradead.org>; Tue, 3 Mar 2026 23:24:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Agoo+WTV1u1Y1+T6EpYfbr8SfAFW7L323mOuRNku9gM=; b=cPAAwHJimnz9LQei
	f71pq1fgbqCSGr7cs8PMtxGBBo32WkyTIFkz5ocAxNAaljrVE/9jNBVaV7bUHy1B
	ThSZ7Mz25sLk5Ac28XQChxZsYXyg7RwlpjTXVHyePQQEKqNJwdea/81Q5XXuNos+
	sOAPlPHNkBW4e6jQJ3RS7ty0KQBe03lUJh7BGwaNRw1ayotCdKZ7ec2mDWi/gM9c
	0fHIzlroJX+i+D0kdhnMotHD8odWUsVVoIwIvjDqpL+gBciSRHOrDlLcBNJ2KzwC
	kIQExAhfy57duxnQDOgaWYhTiQebHR9Asg+K5hvU0H9USzWlCwk4CsWcG4sVYJ3u
	UAtBLQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnsjm3h15-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 23:24:18 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2be07cafe1cso40563592eec.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 15:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772580258; x=1773185058; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Agoo+WTV1u1Y1+T6EpYfbr8SfAFW7L323mOuRNku9gM=;
        b=S9F/45cLIBQ4K1KgSCLDs9SBD5kZVQoKskqu0Ninf7j42ef20ZEH14Yvlv5QXXs/lC
         fsHuRSHbsAO7fvAG1+7lnN+vC+0AQp2mIIeUKzNNRcbqoL6a5gFGMbox8WazYePa8/kv
         YC5F1DzlpqGAHtmTExJJav/IuZz/V67aqGhAEnLH4LgXWoswFOcX/kAN8uOd5Bcw6znl
         UKqHbefw+EdzZbLjY4ssVWwzc5TD4jpVhbPBvNpMDi3QRbD19sB+o1TxNR3dycc4CvzR
         QvBVCtCFhy3Xghcp4n1Qys8PjhMrhbTP3vleO0eQGd2g6AWMxuiFcmzvTXNie8fcMtbZ
         E3ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772580258; x=1773185058;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Agoo+WTV1u1Y1+T6EpYfbr8SfAFW7L323mOuRNku9gM=;
        b=h3w8xmSSBnUDzbn84iByvDHka3kP99BpWS2ZiVpASR+FfNW2iWaRnzfOkpBw7DeLr8
         szjhHsW3WJcJ7v+hVFgnA3xDJrooOTQ65zXlnJVLmT/ldX666QqJpyhVnmez3spUTtsD
         sjU2xJM9Zqwi8ZjM7/rOTHE2RCauQjnOjSOYc9FuKwN1hVlrMrVc+xZBuXBayVhCoHHL
         o51RAg+INBMuZoZBoJQz4Kw8Dx852/c9UblVYh5NvaN/uIUEm26Cc7wwhTDXvjTmiqbV
         13OdkoyuvUtIPzcuER30bUjranqm6c70jfVRZpBpgTC/s0PuVv6ApbT5PvpKfhWTjBUT
         qF4g==
X-Forwarded-Encrypted: i=1; AJvYcCUVGytDX5301fWWtm2aEcx+C0S4xfyqbsm6zjkywue4Q7b+h5Ywb1uc4S2x4qnJeBTq3DWIhJfYDik=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzvgkUGxq+sQ0qi3RHwWwQ9i/cpgeahh3vghzvhskoZD82IQkN
	q8Ddymzt049FDURonrvKUCgDDPRouEbO/LjLc3B7btkfTuRqT0MJFo9k2n3gZ5x7+QTROFVw3Fe
	j/bbLA3BsoOI/Ljo8XXe0wWH96eUgOQioJBWkphxGBlyKZV2NlS7smtnsRDuzMq4MeJE1
X-Gm-Gg: ATEYQzxe89jBIoRHc+UNuuTsfIom9tftVe3tkwicp4IVvbHHk0AOk6QyWY8neclzqXH
	zuJNMGVoLMD7GVUPPDpb3TwRMtyFWERBpo/ZYiutJWTFdriV5bvZfHOSSWwcI0fpDPnsESBKjz4
	Wg8kFNkygYusaW+d6jXsWFvZIbgTkuA9snnSQKbzZr/vLG0DZguF23nMiu2jEQD5+bwGtphQYYh
	4bFIVBk3fqy9I/B5MlsdRCfigl5xQksfUMOAqbk3frNdfIBYQFwJmpjMrngWjYqwT3V2Fbcm1Di
	sQIcvVNeC9J1F3lGs9Sa22b58TYNWpDSsQMDu5xIThVmyQNLLKZFiOkGShmxhmLWWi7JLiqZYBM
	x3mrYdfsq9Q38CusA6U8SBnKWIZwXad5R0iMWdqCnC1IzM85h+u0L1rqkYpC30XAf3fMFQBIbVG
	TZ
X-Received: by 2002:a05:693c:2c0d:b0:2bd:fd23:72cd with SMTP id 5a478bee46e88-2be310a2cb8mr18049eec.26.1772580258158;
        Tue, 03 Mar 2026 15:24:18 -0800 (PST)
X-Received: by 2002:a05:693c:2c0d:b0:2bd:fd23:72cd with SMTP id 5a478bee46e88-2be310a2cb8mr18025eec.26.1772580257564;
        Tue, 03 Mar 2026 15:24:17 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2c357d6bsm788690eec.20.2026.03.03.15.24.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 15:24:17 -0800 (PST)
Message-ID: <f83f616d-9114-426d-bc9b-42ddc839686f@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 15:24:16 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue
 <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <yhatx2iuoofvsqpu5da7ohpyvzhc2y7uq3bhuhfuv6pkfpqrnz@75xei3bawzza>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <yhatx2iuoofvsqpu5da7ohpyvzhc2y7uq3bhuhfuv6pkfpqrnz@75xei3bawzza>
X-Proofpoint-GUID: cnzBEE4UjZXbG-vnX9VZGyIxx7GRVrUb
X-Authority-Analysis: v=2.4 cv=GIUF0+NK c=1 sm=1 tr=0 ts=69a76da2 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=h69VVFRyML4NUzg0ml0A:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: cnzBEE4UjZXbG-vnX9VZGyIxx7GRVrUb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5MiBTYWx0ZWRfXyFZ8KK6eJlln
 HiY/EEN8rRgGUUqGsrWcGNe9lielLGEJvM6D+ZWtbfSzy1kGRKQqYduiKt0aSx9/CeAeZHiMe7u
 GTYNaUY7wISg2D6cpP/P22GUm/nH6yoBwbtLysUP2m7xKIA+pretT6krzQv+loPdghYt21aMNmC
 VmDuPN9VpRiYi+tGtGP6BFpMNLNxaIM83Qr/Or2m3aW/UmuEp9Yo+pb6MDovMEW5eJAnKDcOoGO
 6riRmddWUdoLxDswXHx7/rMdsgjAqSiHjAAQykG7pYVciIMqVCdNFXkVK8kuPwlbI7kppNI7PgM
 hEOh0P+6Nn5vW+gDWtrFVz5eLVTkaxwhZhas0heUjDtOb+HVbWzZ/RRZPp2H3fH0nzir3/R8Ak5
 wnCbztAB+HlkstYOFacdx0nTcCJsmbZYTo19ejGZDyde4V7uIcDEJvVAqKfyOTI5JlbI7bX3p+u
 wMwxOn/W0GAvEH57jpw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_152420_321036_56F37C32 
X-CRM114-Status: GOOD (  15.74  )
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



On 3/3/2026 2:31 PM, Dmitry Baryshkov wrote:
> On Mon, Mar 02, 2026 at 05:51:24PM -0800, Vijay Kumar Tumati wrote:
>> Hi Bryan,
>>
>> On 2/26/2026 4:34 AM, Bryan O'Donoghue wrote:
>>> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>> As we are cleaning up the PHY device nodes, we should consider fixing the
>> power domains as well. Although TOP GDSC is defined as a power domain, it is
>> not the power source for the PHY devices. Rather, it is the MMCX, MXC and
>> optionally MXA based on the architecture (Refer to 'Voltage rail' column for
>> PHY clocks in IPCAT). There is no
>> parent-child relationship between the TOP GDSC and these in the clock driver
>> and it was just working as the required power rails are getting enabled
>> by/for other MM devices.
> 
> Which domains are required to access CSI PHY registers?
PHY register access requires the PHY core clock, cam_top_ahb clock. So 
in my understanding, we need to trace these clocks in the topology 
backwards up until at least the RCG, and all the voltage rails powering 
these clocks will be the required power domains. Having said that, just 
register access works even if the voltage rails are configured to the 
min level, which camcc does already.
> 
>>> +
>>> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
>>> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
>>> +    };
>>> +
> 
Thanks,
Vijay.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
