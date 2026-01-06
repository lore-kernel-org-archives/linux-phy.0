Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF5FC47BC6
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 08:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eT8qBwX2o8LQ7vs47iEVU3v+z/w3CEoC/s7p1YD3xLA=; b=wLVcNJOdc3O30R
	Ul868qaci7SwdxCZS9u8znm8tdLYZK5WGaUT9LWqHdSkAxC9MOupdaCI2jLLRqoO5eK1i2g5Gs0kY
	8PLxvZOLbywZq6rHiMrTdZvkbGCsbHoHpzuenAmaGz1vbWUOpMyVbSotXmypDVhIokD3v6IYEIUVs
	55zgl8deoaT/GqNMjhe1r5TBiLLNhYr4O21sZreqSgPreE6pSo2y0jDovnnogmPn38uW1OScq3C7c
	MIETD4xu+ll0YH/qQHDLB4GFCVqwfnGyjF8OmdMScKqetkkzzXpKBQH5FvcOnBvCXiC713R6kjC2f
	xatjD9/k6c579QDuLaMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd254-0000000Cahr-3bb9;
	Tue, 06 Jan 2026 08:06:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd251-0000000Cagh-3vOT
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 08:06:17 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063wOG12684152
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 08:06:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fBLvYbjia7Zx15toxuviBzFdghPbIpWd7juKJdfiCV8=; b=lY4BdotdIPWJvDRN
	qhx5ZUs9w9vfsvZEI/1BVeFOeDYdcph4nMFD1RUuv60XQ7Gn2e0UYIbkY6FtLXU5
	PwPXRGsUowDTu+R+sDPweINeto3DBjiATDi1dzqADdESSlS84bUxTJa7eCB3BwmE
	CL0ejNjraD+CDNUZV8DI7pUTcy5kyoKEkseF5Rdo3x33zQFAokS6f3Gj0TYgs9W/
	CUuIwpss27V5wjtHZASCh2NPKO3FIKJjZH1dOOA5I9qi6ByQSya5C7EQ6djn6GQm
	Dq85OgjS4CBi8IATqyTTfZCL/ugd0FNSOEVs5K0Jv6D4bRcY/p0F50Nz0V5SDkL5
	AXLzrg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgty5gmq9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 08:06:14 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7ba9c366057so1982218b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 00:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767686773; x=1768291573; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fBLvYbjia7Zx15toxuviBzFdghPbIpWd7juKJdfiCV8=;
        b=UuS2NqLmx13rVL1pDHIebg7S42Ee5826bgN7a9F+xMu2Op21CuuQbZRcNiiwGiIchK
         IRMMjMuaLVZ6cpKc5tCja0otiQHhGEk57t4lzdlA7Ak1yhwZS9wTdiNGk03Exgj/a4q4
         HRKhplSrOnxT1CwifUFk7q5e/4bod2VYT8z33DNxSpkhiiaUEjEYdKSXpdvuqnxEMNSg
         DDvTo0O7Bvw4L4LFLZJiC6nW58XH+h8rItN4rBnGdgJ6u1nvvexSI4Ot5ON/LoqAF2di
         fjzc5Ki0rcdue9LqN98EX7VNku77WVp8BsFlbHljCCrXan4UIDB6DYQxvFzkvHWvVDnk
         t1ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767686773; x=1768291573;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fBLvYbjia7Zx15toxuviBzFdghPbIpWd7juKJdfiCV8=;
        b=OWB4hEGXQbYA9Wt2zLtTWfIGOsJb7pdREgxATmCppIquzIjkUlDu/M/G+VvmTA8P1l
         qPABIAp/dhzYcg5Eld0fTrmQs7jDt1C6XRR/tikKRGoelEC3jQ+H5to+wYMcLh5de+Ws
         B1WC8J6Z+s64QypzM7PHAvfJtMQDGnN6UR5y6PemMUinGKb/qCOP2CRMbGcOdU3PDHJ2
         uIvnU+Ticwjeqmzq2iWtM+XGos6Of0Hj6cA7Nsu+P4lWwuaHCzC9b29jEzp/2x/DHyCu
         2lQyrgJ8RYbn+SOGfdf2kHXwU4lFhb3X1o1CyWYgyoKcPn2Pzt0uzlBfHx4noD6uxsAP
         5MgA==
