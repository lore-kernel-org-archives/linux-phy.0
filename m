Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E71C1CD4F4A
	for <linux-phy@archiver.kernel.org>; Sun, 17 May 2026 17:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bt3h4iynb2acx6GDfl4pt9rzsmDOEsdrZ/PyxB4+3RY=; b=sI3WUvN6lvYHnP
	UIzlPsBHicRZit9Zbg1vNDckLdwpF1FoGpMYPxVM2ZvB8jCyPKr8B4+g6smZrgZQ1XggGGcl2l6s4
	xsi1qvO7vCYhSh1e90xeQ2ePKyDuD5SsnzMmrKLzj+aufJt/dH08cejzrMuzhcqE78y0hf6K59MLS
	RMpJ91NxCzarhnDLkOZnTb94nXFaYnfvoVAjgqUKF/UksWr4gecYV4TyKeHq7QksuNcQa9FA/+/Y1
	2F9GFl2881deAMNaQDqYcILXPnwXekw0W3lX5IhXaKB4Dgk7jNn91zedFOAT5WyWR+OkRNCU1SXOM
	S2YWqOJ06+fOpAoqT/2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOerx-0000000D4Cs-2sIa;
	Sun, 17 May 2026 17:01:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOeru-0000000D4CE-3JfM
	for linux-phy@lists.infradead.org;
	Sun, 17 May 2026 17:01:36 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64H3s8w71440822
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 17:01:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+xRzeH96dtwyj2Z5WMwnZyLEFHICTIHnJvR10SSBCzg=; b=DPSKucqdOpkA8zhl
	f5TYHIXNv5YMsgwOibwUCJd6SE6lBZatsSAd4CQD8coNkgGneC0kxdkCCgIWxKFS
	j2zpDvOoIb8V+ha4eJfhW2bkTM6NxJ0W68Bd/Gc/6EmHA/jQBfgr1MGEQwyL99Qt
	SBWxRSlUNofr2ec1TNzbmW/1l+43Bbw+AuCoeyUuGYvKrzk+MyUs76NBP1gIJgT9
	iu+g1xp+vf3X72gQByT1rPzC3eh4S2EmpTLTZpZCqrZQIl4f8OKuVTOXE+oz/0Lz
	Jgv1HteWLh+AevDerqNcIP8HQkzjHcLr34Jhkhg1U2p2Yu3eLzksg0L99jSmGk8r
	ICyNhA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6hv7u51b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 17:01:33 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ba718173d1so38934305ad.0
        for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 10:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779037293; x=1779642093; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+xRzeH96dtwyj2Z5WMwnZyLEFHICTIHnJvR10SSBCzg=;
        b=FFhzc86EeFsCfKBM+sWwhhLonM1uPJh/I6CpnlMDk34HPzI3OgesySlruY+zr/q2zv
         DhtSySae8tv9FiCFyaP3MUyXoOPIUiE6iYf3zlkFdBKDAeiA5fnvirEg2EGpo44/Q9wJ
         LNAtk04yHZxvMq6QC4JKuLt+NmUM49Hp3rf1iB0NPnzq5nPxPhNF29BCHPOkk4L0QNPv
         34RerFxxbx9IMwEEERSyIhVA3xgBr8texH/VudN1Yy48rIYH90gz6qGPIRbTFSJoHiRj
         1WjrQX6n/JJkpMD6+ru+SwHNCjTNocQYCLpFUZ0czk17M2ni1BsK9pmgywOIF7z/s3Sm
         ohfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779037293; x=1779642093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+xRzeH96dtwyj2Z5WMwnZyLEFHICTIHnJvR10SSBCzg=;
        b=r3qtO8eGQi2nYvglH/yE/8iM1XWAXUSrBvur5zTR55EkDyCbFd9AciYXeLk28KPXsQ
         bmvqmvqgN4GDbzRpERWm7AWsvFHG6jSyQol2me3NLeYa8IKcx/Mw+RXmHbNBxacTul9J
         l5wPZOLZTS8HBvKvyeLinnhFspl2NdmPSGP5zNWHWECXtHnkZUxjV0s1l+aA0Kyfkrj9
         DRZWSh0yV4iSZ556OV9PYPFZunIf5DNJAi17GdCDEnj85VmdwRV+y1SDKjYOtymb6gL5
         XupIBwq5Vvu+yIkdzg1Dlroch+2/cMMPgGM45luJNXnc+vskZ8asCxGa/Uy3ZfkzsdTK
         oFZg==
