Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F583C47BC4
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 08:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCgLy2oHYf1lMBMYZ4mWPN8CJ30f5XdH4BfvhG1gdcU=; b=amsJrJd9cyiBDD
	xJs43U11g2VRlO4MKxSCp3njPrOkmKx9oHgWw2Nz5rPFMBlMFOjMH4gaXpbtvkS4mJgk0CWPXvYq8
	LP6Ejij8biBVV6hmpA0rWq1UFEEZVSUZNylH5NPHbBnhOBnUjN/ZhLMHcRumdpk5dNH4+KEO9r97b
	GiBz/SbfHLN4x5PPQDcVyj0kCgca6t2huPlouAB70WLkHTaEdQTmI4WwPOk2raQY1QrR3dbvwBQc4
	0PCllhZqx4ksuv3KG2qafM2SHwNswu/FMwwxKhgIwpBdV4YsIOMK4x1z8QDX4Rz65RMXVN9qVD+1F
	p9oUiWRgWf+RTVL6I0KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd225-0000000CaQi-3yrD;
	Tue, 06 Jan 2026 08:03:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd223-0000000CaQB-2FqK
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 08:03:12 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QFJI2922792
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 08:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S3+xtUM3olagLh1tBmNWj8fPCCymvhiEGhTOzn8UdE4=; b=bRzEvoPsKdMbynUm
	lUycbMAVpL4+HrfVeB4OPF/nUQJdsubQB2O0bM3FK93ai7JEUBgeGTeE3KEgJYrP
	rnap/qAjw9X21KuTmiczvmoxBOkY12+HKNOZK0z2SSLLD/Ic7AF1TJweSEBhl4bm
	x5dstuyVD54m8zzPQuRAoNP2P767CxXnYFp1+1IKVicNpa9QWQezere/Vrr06bQp
	HoOQFMmyoJ6vogdg+XjIQxhbp/5Urgj5+hbOTOFJSVil1iFTjosBuaZn8kXQHoaE
	6WLF6ThOIxuLlI6fPEDXMM9CQKDShwm0QxuSAHg2mZedZzlHf+Xdi8+4FIR1IX4g
	+iKk8A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgscy8w2v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 08:03:10 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7c1df71b076so1565976b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 00:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767686590; x=1768291390; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S3+xtUM3olagLh1tBmNWj8fPCCymvhiEGhTOzn8UdE4=;
        b=I5OGVCOU1bvArIyddCvKH+0ZYpnAJckbGFRPD75Q0gVzYm0KCAY+WxUveAkb7ydEUM
         LWdyivx4sKMpwo7IQ3cCFsFbvrjneEQ+k95BEqB773YGzbnyq0f2hHx3Sz/t5h08noy8
         YyDQ/J3Od7ey7jpxQ7FewiHehYPMyjpwzovN3IsQIPBVPPxUKfga9xIdzNmx9YsuWMtE
         pm+LxaPO3D8D+CGk0BPz6H2ZlwfYIQbshnF9vD5TJvn+cNJO11R7tk0hnuO51Dk8bhYn
         OhKthBnXhUpfS0Bytay6XIw9zzkwvDY+K1S5Y+teENWfe/ThJ3Yc6GTOY1mng37riqbK
         0tGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767686590; x=1768291390;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S3+xtUM3olagLh1tBmNWj8fPCCymvhiEGhTOzn8UdE4=;
        b=Q5t2ivsUKmYnAp/Mqqdl45vzC6wHpIfXXa9euqlbtQpUIQTwHLv0CbGd372uedxqBl
         y3FVV707LMHaZcyasHz+vq4MWsAQJRw/BBWhY/T635L2GwZOqJ6NVFl8Q5Yyw36OpxbN
         LZVVGvUy1zvt+XUZA4suJgLF1WAgHgYD3BmNQ9mUIML4YNilIzwkF/4kXohUZzPsSxdH
         SjBRrhbVG2RWZH8QJnaex3oCd3DRaDofHoLYm4e9QX2U3QeXgOmOtsNjfXXj1IYf3LjY
         u8ByZvx3ZcHHkHin1m2V33YsxEhAsZy3IBmhe1aOe6/mbVQrnvt9plsCJxKfEWJ5+ICd
         sggw==
X-Forwarded-Encrypted: i=1; AJvYcCW/biH9wFrXkS10xkgH8NgvxixbVT5igBh0EHeH07H84X65R0qRjEltZjUbFVLweWykVV1sonS6PPo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0c9GHKYdECuPJCoVHgxKsfkbrOroGs/PZaR/axg8Ig5cOI5Dc
	h31WRXE1AQ2N7E11uqGcNpCI8p3c+xmcnmxsrixVdgrJaZXbmckN9rPe5vUyQY1tDnt1x73+/ae
	cYBQQmdcdWGdKZACBRX9gkcCB9x5rvx8KBZFJEHU+ZPonYzZ2CfGu4Oohr+TkQSlo962B
