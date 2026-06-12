Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6488CD98CC
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 02:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvJs8Or6YNA/4wwJwaGlHbv6QE7pbbHeJDdwVy3Zp0o=; b=iuJY6+R1281Cfs
	e7WS9XZxG81AeGx7E9EEwO7AUaW6t7rHuRfwKPxu1ZZjGLIWqGTrjRuwX5lDjnL0W/DfIpM6uA0CS
	dPh177DLKJJwO8dvI3c8VbwQ/Fl6hQJyu5/pYN8yHCdYZGgqIR87zs1Rso58L2B6afnKpWe6/dQOm
	VtELYxRE7bxwKlRABb2hQai2Emhq1hETrezWutxAKsY5MQbOLhBrK+oJklbY84Plm6I2GlXYM0L+z
	FRMfPqLSLjYSAStJ1A3CLqZ3dZZEEIGUb2lRhkZMjMoOu6uyHiYern/VF6inxDTXYlrEFRCYntGg8
	pzHwrgIxr9/7xQveRyvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXs0D-0000000AIwR-1KDU;
	Fri, 12 Jun 2026 02:52:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXs0B-0000000AIvr-0M7M
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 02:52:12 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BMW4ta1949059
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 02:52:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fcNplGJ1Sabq2Y9bKw3Y1rXhSqvMVBj3TrS26bNA4I4=; b=IjD2lmjNZmmDXdv+
	p4QquYHJ/ZNFRBtM0g9IbixMcmiJdhV00hJe66eVTyBhFhluUynHrHy8WfUIFMID
	KTIQK3k0Rw0ZhddiNBOPmLOAl/Paf9K4VXIr5sisYVhDcj039Yq5zUzf8Dgo3RAD
	ELdEHLfNrXETVaSs3kSzRpWAehVGzY9jpFKOphRyTbh5so8EZrqOZUdt/82CEeQt
	/dfQH2EkWJw4lu4vr8Ozk70I18S3Ggdf0XsQL5R6iqgLIpgaGG+AAlu6CQqeCNh0
	lFBFNIv/z9JxT9G/AuexlRQtn/cMTXaQyS6D61N3IjsKvdCSDkPCvY3G+jcG3pLw
	vox9DA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er2u41bp3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 02:52:09 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8421ffff8a3so695823b3a.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 19:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781232729; x=1781837529; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fcNplGJ1Sabq2Y9bKw3Y1rXhSqvMVBj3TrS26bNA4I4=;
        b=bsddNNEhV+vozo9TR+ah2h9UUShMRGmEHPT5sDWQpJvzqBRojgAgqZdxJaEmtqr+aU
         hvV/BK7kmHoErX1hGRqFNAg4qgt4eNsvdf33hyCKSUTr9Sz0aU271SZLkfBPYBPVd4Gn
         T/lo1aM9jRfZfkGCQKShYvBx2eEPHUC+F4mlo63+OC1tLYmGJr7JEPtmFGpmIE9RdDJW
         BhXZg30UutvBGuZPaDMln6t56SMX4+tonJR1go73qpbz8pCTQ2EB+IMXvduXIZFK6GH/
         Lc8DIx+i/ioLrbE9qUwmkVa+wR6IcYeofAA5Fg4c5ICM3gyxC2XOzDi84B8kO7zZQvqn
         z9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781232729; x=1781837529;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fcNplGJ1Sabq2Y9bKw3Y1rXhSqvMVBj3TrS26bNA4I4=;
        b=r0BfFUf7XJfzl08/1g1z5QQZgPBgttV1bwNx+R8zKD6VPrrDGrdpjWtVXzK18XkQqA
         YSkOlZI2a8RWSO/oWmdrzallB4gWeoS8FdLT+mYl4bKFvtCOFGIPe74XB1k9zReI6U3E
         S0TGnPA9orQiMVp0fbzahG8lRyjvZsBYgv3O6Pyla6/rQ7ugCU0F0D9E7+SKbNBZ0CB8
         ZD7frjOBKohTe5Kw36hKjCutW94t+G91ejf0ZaGB1fRucSpZeKbGX6lhzywWUnjG0gWE
         3Lq/VG3f2GbfIJUMobPBQ9JRhDXYjW4zD2lG6vYSWdUrNVsT5cgNIHobHq32WpqnEn5O
         gKqw==
X-Forwarded-Encrypted: i=1; AFNElJ/YDNEvI/7Sp0fc2NUKJAayud3fuBMDAGXDEVDHjHBpqyNa1cxioMFoIjo3JOzHN/Q29hPh+nuQTQs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7gIcXTHhZU3MKOUpL3I7uKBczkFQ2O/IvjHHbP4vFrLGZlAJf
	ZJT7G4Z+zadlyErrwIG6xU2rjR6zo3HHP4F7XMaZSkoR+sg0xsEOEmyHnT4n3rTaaU7xLDydbho
	VwlszsP3psNWGeTypAwiVt/C6MSZhAjjPaAMebE61J41WFsLu2L8E9DxB0vxXP3bDYyci
X-Gm-Gg: Acq92OGoSocwOSw0HZzYwVizyrJ1QdlGHlmLvdOEih85bkyvVArGqJi9xiClsBrIDiM
	9EBzd+hChBcYfSMa08DrZOa7UtR2LwqgREYnhtYbHItATzs/kC1KQa64vwP3+1fgEXARshoRmQI
	DuaoDwPEALnz3Qj1dSYUgaRKeGTJJ1LwzCLexXKCLwzaQr758L5MsufG5HyTHeorbc4yPRuMRbL
	35/DNEAoKqiWk/O4rmOh2H6HhPYzfDC8r6GttNsnbTj0IXJYjjH5+dM8yREmoTcT9lwP89zrLxv
	vIkmpwlkX3/Xzo2g6oN64f50V4jZeCjWOLM9WHcJq/PCk+50U3h8UoXHV3Itoy3+H9dQMn4pXUY
	N/vmndkujf/nGLLg76djfdnh5wgcy4vO3w7Qmv5h2OA2SBncvZXlP0OJGPk36uzU=