X-Forwarded-Encrypted: i=1; AFNElJ91CXEF1KvgkIScDXCWsjl9LtiVZjBTVlVIKUHK13Zve2z7lPUBRGIfVktETcsH00fRfvkSsVK4ObE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3W74Cy2uE2Ug8OXE0sTQJ+Q+hORA0YDKPQqdaufn9dYCdHUby
	vkDjyljYfc00EA6NswmQSvqWK2FEUdYfphSb1fjNeBRGsuSBJ8gGNFd4NJGIOstxSPbgW9CPYQf
	B93J6o8CaeG1vis/I2d/R12/kyFQnUaQ1+EF4IfKzC7cM7Af9yMmDaYF7m0h659PRIk2C
X-Gm-Gg: Acq92OGvv3rZVzUrOTy/4zsctr/QgT65wdNIpy4TZFKL5wrk5e8Pv8/GoavbLSECQda
	xrue+CM6BiXJPUXNJSLwJ3i/5p1IeDbKQ5bAD9/IVAOWbaF8uWTJ6jPW8liQnZdH4VqGgUj1z93
	ujbuQlFoMy2nlLfe1f3DST+Y9VbVO2TpAFzFaMjiWl/3zdXcqe7HO3v2AJ6c/6N+/3bSL+c8VUY
	CJZYx0qibyLI8tTXI8pQokoaytjC5QHSwgFqUIdQo9goe4aP2hewZCij9KVDCcaoTDJY//0SXjN
	LuQRi4RgvlGkQ4zBY/386QF4wuCVRymm9TjUVB0Ay60eDn5ilSJmkOhkW0t6mc7p9NVB0OOcWN8
	JvqMKWbpkmCW4VlXyPTaXCRF18n4PED96hqbpmvvQKfldr2rNFa0=
X-Received: by 2002:a17:903:240e:b0:2bd:3bfd:74f2 with SMTP id d9443c01a7336-2bd7e831c89mr127658485ad.10.1779037293140;
        Sun, 17 May 2026 10:01:33 -0700 (PDT)
X-Received: by 2002:a17:903:240e:b0:2bd:3bfd:74f2 with SMTP id d9443c01a7336-2bd7e831c89mr127657885ad.10.1779037292600;
        Sun, 17 May 2026 10:01:32 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.235.85])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5c0600a4sm115580535ad.30.2026.05.17.10.01.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2026 10:01:32 -0700 (PDT)
Message-ID: <a31e27c4-b024-4377-a5c1-f02c2bf02a0d@oss.qualcomm.com>
Date: Sun, 17 May 2026 22:31:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
 <20260512-shikra-dt-v1-1-716438330dd0@oss.qualcomm.com>
 <20260515-pumpkin-cuscus-of-expression-cec1ea@quoll>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260515-pumpkin-cuscus-of-expression-cec1ea@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE3MDE4MiBTYWx0ZWRfX998Etqy+kb0f
 +C+8fZLd1jh40QvikfjVsIPVcF4ad0SmJAWhclyjq7V9xqB8kFgl/7UwSuCbyA8WxGj3IFARczE
 NI9e6FdG8A8EM67MkJGY9tKhkWgr1YBXtX3Aunq1QBMavjplgAJLui53NiY55QTq2+/jQXNvceF
 pxOHAZr/oKnkJsqicZAGpceYA65wFt0Ihsuu781AUDZXdb6ZiAnfCo2CCSyEfpnOv3w5katuDsV
 HLvDjjwKMrzX+ifRU3CS68/TUfSJ2NoUZ0iBN5s924IxeKlRpObOO8RmaIbm+sdkdfOhEBZJZrx
 bwpD9PZr63eiOD1tIEcQOlts5A8cFQZ/CLhWvOjOmmVz/HQBogeDWFy/rwrRR3lyXuU5cNkr8CT
 17Y2n/MPu0xHoezDn5i3DB7uPI2KPmYdQO0CH0Mitxsf1crQ8V8q+RGtbzQPP9HfkacyQLhAITM
 aJfR7vyB3yhUZ8Vxadg==
