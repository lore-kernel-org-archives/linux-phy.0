Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5B25C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 15:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMf+S1f11ETKbD7PJgHaZ9z6JDHrd5Gh4/6HL2+WtlQ=; b=Tpl39Ucb2BPah/
	CYzcqhmCF3MTacv94XLbcrbJFzAyyNwGv2WC1D7tOKty5kD75c5vC/qhN2IouiXZdxu2OErUwJU5y
	lbI6LENZp9x5+ZvDYYFj1toL76PEqIZf30VcSbnbgCTDpuySL14N9RQKA3KuDbJd+kdrGE8BceaIr
	/lwg8puOdBKVIekoxXGRK8uD66IHYHabNUSwlYcl8dmeek6y+i761mgxQuR2CDK4jGZN1IcGdOg/+
	XTUFNZBrjq0yZGmAcenF4Xyh6U1UBI+6ZyilAja79Id4eAoKuwZjAf10t8wSoS1Uq3A/Lltx7zBXl
	aLekMA/wzB2qg4v7J8XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJk0-00000004svv-3e2f;
	Thu, 02 Jul 2026 15:54:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJjy-00000004svH-19pq
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 15:54:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 662E3OnO666012
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 15:54:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q6x2cFE6unxjGxiwK8PfHeJpInWtKm5Zn24hzqi4dKk=; b=Mw2aa2msrY9PB3KR
	N9wAOvyqGE2xQzgyGNTRTOIlKOROsnyWxpvFQRyHqaqGVNuyaXUKHpTjvdYQogmp
	W+r1/ToinuV19jDmUkhCNgmbGjVtETUE88WGw4p52krmO49VOnYsLvI61+7KTW3o
	Bx2eVzDNJv2Lkf+EZ9V+kl9t7Nbm15qEXYnUY1CoUcbw2nuG2iqhN/iYbiiRDGTa
	ALCUU2VGmeh4oKr00BzgET9IG4vefrwC6WMbZYRKaRoImtPwX/8OnZoA/T0iRfG+
	B3ZbuduyEudcSVCjbvTjoNa9LH+d6AevQuoD7IGsX2RGPCVkYD4AB2am/FvWMeXt
	6S2OOQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5knc21gn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 15:54:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2c825562f8bso29517365ad.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 08:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783007652; x=1783612452; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q6x2cFE6unxjGxiwK8PfHeJpInWtKm5Zn24hzqi4dKk=;
        b=cz1OQx9tHq+jkrCD8MIr7cA1kobvq5CAUcHY1kWbfPVgbKI5pdZulCccO6EQT6eXv5
         13SsaFPbmH7g8mxKvNislqM+h0TtTh6VYCXMu+y541FWgqEqGn4x2HL6tfLvSEK7bw2F
         y9Y80UPbhVz8NWWyFLInUjiHMINXX7uykKTkLfTFGeATb1vjcCluZ9h7/DsM6LNNmqKD
         a07R7pe8+M/KkYIXwdxcp6pTgM1AbkHlhHDIJA+KAZJW4n5YueOtAnqqfmpMzbq/DXet
         Bxcp61C0a+orKraAR4lhKn0djBtv7IDLXRYekNJOUc2J50m5RpZ+HyR1rSMMrs7raAay
         9urw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783007652; x=1783612452;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q6x2cFE6unxjGxiwK8PfHeJpInWtKm5Zn24hzqi4dKk=;
        b=PJSUl88sZOznW/atGw4S3GtuVy3rM88gkvd5ALoGkKA1mUWrsOuEyiaftDyhTEgJE7
         D1zFafvUYptH5zgH2yHGb5WYmcOtQiLsGoPLgPaA20r1u+ELhGGl1K+iAEDNkIY41Ept
         o3RzNM7K3X8QgKAhvcGX3QD8gVQoejw2aDSyY08AE06gQkl6IPNUVBFhX2JyjYmuKxWn
         WV7P9W1pQsVsBpXK0sRvUK3PG9gGzG+Fhdn75lJMQ9OhsSq38beIvh41swE/hPYmxFt5
         BcpUF8pCkmDmA5gj0eBch8FgNZ5gNgfIXJrWF7nRciSvRNKuqfKH05Hnn3fsnfX5cEGi
         eF2g==
X-Forwarded-Encrypted: i=1; AHgh+RryBARa/fWcatWou6OBCOvTV/87KgdMEsiCDcNhS2E/M7pF3TGAQh/wYKkgN6GF4v4kHBR5YJQjDHg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/e3EQcIlb6bjdRm9EhPWnsjLyibby64GEsVUj6gi1SqNvU/+y
	DvblduxL4xpSrBw6sbshi3KMOToNEUQoBYSOi9UfmM4zXKRWOGOb7Lxh6Pauom3fvaNP5BVilNT
	fnudw2T3k/+9CpZemn8m7BrKVwE+UqiN4pMQVw0LhAzjGKUseL3SCJMqi7TnEoa2+BkRU+0XkXL
	vL
X-Gm-Gg: AfdE7clppJgxJ2EUDBsqvuRrfzyzNU9EZHme0w1T18B4T3u5AsKHupkpKlNMliRrnqM
	wMOiQG7nKtzISyB0IW+Bqmbk0CYP+Y5kHo6zaS+Mj8HOt+zwldVdN3EOHwIBDOsL8roVhTNcwJz
	zdD2qE9BxyK5MpqG72/kk88d7BmdVpwATASTumouwCUhVNqN7LDu+uqDatfCw/fpJ4+1Ii52N4x
	rKPaUhATgGsLTQMpMFspZ8xzFrqDe+pJ9vk3ePWNrlzw1sTIkJEW6+wsVTm2zuTCJLZzUHjimOH
	VR559uZAbm8hnmeL10dcGx04QIZaGdBU8oBUasCfOOxlbFUfAb8J6tXGWS3GuWVosg26hqXWpEB
	4gdXiI8l9rzSx1D7/cYk0gxvrS162SGM6m4kJ1CEMM0DhuqE9RV/GwybQBpggL6C2ZJ6VzDMsHL
	P1qQ==
