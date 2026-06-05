Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E09CD6E75
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 02:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMQ7W2IaAdDSpLhp1XelnsLCiGgc045xWj8Wqov2XQ8=; b=AA2M6cgzejLFvX
	kYzQ9cQhUPa/IjPJHsvAPauVDa898FixP0yM7BwIXtlmNeNTGd50mDVm2llGDWzFaVaZv1zWdvyTi
	6fS4W23Z2NcJ1oz3NlHtSQT6M0IS8GQsF8PvNn8zVbR972Um9Tes240Pn6lkCvr/cXUzWUrjVqooT
	dSv/mfdLqFBnqHhaYXCy1gonlcSYc6aLoGDCr4ERhkj9e/WNyC32QmZcXJb7aMA9RvaQovV7Xdfjt
	NwmIhqmf8JkSRVaX52x/exEQNJ7ec9LaZfnc8+9Maj80HovPAMctQhqt9szh8DXM8eWT1LTVAlIVw
	PVgL4N4j/rUF12jT5+2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVKmE-000000000Os-3Txs;
	Fri, 05 Jun 2026 02:59:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVKmD-000000000OO-10XE
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 02:59:18 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 654MWQnb1132209
	for <linux-phy@lists.infradead.org>; Fri, 5 Jun 2026 02:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SAdx1Eq9kdE+KZ8PMnuzkZszkmDD5iaQbJxqQjTed+Q=; b=kVE2I4cL476C5EbE
	kBXhNsOXQjV40efQ6pAErLTepAj8WF/3btyLp3wTm/aQk7qPsoUh4EzBMT6RKM0U
	YOTp4WdPF3e6GyLyoaXDWVM5TLpECbWVhfTz3krXC6kIMTCeA9mkfSxTSrKhsTXq
	6PxLAxW1iFlJODMDNaNJTOhJeHVmWEvLtxQEu9QETyW5scTkmyZvq3S3VwspbCvR
	7j4kEFAbSZz7SRfEAF7g5hz25C+IvGcpLWPBF9dKbMnhmbRs5BWcSgVNWaH5XXjE
	g+b1FfKF9fLyXhK5QCOVSX3Q8ElNHRZA1GCpaM6AvIbEBpI+rPTInvovytJhXqri
	5E/9ww==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ek5wsme45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Jun 2026 02:59:15 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-307625ee07fso903884eec.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 19:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780628355; x=1781233155; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SAdx1Eq9kdE+KZ8PMnuzkZszkmDD5iaQbJxqQjTed+Q=;
        b=HOdZ1cqO2zHzgZJS+Mp2kewK/dYwJp0vsT/9oizvOgomfPZfpPfpcEDOJpUV+DAHve
         PKxzYpGVzeOeSmyj+Hkp7S2dwXUKb52eO1PF7vC4GJ2TnErAnJRPJ4j1ysWkYditHsye
         HsUQxveNUdvNY9b2KePPCh7ZZLSvKIFTIeNFH3YZ7zq6FobSvtrdqR6QilVXMhmp+jmK
         RIwwcCBAJtGhwX58HqIqfarruA9x7DcsgluwpeIt/JkpbB+ONp9Z3oh4ms8zxbW97j/Q
         IMVQWKwGF1Yt5C8/zVY4xt/XL1AbQc0xaYX/Hmqdsp8xXkIZkDebEIDLKjqTuwOV5lmd
         mLiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780628355; x=1781233155;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SAdx1Eq9kdE+KZ8PMnuzkZszkmDD5iaQbJxqQjTed+Q=;
        b=EntX1/OwL0XO4ne/kVUaUi32/KizafD8T0KHr+7TNFaTagRT0kg5gjrbKM7Ww0S90Q
         l/EEesa9QKYOCm00n5P4HKkbd9PrK8xryhQLtY/BCzTin0F2VD8TznfxDUkwmjRHbpPD
         +HPjTcwrEYuk5YMptdNhyawpYziSaY/W5njuSgxGlkYTSakJnFMvuiQNVn2Ka71Gjwgp
         A9V+tXelmcsjSS+1IKOuiG2guLF3HzfyCQOadv7CTynYD8bOoyWth9iZpqKX7I7KyWHO
         m+LGku1+0Gjznll1R6jm53rzH3lLq/gIAZkW+0Jl3eMuupkueR+DRkOvGwSkke4QX6B2
         6oIw==
X-Forwarded-Encrypted: i=1; AFNElJ+J5aO5L3ID1OimLdYVc7m19vlhfO40Fas9Qarnp0XAW0V61+aSQFozYtC4vDOtwm9NBVnXwPSm+Ws=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2Kx/Ke3wKj60sfI9irxclPoBlQ28X0biXrC1BXVw9e1hRgjbD
	WVa3rxsRk0m7WWkYKtEModwmsdxOjPAElXeqbTkU6+TR9LCBWQNCa6DAzfZs2W7xIXqz+J2BHcR
	IhHtkTldYmbuOsCoEoor6Eqx+ijRN5fnkZBDdKRptlHxwdpw+8+RFfR3fji0jCBfG3qqp
