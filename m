Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F186CED24E
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0ZhlBIREtk9SVLL4EsyqD4d1blSxI8UIpr3D9OPRmo=; b=v3k6Y8umSjpqwW
	fJDHyrczIR/5eWTVsAN1/bapd1J6o2vwUQTsBFiqv4RCDNRIiVZ3R632VLtU6vYMT3pPeASJGYbjx
	TUA3mLMdqZJbUWevOYhTDBYSKPkNSQhuGifDz7aCC8BQhTNzLQatJ0dzY+qDJQT63STCI7MOKnJYu
	2YyqL4fCFcCjdPHbAAj+DTJ9dSEgDsEOdloFCchLVofCKBqr08jnk4bMwbofogAywnz+Z6gK9HaK7
	1Cdw1qpQqVcniF/I1Zla/daSgPxBbjwIDpVhOA5bIDuTV8LTrTWLDGgbPVTbTrRkWT+0w0jgbnCom
	nwMoTaFwC+7TbQpQgkcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLIsK-00000000Ek6-0Wdf;
	Tue, 18 Nov 2025 10:23:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLIsH-00000000Ejd-3Fci
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 10:23:50 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6BN3D4107469
	for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 10:23:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IB2f1sdl/WATGyDc2pbmH3Hn7ObmxrKYTqXPDVDllRw=; b=Lv+GtSRjXk+Uykc7
	SylQPNRfW/iHPnRYwp7y+IFmC9SpSAolOyRVQvCS69Ki2WSc7LaqxFQzvQfAQFhe
	ARpbcDzvbIgjFjjqF6sauvUkEsLM+SLf94vNWKuLXeZI+s99V1U+kVHdGFrVH759
	aBZ3/oDMThVboqM5m1Euh8Fnsie6rJ41xsqFkTbZRpgV8AXsSg+kjEMU2mpTZpV4
	04Ahl8dMrAUI5P6d/Nb81QdT6GqkgH7eiX6WmV9Um2pUx3z+WRDgs2G8U3oHMkCY
	efVjEWpwOVTla6z1AD9F+3v1Qitz3xxp9Q1/e1/CfAYfvf/t78TlQtnibAyBEAmX
	pJZuoA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2hpbqbu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 10:23:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b10c2ea0b5so218400585a.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 02:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763461428; x=1764066228; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IB2f1sdl/WATGyDc2pbmH3Hn7ObmxrKYTqXPDVDllRw=;
        b=KUlQ2HdbZR0rXgQaYVtD6sC5qgpJhGjpzZCJEcsIJ1uNb29FDyMrt8bLS1beCk8o21
         eUSnpUK/PjYRv9USKQRLR9eT9xiB7Ykh833u4tlL8ELNBgO0qww1B2oOMoDu8TSU+Kw5
         yHFUiHNkQOPu2Xhnxf/pywgknjV22yyb6ns/XwkpcuyDfHJxUv5U7USQr/7Ti+50XvbX
         PeaiNEjPBDlrAudD6gvRpgFOvu2oi1y1UWqLnuRqHeC2OgU1fQttkF+RaBtu7uuMg3gO
         kVe/eVViRazfMXSpryJKgBOTuHiVLM78W46bXxSg3TglvV/iWCZJ4yrqXAQoa0YoL8hm
         n1GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763461428; x=1764066228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IB2f1sdl/WATGyDc2pbmH3Hn7ObmxrKYTqXPDVDllRw=;
        b=GRjoFm5l7bfY/6iJi5++WTDTijDoeqcNB4tx1Z9Bhs5qPu5IC0dUNAX9qV8ZGfeB5j
         jjWeYyB0oXkgKS1kTfxZDU/uM4kZCzx1AT+E5Ps8yT89xeXgvoX/y/5VEDRegughb5Oy
         cwbh2opJ0uRsOkmsn3S3oG3+kjQU4J72GBbe07MzGdDTU7VIbtbBzBAtZGo0euge2ASh
         vtua2PM2g/P3wxOjCOZKpACMBzMGqyx7XEWgJl0XxG68ZFaZz6Miv0TmVOscldyCKzaL
         c6HWC5nMMVmSSEcGKyYywVY5pbAhRFQ1VSyfsibcxizDb4QDgdY4h2K7slltlVMgYtYM
         tlwg==
