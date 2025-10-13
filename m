Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17022CCD185
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 23:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDJ1aABwGFVlyNxbpvF7YMpD+qX6W+2M4RJzAJ0xW/k=; b=Ev23jC8fMaTQ5E
	siujchwgYRJwm0uusL/MEVnhZtXKeHc6jkyjXJrGYpf09oVctSdmvB77wxqjg1Cf/dALy74QY+UWi
	j/cZaxG8Xwht8oZ4+gJsEa3MEBL0+cY6xu3958/wB1yKJCqcrc59eEr5LFd3giK5FBA8wGMuh8fYy
	rcELf5l+ks7mJHNxqlaCZMqCvK8zoSckANgJSlq28/IENlXlue9LMmNKMmoUydFR73MfA/k5G1eie
	Ft3XBMCCBJbQiqAQPjPFdBZDoq7k+WAHsGABVeHWi4/UCyWBio7k4dVuLRnBAOqpu/5Kuo67etLEL
	gPt4fYD+/cLdelCoZnQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8SFX-0000000EmO7-3COS;
	Mon, 13 Oct 2025 23:46:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8SFV-0000000EmNh-2zAL
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 23:46:42 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDG3s021068
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 23:46:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0gy/eN2/a4rW4UleojofitvwB4RNCpSUHYOp2DX/Fow=; b=hPgki7Z50ZRq9hOS
	T0nU3sRtj5IwJhU54lR2Ukes3zX+phYc0nNsOojUpxwBphdIFvIuAKwxB9/u0kSX
	0gHzwEqq4V7MM6Ua+JNVpUWEloc6KdRMv193ISgAbr9iZrwMh44PbTQgR7kZVChC
	oeWhFKwEqx9Xy/E42igqPdtpgM/Xb+ajdnQ4OcReHQIrARHp9HiPnVo3CBX2y1ST
	mWM+Oe2kKEnltiecr8PjuX9Ji+TJUjuAsADqBCN+ctUMsutIMi8h03NMIJXeYYFX
	Hy9xIo9kT0U5cB3wEPUbFYS2tfnTHOnoh6UAkjCkI7LWhE9ZJFL2g0MPvgZUwzqw
	y27OoQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0bxgdp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 23:46:41 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-277f0ea6ee6so101122125ad.0
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 16:46:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760399200; x=1761004000;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0gy/eN2/a4rW4UleojofitvwB4RNCpSUHYOp2DX/Fow=;
        b=vx3rTMlBlwRum6OA8wlZptB5V5WprJmAXAgoEOf8MZkdP320jPKznIE2UN1q3F3Ba9
         mVGkn2FhcVrzu2GWlRJn9QO6Q9T2RLm6mKHPAkbJERz6uekoftFVxA4klicckytKeMFo
         JVqaSLjaPgOH+dgPobObU3yjbag6CVmYYp+7UXr8yKDwETZ1kQm5tpbw9iomqsxr0YhO
         gsW5dRzwuTm8UMXj7R9r59SiO504vgNwHYrqHzqvlbovRup6j1HEOCUw15I0gOu9vzSi
         ABTvy+Q5982t2h4rm/tgGvkoz20Mb9mY82PYEog8FtuUDVBO3lrtGNR7voeCQa45yiJE
         dxjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVO3a2HjPIg+BDcr/XCaDmzaVTI+XXwF9J+z19RcMV7DL91OnKJxAWoHu4sZXaw+XT5VQXOrjefk4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAzh1+Dzc5EBxOBJANMajzqbg1ynuCPWnvTE6AIFTzdceGitTb
	n3hrQB145C2qdgJHM6E67xOGTFGRSFKxgUmILHzH1ZtsTERA+2YRQ2iMgzvQVTow3HOEJtJb1wK
	0eIJovvTsaSZN7/D29S3heTkWkqyz0rlnSX7WVIu4iuHy5/w9H/4eaZpnzm+ZJCi9C8zK
