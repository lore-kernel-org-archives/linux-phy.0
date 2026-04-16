Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12670F8A152
	for <linux-phy@archiver.kernel.org>; Thu, 16 Apr 2026 09:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0B1nYNvsfvBamf7VKh8Ma5DufLFNp21vSQr5OpfgMs=; b=QWbUIdR17oCAJ/
	wsIudA7KXIAgD1bRzuBa7kpZweBXqGm/q8lNXLs1ONdr9/ehjS1cRXCe7rX+HkHupOJREW0CutjDM
	Wsi5Tr75OyynNLgli2M+hgK0OZrJ+kClmy+UHP3u+JydaNmjLVyGZAOe3yZWUmG11wAPPzc2bFi65
	aeExlWsaY39cclp1A8K53J4cmNLvTdGveWC7fznCOwjK0FWAoKM5DZ2IK01oWLDhuFnOC4TCI6z+X
	QYPU/m+XbCOsD2YHenwECvhP9uBAq9P3cjyV5mCZwdUwIMB+jH7N3pmwY9j6MVrbMqvAHZpRCK4uY
	MdcMU0uTe418u1K/rgUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJ7U-00000002FVo-2XHX;
	Thu, 16 Apr 2026 09:34:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJ7R-00000002FVR-2sFQ
	for linux-phy@lists.infradead.org;
	Thu, 16 Apr 2026 09:34:42 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63G8xsTr4125508
	for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 09:34:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9jU+OpYG2NjLzwClaibeJae/tBKnPUhrrFH2K3PETI4=; b=j6DvFAJld6q3hpqD
	obcJUdQ4CRfUyvrKzwsN/yQMSe9jsglS58gDmp/sy55snyHXuhc6Qvu7GHd15vtW
	K/I2DVKeMB7IxxfWDmp4wrw+eWP59lo4kuxf3DH6Dojrt5I4FAkVNgjeR9cuwMjk
	l8DAkBvo903QP7Lob0fwQKa7MVWFcEFMSOgIWkycz6uWFRcgON+4XgYaU2hcvQcD
	Hc+kRwAXMHJf0Tn2iC/jYB30Rf9QlHFfURUEsZGvUydetECBfNVW7J7ySarnlJaV
	tlKrWjAzgf5euCRI5qhU8c1q/N6K1xB4CzWxgPgBcSbh7ONIqDSZqGpl+t06JyzC
	4HeFLw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4djvrf848m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 09:34:40 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8acb4b340f4so12504886d6.1
        for <linux-phy@lists.infradead.org>; Thu, 16 Apr 2026 02:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776332080; x=1776936880; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9jU+OpYG2NjLzwClaibeJae/tBKnPUhrrFH2K3PETI4=;
        b=S1jO/6zYA9FC7IiY+bbtxwa350/sGosMZz19KO65/0ihBP2Ad2UIoD8Tm2TI7JqNE3
         +wGDsoNOovVDGgcaYBlmCZIcMSiKWfarvJqg7lQW285KEMF6VBlswXayByhBInbKKUNK
         F9rvVORSPQBYv3oQbHicFem7REMUiwTnicGcQ1BpR9LZTdahBxldgWgCoTpGyGUUvEu5
         0RA/l/AHqHA6A6qk/s9tKjPTOWTLMDlRvBYb5kaAckRBjTigXt12DdQl/nSCFokeHRy2
         V3GGqwSLkV1rT7VlI03SuKnRa2gG/23QKHZ0358vCJFeLnhEa7MCz1LY2ci/oBuKUuEu
         KCdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776332080; x=1776936880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9jU+OpYG2NjLzwClaibeJae/tBKnPUhrrFH2K3PETI4=;
        b=gYEjYwM9EeVXTXyMjF2wwxPWH6Gy6Qva1KjNrpS1f3du28QSW+mwnb4U3gmi9DVTWr
         0bX1rQOBBSRtqZ2ftn90V469P2dgXLLD86gcVFU8RRu309e+FgQwAKXhzWCVUnlfQuSI
         KrrYUjBbCCzGlaCoO7Hac3gBqIS1FV8wltJUDr4fH23kOk4Qa+qK7Tvj45KLiAs2GjYi
         I5XtqtmvSFVxHQsBaz/lolM1gH+1amg0Dew23kWUKesvxlEURut6PS+ZNaUsRS3NUn9V
         Jpu83lE9m2CpZRoYtZPyFLJ1JFeIRTU9CpufwfUTxoVQu7xHZ0Tjq1ta7/l3hrQlPXJJ
         GDyQ==