X-Forwarded-Encrypted: i=1; AJvYcCUpA3xbsrMPn9wNtqbbPzCVNvMaR8d/6zdz9gS3t9LnMFF34Uy7o0+Wz1exS7hvjk9T4jX//i+dmOA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqjEXYWf+S0XK1gj/E5Ii4W+sikoEJpQxlAPIQWPVN1mFIZt5H
	DzvJ/TZ3wr4vu0td31NzYq2qo0lzZz8BmjsVkGG7ojPBagfFylWqAhc6AL/zyvFArmxi8P9dR2N
	FIWi6rUNB15N31S7nRB7ElkZUOskp1njazycktGAo8U5D1nGyfTxbkhspz6migHp+qe1T
X-Gm-Gg: ASbGnct95VdJDuWXWTStoI3j+mfbwZFTwWjRJtYOl0PaN+VzmIg3Zx1JVaZyn1hhe4n
	BJO9ZD/U8WH/DneK4MuN04bVWjhx7pDkeDkPPEi5WcA5uFWb0HCi4IuiT92HmRz+3y0FgAj/fGq
	IA7B0WIn9Pb/Bv/31yTMCs6k984dY1MLLOpFNfhlw4LFpO/N1WDmHQC/Ht1KNUPFpqUaLaj63gR
	2pKI72/WZLymVAxjDgGTEf7uUf9ee3S0CMaal0ufSUjl8V+DT/k2RIsfr6ccmp+/FL/ZFLdkgZG
	tOvU3EdW+d+KC8hk+S15uFC+sVxNueTwZ4poeAi0qfg5xJVSRdl639UUA2Ie9zmuSP2wfF+r1BJ
	nIA+02kqB4hqZqAaz0+7bhIX3bH63UKPsrrjj9vuii5khIv8FsZ5/hZ7gwCbwBThYbys=
X-Received: by 2002:ac8:57c9:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee3182281emr18881931cf.11.1763461427934;
        Tue, 18 Nov 2025 02:23:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFvFSIxijEg7mgfrQqJSIF1H7QFN5Tct4RgmXu/nhX/G7pOuSHJr84BHcXXiafKCRqyZLH6Ww==
X-Received: by 2002:ac8:57c9:0:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee3182281emr18881521cf.11.1763461427403;
        Tue, 18 Nov 2025 02:23:47 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad456bsm1345508066b.21.2025.11.18.02.23.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:23:46 -0800 (PST)
Message-ID: <f04e005b-c527-4d60-a0bb-4611f9b34655@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 11:23:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add PCIe3 and PCIe5 regulators
 for HAMAO-IOT-EVK board
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-3-ziyue.zhang@oss.qualcomm.com>
 <rakvukrdsb3vpr4k22hgvbr2yc65me32uezwrqgn2573kblirt@7q7pgr3nkvso>
 <12bce4de-9491-4040-991b-529bc916983c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <12bce4de-9491-4040-991b-529bc916983c@oss.qualcomm.com>
X-Proofpoint-GUID: owhwZnNehQb7fLlX57ngzec2lRUmiPAx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4MiBTYWx0ZWRfX8/2M5O7Di8Gc
 HK22yGVlHtGoS0RBZu/C08Q3kn4XI1FWlJHw6HeAYCEKRa8rmcLzaFEHNL9cVG27Txf8Upkop9I
 ImGh59s7IVywOuz1Xr080rn6O3jLvCsw7dqgFonAWLj1DxZpItGsP3Lfwl/nuPi8+JWCvgxu2S9
 3uS+DvlKnyH/EJ9TwsN0b2F6xXv2tUdm4mc2P46zGCchGtsBsx9x0uUme5epOuiLOHt3nQ+5NdY
 CX/7mlM54btR2RgTMGo8Kud7ZvBvtU6mDUzR66vet7on5usSVOfqkkghYIwxsHWXeqDyVbM20jw
 ABZ3J7XQnx1yCxIIDjG7v7bXI+eFHq2pLcpUzKYVlbJXVfekbY6z+p2vPA2/+L1NhHjmZqKuXll
 8dV9Aw3FV7hF0XaO8cAH7jQLS3HSlg==
