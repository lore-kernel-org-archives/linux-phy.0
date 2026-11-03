Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449BA606C5ED
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 10:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Kd9t/Zje;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=PZJCCqn9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HqH1Om1Z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+4A8Y761g3y5COeV2Mq9W4XNnnbmcRwsBO9S6niT7aQ=; b=Kd9t/ZjeZnPXYh8aS/IA/WQtU7
	9O7vnQqSGX22k8A3GmqDVS5Pk76mAzVSUfKlUY1WtpS+8kyi3GjBUBqweRrFH+oOPNMWLB0jAFgaY
	eN0Ke537RtI26PPrWZGJn2hAZ1sscoM/RwsCR2FuHCQw5pkdY9+o/gUeUmHP2CnCuVRDY2JEZ4Efm
	gRJ2qKuhuAZBB4scQ3V97xn9SNVBVdnzLDrpdkyiZTYYqnSeJ3hkqtJn8nfoLX7/hN8MWXOLtgwew
	KRRMRcb/jH2dkqW/xETQdcAnuwADClh/m7DC/Gi3BgyLm6/YVAIhQ9cL2VdMWfZ649Zm/MiHrId/E
	OLz0VwzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOC5p-000000025E3-4B7K;
	Tue, 03 Nov 2026 10:50:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOC5k-000000025Cb-3xeV
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 10:50:14 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3A9x843130815
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 10:50:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0BtTPxJY+SQ3iqv7Fvtvh2D/RiM3yHOC2GPAR8vYW/U=; b=PZJCCqn9PIF93YCj
	bsDrUAcIaAMX7chydQEVwshzZTWAPmRhpL6I0m+iFALgsc+HqipijCebGazIwC+r
	n4xhg9IjMjcIJEfpfgQvhodT8LXaqHWlbfVxCKClHAG1lEyZbxqIDRj2hQkV7LGs
	QYPSBCpYxQbzo1NT8B8jD5AEOSMNmOhxmNJOQuy5MLF8+tTtOdcbGUCzQgwrtjDQ
	BQIVZ2jwChsjP8sz7INu+HoL3lvMSceVfrKzL6ZQvpHtVcxdTHzcYD5vt8R3Ntze
	FpzoNRiWGrT9fOGt9ZG/H+jkrCj3aVhYf1stXrYIcXY5gpGZNVv83+QThrDHzWqC
	xTd1fQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq94csaxw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 10:50:10 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cd6969473a4so2270464a12.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 02:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793703009; x=1794307809; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0BtTPxJY+SQ3iqv7Fvtvh2D/RiM3yHOC2GPAR8vYW/U=;
        b=HqH1Om1Z6fhVMywE+lZfndRVAVx0eZ+BXwrkXWObFxWFN98APU4rOrBdZFkhdl5MB2
         reEynt1Kp9d1onAedt2LqZ5RD2R6o1/juBVLAGVrySf98/VNvgf25RHGz+8oiyjbNfim
         xhJIY2DDsUjR8kQu1w9hlLFAF5+PUp0ntSUXOFnHtcc8MOkFWciw0lFC5M+BwuRvqqfR
         jCbHLwuwAVl18paJcmLIzt1wwDdNZa3KUEwn1bmDqKGBlrwRLu5WSf224w0E4EM+MDlP
         0vmFEU81t41IsQvqGr7rmDJ9GD43xdKWMYLkbfd+sM+OO9GSM49hC+98G/DRbjPKbbgC
         pePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793703009; x=1794307809;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0BtTPxJY+SQ3iqv7Fvtvh2D/RiM3yHOC2GPAR8vYW/U=;
        b=Ds7JwnNwKzuQwbEZtBf7UKSOI4H4m+2yaoat6NNN4R+Qz/k7Tf+jpIwALotdqwXWcP
         CJ/WavKADU+6kDoTRVPKoEnK/dmi6mdsqZP20cdvp56uKK+hw9gBpY94fT2m66H/gYV3
         JhMsvDixdf/YJOGmRxS2pUmF+4pgCDdVJe9XVvEvjWnvwqwMRjRvXxbTTU01LgLIoYuP
         u6janfEpFa1+Exi8rHsh4vEAWXxHX9Py/Cme++IWEF8upaTl1Hd7KyRQq9h8FkFq1p7u
         QIg2WYRIMKRfqpxqxMP2MPw3lRhxLa6qUu57CUOd+SX2PZf2HL0GpR9yics97ALVWwZN
         6F0g==
