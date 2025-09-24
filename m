Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EA15CAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 01:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XoSfVmH21Y/tw5HSFZBjdmDb7gPnEWVy+Z20XMRAGw0=; b=He3fbgyfo8s6xt
	9voRoIXyQIMsdrqFk8nxcIIfwfgaRVa9Rb1+I7u936AZaJ0l1TxB1Y/GK3LQOpLGvrFVOVv7AxLbx
	fikG5Enhc8SxTbvGzYk3q0lQl17myuWa6DfMN3sMmuHcPQq6c13ENTLbVCkqB+K14BeVQYECd1jP6
	9MP8cuKOeMU9mCdusEL9g+7gYonPmKDd5IBfs7hwgV2o7UXN8tAtTSG3gJCaXxYB51ke/xhMRD6NP
	2P1KKJgMZfLD8w66bYNSFdh46HVVYtqLmTj70hkcCG3SJCbvysDK94KHrwEWKffmhZyapwBHI9wV6
	KpYADr/vIH7hr/zVavYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Drg-0000000FFop-0nQK;
	Wed, 24 Sep 2025 01:00:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Drd-0000000FFo8-1bNb
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 01:00:11 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O0ogeI014326
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 01:00:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X2zvsIx0xpsseLnuqD3wgD1uVrKng7sqp3Iah6620cQ=; b=fdADJHtkDZluEdxf
	dWy2qaD1z6tiE0NDephEw64aP6tE4TUKhFxUpOnASzJfCsajURWkEQgWLmCSSA4o
	+SmlVg7B+MVPs/l/omMhm8Mf9EYVjUAqNNnzkVpXhexxfcJp+yYoRK4L2EXQyXkJ
	ragWJMOYEpGZ4R7sC0r1R5mUTuEw7uqvT4sBodFaG0IITK4ourkDoVXPAT9U+P/w
	7p5IUliSUv0Vo3SZh7pU15QAVON0Oe13AfYqYUV2crBIzWJWLTzzu/IUCmI2sOCw
	vaDZFybNnROri0cEDaIdbrsqbRA4atH/kIh4lSTSXSzPCLcSSMTaXTQv3gXmfoX6
	0nWlJA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp09j1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 01:00:08 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77f3ed70b01so2506564b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Sep 2025 18:00:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758675607; x=1759280407;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X2zvsIx0xpsseLnuqD3wgD1uVrKng7sqp3Iah6620cQ=;
        b=FcGt7R75XtFb/3jfQ4re3KNbTKFNUahWWmMhM4cXZBdQexrZHd8avnmP/2IDxfUde1
         2xVcGxEuxTxUS04dc41SU2IRXE4Ij/KKYcQCNbmF5Vw9s2nm9EcAr9gK/rENSQYNoYsi
         jfKRYDG3moMl+x2VJxltvSbvUo/fWFYBHUmHiJqJJmtRLkva972QfD6FqusjfpnC9f8q
         +ddcw2hMPBg6gd1wssHjzDkB3iyw2WJiMbFdKa8MatvgwOdpPs7Io2pPsWj+0wbHuX6r
         mb15rNx9hTF89WvGM1gEFRbIR1X2YynB3IZc4FkuPclSt+1VjatrKxDFTKxNVGoPVfiP
         HW1g==
X-Forwarded-Encrypted: i=1; AJvYcCUVA9tZ6sOvaEw0bWQpcoTejfhgY3Tyktj1QjeljcL5qHNcIws5j+QR/gBtqtfIroWetMVzmQYDqEE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnBPG8Nz3zda26c4jI7sLqTeijIap7WFyGYYbeuIfLReAi0T7L
	H+DQXPcILVFFoJ7FlhIZ9wxwX5IIFgM3A0vsmpXNchlBH3TMgr0wQbJX7iD1OA7BcGOK3ttHTjT
	8/sVgyCJY/VrbA6RHP3v4pp5CdmIi2e3ah+6XKX9CkMGWVm875l9CzwVIRjJAD4sPVo3V
