Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3221EC83F12
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3VntG1JisDZqf7SJx6E+uJ8hFoGW2Ktp8wk5LKdnos=; b=zIEMNYyCPAqACf
	tmqku/1RXxtR0d5pDUkYYUU10739DZLrg2cUmJ7GqutX4GXEjNincs7PPpmAdCNc5GJGEhIdUPGkI
	BBaYBVAdv77U3JVecthCYgV11TAJTbKRnht2hpP9aOSZP0yMucOFVXwHQ8nCkG82cc8twLD+PIYuC
	wOf1uPYPpxjLhChWosWjWPxbggK8rrTn8O39YBS8qvqY2OUxOzzxZ8DbWThFhHGSupq3nR2mcMKk6
	aGjIVcrCYNEI+pgl71HjRiXqmmXnB/Fqa6nMXSizvo+KX17J6D9h2UIJVNK8GS0ogd5G0XeEVN1lB
	Lj1gVJ8sHJdxu5gxspEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbgb2-00FGS5-2z;
	Thu, 31 Aug 2023 12:16:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbgb1-00FGRf-0F;
	Thu, 31 Aug 2023 12:16:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37VBw8iY024728;
	Thu, 31 Aug 2023 12:16:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=Y6RsFctVuvl/NClfBKnpdlNGaKN82hhZeGcGW6A1DGo=;
 b=mNIRBJlzIJYHnNUdZb6xPiOAW5qtOxddHDdWzcu2Cia/Fo3T3kz0m7ABy3ygZozFCiBe
 gmXhas4iQV2EfnVdLL/Ci+oMh6UQv6+KJQEp/P3wYK+D7AhOroce6Ar48kY+Mib/rVY4
 nwC10GOi0YWSiXljt4YZeeBPFu1oaAnOZTZXaTRV/wkRJLP9m+oFrwAJL9CSJH7m3XVg
 iIu5/FBe9V/fqmgWUFaF+ZgSrr5Epomn4h9B+GArUgAd0Y/zAIfkOqvK2hr/2wURgJLR
 9QYR6fhkSW/sZcKlPNrh4afAVKlKalAfgq/wlU5E4qljTFfIXUUShJojwYVGHA7Eoe0S Rg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3stpy98gcf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 12:16:02 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37VCG15s011624
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Aug 2023 12:16:01 GMT
Received: from [10.201.3.91] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Thu, 31 Aug
 2023 05:15:53 -0700
Message-ID: <25d34873-ffc1-4a35-b71e-c698dd299cf1@quicinc.com>
Date: Thu, 31 Aug 2023 17:45:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] Enable USB3 for IPQ5332
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <robert.marko@sartura.hr>, <luka.perkov@sartura.hr>,
        <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>,
        <arnd@arndb.de>, <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_varada@quicinc.com>
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <92d97b12-48ba-13c9-de9e-70b6eb330904@linaro.org>
From: Praveenkumar I <quic_ipkumar@quicinc.com>
In-Reply-To: <92d97b12-48ba-13c9-de9e-70b6eb330904@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: KXSQnWPgPi4JJtdDH9KUf_kUh9sV2BZi
X-Proofpoint-GUID: KXSQnWPgPi4JJtdDH9KUf_kUh9sV2BZi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-31_10,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 mlxlogscore=851 clxscore=1015 malwarescore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308310110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_051623_140639_112A5B75 
X-CRM114-Status: GOOD (  16.22  )
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


On 8/29/2023 10:37 PM, Krzysztof Kozlowski wrote:
> On 29/08/2023 15:58, Praveenkumar I wrote:
>> IPQ5332 has UNIPHY for USB and PCIe which is similar to the UNIPHY
>> present in IPQ4019. Few extra settings like clock, reset delay, mux
>> selection and voltage regulator are required for IPQ5332. Hence
>> repurposed the IPQ4019 PHY driver for IPQ5332 UNIPHY. Few more Qualcomm
>> SoCs are also having the UNIPHY which can use the same driver for both
>> USB and PCIe PHY.
>>
>> Praveenkumar I (9):
>>    dt-bindings: phy: qcom,uniphy: Rename ipq4019 usb PHY to UNIPHY
>>    phy: qcom: uniphy: Rename ipq4019 USB phy driver to UNIPHY driver
>>    phy: qcom: uniphy: Update UNIPHY driver to be a common driver
>>    dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS UNIPHY
>>    dt-bindings: usb: dwc3: Update IPQ5332 compatible
>>    arm64: dts: qcom: ipq5332: Add USB3 related nodes
>>    arm64: dts: qcom: ipq5332: Enable USB SS UNIPHY
> DTS does not go before drivers. DTS should be sent separately or as the
> last patches. If you stuff it in the middle, means your patchset has
> dependencies which it cannot have. Thus it is broken.
Sorry, I ordered it wrongly. Will correct in the next patches.

- Praveenkumar
>
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
