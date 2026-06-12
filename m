Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41E53CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 17:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHF9SFv0JkVlERhsK7d9aXoNFi6SEMMi9JZJQJvf3FU=; b=EthXa+jAlaGbtC
	xSBVyb/u0NZupWMBiJHlnyv7r5NyRiW/7wsBSvGy8CO5lOtDxatfiFiHi0eisEYFiSmd/amTlCRmZ
	Gk8NVpFBPgx8rn9vm/VStjOArMJ0Faez4I3D/TCSzyT6msdL/YJzWHTeY88y+ryZtQSBGkN9pe/rQ
	MKzrLh13D9sXVtdvw+oKoi62neCaQHo0lemjAe9nDUBzHosEFCsVOb2IjZP9w8yLg/XMMQpZyqvab
	PBNyQLU7EhbURCeDeBoHQhx6cVBl/TyacUTqHfoUQ5paWFaRl2QH22pZjrwnhdwVVU0hksY8eVQc9
	M3PX6vKnnwLd29GvH2gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5X4-0000000BKxW-3faU;
	Fri, 12 Jun 2026 17:19:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5X2-0000000BKwv-3AyT
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 17:19:02 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65CGUKZv053994
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:18:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9DFmNAH1IgOZkO6kAlv1u8mYMZxyL6dC6r7w1W5gOGE=; b=KdoQJ+0LAD/hkmca
	YXRDdQiNUDl63NJ7PQBKot7sA7ZbEPRID+2tkW8YtsRh7nBZ5zM4lCx374w2OcgS
	zxEnJxw4Ac6tlIfCFBJwOfZnoga32RNiB6MNJe5FQmUaXvKLCb8Z3YcRX9mPn9so
	kb4kO1ByrCy6n/H+EmcNarUdZfGOO6gSOo9fitPKpK3/lTXe7rqYKOemkzyVBxBo
	AZ4HQR/vinUxPU4LF8+uet7X5FsEdLq6wG8OfXQ9VCiK9zp5VCcH2e9EKTep/ylv
	CYhp8/UeBeO0VFKiuoWLMgHUiWM66F53+PXwgd+wIKxtLYyy44sqWc2+V6u49V3P
	+V26ww==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er29uuy13-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 17:18:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8423efdbe6fso859047b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 10:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781284738; x=1781889538; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9DFmNAH1IgOZkO6kAlv1u8mYMZxyL6dC6r7w1W5gOGE=;
        b=Hx47k52en/qV6R9Ml4/TSidZE/p2uwxWGw3hr2QUsEl6jwwhOp1EBz7wSkyJGuX/9v
         Yd40UWFhuNYL84X8sNrhIFOtLlayZuQYyOkW4M6+paXxtonkfPPbv5oZsMkZP129ZIQF
         VWwlJ3/Dckoez6MZ8YP/NNJOpFdrYCr25zx9RJ2WJMonBToxMRDttQhPYGQTsH0P4bBn
         wkzLzCJDnSzW483Dr3R8rFsUBRwo3pXFa+30QcKB/iDpZYQplzHhWMWHlTwTjfv16RHY
         lduIstdmihPAar567iB8fOUKqh50MbFY3dZw4B7h2Hz5xOY/C4l0qKQedpLF03hCTN48
         wX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781284738; x=1781889538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9DFmNAH1IgOZkO6kAlv1u8mYMZxyL6dC6r7w1W5gOGE=;
        b=pdcq2OofZ0gDuiILFhJnh1e1nV4+h5CZcDHo0f9MYOQS4cAqERfarjyElMGmP4r8eG
         RK8bbBKlzF3qZS8RQbtdQMfTbWYOK88pE3SrS97cNf2y1qEyM2ipqNgtL5ko43Z2Y9G7
         e+Evh2q3euN4oINMlbf96v19ck7u1uqptOl3DyRG5gqPPRQ2KkiCU+lf5yxESUhQrke7
         Plxww8Hf4B5s5vABaqSPKBkfxBYYCy4agR5e+S55qy6/SmQSztWI8tO8bp1IoOFLpF7b
         CKxyEeiIPfegW97Tm9xQq7Ti77n0zQqNZ0LeVfqjxLJ00oFSdLxZxIZxmbu5QDVrsXfU
         0I6w==
X-Forwarded-Encrypted: i=1; AFNElJ+ZCZfVciCOVIo3i6Ce3E9ZeOY4VgABpPwpP6Tul3HUbPNgAQMkAwhVY8QVilgnbdukccQUmX9USGs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyEVEeu5mjcLXoKpaNswg93MOEOPVF4jAtXeKlfu9JqQ1Rao7Qr
	uHdXSNL3F9RmFqBRpgDm+qYka1+bt/LAfKoDPN6QpUdqkUTxwUESKds9VqtyPFTBJsx9NxkHfWB
	epqLKeuB2WOJ9W0+m9kGf/URjgGPRW4cUD1qXTemI3uo3KRGf6mhldhc8sVJgbJD38ua6