X-Gm-Gg: ASbGncv5Zufnb3hnUgx0gDjwEEOuazZegcU/+7Q3OmjEbn7vwy/cauLO4GozwXusfGL
	gRC26IYplgTvvfnVK+SHfyk8t+lO9/n8dWO1lN7XWCqhHwGz/sC7e/4JcRgocgYT+i4R+OipOfi
	esokoke+BbIWb4P84/bcEOs/FvdJbRyBQEL2+8fFanq3mGR94Ykf8W2A3/FJJzL8G0wn5DsFt/3
	p/h61yN+xMLGSgWeu812wMUXKF9Dw4utoJzxSU6rDsm/4qyez625+8juLz/jLicbZC8KxJGfP8i
	GY+/6ZFSCQsl5iHfKuxoHVj7HLwo0kvcTaYsHsUM2TRWFYUH41Q7dfDbUZbRdNEK6D5Gp4A4IGr
	lVMUJOQ==
X-Received: by 2002:a05:6a20:3d87:b0:252:2bfe:b65d with SMTP id adf61e73a8af0-2cfddc6a137mr6516264637.2.1758675606619;
        Tue, 23 Sep 2025 18:00:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0NAzGMlXuVw5j4OF/iTpNasadjCiM+4Mz3TJZj0Y3pZnZIJg5KRsof0hAuREl2zzoKFq8fw==
X-Received: by 2002:a05:6a20:3d87:b0:252:2bfe:b65d with SMTP id adf61e73a8af0-2cfddc6a137mr6516229637.2.1758675606142;
        Tue, 23 Sep 2025 18:00:06 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77eee36c2b2sm12958795b3a.78.2025.09.23.18.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 18:00:05 -0700 (PDT)
Message-ID: <31f61f93-2e9d-565a-cd5e-4f668ed7d6c0@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 18:00:04 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 3/9] dt-bindings: phy: qcom-m31-eusb2: Add Glymur
 compatible
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-4-wesley.cheng@oss.qualcomm.com>
 <20250922201449.GA1235521-robh@kernel.org>
 <554cd2ce-a617-9387-7379-a3c2b9de843c@oss.qualcomm.com>
In-Reply-To: <554cd2ce-a617-9387-7379-a3c2b9de843c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d34298 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=1x5KiYs_k_UboVqHg6sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: XK0_IH5vBsVMPn5OQTYz1PPZaDHcVS3s
X-Proofpoint-ORIG-GUID: XK0_IH5vBsVMPn5OQTYz1PPZaDHcVS3s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX6hpTSZ540xNF
 GL6oFWaMdPiV+2L6X1C2moxJZVhagcKMLMYX07dqFfsVbw3yUT3hACPbY5ec1LiLZEPEmHx35xo
 ZzBHnUYYUdC4vpKBCKZi3i0eyLM2chvvEW3G+5V9Kx9fk9Ef1bZ/BIo9d0CFKn0F7FFFxU4KNzr
 ntlsQcs0SFUA0hNwbt5m0xgc/H1B6OAX9BYiaGkrQNyG/JbXe7WtoCKVUBMaIpuTATtwgrZGy05
 000eDahGIgmKvLm+7tEXDo7DECSHCVwdAoqnkLLZEO08UPvXYgUaST7pZ0zdL8Fw1+JT5/Az75Y
 dGe2j6/2h0qtXdMm4/O0bv3Yc+0aobilZXyi1YctFX0EOIxdSEmnsTOmRMfsgrEU1bXHoo09wrt
 IoAlgjwt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_07,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_180009_562143_37C0E7D1 
X-CRM114-Status: GOOD (  18.78  )
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

