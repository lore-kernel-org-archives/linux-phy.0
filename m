Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71C37CD8CAA
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qUiAoXb5w9eQoyb42Kd6xXJAb6UUvaPxLwyeqkH6SI=; b=BcoRJNvmpjgC4V
	KcY2Gc7JZX5ifJpwC8YYG6ZcOF1dVIsqz3s7ixG4jsOt7poi0BVABP7nZHGB1TZ++3hx+XZpvJLov
	0vXeORBi5mM0TJqfDIc810QjGq5Lw0JGicLJhx6zJpqGA34bJBE+R7YrwdIgwBInWAOIaHoLE4ETQ
	ooI4sQlFxoRpHgh5WL1xT9k6xfY7xSP2b+v+t3Uiga6AS/IuBft+g7xNO32dIYAs3mO276o0f/7iQ
	WiV/lvGdrf4YXi3gipiT7Q6dKUW8d0t7PhYhL+yNTDsr4TBD2TfiMDmDkMlp4OQpmpB6Ry2MBozze
	kiJEL8a/Ei8H33nRB31g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWtW7-00000005KR1-49fd;
	Tue, 09 Jun 2026 10:17:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWtW5-00000005KQX-0Bdd
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 10:17:06 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6599vQI21867945
	for <linux-phy@lists.infradead.org>; Tue, 9 Jun 2026 10:17:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JudsusfDtbrr44rlxP7/oBk73rfyE1SdPB/IQf+KXPc=; b=nlgDO/26oEBjtB33
	e3LXmHI/I+uVAz0axQLW9DaSUmE5W2QolchARMtMAxaOv5oCsHMA9BanvXAn2rgj
	Rzq5mUiXmTCa4pNfaKyjrBpcgC3ZoMpdJXTtJre1w8HVbEU3n7lQQn2jEG7xbHEv
	NtjSa71NrurmuRmGEnKlHmteCs0fRGu6YYOy/BtMQx4mmJJaeduh8RSvYmcUU3R/
	L7hLmQ0bL2KGK9Od26tveYRWJxYm4N64xOciOSvHhfXkrW+FXFktHpi5TlLYrYAG
	opVIE8rTihmgBAAboS14MA8z98EGrJ4UFyS7mWuyMX7NVPm0Gnomn33MTNELmDnm
	/PNbBQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epdeeryn8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 10:17:03 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-36d8719bae6so4736474a91.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 03:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781000222; x=1781605022; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JudsusfDtbrr44rlxP7/oBk73rfyE1SdPB/IQf+KXPc=;
        b=euIYpsi4PcmAIHsiHfrmanuFMF1Lih6mO2R1RD83CaZYQRbB/hV5OdBgTM3y/Et6zd
         oMK41miOJYTxRRKDT5chyA02ZuSikohsfnGcQ4nB+NpJxMsvd76bA3XhdwOWgGzE5cej
         CuaZl3Z9icAUR9qPbwVfelCMMO5Ib/3F4oIdy3uROQcTJFzsVwKpxpeKmYdDsdg9a9Sn
         XpKtG2wyEEUB9tHaV+GqCROm07aueLceSS5JH1O9jXcqoMYdCrm8sd+TmVoDlIJOBc1s
         EUyXk7HdgFUJAIDot8DddCFMK8Q9nR2kcz+MMauwbO9ffVF84U54waFQWFeB8CFlrJzh
         rFhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781000222; x=1781605022;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JudsusfDtbrr44rlxP7/oBk73rfyE1SdPB/IQf+KXPc=;
        b=V8FubF/gxFjvbL5IyIqFQZ4ftqwVSE6dyfTsNKykcJJo4eo6ZOZm3D6ZEcMDW/MNt+
         Q+D/7OOUbC0pSKweJn7OTvFNaEkeBpfD020xla1yyVmxNTZ51pdSpHxbW60mlx8zkN73
         Fri1FYdmBGg+eIOok56YReSWN0PmO5vY7f2RFxkypo1p44J3heFi+K3Qjw02UJvd7Tuf
         2avGDRlKWWTNq03oTlTSs+Q4MqU5lMCJvMrZaFTyWo5W/t0z5i6B6LgDwcuX+NMe4tu9
         GNU9g8kLmRM8mGoman20DMKAFUUfSPgAOjpO753pzc0oYWWjWX6pyA0xFldWDyk3UmMp
         DusA==
X-Forwarded-Encrypted: i=1; AFNElJ+RFh8kj0JHwZ9DD8nJCbd4v71MDJ9hoCMoeYJy1BzSD0h31kstCRwlvuUMBXZbYASlmGHE4HvRYe4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUOgjrKZSlJowlf7lBatwOubXhiSpkQEnYXbhC2f5gqUpB1J96
	q3Oa2RTmRnLb7uE/jNiU3oJ+hitXrJ2IP541fRI2Y0+hJe7IJ3CQ9qi+eGBLi3qrMnhrcbF+2Dj
	m1JpDOMz8dk2XseM54/gDLN8gZDwustIFJM4J9j5ZGTP0Z+PPsHKNYrOb0uSdskRsh4c0