X-Authority-Analysis: v=2.4 cv=a8oAM0SF c=1 sm=1 tr=0 ts=6a09f46d cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=g4/7f0GlZvY0MGcqtTB0Sw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=QP8ThlpALwkLgMcBQ0MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: xM9gvQY20h0nJ6PkCaqRWqD5rQYmxmGE
X-Proofpoint-GUID: xM9gvQY20h0nJ6PkCaqRWqD5rQYmxmGE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-17_04,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605170182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_100134_877796_726A6D62 
X-CRM114-Status: GOOD (  20.16  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gNS8xNS8yMDI2IDI6MjEgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gVHVl
LCBNYXkgMTIsIDIwMjYgYXQgMDk6Mzg6MDRBTSArMDUzMCwgS29tYWwgQmFqYWogd3JvdGU6Cj4+
IFNoaWtyYSBpcyBhIFF1YWxjb21tIElvVCBTb0MgYXZhaWxhYmxlIGluIGEgU3lzdGVtLW9uLU1v
ZHVsZSAoU29NKQo+PiBmb3JtIGZhY3Rvci4gVGhlIFNvTSBpbnRlZ3JhdGVzIHRoZSBTaGlrcmEg
U29DLCBQTUlDcywgYW5kIGVzc2VudGlhbAo+PiBwYXNzaXZlcywgYW5kIGlzIGRlc2lnbmVkIHRv
IGJlIG1vdW50ZWQgb24gY2FycmllciBib2FyZHMuCj4+Cj4+IE9uZSBTb00gdmFyaWFudCBpcyBp
bnRyb2R1Y2VkOgo+PiAgICAtIENRTTogcmV0YWlsIHZhcmlhbnQgd2l0aCBpbnRlZ3JhdGVkIG1v
ZGVtIChQTTQxMjUgUE1JQykKPj4KPj4gVHdvIEVWSyBib2FyZHMgYXJlIHN1cHBvcnRlZDoKPj4g
ICAgLSBzaGlrcmEtY3FtLWV2azogcGFpcnMgd2l0aCB0aGUgQ1FNIFNvTQo+PiAgICAtIHNoaWty
YS1jcXMtZXZrOiBwYWlycyB3aXRoIHRoZSBDUU0gU29NLCB3aXRoIG5vIG1vZGVtIHN1cHBvcnQK
PiBzL0NRTS9DUVMvCgpSaWdodCwgd2lsbCBmaXggdGhpcyB0eXBvLgoKPgo+IGJ1dCBhbnl3YXkg
SSB3b3VsZCBwcmVmZXIgdG8gdXNlIGZ1bGwgcHJvZHVjdCBuYW1lcyBmcm9tCj4gaW5jbHVkZS9k
dC1iaW5kaW5ncy9hcm0vcWNvbSxpZHMuaCAoc28gQ1FYWFhYTSkuCgpTdXJlLCBJJ2xsIHVwZGF0
ZSBib3RoIENRTSBhbmQgQ1FTIHRvIHRoZWlyIGNvcnJlc3BvbmRpbmcgZnVsbCBuYW1lLgoKPgo+
PiBFYWNoIEVWSyBwcm92aWRlcyBkZWJ1ZyBVQVJULCBVU0IsIGFuZCBvdGhlciBwZXJpcGhlcmFs
IGludGVyZmFjZXMuCj4+Cj4+IEFkZCBjb21wYXRpYmxlIHN0cmluZ3MgZm9yIHRoZSBDUU0gU29N
IHZhcmlhbnQgYW5kIGl0cyB0d28KPj4gY29ycmVzcG9uZGluZyBFVksgYm9hcmRzLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBLb21hbCBCYWphaiA8a29tYWwuYmFqYWpAb3NzLnF1YWxjb21tLmNvbT4K
Pj4gLS0tCj4+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9xY29tLnlh
bWwgfCA3ICsrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4+Cj4+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Fjb20u
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcWNvbS55YW1sCj4+
IGluZGV4IDI3NDFjMDdlOWY0MS4uZjA0MWQ3MWQ3OTU3IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Fjb20ueWFtbAo+PiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Fjb20ueWFtbAo+PiBAQCAtOTYzLDYgKzk2
MywxMyBAQCBwcm9wZXJ0aWVzOgo+PiAgICAgICAgICAgICAtIGNvbnN0OiBxY29tLHFjczkxMDAK
Pj4gICAgICAgICAgICAgLSBjb25zdDogcWNvbSxzYTg3NzVwCj4+ICAgCj4+ICsgICAgICAtIGl0
ZW1zOgo+PiArICAgICAgICAgIC0gZW51bToKPj4gKyAgICAgICAgICAgICAgLSBxY29tLHNoaWty
YS1jcW0tZXZrCj4+ICsgICAgICAgICAgICAgIC0gcWNvbSxzaGlrcmEtY3FzLWV2awo+PiArICAg
ICAgICAgIC0gY29uc3Q6IHFjb20sc2hpa3JhLWNxbS1zb20KPiBUaGlzIGlzIG5vdCBhY2N1cmF0
ZS4gVGhlIFNvTSBoYXMgcGh5c2ljYWxseSBkaWZmZXJlbnQgU29DIC0gZWl0aGVyIENRTQo+IG9y
IENRUy4gWW91IGVpdGhlciBuZWVkIHR3byBsaXN0cywgbGlrZSBUb3JhZGV4IGlzIGRvaW5nIChl
LmcuCj4gdG9yYWRleCx2ZXJkaW4taW14OTUpLCBvciBlbnVtIGluIHRoZSBtaWRkbGUgb2YgdGhl
IGxpc3RzLCBsaWtlIFJlbmVzYXMKPiBpcyBkb2luZyAoZS5nLiByZW5lc2FzLHJ6dDJoLWV2ayku
Cj4KPiBJIHByZWZlciB0aGUgZmlyc3Qgb3B0aW9uLCBzbyBUb3JhZGV4IGNob2ljZS4KPgo+IEJ1
dCBmb3Igc3VyZSB5b3UgZG8gbm90IGdldCB0aGUgdGhpcmQgc29sdXRpb24uLi4gUmVhbGx5LCB5
b3UgYXJlIG5vdAo+IHN1cHBvc2VkIHRvIGludmVudCB0aGVzZSB0aGluZ3MsIGJ1dCBsb29rIGF0
IGV4aXN0aW5nIHNvbHV0aW9ucyAoYW5kIEkKPiB3YXMgbWVudGlvbmluZyBUb3JhZGV4IGR1cmlu
ZyBpbnRlcm5hbCBtZWV0aW5ncyB3aGVuZXZlciBzb21lb25lIGFza2VkCj4gbWUgaG93IHRoZSBT
b00gYW5kIGNhcnJpZXIgc2hvdWxkIGJlIG9yZ2FuaXplZCkuCgpTdXJlLCBJ4oCZbGwgZm9sbG93
IHRoZSBUb3JhZGV4IGFwcHJvYWNoIGFuZCByZXN0cnVjdHVyZSB0aGlzIHdpdGggCnNlcGFyYXRl
IGNvbXBhdGlibGUgbGlzdHMgZm9yIGVhY2ggRVZLL1NvTSBjb21iaW5hdGlvbiwgYXMgYmVsb3c6
CgotIGl0ZW1zOgogwqDCoMKgwqDCoCAtIGVudW06CiDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29t
LHNoaWtyYS1jcW0tZXZrCiDCoMKgwqDCoMKgIC0gY29uc3Q6IHFjb20sc2hpa3JhLWNxbS1zb20K
IMKgwqDCoMKgwqAgLSBjb25zdDogcWNvbSxzaGlrcmEKCiDCoCAtIGl0ZW1zOgogwqDCoMKgwqDC
oCAtIGVudW06CiDCoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNoaWtyYS1jcXMtZXZrCiDCoMKg
wqDCoMKgIC0gY29uc3Q6IHFjb20sc2hpa3JhLWNxcy1zb20KIMKgwqDCoMKgwqAgLSBjb25zdDog
cWNvbSxzaGlrcmEKCgpUaGFua3MKS29tYWwKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