X-Proofpoint-ORIG-GUID: owhwZnNehQb7fLlX57ngzec2lRUmiPAx
X-Authority-Analysis: v=2.4 cv=Y5L1cxeN c=1 sm=1 tr=0 ts=691c4934 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=IK9dZxoMItTNHq3eVUAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_022349_959897_D4B73E29 
X-CRM114-Status: GOOD (  14.43  )
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

T24gMTEvMTgvMjUgMTE6MTEgQU0sIFppeXVlIFpoYW5nIHdyb3RlOgo+IAo+IE9uIDExLzEzLzIw
MjUgNToxNiBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gT24gV2VkLCBOb3YgMTIsIDIw
MjUgYXQgMDU6MDM6MTZQTSArMDgwMCwgWml5dWUgWmhhbmcgd3JvdGU6Cj4+PiBIQU1BTyBJb1Qg
RVZLIHVzZXMgUENJZTUgdG8gY29ubmVjdCBhbiBTRFg2NSBtb2R1bGUgZm9yIFdXQU4gZnVuY3Rp
b25hbGl0eQo+Pj4gYW5kIFBDSWUzIHRvIGNvbm5lY3QgYSBTQVRBIGNvbnRyb2xsZXIuIFRoZXNl
IGludGVyZmFjZXMgcmVxdWlyZSBtdWx0aXBsZQo+Pj4gdm9sdGFnZSByYWlsczogUENJZTUgbmVl
ZHMgMy4zViBzdXBwbGllZCBieSB2cmVnX3d3YW4sIHdoaWxlIFBDSWUzIHJlcXVpcmVzCj4+PiAx
MlYsIDMuM1YsIGFuZCAzLjNWIEFVWCByYWlscywgY29udHJvbGxlZCB2aWEgUE1JQyBHUElPcy4K
Pj4+Cj4+PiBBZGQgdGhlIHJlcXVpcmVkIGZpeGVkIHJlZ3VsYXRvcnMgd2l0aCByZWxhdGVkIHBp
biBjb25maWd1cmF0aW9uLCBhbmQKPj4+IGNvbm5lY3QgdGhlbSB0byB0aGUgUENJZTMgYW5kIFBD
SWU1IHBvcnRzIHRvIGVuc3VyZSBwcm9wZXIgcG93ZXIgZm9yIHRoZQo+Pj4gU0RYNjUgbW9kdWxl
IGFuZCBTQVRBIGNvbnRyb2xsZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogWml5dWUgWmhhbmcg
PHppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20+Cj4+PiBSZXZpZXdlZC1ieTogS3Jpc2huYSBD
aGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+Cj4+PiAt
LS0KPj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1vYS1pb3QtZXZrLmR0cyB8IDgz
ICsrKysrKysrKysrKysrKysrKysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA4MyBpbnNlcnRp
b25zKCspCj4+Pgo+Pj4gKyZwbWM4MzgwXzNfZ3Bpb3Mgewo+Pj4gK8KgwqDCoCBwbV9zZGU3X2F1
eF8zcDNfZW46IHBjaWUtYXV4LTNwMy1kZWZhdWx0LXN0YXRlIHsKPj4gV2hhdCBpcyBzZGU3PyBP
dGhlciB0aGFuIHRoYXQ6Cj4+Cj4+Cj4+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxk
bWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4+Cj4gSGkgRG1pdHJ5Cj4gCj4gSeKA
mW0gbm90IHN1cmUgd2hhdCDigJxzZGU34oCdIHJlZmVycyB0byBzcGVjaWZpY2FsbHkuIEkgc2F3
IHRoaXMgbmFtZSBpbiB0aGUKCkl0IHJlZmVycyB0byAiU0QgRXhwcmVzcyIgd2hpY2ggd2FzIGNv
bm5lY3RlZCB0byB0aGF0IFBDSWUgaG9zdCBvbiBzb21lCmZsYXZvcnMgb2YgdGhlIGludGVybmFs
IGJvYXJkcywgYW5kIHRoZSBuYW1pbmcgbXVzdCBoYXZlIHN0dWNrLi4KCktvbnJhZAoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