X-Gm-Gg: Acq92OEw+2afkwGOApbxRXbkOlLZ09a6ks2G4egoIFD6t90ILhEMLVP1/0GFOjahBQK
	W4O5XnLRWBZel3feWdLdjBtWzJHeWUjtv/a+82m3KLTC9CPh+zD8K2CaHHjno+YPkYfCXuGrlE8
	wLALUJG9ZMsvtTd+MjoqBX0l9hOVeBA3Hxn8DyIgiRmuUC8HU6DCI4NTnCCBvegPUHytQN811Cj
	mvWwP4eCZxO9RESjBVqIZfWgUSDq7P7qxbkWY0zSFqw52VM10DJx/wwNyymleSxivoki5mhsYtH
	z7NsEQk6DcI1/GsIDXNoDvW4ww5MJnOBf1QdITqFdSgZRFnZGCun6xg0qYAgusHHCJqcPNBbjta
	YnXOFK9wwtFFI3NGYAG9ow2TMSNnY78JBFGAJPR0kWFME9SqyRW9ZzzDpHmZp
X-Received: by 2002:a05:7300:3250:b0:2f5:5dd3:1fd8 with SMTP id 5a478bee46e88-3077aea9ef1mr834982eec.8.1780628354841;
        Thu, 04 Jun 2026 19:59:14 -0700 (PDT)
X-Received: by 2002:a05:7300:3250:b0:2f5:5dd3:1fd8 with SMTP id 5a478bee46e88-3077aea9ef1mr834955eec.8.1780628354259;
        Thu, 04 Jun 2026 19:59:14 -0700 (PDT)
Received: from [192.168.1.57] ([76.86.21.108])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3074df8076csm7105120eec.29.2026.06.04.19.59.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 19:59:13 -0700 (PDT)
Message-ID: <1433c48a-5df4-40a7-80ab-348caea588cd@oss.qualcomm.com>
Date: Thu, 4 Jun 2026 19:59:11 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
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
 <21facbaa-c001-4e82-954d-f2f6838d41b3@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <21facbaa-c001-4e82-954d-f2f6838d41b3@oss.qualcomm.com>
X-Proofpoint-GUID: lbMLuMuWDlCcVEXScfPV24e8CBAZz0xV
X-Proofpoint-ORIG-GUID: lbMLuMuWDlCcVEXScfPV24e8CBAZz0xV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA1MDAyNiBTYWx0ZWRfXydOhjYlTW2Tu
 TxLmrWSqdpoSSR6r9dv4Fo6FZm4UjAkIgLJG3oR9Y+z/cL0NgtmwmjhQVbKKzIa+hiIpGTnjDjr
 r4ojYEXX60zlDGCLqshYGEDmVC0aaQtx4UIw5dUCLCThNFSyO3Q8nsdBDNmznfvjQwn+mcxSJyx
 iQ4dL3qpnkUT6cshTdDsAEyPmTmBZe+kqAykgdgpQLSzH5GaJfEpysEjzykyh2o6o7pCP9V+/+A
 ARyeF1bqgRlnCDUhiZ0qPQ+pSIMimO3Fvya/QIpT6j588AaoTrlYgQIgIndiwrPNrqpuL7OZgZw
 KnLgjB08lCOS8OJokS4Js/gqvMKHPevwMbhTrQHojqAs3ocF8SWrGnpRuWFn0TE5Okrk2JZJVoI
 TcSE6YNNRyJBisLZZBViiDbD7o4GZ8ZMQ9ABHq6dOTGcmk5H/y9HRS/6mfCHqbb1DB+GvQhkK82
 r0dMQ6p/tv3RxsMfbeg==
X-Authority-Analysis: v=2.4 cv=POc/P/qC c=1 sm=1 tr=0 ts=6a223b83 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=0jxUCcn++d1AQalQnBt6jA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=e2-Id0N-X15YFAlKe_oA:9 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_07,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 impostorscore=0 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606050026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_195917_407256_9B0AAD32 
X-CRM114-Status: GOOD (  15.09  )
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

Hi Bryan,

On 6/3/2026 2:46 PM, Vijay Kumar Tumati wrote:
> 
> 
> On 6/3/2026 2:18 PM, Bryan O'Donoghue wrote:
>> On 03/06/2026 21:51, Vladimir Zapolskiy wrote:
>>>> Actually, one more thing, Why isn't TITAN TOP GDSC here?>>>> +
>>> If CSIPHYs are true subdevices under the umbrella CAMSS device and well
>>> described as subnodes, then likely none of power domains are needed 
>>> to be
>>> repeatedly described in the children device nodes, since this 
>>> information
>>> can be obtained from the parent device by the driver.
>>>
>>> Technically 'power-domains' property can be safely removed, I believe.
>>
>> The policy is to describe the power-domain dependency fully since DT 
>> describes hardware not software architecture.
>>
>> Also for a very practical reason a sub-devices can probe/run 
>> asynchronously of the parent device being active so in fact we do need 
>> to describe the PDs fully.
> This makes me think. When the PHY devices are made the sub nodes of the 
> top camss node eventually, we can discuss for somethings to be avoided 
> in each child, which we can come to later but for now, you need to add 
> the top AHB clock as well in the PHY node, Bryan.>
Sorry, scratch this comment. You are indeed making PHYs as sub nodes to 
the top CAMSS and not independent nodes like CCI.Just looked at your DTS 
series and realized. I will let the discussion about enumerating TOP 
resources in every child node continue in the other thread. Thanks.>> ---
>> bod
> Thanks,
> Vijay.

Thanks,
Vijay.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