X-Forwarded-Encrypted: i=1; AKwUvByU2PmVspOAGguJPLUGPlYNQZ5zMJpeOqo8t3rdnkEpBwPsKmr6roFjcAP6c28ZNz2eOjt44UUtuuk=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Lk7yGuGzj9U/w+Wqa01K4is1r8eUcnj1LqkY9GF7RWKX9d3JC
	d7qAiwq9LPcCRkj5RfL4Y7YGHKFf94dmvYkAwgpxms637gd+pzxwJuHjixhix4IX8fQL7XKHBcX
	HCVYdVDuwhOf9ANlUfMnzZP5D68l1oToUBib2mgL093qKS9NVLspbqum58gMw0qOm+UOz
X-Gm-Gg: AYBFou1SfpgAzajnK0XPqYof6wBElT1nSqojD2TtL9EWhVImMCNAtdk2aBk2LMoJusa
	VS3kKnsEVTS+2z5RwmmU6MFDMeGCwdlnLQPJhXm0ru4Wx7k7QyK8Duj3rwfq2I/j6mHNoKSVPIc
	Ixz5ImlljCdlTqmAnmGU2gtx6VC4g9C3VPv+gsztfM0oBSKuJ+a/vtg7YIQeMDNaYOpL1aOyIGu
	/KybyTdkw6QamTt/LZzSZyh00HCxP/yVG9vk4fwUQNE9QF+cPho5PvQ8mS0HrxsDde4YY2subt7
	DQMlRwZ6+LrcJ/WoTBA9tv3Of7mhmqV9CmfG21e+XwhxDQxzyyKwxdSYj48XqCBJggiOK5K+2PK
	tEO98pCloDWu2mdbVvsv17JIJZXBmktK3vHQEec47ybYwHkTwzSwlfA/M6Ok720bsEqpOvUFnT9
	TGkIGFo+a1sZcjkI9JPi6x4SRFH+a64gkwxHLOTVkCsw==
X-Received: by 2002:a17:90b:51cf:b0:3ad:818f:3da2 with SMTP id 98e67ed59e1d1-3ae8982cc41mr8675052a91.63.1793703009479;
        Tue, 03 Nov 2026 02:50:09 -0800 (PST)
X-Received: by 2002:a17:90b:51cf:b0:3ad:818f:3da2 with SMTP id 98e67ed59e1d1-3ae8982cc41mr8675040a91.63.1793703009003;
        Tue, 03 Nov 2026 02:50:09 -0800 (PST)
Received: from [10.133.33.42] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b07c583d0asm3915104a91.3.2026.11.03.02.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2026 02:50:08 -0800 (PST)
Message-ID: <d4750da2-0e89-456e-8d36-a34c3420b285@oss.qualcomm.com>
Date: Tue, 3 Nov 2026 18:50:02 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] phy: qcom: qmp-pcie: Add qref and refgen regulator
 vote for QCS8300 and SA8775p PHY
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-3-ziyue.zhang@oss.qualcomm.com>
 <ded7f87c-74d5-423f-acd9-efa83a472c2b@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <ded7f87c-74d5-423f-acd9-efa83a472c2b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=O+KsLx9W c=1 sm=1 tr=0 ts=6ae9bc62 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=3v8O9tVSiMwV8kAMF3cA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: WI4Esj8KL_6rj3KHhoT7Z0GpnLI_qOJp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA0MyBTYWx0ZWRfXxlxw/sGQqqu3
 0v1Oe0UZkjt2Hn3JQHMwKVcGeeRx7NbAsjR4VAeJKYTUGvz/4JcXRsNahB2eapj3JXeUWAI0FTx
 L4q6nunb7Ex9zUtTPZ7P+A++yxFekXHutIi4vThh2NCFZquR6dIEhbFuOF2Wp682NO0ILJ1PMfy
 kVo+s0hiy0MGO5RMeajmBadScAg5IzRlrolrQFXOj8fLs0FYqYKiv8ulILDSNKJCt4KzJ9vJRD2
 OWkdcPz53Ac9HsYd/BfW2xJ2UGUmxJZDnCNYl2qg89MmwR67F6k7QphQu6mnfCGwfWkiTx1UNmZ
 IHYbnSzPbnjqM6nqGJTvV1DC0xLFYf4Q409azYH2EzUHVCRq0ABTs/x/Ufu2I/HltUmwaHt3uzf
 zZ4QAta2+YUH/H3eYIAy97y9MWIAWD95TYByCIyCF490pSpdf5oK5cHD7iaXLHxqx4ehJEzhPFF
 NpJiDrsc4qJAFTuhnWg==