X-Forwarded-Encrypted: i=1; AJvYcCUQR8OhN4p2lADI5YmxdIvpuhMn7+OJ6geEVcoMkrQhfhLlYSTuu0UgbVq9sn5ixwpKnVl8iHboj1Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4e/hKRfteigOTNzmQVyVog1x2JKmGF6VCsHyN8KU1x5kESGvM
	o2wiDnHvOk6esyEczQPGUL9roeBqfVhr6atYpP5DIMuj2i/NZ1/e9FTxpSvZfY0uci2UdcmTFv5
	gHT9oeX0odl1sfV4J6xlR3Duolv2yx4JUQxKjo6tG1ypBlIBbIpwYiHMMDyHg1MGR/m7X
X-Gm-Gg: AY/fxX5xKYG+1EcSE3Up8aVd9TrxdM1G640OsdYaAw73ZjZ3PN1zpupBrVd6wKzvpcp
	Yd0vrseRINVx3kZgnuMSzKFjFc/jARFhpAg6oZiLM+m6FOqWEKue4ka3B7fcFgVnT4lFhn2pHlx
	sjRssB3IDA6GOYdIlo4SXL5oDTs5/bP6AIR6EZ9McF9ACFhoVuEIdR7+zvyyCNgcfeuSMnpoFCJ
	2y8mJrGhT7GoFPQgDISZbPnGVhbqCYJQgtpoDVDK9hF4kWwQxd+Snd0SAGuF/EHRA468lVd9Bpx
	rWcMmbLKlGRYIo2zs58oThueA5YjBmtMWyNfczZ7jgDRy8H/ZOp5xRek+LeECZ/nw/xssJvl5e2
	8WhFW7vzE+uzSeAy9+YWGcBOX
X-Received: by 2002:a05:6a00:4aca:b0:7ab:5e68:e204 with SMTP id d2e1a72fcca58-81881c1cbe5mr2106313b3a.29.1767686773349;
        Tue, 06 Jan 2026 00:06:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnIvU+mez27fS+2D8szOamRUo7e/Jgvc5qiA358vWvyrCdGSG0aUyAo1P8uI6IzXwYa5/Wxg==
X-Received: by 2002:a05:6a00:4aca:b0:7ab:5e68:e204 with SMTP id d2e1a72fcca58-81881c1cbe5mr2106283b3a.29.1767686772845;
        Tue, 06 Jan 2026 00:06:12 -0800 (PST)
Received: from work ([120.60.56.175])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c5adf1cfsm1310881b3a.57.2026.01.06.00.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 00:06:12 -0800 (PST)
Date: Tue, 6 Jan 2026 13:36:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
Message-ID: <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA2OCBTYWx0ZWRfX49hwCju3M7pE
 DkY8Q0ps8rhrSIDUPO/cEdv76m79AN4hHVg1ZxpsuqF7nTR0BS5FZDR7PbCmXcAZNXGYtEJR6Fx
 mZHB1z8pzfdV0sMw4LQHW+OgbOkSUanx+SsA3/+BEFellhTzM1vsSonJjetnjEqqtU+3RJYW3u7
 fdXXQsLxkLIt2aZDjOT1SYdSncCK56799s6mvmiFsaNqHq72aQbKNlplLFS4KGtkSf5ZmraiU9Q
 ZjDTujbwDYvA0GryRlCzwNeYFVQcL4FY3OncKTQQLQ64fvo+D/j2PHfkpn9dvrBFtCepMg+bSbS
 D5hL26LL9M73E+1qnKd00850cXpeEEIQ/wNIR/VVoB1Uu9LcZFeJ1gV1HOooMYy3sukdU1OJkbk
 fPc0ojNnANOZJSfxHq83N7kmRywCu2kfiaSvwPYG6/zbwPrQaK6pXzNZd69QZJIbqLvDFQeEimS
 6Yf49k/oclTGh/Aghlg==
X-Authority-Analysis: v=2.4 cv=Rfidyltv c=1 sm=1 tr=0 ts=695cc276 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=JR4DBjdY6jk8CmbmB73bTw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Xq6n2yl2rRB09oYrCm4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: s7pijuv_lSBqHGjCniWAWdJnG0FdxPKv
X-Proofpoint-ORIG-GUID: s7pijuv_lSBqHGjCniWAWdJnG0FdxPKv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_000616_092536_C63EB647 
X-CRM114-Status: GOOD (  15.52  )
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