X-Gm-Gg: AY/fxX6eddX5GXrnpyJegEPGJ+kBw5RXjyfRX8t7IVvsWteol6f1eQof9wrzMTQ6DCl
	fUdf/DBV7e1k5EtOnd5SUIcdt8ngCsiN3EvJgtZnLTOJfNmIdViOWgq0YHIQ7+WFP6Ml7Oyt2Us
	tYvI2v2JlzgYCBCvfvRYGu72egZTGcuGGEXz578FYLGBo5zgmqp7HUcZAwP7CNB0Vy5BuZrY3AR
	e6zeDSXLv8zkWsoRyOkPWp6TEcpY/hXrjL4/T540Ut4cdExgA9Zjswr2R7kRzUHZVBvdei0q2Id
	t+qNheTNVDsnkYdtCTUZBnJkRpR/H3OsbckcunZpY2G0wDtej7HEGbQUSBAptOYwRufljJh6/Qi
	6eQJ/xPQVR0IiiWjnYgFrtKEE
X-Received: by 2002:a05:6a00:4c0c:b0:7f7:1857:8456 with SMTP id d2e1a72fcca58-81882bed424mr2160895b3a.55.1767686589488;
        Tue, 06 Jan 2026 00:03:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1StIk5ri+Xdk2XHSuW8HPE18xZLf09BUwEnyMKp00EvRdNGc+dY7FLMF1eltAoyBuNLC6+w==
X-Received: by 2002:a05:6a00:4c0c:b0:7f7:1857:8456 with SMTP id d2e1a72fcca58-81882bed424mr2160864b3a.55.1767686588964;
        Tue, 06 Jan 2026 00:03:08 -0800 (PST)
Received: from work ([120.60.56.175])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c530133csm1318334b3a.31.2026.01.06.00.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 00:03:08 -0800 (PST)
Date: Tue, 6 Jan 2026 13:33:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V3 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC
 compatible for x1e80100
Message-ID: <ljaqrxazapkqvv5m5kxm2pq32dmgyupu3fzn7yhgvnvg72o3lm@5qiiuv3oizvh>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-3-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260105144643.669344-3-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-GUID: 9uUNB4r8hc68HZ3BiGjMBo6KZEWxns7m
X-Authority-Analysis: v=2.4 cv=fOw0HJae c=1 sm=1 tr=0 ts=695cc1be cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=JR4DBjdY6jk8CmbmB73bTw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=I8-C11gq8jfHFaFuRmUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 9uUNB4r8hc68HZ3BiGjMBo6KZEWxns7m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA2NyBTYWx0ZWRfX1bopAJlzgScv
 cTqSpmeH0aB3sP5y57tkDFbHFeeDOfyPzbOnAnO/qivq9cCEtiJvuw7qNCZE4pVH2zL4qp9oVv4
 pXXnvtJeZ35isy/D0qpnOTPrRNW19hVwS5rp0hlux1DgE5hu5g4kTpnX5qfrWqq9YKOARepQVal
 mUkgzF45JKaIGwCWeW/4B9TCaofRaRQm++LWBBxTnpvxE7S38LYKL7eES6B+JSJbTMmNDLIaQuE
 oBX4DYyx3qW/5M31l9BMpFV7rSYtXGc33CmRSG5RG6lrpOn7RbR400eVKXvgmq9WFquCHHfFELU
 f/uT66m5eRFOa5hCWHpChYA1cDiIiCdJ4+uXMW9ib4m20M8VovE3Rn6B/+jC7Ox2k1hmYjvEhw4
 7UEyY3svzd69KDo+96WdC+NvCMQSK9wMwAmC2XbVTxBiW7HdBbDJj9n+mM1bVPzxn/SY3AjxSlX
 QeDpXzto3Z7hie2hAlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_000311_604007_523BB762 
X-CRM114-Status: GOOD (  16.38  )
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