X-Proofpoint-GUID: WI4Esj8KL_6rj3KHhoT7Z0GpnLI_qOJp
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA0MyBTYWx0ZWRfX/zBoLsfYwIpI
 tBttZxDGeLOBtE90s5yVQWxPL54EPBZimmdv6IX1HdJcrTzfis8kbV8Vs2f5BlbjtnDE8SKEj99
 /4w59Eo/Ud77lmSD5EpT8QDjwV+Ocaw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_02,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_025013_106253_8D4EEEBE 
X-CRM114-Status: GOOD (  18.37  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 10/28/2026 10:37 PM, Konrad Dybcio wrote:
> On 9/16/26 12:20 PM, Ziyue Zhang wrote:
>> Add a new sa8775p_qmp_phy_vreg_l that includes vdda-phy, vdda-pll,
>> vdda-qref, vdda-refgen and refgen supplies, and use it for QCS8300
>> and SA8775p PCIe PHY configurations. This avoids modifying
>> sm8550_qmp_phy_vreg_l and breaking SM8550 and SM8650.
>>
>> These supplies were missing from the original driver, which was found
>> to be the root cause of occasional system crashes observed on QCS8300
>> and SA8775p platforms. Without voting for these supplies, the PCIe PHY
>> lacks stable reference clock and voltage, so the PHY never becomes
>> ready and initialization times out:
>>
>>    [    7.303119] qcom-qmp-pcie-phy 1c04000.phy: phy initialization timed-out
>>    [    7.309948] phy phy-1c04000.phy.0: phy poweron failed --> -110
>>
>> Note that due to a hardware issue, QREF actually depends on refgen3
>> rather than refgen2 as documented; refgen3 is therefore voted manually
>> via the refgen supply as a workaround.
>>
>> Fixes: a05b6d5135ec ("phy: qcom-qmp-pcie: add support for sa8775p")
>> Fixes: ebf198f17b5a ("phy: qcom-qmp-pcie: add dual lane PHY support for QCS8300")
>> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 16 ++++++++++------
>>   1 file changed, 10 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index da83358c97ea..ab81c6e584a8 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -4094,6 +4094,10 @@ static const char * const sm8550_qmp_phy_vreg_l[] = {
>>   	"vdda-phy", "vdda-pll", "vdda-qref",
>>   };
>>   
>> +static const char * const sa8775p_qmp_phy_vreg_l[] = {
>> +	"vdda-phy", "vdda-pll", "vdda-qref", "vdda-refgen", "refgen",
>> +};
> I think we could grab them unconditionally, as QREF/REFGEN appears
> on most/all SoCs (perhaps with regulator_optional_get so that we
> defer the correctness of this to dt-bindings for any specific
> platform)
>
> Konrad
Hi Konrad

I think that on future platforms, qref will be voted by the tcsr
driver or another driver, depending on where those registers are
located. The PHY driver will only need to vote for refgen1p2 and refgen0p9.

If future platforms need to vote for vdda-qref, vdda-refgen, and refgen,
they can simply reuse this vreg_list.
BR
Ziyue

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