X-Gm-Gg: ASbGncu7UmpFFFOWQmJzqze0c6D6+8RGQ8VbsG68XaKuXIq7BaTklAuGx0EqvVhQQRl
	c0GyZmj/DgnBLxA08BMDRwnZ5bRqJLo9P6HzLy70+wNkVydjpvfrY/4qEkhfSwEaIaSxj8SCOMw
	0vVDZmsMSOvdmP/WTOmDrq+BcFRj4f9DlIlaIHPXCQKA4lgqWMooPytgqqXNRBnCzjsmq6Muj+C
	39ZSE7Cs1w4dBLe0SI3KsOWaD0JpbE15cJvYoDqYS1S3FQfsxIqvUOuUSxj6Rxb1RPsp9Wrhmir
	F60yhsxbjuxbnzmBlP38NQ5y9G/NA0q9eQCqEEqIqLHcGhMaCJEFbXVVFM+xXdp7F4JD48qskRS
	6Ip/QAQ==
X-Received: by 2002:a17:902:da85:b0:26a:f69a:4343 with SMTP id d9443c01a7336-29027216513mr239372445ad.4.1760399200281;
        Mon, 13 Oct 2025 16:46:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnOgt3lwzbUvcJDvzNbU5nzvH3UjGpjKLKhZpUQXp9HGXcUzbD6NyyhTRMy3UAHlSc/tkmkQ==
X-Received: by 2002:a17:902:da85:b0:26a:f69a:4343 with SMTP id d9443c01a7336-29027216513mr239372215ad.4.1760399199808;
        Mon, 13 Oct 2025 16:46:39 -0700 (PDT)
Received: from [10.73.53.19] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29076d7af28sm10202415ad.118.2025.10.13.16.46.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 16:46:39 -0700 (PDT)
Message-ID: <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 16:46:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Content-Language: en-US
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, krzk+dt@kernel.org,
        conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
 <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
In-Reply-To: <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
X-Proofpoint-GUID: T_8LpZW-Om5lCOihXFw59WiSL-1CdRLP
X-Proofpoint-ORIG-GUID: T_8LpZW-Om5lCOihXFw59WiSL-1CdRLP
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ed8f61 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qShf3X6Dcnx_eSjzdeYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX6KH4MtntUkOp
 syv1yhp19+SFqTDGPSKP8ue5dy3HoUHNQEOZuXBBgI75Ks4uHdf8BpJoRiqT9ynPK8BUonE5kjj
 seBh/RfqkJlFnfHqICnwx2RLyzpAXeMTemvCZ1OeK4x75gCHWzvoCs+BHT/grVDlkSLATThNeSj
 PCWYyYzEG7X2+TpBKVkAhEkFZVNg8fCx/iipcZenqXbaw+t0ZOi2h52v2IIkUIchL8mR4fLyHr4
 1uLtnIP6BjVvg8yUWEgg0GGo361eLGNF36nuBVyyQB1blPRZldVo/4synjWAt3eYXmtxX83OGaO
 rZ5JXX2fFu41G27+M1CaoteRh6eEHqj67IlixbEukG4wjitd7/kYZJpcTKGwOstJss5BEhIKl5N
 T+ygIlH40MZlnBBSIchhn5Y5+Oot6w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_08,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_164641_829801_3BDC28FD 
X-CRM114-Status: GOOD (  14.20  )
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