T24gTW9uLCBKYW4gMDUsIDIwMjYgYXQgMDg6MTY6NDFQTSArMDUzMCwgUHJhZGVlcCBQIFYgSyB3
cm90ZToKPiBBZGQgVUZTIEhvc3QgQ29udHJvbGxlciAoVUZTSEMpIGNvbXBhdGlibGUgZm9yIHgx
ZTgwMTAwIFNvQy4gVXNlCj4gU004NTUwIGFzIGEgZmFsbGJhY2sgc2luY2UgeDFlODAxMDAgaXMg
ZnVsbHkgY29tcGF0aWJsZSB3aXRoIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFByYWRlZXAgUCBW
IEsgPHByYWRlZXAucHJhZ2FsbGFwYXRpQG9zcy5xdWFsY29tbS5jb20+CgpBY2tlZC1ieTogTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIC4u
Li9iaW5kaW5ncy91ZnMvcWNvbSxzYzcxODAtdWZzaGMueWFtbCAgICAgICB8IDM3ICsrKysrKysr
KysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDE1IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdWZzL3Fjb20sc2M3MTgwLXVmc2hjLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdWZzL3Fjb20sc2M3MTgwLXVmc2hjLnlhbWwKPiBpbmRleCBkOTRlZjRlNmI4NWEu
LmMxMDg1ZDE3ODQyMSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdWZzL3Fjb20sc2M3MTgwLXVmc2hjLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sc2M3MTgwLXVmc2hjLnlhbWwKPiBAQCAtMzEsMjEg
KzMxLDI4IEBAIHNlbGVjdDoKPiAgCj4gIHByb3BlcnRpZXM6Cj4gICAgY29tcGF0aWJsZToKPiAt
ICAgIGl0ZW1zOgo+IC0gICAgICAtIGVudW06Cj4gLSAgICAgICAgICAtIHFjb20sbXNtODk5OC11
ZnNoYwo+IC0gICAgICAgICAgLSBxY29tLHFjczgzMDAtdWZzaGMKPiAtICAgICAgICAgIC0gcWNv
bSxzYTg3NzVwLXVmc2hjCj4gLSAgICAgICAgICAtIHFjb20sc2M3MTgwLXVmc2hjCj4gLSAgICAg
ICAgICAtIHFjb20sc2M3MjgwLXVmc2hjCj4gLSAgICAgICAgICAtIHFjb20sc2M4MTgweC11ZnNo
Ywo+IC0gICAgICAgICAgLSBxY29tLHNjODI4MHhwLXVmc2hjCj4gLSAgICAgICAgICAtIHFjb20s
c204MjUwLXVmc2hjCj4gLSAgICAgICAgICAtIHFjb20sc204MzUwLXVmc2hjCj4gLSAgICAgICAg
ICAtIHFjb20sc204NDUwLXVmc2hjCj4gLSAgICAgICAgICAtIHFjb20sc204NTUwLXVmc2hjCj4g
LSAgICAgIC0gY29uc3Q6IHFjb20sdWZzaGMKPiAtICAgICAgLSBjb25zdDogamVkZWMsdWZzLTIu
MAo+ICsgICAgb25lT2Y6Cj4gKyAgICAgIC0gaXRlbXM6Cj4gKyAgICAgICAgICAtIGVudW06Cj4g
KyAgICAgICAgICAgICAgLSBxY29tLHgxZTgwMTAwLXVmc2hjCj4gKyAgICAgICAgICAtIGNvbnN0
OiBxY29tLHNtODU1MC11ZnNoYwo+ICsgICAgICAgICAgLSBjb25zdDogcWNvbSx1ZnNoYwo+ICsg
ICAgICAgICAgLSBjb25zdDogamVkZWMsdWZzLTIuMAo+ICsgICAgICAtIGl0ZW1zOgo+ICsgICAg
ICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxtc204OTk4LXVmc2hjCj4gKyAg
ICAgICAgICAgICAgLSBxY29tLHFjczgzMDAtdWZzaGMKPiArICAgICAgICAgICAgICAtIHFjb20s
c2E4Nzc1cC11ZnNoYwo+ICsgICAgICAgICAgICAgIC0gcWNvbSxzYzcxODAtdWZzaGMKPiArICAg
ICAgICAgICAgICAtIHFjb20sc2M3MjgwLXVmc2hjCj4gKyAgICAgICAgICAgICAgLSBxY29tLHNj
ODE4MHgtdWZzaGMKPiArICAgICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtdWZzaGMKPiArICAg
ICAgICAgICAgICAtIHFjb20sc204MjUwLXVmc2hjCj4gKyAgICAgICAgICAgICAgLSBxY29tLHNt
ODM1MC11ZnNoYwo+ICsgICAgICAgICAgICAgIC0gcWNvbSxzbTg0NTAtdWZzaGMKPiArICAgICAg
ICAgICAgICAtIHFjb20sc204NTUwLXVmc2hjCj4gKyAgICAgICAgICAtIGNvbnN0OiBxY29tLHVm
c2hjCj4gKyAgICAgICAgICAtIGNvbnN0OiBqZWRlYyx1ZnMtMi4wCj4gIAo+ICAgIHJlZzoKPiAg
ICAgIG1heEl0ZW1zOiAxCj4gLS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
