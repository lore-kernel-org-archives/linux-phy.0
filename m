Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EFA1C87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 15:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVI73JjzlZqy6p7S3kAjJi92LwBOTZiRgN7vAL53sHc=; b=CYcyLz4DyAdIUC
	+TWBRF1+OArauRs/UWc/lMnzyRgs/02+h6zPDVvVY1w+1j+0fQPWOgx5ST48TeF+7Omgu9SsDCzmH
	0oLz0gZYyqTUOFqyBHpsI+BWx9xnSR/0gsYirn1mNLwDO3crYWAlH8vneM2WZnqlpgaCEu9/9bxz2
	NIVtF0EMN73RUZN/cKghWmxFk76fmDticd/uKLX2Ni6DlaczVJ5XfvdO2/E5vaS9meWjQ6/Zr9dfu
	W4vXHSjz7MTKf3aSwmixrMdacySz/3jcFiFwRxSwM5+IthYCGbeNcBtVfOZcLHZTAfD99cNm+fdwH
	eL9mwnDzCCIFZEKA86aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2mE-000000012Iy-0lDf;
	Thu, 07 Aug 2025 15:43:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2mB-000000012Hj-2nE6
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 15:43:33 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5779D8GD008408;
	Thu, 7 Aug 2025 15:43:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6jO7Z0KtTPlEHzBs5tGbsIj+SNejx7v3PWSrlZ271lA=; b=ZNKzaOT3KtJ1wuy5
	KmtlUmeT0yQjUjAQM6RE5Cqg3VcZVNyGbAUXlPWRyAizH3FzVVnJUtQ5FfZaW3Vb
	e423rBTGSZ2bOe0XeuW8kYciVYkEcqOVilbJ4ZtzxXh37qQcwEamk6lNo1pL487p
	Fj9HLmoCyV0h4OlszPbRtrWLCf4+sK2hBo/C4I+OsdiqLDOEUgFEjucvRdv0iKaB
	qFXPOUqCY6bdcmjRc/3tpB6ZbOxhKB0Te91vHNBN6dYUX42dz/Oqvhi64yH9rzPw
	KRoqyLY49Rnvq5gxTJbCCuE7kGpzC8sSl0gtnZfDKaY50Z32o/asDq7+x8nRGGKX
	yPBpAg==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48c8u23tud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Aug 2025 15:43:23 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 577FhNQJ009672
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 7 Aug 2025 15:43:23 GMT
Received: from [10.216.57.148] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 7 Aug
 2025 08:43:17 -0700
Message-ID: <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
Date: Thu, 7 Aug 2025 21:12:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Mark Brown <broonie@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <conor+dt@kernel.org>, <bvanassche@acm.org>, <andersson@kernel.org>,
        <neil.armstrong@linaro.org>, <dmitry.baryshkov@oss.qualcomm.com>,
        <konradybcio@kernel.org>, <krzk+dt@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
Content-Language: en-US
From: Nitin Rawat <quic_nitirawa@quicinc.com>
In-Reply-To: <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 007wsDf4NVvKUWcKyx2JR5oeGzaYx11_
X-Authority-Analysis: v=2.4 cv=Q/TS452a c=1 sm=1 tr=0 ts=6894c99b cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=QDh6Yc-AApCNb2D2b04A:9 a=QEXdDO2ut3YA:10
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 007wsDf4NVvKUWcKyx2JR5oeGzaYx11_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDA5MCBTYWx0ZWRfX2vg4U5E+GGqo
 /JHedMPrJ4SdIFz7Wzk+G6Wl1gtq8x2t/9O4dl/OOrWh6QnClH7khu2RlmoNVLG8A1+2uHV6qou
 wzzxqOCuSafV8skMhpSYhlZS/2CVl8e5wMH99Dm9azLOKL+n4yk61/67/n2SvaO7B4pkNIaRr8f
 RhuYGHLcnrgmXdpZ4lhH0m1K/jQu62mwkFRvdmqU6jGcVWM6Ydvk54S2sKm2okLnSPEyAta949s
 IhSlD6jxWJ/Q5acV66dU/nIEdNQ/GALeA0aHF+2+N7bER1VR7OlZQP/LD1c537JjnwbnY+uYzyM
 QSxTfA/uke329QTPtFxE3KQXD5qVHSErAmyqdzvCjbyRKYnqV+12nKt8OgoJHiCFrRCHwlR3lmL
 N1vK15kv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_084331_751268_4BF727C3 