X-Forwarded-Encrypted: i=1; AFNElJ/wrW/8dDmeIlOeUj76pfuz4u45r3Z6YbPIardVostLhj9IWRmMPdppmu8Ba6OOfbIHPlo2OrUPUP8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+kHvYD674lWnLUCsqwgwKmPmFuf2tSzuQ2bD3Guig2ozd8gAL
	/ubUpUb7WY6xY4X7JXcmWKjwv/pMchsSNGBgR1NYRTAOcGT5eddHhLb9gZHoMO+naquGrfxKrNG
	6fPrLZXCImqvguEmkkHoC0sECI1fwyj1cFahttAM5SE0akcMkhjmiAoWCGueSK44EbrYs
X-Gm-Gg: AeBDietFZ//DeSZC6Zv0rjN/0ypv5Z+mfeguUoreWuIzzYJ3nVmIk1Ouwp/D3+iYbe8
	UeSaAULcfNakLT/Kp6eOQzZMfwiWcPwQ1wl2IRlH6wxTrtjdAfkcBC2ZCPGpzpHgQ5m9F4LH+1A
	LTkWzvVYrT8YI7kMOnweHNWyY/aMBDh9OFEEfqogbe+R4yy7k4yeeKxmFwWYHq4a1fTtid1lIBh
	AzNNO172//ARSKG5WhtneZ6RA2VCaKLBQAHFgf+RMCz7Fw+Cz4bEdkVt++mekBkbBJARN5plOOS
	sNesRQOrXTVJ90DE7KqmxE/Dlq4SH9n68zqMWs/c8M+WQg+gw8n+S4Y58hCv+9EPNyEPWq3dGqm
	1Iw8tk3+Qkbgxt25QtS588/jC6iG85Q8K8Ulu6Xlvk4oaRfL5RfyGjEQYkwJBBou6dx/u/QKwrb
	66vnBbxJ7llQbFQg==
X-Received: by 2002:ad4:5dcd:0:b0:8ae:65b7:1b0a with SMTP id 6a1803df08f44-8ae6a86d0dcmr68702496d6.2.1776332079745;
        Thu, 16 Apr 2026 02:34:39 -0700 (PDT)
X-Received: by 2002:ad4:5dcd:0:b0:8ae:65b7:1b0a with SMTP id 6a1803df08f44-8ae6a86d0dcmr68702296d6.2.1776332079310;
        Thu, 16 Apr 2026 02:34:39 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba177dd36a5sm148812766b.54.2026.04.16.02.34.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2026 02:34:38 -0700 (PDT)
Message-ID: <245f4589-d7ca-4d6b-8162-a86972752bd8@oss.qualcomm.com>
Date: Thu, 16 Apr 2026 11:34:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: qcom: edp: Add eDP/DP mode switch support
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
X-Proofpoint-GUID: w7JJzkXOOdqsiXgOGlbBfbqyDRlmCknF
X-Proofpoint-ORIG-GUID: w7JJzkXOOdqsiXgOGlbBfbqyDRlmCknF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE2MDA4OSBTYWx0ZWRfXxjRNA9NC6A+p
 XeGDYmWonCJwEdDgbeNS7uB+IAdZ3XJhd0miPLUGvO3hhQke+YaR3uVo8+4Up5qXQsuarzHtFrw
 tH7C+MtFU82j1QUa7rwk7YflcqgPMxIK3/p5cXeKZjVnlL0j1J8OjT4KNr1U+nu2yOCvYBbB6BV
 eAq1PkWizjwKhVJIjuJCP/drg4B493MxuZDr/f3tcdMbwsTMc94ENd5nuGAqdVCfJsJY7g+ee5/
 FO6YcH3uIbuDvYisZkrOwsd5BangDRSv6rajQ7NzXqGz9GDED6hPtjLlDy0DQtsPMdsb1cxBwuW
 KS2YBnEPrGglHE+n/jLRzrVxLUWtNgsnxdqP6Wr6c1e9UY/craJ8x8zVvd5GKa5gc1ozzH7Jc5D
 qKk+C0/AwcAwZDtyFi29qWvpjwj0GUumJV6QPiavrbR8Emkqc0lgfjVi2DXk3CQ3UzMZ5oR63fJ
 G4XY4tFlLFyh2JUsEGg==