X-Received: by 2002:a05:6a00:4c1b:b0:82f:3a1e:5618 with SMTP id d2e1a72fcca58-8434ce4377dmr875961b3a.22.1781232728603;
        Thu, 11 Jun 2026 19:52:08 -0700 (PDT)
X-Received: by 2002:a05:6a00:4c1b:b0:82f:3a1e:5618 with SMTP id d2e1a72fcca58-8434ce4377dmr875916b3a.22.1781232728108;
        Thu, 11 Jun 2026 19:52:08 -0700 (PDT)
Received: from [192.168.1.8] ([122.164.81.0])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434b0226acsm511841b3a.48.2026.06.11.19.52.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 19:52:07 -0700 (PDT)
Message-ID: <602e893c-d346-486d-86b3-50d0f01990bf@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 08:22:02 +0530
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
 <7def2ccd-0319-4f85-8275-73fd254d887d@oss.qualcomm.com>
 <fbtghwjrokuijatssy7xn2hwkp34p5fjyn3ndr5t2w67fkz2na@3izdh7uk4hst>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <fbtghwjrokuijatssy7xn2hwkp34p5fjyn3ndr5t2w67fkz2na@3izdh7uk4hst>
X-Proofpoint-GUID: w4fH0k9b_HREymHuBlL9F3KNn6zZJLYt
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDAyNCBTYWx0ZWRfX6+dz9aLIutow
 lntXsb5hFwbJExjV8Cpu6LF4q1nXEmofjIdW/AVenVRT4YjRp+4pIPFKEinLcsg54GqhbsfHKhH
 bVxzgZxdEHFRD8f8o3eFRN2VvFZ6R28=
X-Proofpoint-ORIG-GUID: w4fH0k9b_HREymHuBlL9F3KNn6zZJLYt
X-Authority-Analysis: v=2.4 cv=N94Z0W9B c=1 sm=1 tr=0 ts=6a2b7459 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=DVNErGSwdtF8OHn2hLoakQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=DXo_hcG_KxK6dTS-Z9kA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDAyNCBTYWx0ZWRfX70acr8qXK4fx
 Bwvl6Ab0PBiRFV0zO1UzQyfqli1lUvavrpWQIrqgN4rdmOljeg9hipTRoZkTdveIeOyv8gaWlfV
 TPUmYTBSNFOXf5Kuf+f1ofB1+WVO61MVjyy19o4qtyRnvro0R8NNKpgXAwuArzu5adw0QA0yNfC
 T+eJiMoJXPam/H/iIfxo1/O+GaPGy9KhkH/De4P3BBpw1WGs3iJWwei8un2ETFIuSCDR9lGKM+4
 owff+py6Ep+U5PXo2ncvKG0zIuIREn9c0KrGZ8LtlNxOFK3ThoZqnPc8LX8nQqm4T9IIb7Mn1d+
 K628h7ulHO/Ua7yryABfd9xqGPp4UYLy3SQxOmTNhaIXZveIdyc3xrAzexHdXYFHIxZyBPhYPpG
 izCCseJf2McCG6fgq/FuVtPw1jKmPBxDxy0AE5aAoZUuI4pGltVpnCZb2BNimz5lk4STNf814qL
 6TRhxuxzGzo7kkLAZ2g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_05,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_195211_275606_B127E1F5 
X-CRM114-Status: GOOD (  14.24  )
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


On 6/12/2026 1:52 AM, Dmitry Baryshkov wrote:
> On Tue, Jun 09, 2026 at 03:46:56PM +0530, Kathiravan Thirumoorthy wrote:
>> On 6/8/2026 12:26 PM, Dmitry Baryshkov wrote:
>>> On Tue, Jun 02, 2026 at 02:40:18PM +0530, Kathiravan Thirumoorthy wrote:
>>>> The IPQ9650 platform has three Gen3 2-lane PCIe controllers and two Gen3
>>>> 1-lane PCIe controllers. The PHY instances also require the on-chip refgen
>>>> supply.
>>>>
>>>> Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations, including the
>>>> refgen regulator supply.
>>>>
>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>> ---
>>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
>>>>    1 file changed, 220 insertions(+)
>>>>
>>>> @@ -3378,6 +3524,10 @@ static const char * const qmp_phy_vreg_l[] = {
>>>>    	"vdda-phy", "vdda-pll",
>>>>    };
>>>> +static const char * const ipq9650_qmp_phy_vreg_l[] = {
>>>> +	"refgen",
>>>> +};
>>> Now vdda-phy / vdda-pll supplies?
>> Cross checked with HW team again. Along with refgen, there is a on-chip LDO
>> which supplies fixed voltage to the PHYs. It is enabled upon system power on
>> and no SW intervention is required.
> What is it being powered by? MX? CX?

It is driven by CX.

>> regulator-fixed doesn't take the resource 'reg'. May be should I create
>> another regulator driver which accepts 'reg', something similar to the
>> qcom-refgen-regulator? Please advise.
> If it doesn't require control, there is no need for a separate driver or
> separate supply. For example, the refgen is being references only by
> those devices which require software votes.

Thanks. Then let me respin this series on top of phy-next so that Vinod 
can pick it up.

>
>>>> +
>>>>    static const char * const sm8550_qmp_phy_vreg_l[] = {
>>>>    	"vdda-phy", "vdda-pll", "vdda-qref",
>>>>    };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