CgpPbiA5LzIyLzIwMjUgNjowMiBQTSwgV2VzbGV5IENoZW5nIHdyb3RlOgo+IAo+IAo+IE9uIDkv
MjIvMjAyNSAxOjE0IFBNLCBSb2IgSGVycmluZyB3cm90ZToKPj4gT24gRnJpLCBTZXAgMTksIDIw
MjUgYXQgMDg6MjE6MDJQTSAtMDcwMCwgV2VzbGV5IENoZW5nIHdyb3RlOgo+Pj4gQWRkIHRoZSBH
bHltdXIgY29tcGF0aWJsZSB0byB0aGUgTTMxIGVVU0IyIFBIWSwgYW5kIHVzZSB0aGUgU004NzUw
IGFzCj4+PiB0aGUgZmFsbGJhY2suCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogV2VzbGV5IENoZW5n
IDx3ZXNsZXkuY2hlbmdAb3NzLnF1YWxjb21tLmNvbT4KPj4+IC0tLQo+Pj4gwqAgLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sbTMxLWV1c2IyLXBoeS55YW1swqDCoCB8IDExICsrKysr
Ky0tLS0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgCj4+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcWNvbSxtMzEtZXVzYjItcGh5LnlhbWwgCj4+PiBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxtMzEtZXVzYjItcGh5LnlhbWwKPj4+IGluZGV4
IGM4NGM2MmQwZThjYi4uYjk2YjFlZTgwMjU3IDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLG0zMS1ldXNiMi1waHkueWFtbAo+Pj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLG0zMS1ldXNiMi1w
aHkueWFtbAo+Pj4gQEAgLTE1LDkgKzE1LDEyIEBAIGRlc2NyaXB0aW9uOgo+Pj4gwqAgcHJvcGVy
dGllczoKPj4+IMKgwqDCoCBjb21wYXRpYmxlOgo+Pj4gLcKgwqDCoCBpdGVtczoKPj4+IC3CoMKg
wqDCoMKgIC0gZW51bToKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgLSBxY29tLHNtODc1MC1tMzEt
ZXVzYjItcGh5Cj4+PiArwqDCoMKgIG9uZU9mOgo+Pj4gK8KgwqDCoMKgwqAgLSBpdGVtczoKPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBlbnVtOgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gcWNvbSxnbHltdXItbTMxLWV1c2IyLXBoeQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAt
IGNvbnN0OiBxY29tLHNtODc1MC1tMzEtZXVzYjItcGh5Cj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0
OiBxY29tLHNtODc1MC1tMzEtZXVzYjItcGh5Cj4+PiDCoMKgwqAgcmVnOgo+Pj4gwqDCoMKgwqDC
oCBtYXhJdGVtczogMQo+Pj4gQEAgLTUzLDggKzU2LDYgQEAgcmVxdWlyZWQ6Cj4+PiDCoMKgwqAg
LSBjb21wYXRpYmxlCj4+PiDCoMKgwqAgLSByZWcKPj4+IMKgwqDCoCAtICIjcGh5LWNlbGxzIgo+
Pj4gLcKgIC0gY2xvY2tzCj4+PiAtwqAgLSBjbG9jay1uYW1lcwo+Pgo+PiBIb3cgaXMgaXQgY29t
cGF0aWJsZSBpZiBjbG9ja3MgYXJlbid0IHJlcXVpcmVkIG5vdz8gQW5kIGNsb2NrcyBhcmUKPj4g
c3VkZGVubHkgbm8gbG9uZ2VyIHJlcXVpcmVkIG9uIHNtODc1MD8KPj4KPiAKPiBIaSBSb2IsCj4g
Cj4gSXQgZGVwZW5kcyBvbiB0aGUgY2xvY2sgc3Vic3lzdGVtLsKgIE9uIFNNODc1MCwgd2Ugc3Rp
bGwgbmVlZCB0aGUgY2xvY2sgCj4gZW50cnksIGJlY2F1c2Ugd2UgbmVlZCB0byBjb250cm9sIHRo
ZSBvdXRwdXQgb2Ygb3VyIENYTy9yZWZlcmVuY2UgY2xvY2sgCj4gdG8gb3VyIEhTIFBIWS7CoCBI
b3dldmVyLCBvbiBjaGlwc2V0cyBsaWtlIEdseW11ciwgc29tZSBIUyBQSFlzIGluIG91ciAKPiBV
U0Igc3Vic3lzdGVtIGRvZXNuJ3QgaGF2ZSB0aGlzIHJlZmNsayBvdXRwdXQgY29udHJvbC4KPiAK
CkkndmUgdXBkYXRlZCB0aGUgYmluZGluZ3MgdG8ga2VlcCBpdCByZXF1aXJlZCBmb3IgU004NzUw
IGFuZCBvcHRpb25hbCBvbiAKR2x5bXVyLgoKVGhhbmtzCldlc2xleSBDaGVuZwoKPiBUaGFua3MK
PiBXZXNsZXkgQ2hlbmcKPiAKPj4+IMKgwqDCoCAtIHJlc2V0cwo+Pj4gwqDCoMKgIC0gdmRkLXN1
cHBseQo+Pj4gwqDCoMKgIC0gdmRkYTEyLXN1cHBseQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