X-Authority-Analysis: v=2.4 cv=YtE/gYYX c=1 sm=1 tr=0 ts=69e0ad30 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=LtuECjIQMh6IDJMuNRUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-16_02,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604160089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_023441_866422_831A4925 
X-CRM114-Status: GOOD (  11.71  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMy8yLzI2IDk6MjggQU0sIFlvbmd4aW5nIE1vdSB3cm90ZToKPiBUaGUgZURQIFBIWSBzdXBw
b3J0cyBib3RoIGVEUCZEUCBtb2RlcywgZWFjaCByZXF1aXJlcyBhIGRpZmZlcmVudCB0YWJsZS4K
PiBUaGUgY3VycmVudCBkcml2ZXIgZG9lc24ndCBmdWxseSBzdXBwb3J0IGV2ZXJ5IGNvbWJvIFBI
WSBtb2RlIGFuZCB1c2UKPiBlaXRoZXIgdGhlIGVEUCBvciBEUCB0YWJsZSB3aGVuIGVuYWJsZSB0
aGUgcGxhdGZvcm0uIEluIGFkZGl0aW9uLCBzb21lCj4gcGxhdGZvcm1zIG1pc21hdGNoIGJldHdl
ZW4gdGhlIG1vZGUgYW5kIHRoZSB0YWJsZSB3aGVyZSBEUCBtb2RlIHVzZXMKPiB0aGUgZURQIHRh
YmxlIG9yIGVEUCBtb2RlIHVzZSB0aGUgRFAgdGFibGUuCj4gCj4gQ2xlYW4gdXAgYW5kIGNvcnJl
Y3QgdGhlIHRhYmxlcyBmb3IgY3VycmVudGx5IHN1cHBvcnRlZCBwbGF0Zm9ybXMgYmFzZWQgb24K
PiB0aGUgSFBHIHNwZWNpZmljYXRpb24uCj4gCj4gSGVyZSBsaXN0cyB0aGUgdGFibGVzIGNhbiBi
ZSByZXVzZWQgYWNyb3NzIGN1cnJlbnQgcGxhdGZvcm1zLgo+IERQIG1vZGXvvJoKPiAJLXNhODc3
NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgwMTAwCj4gCS1nbHltdXIKPiBlRFAgbW9kZShsb3cgdmRp
ZmYpOgo+IAktZ2x5bXVyL3NhODc3NXAvc2M4MjgweHAveDFlODAxMDAKPiAJLXNjNzI4MAo+IAo+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gRml4ZXM6IGYxOTkyMjNjYjQ5MCAoInBoeTog
cWNvbTogSW50cm9kdWNlIG5ldyBlRFAgUEhZIGRyaXZlciIpCj4gU2lnbmVkLW9mZi1ieTogWW9u
Z3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KCkkgd2VudCB0
aHJvdWdoIGV2ZXJ5dGhpbmcgYW5kIGFsbCB0aGUgc2VxdWVuY2VzIGFyZSBPSy4KClNDODE4MFgg
d2lsbCBuZWVkIGNoYW5nZXMsIGJ1dCBpdCdzIGFscmVhZHkgaW5jb3JyZWN0IHNvIHRoaXMKZG9l
c24ndCBuZWNlc3NhcmlseSBhZmZlY3QgaXQKClRoYW5rcyEKClJldmlld2VkLWJ5OiBLb25yYWQg
RHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+CgpLb25yYWQKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