CgpPbiAxMC8xMy8yMDI1IDQ6NDQgUE0sIFdlc2xleSBDaGVuZyB3cm90ZToKPiAKPiAKPiBPbiAx
MC8xMC8yMDI1IDU6MDQgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIDA3LzEw
LzIwMjUgMDA6MTksIFdlc2xleSBDaGVuZyB3cm90ZToKPj4+IFRoZSBHbHltdXIgVVNCIHN1YnN5
c3RlbSBjb250YWlucyBhIG11bHRpcG9ydCBjb250cm9sbGVyLCB3aGljaCB1dGlsaXplcwo+Pj4g
dHdvIFFNUCBVTkkgUEhZcy7CoCBBZGQgdGhlIHByb3BlciBjb21wYXRpYmxlIHN0cmluZyBmb3Ig
dGhlIEdseW11ciAKPj4+IFNvQywgYW5kCj4+PiB0aGUgcmVxdWlyZWQgY2xrcmVmIGNsb2NrIG5h
bWUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogV2VzbGV5IENoZW5nIDx3ZXNsZXkuY2hlbmdAb3Nz
LnF1YWxjb21tLmNvbT4KPj4+IC0tLQo+Pj4gwqAgLi4uL3BoeS9xY29tLHNjODI4MHhwLXFtcC11
c2IzLXVuaS1waHkueWFtbMKgwqAgfCAzNSArKysrKysrKysrKysrKysrKysrCj4+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgCj4+PiBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNi
My11bmktcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fj
b20sc2M4MjgweHAtcW1wLXVzYjMtdW5pLXBoeS55YW1sCj4+PiBpbmRleCBhMWI1NTE2OGUwNTAu
LmIwY2U4MDNkMmI0OSAxMDA2NDQKPj4+IC0tLSAKPj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2IzLXVuaS1waHkueWFtbAo+Pj4g
KysrIAo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4
MjgweHAtcW1wLXVzYjMtdW5pLXBoeS55YW1sCj4+PiBAQCAtMTYsNiArMTYsNyBAQCBkZXNjcmlw
dGlvbjoKPj4+IMKgIHByb3BlcnRpZXM6Cj4+PiDCoMKgwqAgY29tcGF0aWJsZToKPj4+IMKgwqDC
oMKgwqAgZW51bToKPj4+ICvCoMKgwqDCoMKgIC0gcWNvbSxnbHltdXItcW1wLXVzYjMtdW5pLXBo
eQo+Pj4gwqDCoMKgwqDCoMKgwqAgLSBxY29tLGlwcTU0MjQtcW1wLXVzYjMtcGh5Cj4+PiDCoMKg
wqDCoMKgwqDCoCAtIHFjb20saXBxNjAxOC1xbXAtdXNiMy1waHkKPj4+IMKgwqDCoMKgwqDCoMKg
IC0gcWNvbSxpcHE4MDc0LXFtcC11c2IzLXBoeQo+Pj4gQEAgLTYyLDYgKzYzLDggQEAgcHJvcGVy
dGllczoKPj4+IMKgwqDCoCB2ZGRhLXBsbC1zdXBwbHk6IHRydWUKPj4+ICvCoCByZWZnZW4tc3Vw
cGx5OiB0cnVlCj4+PiArCj4+PiDCoMKgwqAgIiNjbG9jay1jZWxscyI6Cj4+PiDCoMKgwqDCoMKg
IGNvbnN0OiAwCj4+PiBAQCAtMTU3LDYgKzE2MCwyNSBAQCBhbGxPZjoKPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCBjb21wYXRpYmxlOgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250YWluczoK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW06Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLSBxY29tLGdseW11ci1xbXAtdXNiMy11bmktcGh5Cj4+PiArwqDCoMKgIHRo
ZW46Cj4+PiArwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgo+Pj4gK8KgwqDCoMKgwqDCoMKgIGNsb2Nr
czoKPj4KPj4gTWlzc2luZyBtaW5JdGVtcy4KPj4KPiAKPiBIaSBLcnp5c3p0b2YsCj4gCj4gV29u
J3QgdGhlIG1pbkl0ZW1zIGJlIGluaGVyaXRlZCBieSB0aGUgYmFzZSBkZWZpbml0aW9uPwo+IAoK
QWguLi5hcmUgeW91IHNheWluZyB0byBkZWZpbmUgbWluSXRlbXMgdG8gNSBhcyB3ZWxsLCBzaW5j
ZSB3ZSBuZWVkIHRvIApoYXZlIGFsbCA1IGNsb2NrcyBoYW5kbGVzIGRlZmluZWQgdG8gd29yaz8K
ClRoYW5rcwpXZXNsZXkgQ2hlbmcKCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIG1heEl0ZW1zOiA1
Cj4+PiArwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXM6Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
IGl0ZW1zOgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogYXV4Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBjbGtyZWYKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0gY29uc3Q6IHJlZgo+Pgo+PiBXaGF0IGlzIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4g
dGhlc2UgdHdvPyBXaGljaCBibG9jayBJTlBVVHMKPj4gKGltcG9ydGFudCEpIHRoZXkgcmVwcmVz
ZW50Pwo+Pgo+IAo+IGNsa3JlZiBpcyB0aGUgVENTUiByZWZlcmVuY2UgY2xvY2sgc3dpdGNoLCBh
bmQgdGhlIHJlZiBpcyB0aGUgYWN0dWFsIENYTyAKPiBoYW5kbGUuCj4gCj4gVGhhbmtzCj4gV2Vz
bGV5IENoZW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