T24gTW9uLCBKYW4gMDUsIDIwMjYgYXQgMDg6MTY6NDJQTSArMDUzMCwgUHJhZGVlcCBQIFYgSyB3
cm90ZToKPiBBZGQgVUZTIGhvc3QgY29udHJvbGxlciBhbmQgUEhZIG5vZGVzIGZvciB4MWU4MDEw
MCBTb0MuCj4gCgpNaW5vciBuaXRzIGJlbG93LiBXaXRoIHRob3NlIGZpeGVkLAoKUmV2aWV3ZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgoKPiBSZXZpZXdlZC1i
eTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+IFJldmll
d2VkLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBvc3MucXVhbGNvbW0uY29tPgo+IFJldmlld2Vk
LWJ5OiBUYW5peWEgRGFzIDx0YW5peWEuZGFzQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogUHJhZGVlcCBQIFYgSyA8cHJhZGVlcC5wcmFnYWxsYXBhdGlAb3NzLnF1YWxjb21tLmNv
bT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbW9hLmR0c2kgfCAxMjMgKysr
KysrKysrKysrKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIwIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9oYW1vYS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbW9hLmR0c2kK
PiBpbmRleCBmN2Q3MTc5M2JjNzcuLjMzODk5ZmEwNmFhNCAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2EuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9oYW1vYS5kdHNpCj4gQEAgLTgzNSw5ICs4MzUsOSBAQCBnY2M6IGNsb2NrLWNvbnRyb2xs
ZXJAMTAwMDAwIHsKPiAgCQkJCSA8MD4sCj4gIAkJCQkgPDA+LAo+ICAJCQkJIDwwPiwKPiAtCQkJ
CSA8MD4sCj4gLQkJCQkgPDA+LAo+IC0JCQkJIDwwPjsKPiArCQkJCSA8JnVmc19tZW1fcGh5IDA+
LAo+ICsJCQkJIDwmdWZzX21lbV9waHkgMT4sCj4gKwkJCQkgPCZ1ZnNfbWVtX3BoeSAyPjsKPiAg
Cj4gIAkJCXBvd2VyLWRvbWFpbnMgPSA8JnJwbWhwZCBSUE1IUERfQ1g+Owo+ICAJCQkjY2xvY2st
Y2VsbHMgPSA8MT47Cj4gQEAgLTM4NDgsNiArMzg0OCwxMjMgQEAgcGNpZTRfcGh5OiBwaHlAMWMw
ZTAwMCB7Cj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAkJfTsKPiAgCj4gKwkJdWZzX21l
bV9waHk6IHBoeUAxZDgwMDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLHgxZTgwMTAwLXFt
cC11ZnMtcGh5IiwKPiArCQkJCSAgICAgInFjb20sc204NTUwLXFtcC11ZnMtcGh5IjsKPiArCQkJ
cmVnID0gPDB4MCAweDAxZDgwMDAwIDB4MCAweDIwMDA+Owo+ICsKPiArCQkJY2xvY2tzID0gPCZy
cG1oY2MgUlBNSF9DWE9fQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9QSFlfQVVYX0NM
Sz4sCj4gKwkJCQkgPCZ0Y3NyIFRDU1JfVUZTX1BIWV9DTEtSRUZfRU4+Owo+ICsKPiArCQkJY2xv
Y2stbmFtZXMgPSAicmVmIiwKPiArCQkJCSAgICAgICJyZWZfYXV4IiwKPiArCQkJCSAgICAgICJx
cmVmIjsKPiArCQkJcmVzZXRzID0gPCZ1ZnNfbWVtX2hjIDA+Owo+ICsJCQlyZXNldC1uYW1lcyA9
ICJ1ZnNwaHkiOwo+ICsKPiArCQkJcG93ZXItZG9tYWlucyA9IDwmZ2NjIEdDQ19VRlNfTUVNX1BI
WV9HRFNDPjsKPiArCj4gKwkJCSNjbG9jay1jZWxscyA9IDwxPjsKPiArCQkJI3BoeS1jZWxscyA9
IDwwPjsKPiArCj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJfTsKPiArCj4gKwkJdWZz
X21lbV9oYzogdWZzQDFkODQwMDAgewoKdWZzaGNACgo+ICsJCQljb21wYXRpYmxlID0gInFjb20s
eDFlODAxMDAtdWZzaGMiLAo+ICsJCQkJICAgICAicWNvbSxzbTg1NTAtdWZzaGMiLAo+ICsJCQkJ
ICAgICAicWNvbSx1ZnNoYyIsCj4gKwkJCQkgICAgICJqZWRlYyx1ZnMtMi4wIjsKCkRyb3AgamVk
ZWMgY29tcGF0aWJsZSBhcyBRY29tIFVGUyBjb250cm9sbGVyIGNhbm5vdCBmYWxsYmFjayB0byBn
ZW5lcmljIHVmc2hjCmRyaXZlci4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