X-Received: by 2002:a17:902:eccc:b0:2bf:23c3:34ba with SMTP id d9443c01a7336-2ca7e756e2dmr67124865ad.28.1783007652395;
        Thu, 02 Jul 2026 08:54:12 -0700 (PDT)
X-Received: by 2002:a17:902:eccc:b0:2bf:23c3:34ba with SMTP id d9443c01a7336-2ca7e756e2dmr67124515ad.28.1783007651867;
        Thu, 02 Jul 2026 08:54:11 -0700 (PDT)
Received: from [192.168.1.7] ([122.177.240.71])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a9fee7csm15691255ad.69.2026.07.02.08.54.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 08:54:11 -0700 (PDT)
Message-ID: <b4527f73-1884-4a85-bf65-288309d040e6@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 21:24:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] phy: qcom-qusb2: Add support for Shikra
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
 <20260701165051.4122259-4-krishna.kurapati@oss.qualcomm.com>
 <ym4zec5vw2mudnvhw36w6vkuqupbl6up4dqmhk2sqeabphotsf@sudiy6poyjyx>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <ym4zec5vw2mudnvhw36w6vkuqupbl6up4dqmhk2sqeabphotsf@sudiy6poyjyx>
X-Proofpoint-ORIG-GUID: Jn43eU2Un52l_2Io5RR9_HurhBpeOoK3
X-Authority-Analysis: v=2.4 cv=a4kAM0SF c=1 sm=1 tr=0 ts=6a4689a5 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=WwE2FERyN8QvVYJ+zedRYQ==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=FLyz3zfJLnz1irVRmH8A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDE2NyBTYWx0ZWRfX5zPiDyC8qn2N
 xrYZU3d8t7j5UYWNOloULqRot6k5yRgo4dM9PosVyuYrYes/J4GWarF4eSRZvwDUAC3XzILQBr9
 Xuw6v+fDEzD3GkSVtuZkxq1n4Fbqdwue+sBq74s/eEqDaTnJ8lU78c/bKOHdg12NH/vcDV/mFzj
 1h9BNSY46RS0lNPdgLso24dklaT22B9M6hPfGE8EU3NGH+4x1hIY+Ks69ygVRDZOR2e4Ga6ZlTh
 F0Q6Q2ukqDwFwcDmHuDaN9DoT7dWxvpev9KSWbnAFS+Red0LYSyma9ZGdYFWrbE2jiy9BsdMcf3
 ANTXH2FkvYlfRXF4cmAUsgdWcpF7z8VhxSsfS72Uj4KgvXE55/ZuV8LeZuADEwuH5jaL5aRA8UN
 Gjj+ppiC2A0sMtxLfS4GQIQwwxLKQIi2bst4r2Ge5GINHS/17C1CAzI9ryGy9LktObBawLEhxZh
 EYgNHi/l7au0/EN0TYg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDE2NyBTYWx0ZWRfXw/dR+OQ5gnCe
 LtQheMAu4RottWXkPVab3IivsJcpkfUUzDXi/I3/iahRVkVpQc+pXWI3CqoePXl4Lim6E2w7Dxf
 d/Shwnav4ggqJTVyZFDoLbmhFHpxxIs=
X-Proofpoint-GUID: Jn43eU2Un52l_2Io5RR9_HurhBpeOoK3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_085414_443710_21A56E6D 
X-CRM114-Status: GOOD (  15.50  )
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



On 7/2/2026 7:18 PM, Dmitry Baryshkov wrote:
> On Wed, Jul 01, 2026 at 10:20:50PM +0530, Krishna Kurapati wrote:
>> Add init sequence and phy configuration for Shikra.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> index eb93015be841..ab7437e7b751 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> @@ -381,6 +381,19 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
>>   	.autoresume_en	 = BIT(3),
>>   };
>>   
>> +static const struct qusb2_phy_cfg shikra_phy_cfg = {
>> +	.tbl            = qcs615_init_tbl,
>> +	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
>> +	.regs           = ipq6018_regs_layout,
> 
> msm8996_regs_layout (otherwise you are programming the wrong register).
> 

ACK. Will send v5 on top of your upcoming v2.

Regards,
Krishna,

>> +
>> +	.has_pll_test	= true,
>> +	.se_clk_scheme_default = true,
>> +	.disable_ctrl   = CLAMP_N_EN | FREEZIO_N | POWER_DOWN,
>> +	.mask_core_ready = PLL_LOCKED,
>> +	.autoresume_en   = BIT(3),
>> +	.update_tune1_with_efuse = false,
>> +};
>> +
>>   static const struct qusb2_phy_cfg sm6115_phy_cfg = {
>>   	.tbl		= sm6115_init_tbl,
>>   	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
>> @@ -958,6 +971,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
>>   	}, {
>>   		.compatible	= "qcom,sdm660-qusb2-phy",
>>   		.data		= &sdm660_phy_cfg,
>> +	}, {
>> +		.compatible	= "qcom,shikra-qusb2-phy",
>> +		.data		= &shikra_phy_cfg,
>>   	}, {
>>   		.compatible	= "qcom,sm4250-qusb2-phy",
>>   		.data		= &sm6115_phy_cfg,
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