X-Gm-Gg: Acq92OGgT7OHms8GMT446Q4j6gbjDGXpq/74ZFhzSIzCE1h7itdaZRH3ISCQIt/xXtI
	oLHkbqhgkaO25tW6fsC6o0szDqQaTLXwXI15ieXsKMC8CqfBJokScx/6z/SxRTZqNLdzstR8heM
	kMQEzFXzGPmjHDmnF1/Vb7RNSkTxVoJ6RGDljOBDyKl0z4RkpvZYfT3794oUedG5tV2bsTm39CV
	24tbuXgd8870D7iJbL+aIuCx+Yy2DDpHRs3jLuur8k2lOHw8FZKKMFum50mgOW3IYI8hWw6P+YM
	Jg5yZunvJW727MJJOPpbQ22TQz432NOiTZaJQkOMEbLHteQK7+dM+vUvd6q5xZY3cdSHTDbM3+t
	hLrAczKQnMUgjIbqqqyujpx3BVGRIRRm7lGzU4my/kKryy9KVmiYeY6IQNYRq7k/CInQjL7zK94
	pA
X-Received: by 2002:a05:6a20:9398:b0:3b4:640e:f6c0 with SMTP id adf61e73a8af0-3b4ccd77534mr18165462637.13.1781000222550;
        Tue, 09 Jun 2026 03:17:02 -0700 (PDT)
X-Received: by 2002:a05:6a20:9398:b0:3b4:640e:f6c0 with SMTP id adf61e73a8af0-3b4ccd77534mr18165419637.13.1781000222095;
        Tue, 09 Jun 2026 03:17:02 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df0b374fsm17704239a12.25.2026.06.09.03.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 03:17:01 -0700 (PDT)
Message-ID: <7def2ccd-0319-4f85-8275-73fd254d887d@oss.qualcomm.com>
Date: Tue, 9 Jun 2026 15:46:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <20260602-ipq9650_pcie_phy-v1-2-d8c32a36dbd9@oss.qualcomm.com>
 <56zkq7bwrt5smmmum6jckzrekkkqrych2gntx3obnrmamwumtv@espahwe6pc3v>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <56zkq7bwrt5smmmum6jckzrekkkqrych2gntx3obnrmamwumtv@espahwe6pc3v>
X-Authority-Analysis: v=2.4 cv=H+DrBeYi c=1 sm=1 tr=0 ts=6a27e81f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=qlr8FlQxwEk1uUl_DVUA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA5MDA5NSBTYWx0ZWRfX4aW7Pz1Up0/0
 y03Y/C/pKPnh7QGANANJLw8bsYAuRbGri6Sp0ujTnomJqb1Q1BRGNA+benxU49RlbyHM5NOl1xM
 IV7HbqFM5d0COF3VWq+V5dMhK57sf8JDBerrgvnMTZcW4FpVbyeVNYBNXZoi/t8ioaZMq6JgIva
 +1uVZoPjiuZmFhKwemDRwWKGPIbxx6kOQ5vvVpsRugnCB2E9asKejuyLqWcE1wbS3r5L4KzOks4
 Y1vv3pNADWtGL23nsFVoytLoMFSHvJ9SaHRQ+NQqNQlhcr5E0r3m6ufz1XrNmkvvx+JJGR8bYnk
 iVwzdgXO0iSAug6Lm86qAUPuYjDifS2MG8gONqutTHqHsz2PfkA3ku6K8Q6Ckrxmfqz1gKcI9gD
 4QQJjg011tiIyeAZVr9ZaLFvqSE7A4m8Zd0ugaIwyTeJWfWT7gLdTPv/pTpz5N+C1rBU+YkUW5V
 m7vIW2NlMnOtntWIUJw==
X-Proofpoint-ORIG-GUID: zhgS-jYdw5H3wq0IoOo8o6qWl0UkNhvB
X-Proofpoint-GUID: zhgS-jYdw5H3wq0IoOo8o6qWl0UkNhvB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-09_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606090095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_031705_096532_708E3E40 
X-CRM114-Status: GOOD (  13.72  )
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


On 6/8/2026 12:26 PM, Dmitry Baryshkov wrote:
> On Tue, Jun 02, 2026 at 02:40:18PM +0530, Kathiravan Thirumoorthy wrote:
>> The IPQ9650 platform has three Gen3 2-lane PCIe controllers and two Gen3
>> 1-lane PCIe controllers. The PHY instances also require the on-chip refgen
>> supply.
>>
>> Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations, including the
>> refgen regulator supply.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
>>   1 file changed, 220 insertions(+)
>>
>> @@ -3378,6 +3524,10 @@ static const char * const qmp_phy_vreg_l[] = {
>>   	"vdda-phy", "vdda-pll",
>>   };
>>   
>> +static const char * const ipq9650_qmp_phy_vreg_l[] = {
>> +	"refgen",
>> +};
> Now vdda-phy / vdda-pll supplies?

Cross checked with HW team again. Along with refgen, there is a on-chip 
LDO which supplies fixed voltage to the PHYs. It is enabled upon system 
power on and no SW intervention is required.

regulator-fixed doesn't take the resource 'reg'. May be should I create 
another regulator driver which accepts 'reg', something similar to the 
qcom-refgen-regulator? Please advise.

>
>> +
>>   static const char * const sm8550_qmp_phy_vreg_l[] = {
>>   	"vdda-phy", "vdda-pll", "vdda-qref",
>>   };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