X-Gm-Gg: Acq92OEWuYm4F2kt3SzY6XzjypJ43dbB3BuEuqXADNrmKnyuPDVIL7spvRy8LYQ+mL4
	3Uh0EmUaUWvdgzR2LfZSed/oPDLVInuF3esauh0+BWef3SnDjs2+k+dc1YQCIduBVcSblQ61zma
	hjoVxMlNvoAAviydipHibsTFQBeDKofp67bAI7j84Sq641EbChtU6yqxp0UdoWjcpriTF1BfO42
	gsdRyZZTM96c0Z/6F1y7QRiarnGQFl99FDHRTmXHB4ZJlD1iQ2V260gFdp3HMf+JhH1w+u21QqK
	KQRRh3raMiBFwa04np+nDPZKAoMXgMxtYJsng9+uGWiTraBDfCexw6piOnM27M9gYnbbbfPF30T
	aCTqfpltVyrjHjdbqQGzYZg0ydV1YYSRjCkpxzrqQPShBlNSFhYY=
X-Received: by 2002:a05:6a00:1947:b0:83f:2568:d466 with SMTP id d2e1a72fcca58-8434d0ada54mr3972675b3a.31.1781284738483;
        Fri, 12 Jun 2026 10:18:58 -0700 (PDT)
X-Received: by 2002:a05:6a00:1947:b0:83f:2568:d466 with SMTP id d2e1a72fcca58-8434d0ada54mr3972653b3a.31.1781284738042;
        Fri, 12 Jun 2026 10:18:58 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.232.97])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8434b0112edsm2538142b3a.45.2026.06.12.10.18.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 10:18:57 -0700 (PDT)
Message-ID: <6cd2c9e0-9e3b-466d-b9ef-586bf6c779a7@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 22:48:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
 <20260611-shikra-dt-v5-1-103ed26a8529@oss.qualcomm.com>
 <20260611181841.GA3163205-robh@kernel.org>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260611181841.GA3163205-robh@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDE2MSBTYWx0ZWRfXyeojET5jBWAZ
 ZpDPulqiPapn5EgCQgqAJdcZW9iSaEVoQe5ytYbAibqaQla4KAhSKeXObRLa6tIaW2+EVh1X+Xn
 3ZemSZeE0Fa+3iKaToh947Ld1i5caHY=
X-Proofpoint-GUID: 4sAM4uaLcsGYHh-JaVgjYhAJ9PT6aHuE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDE2MSBTYWx0ZWRfX4rK926X5rd/J
 gaczVoVSONfx9a0ril7S63+cwf6oxYf/HyzTVjFV1b+mGiqLVKj39qeznw83L6rI1Yqhvu4dD5A
 A9QYKSNATeF5gVpKfj+REpJPw6WGowCVnZdyLGi6SoLWhUIjOphPaFWIvwvmn5QOaLekfxfPSuD
 NdJGCCXZ+IK8WeBWGEOrm/RbH5qMcGzyiXIq4vyf1H6sUZKaCtMW/v3MIWPGVzXVxkQ9sYuEmE1
 WFOhwiysJNWrROIwyM/7IBL2waZHfxkIAIpa72v2srL6W2Zn2lQSCI6OlozVeZBLy0ZzSundzl0
 Muw8opnbklePLH6p3q6cUoqnmMFLWtge6AOjQam/8qC85DB9xhqxYePH8Sb3xpdMAFPQb4fSjdk
 SVtTD+JDrebWvIB8jUF06fimu/Uip0ZoKNiELBXgpLstZjs4wgdri22dTDx8BKGg0EDSezzlosd
 gHkKAvtcZIVCrJM7HMQ==
X-Authority-Analysis: v=2.4 cv=DppmPm/+ c=1 sm=1 tr=0 ts=6a2c3f83 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=g0pf6In4uVe9puqoFIUS9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=wogpLHfNZo3oYugl4g0A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 4sAM4uaLcsGYHh-JaVgjYhAJ9PT6aHuE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_02,2026-06-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_101900_926798_DCC492DC 
X-CRM114-Status: GOOD (  10.03  )
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

On 6/11/2026 11:48 PM, Rob Herring wrote:
> On Thu, Jun 11, 2026 at 03:40:08PM +0530, Komal Bajaj wrote:
>> Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
>> form factor. The SoM integrates the Shikra SoC, PMICs, and essential
>> passives, and is designed to be mounted on carrier boards.
>>
>> Three eSoM variant are introduced:
>>    - CQM: retail variant with integrated modem (PM4125 and PM8005 PMIC)
>>    - CQS: retail variant without modem (PM4125 and PM8005 PMIC)
>>    - IQS: industrial-grade variant without modem (PM8150 PMIC)
>>
>> Each SoM variant pairs with a common EVK carrier board provides debug
>> UART, USB, and other peripheral interfaces.
>>
>> Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant and
>> its corresponding EVK boards.
>>
>> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> Missing Krzysztof's reviewed-by.

Missed that. Will add his reviewed-by in next revision.

Thanks
Komal



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