X-CRM114-Status: GOOD (  31.17  )
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



On 8/7/2025 7:14 PM, Mark Brown wrote:
> On Thu, Aug 07, 2025 at 03:06:01PM +0200, Konrad Dybcio wrote:
>> On 8/6/25 6:51 PM, Mark Brown wrote:
> 
>>> I'm not clear why the driver is trying to do this at all, the driver is
>>> AFAICT making no other effort to manage the load at all.  We already
>>> impose any constraints that are defined for a regulator while initially
>>> parsing them so it's not clear to me what this is supposed to
>>> accomplish, and it'll be broken if the supply is ever shared since it'll
>>> set the load from this individual consumer to the maximum that's
>>> permitted for the regulator as a whole.
> 
>> Qualcomm regulators feature a low- and a high-power mode. As one may
>> imagine, low- is preferred, and high- needs to be engaged if we go
>> over a current threshold.
> 
> Sure, but the driver is like I say doing nothing to actively manage the
> current reporting.  It's just pulling a random number not specific to
> the device (the max-microamp configuration is part of the constraints
> which apply to the regualtor as a whole) out of the DT and throwing it
> at the framework.
> 
>> The specific regulator instances in question are often shared between
>> a couple PHYs (UFS, PCIe, USB..) and we need to convey to the
>> framework how much each consumer requires (and consumers can of course
>> go on/off at runtime). The current value varies between platforms, so
>> we want to read from DT.
> 
> In that case this will definitely encounter the bug I mentioned above
> where it's trying to read the maximum load permitted for the regulator
> as a whole and report it as the load from this one specific device.
> 
>> The intended use is to set the load requirement and then only en/disable
>> the consumer, so that the current load is updated in core (like in the
>> kerneldoc of _regulator_handle_consumer_enable())
> 
>> My question was about moving the custom parsing of
>> $supplyname-max-micromap introduced in this patch into the regulator
>> core, as this seems like a rather common problem.
> 
> Wait, is this supposed to be some new property that you want to
> standardise?  I didn't see a proposal for that, it's not something that
> currently exists - the only standard properties that currently exist are
> for the regulator as a whole.


Hi Mark,

The UFS QMP PHY driver is not the first client to use regulator_set_load 
or alternatively set load requirements and invoke enable/disable or 
alternatively

Similar to other PHY drivers (such as USB, Display, and Combo PHYs),
as well as various subsystem drivers like UFS, SDHCI, Bluetooth, and 
others, the QMP UFS PHY driver is communicating/setting its load 
requirements.

These drivers also define corresponding binding properties, as seen in 
the UFS instances documented here:

UFS Common DT Binding ((link - 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/ufs/ufs-common.yaml?h=next-20250807) 


Relevant properties include:

vcc-max-microamp: Specifies the maximum load that can be drawn from the 
VCC supply
vccq-max-microamp: Specifies the maximum load that can be drawn from the 
VCCQ supply
vccq2-max-microamp: Specifies the maximum load that can be drawn from 
the VCCQ2 supply

There was a previous effort to introduce similar properties 
(vdda-phy-max-microamp and vdda-pll-max-microamp) in the device tree 
bindings.
Link - (link- 
https://patchwork.kernel.org/project/linux-arm-msm/patch/20220418205509.1102109-3-bhupesh.sharma@linaro.org/#24820481)

However, at that time, the driver-side implementation for aggregating 
load requests was not in place, which led to the patch not being merged:
Patch Reference

Currently, the regulator framework does support automatic aggregation of 
load requests from multiple client drivers. Therefore, it is reasonable 
and necessary for each client to individually communicate its expected 
runtime load to the regulator framework to put the regulators in current
operation mode.

Regards,
Nitin

> 
> I'm not super convinced this is a particularly common issue, most
> devices perform pretty much the same regardless of the board design so
> the driver should just know their peak consumption and it's becoming
> less and less common for regulators to need software help to adapt to
> loads.  The main use case these days seems to be for safety (eg,
> constraining how much can be drawn via a USB port) which seems like it'd
> either be for the full supply or just known by the driver.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
