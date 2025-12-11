Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7CEFD41D4D
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 14:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQX/LeCZJVcYEkErXCWqMxf/ELZmwby00XeIoyTBMBk=; b=TXAXy8nXzJXyMV
	E8iPP5SiTpYvup5L9rjnGtSIzSyn+qylNC/ogw0KftPUHKcukCLeHn8khnzue5V1jpH1OfiYhVrsI
	VjNtypa4s9pajvnSmKLyCNSxfEpEugmxWkXBSe5RS60TSAPF6Vfli0D0rb+6hShhRKs5T98xkgJOj
	3q+4CX/9sKOIGUH9jrJ1FZLlP+7Pj+r+xSyNyCtX0wCG7z4ClwOxHODQYy7Ot3AhLnTAR/A1ZCiQw
	GWW3nlRbEHc/KQOGdzoInUILFIRJAeKmai0ugGQXSUniKdgWyLGiPzeNBd0N50jN7uSjpfDCfGW5h
	poBWwlTSGtKSykqJLW7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vThzX-0000000Gjzo-0URz;
	Thu, 11 Dec 2025 14:50:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vThzU-0000000Gjz6-438v
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 14:50:02 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBEPH2U1682621
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 14:50:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cItl6ZftIc9q+FLw5nVHrhmMNF4rfgL+kWUbqIfMBOQ=; b=jIFGs6JICdsRnIBz
	DJgfW96nvka/FEorSM2C+bAvWXVQmPIs1GyMe+rWQdIQNdUHkmypFM5PhqkG5uF2
	g3z65NQ8bdptEtbrC+CJChKIXtTaWlKfQDEPkE5NLyUvtEKiDwp5ledF4miqgvb6
	Ckk/kKwu6VL4seizye9BY5dmmBviVWXPsXLPJj06JyBAW7LHwLY6fiHzj18Y0AHJ
	1fJFWgZZVwMhKFgsutQy+mbSkSux7Me2fSK7ON4saa38bWfDw8GsCeQGZTTLONhw
	/2PdFeZgwydICnnOQGvCE6NCfARDarRujqDvOp8ykAmo7vrdq3Aitw7pQ/KW+cAc
	BiVtKw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygsx2vcq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 14:50:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edad69b4e8so2875361cf.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 06:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765464599; x=1766069399; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cItl6ZftIc9q+FLw5nVHrhmMNF4rfgL+kWUbqIfMBOQ=;
        b=bPo1mvAIl9FDn2rBJsu1/xqHQ8larITcSrfQO2at3hZSS5NCSbJt+8qL6wdPN9HaW3
         llPvzaThofHMFEL/j3SimopHYaDprC9gnIXUQnNFxnWqs5GjkHJmnzFhnMITN3iUnirb
         /jv6TJIp8Ej1L0kQTsb+hVVLIDwyQnIrl4eJvjvN4Cxj1z8s79u+yUi5sLyZ59P+jWl/
         HqHr25YeDDXqCOlzIx9bCudfMFOQDgJrZTCQqniNl4ETTJ3wXlhsyZ8zamgxAADVyzGd
         FYPeAljpBcksB5QcMGhpYokqNPyf1r30yI7ftwP9nTQpa7SwOAmxKf244siJM/kiVcHa
         TNoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765464599; x=1766069399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cItl6ZftIc9q+FLw5nVHrhmMNF4rfgL+kWUbqIfMBOQ=;
        b=w8UlUGvpbUzbWNxUeZx+/AvyDBaUYjKqYEkOvie1acdn6kyAhkbFkQC6M30al3anZu
         GeBwqhOcSMhbVwYsQG3iUNSjXjV3sIwdNbTMbiVc1f4wHKxauG/F/T/MtD9RsiO0fwb2
         GKm/pMOG/20bH8o0kEKP7I5wLA7QRZ0qQS01eayzXqTPGQoZbUtxbV1a8szbBSKAaURI
         4yghlSj82dYxM2wC136cTk2VH6Frmli4i0JatttXW7zqU6JH+QkWsAe+H6RYEWVAJs5O
         SQsfvKyDmsjWPpg6bCzpEQcPQLQiAK8TbVaRY6tJW7GHpE01dyvidwnNDRuBStUvfFhO
         vong==
X-Forwarded-Encrypted: i=1; AJvYcCWWg6WnFz8edNX3MexgZ+cmPD10eut10NPuHImkOmN+XoQJu8+WyMvpa2KXVcYbNy7AoOSgkJi/cOk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/CLkDUJH+zxYQYtU8s1P2lCTjlEuDBiDgN2hoDHL/RUFVbq7o
	APbj7eanWWo/8WulV7FMEIj+mD5AkEdH2VoDaKgSNmKo0RqyeZqgagRZemBa4pHEYDFmMeOmRut
	iK4Rd7CKaEBP49PReX6jLF9Be7T+shONQzRzsfqxhixzje8Errnre5Ak9MD0N3eodabACxILMoG
	lVf3C5crWQNfhg/VU0s0PUsiPEVqzXE/4KvN6w/kn+6MU=
X-Gm-Gg: AY/fxX4GmQnf55dWR5xYn6nwpujQbuSXDP4MsRaHQLYBJMm0ViomICd/jnG/9IeaoLX
	NlahmIGrxqZEtKM4GGiIquYBNUhW+l/vKlT59XuwZ3vDH9D5dUr2nTcXF/DPctuuloNTE1Z4o4x
	v4ChK4rVxnUOiRAut7iLf4ghZkLe0kWgwvQn3jwmvKOaKHXRsFIcr8/d4qtcoC/SWXJUdDPGAQy
	s3fjQHoxQZ12yp2G2eBP/hI+qI=
X-Received: by 2002:a05:622a:2d0d:b0:4f1:ca72:a472 with SMTP id d75a77b69052e-4f1ca72a56emr2719561cf.13.1765464599145;
        Thu, 11 Dec 2025 06:49:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF9kHo3e788UbRVNwHDxeJAgsl9hat/il2wj8F8Hd1XJ+FntrNgL+91mSqwyNu0bHYaPVYBGq79LpCHzUQwkU8=
X-Received: by 2002:a05:622a:2d0d:b0:4f1:ca72:a472 with SMTP id
 d75a77b69052e-4f1ca72a56emr2719301cf.13.1765464598526; Thu, 11 Dec 2025
 06:49:58 -0800 (PST)
MIME-Version: 1.0
References: <20251211134836.1777897-1-loic.poulain@oss.qualcomm.com>
 <h3jx5drjfg4xa56lrbdu3xxic53hez35jotkrznozawjjljfh3@kwo6hdccfkus>
 <CAFEp6-3vvudXm14QMtP=nD=N5Ur415JLaNF7HnBkSfiZMa_WzA@mail.gmail.com> <CAO9ioeWemDY2CxfRRH=ZUgHO4DX-UCQr7Q8+PPyBbp2JFkk5Dg@mail.gmail.com>
In-Reply-To: <CAO9ioeWemDY2CxfRRH=ZUgHO4DX-UCQr7Q8+PPyBbp2JFkk5Dg@mail.gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 15:49:46 +0100
X-Gm-Features: AQt7F2plPeHSZyzy9C_XTyowRpLAidkfuZyR_8m6OaoidV4kJazjzyUHRihuIt0
Message-ID: <CAFEp6-1yOWa7YH-aYkjXU7-F-it96TMcYwddRtJ6thcrHayMVA@mail.gmail.com>
Subject: Re: [PATCH v2] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
X-Proofpoint-GUID: yqUrGgl2dDpKi7WEW4WGA2_2bH2hwfud
X-Authority-Analysis: v=2.4 cv=d974CBjE c=1 sm=1 tr=0 ts=693ada18 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=QLhd-hmNkmp1bChrl4MA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDExNiBTYWx0ZWRfX5LM608vN0N6E
 cCYrrkCGUMNKMTLL40eKzYnldmeWq1R9p3cR5BFV0H93CakyeqQhYl3QeGA0TRfi5ClBDaQOuqZ
 V/3ylKXK0Dw8VvPGL+G9rKjwjlEW1w04G43l/ZFdPj2gcF0X7kK9mMSHvVOWcH+GkRAkDuWpgLm
 SirD7BFiFhqqNtlttuQnwbw1rOMFFfN6MbNpp0h67WOwqlpREBgTGVngYvWjT7J/f4YGHMPg8zT
 klwAiLDhRNf3sVQt7huYAo0avDnFqDucam7M2IhDoLBWzFajK4wVOlvEITBojYvRkZPETFb87ud
 G0xP7YATfqD4nt+rBVev+p7KTELIK7/IACTB6bCgUhnZ8m5YN8jdHKDXslAdfM66NvPDgmKMGUQ
 VWMhpg5IizZ2kRR88hZ7APwBq3rGTg==
X-Proofpoint-ORIG-GUID: yqUrGgl2dDpKi7WEW4WGA2_2bH2hwfud
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_065001_105394_65661419 
X-CRM114-Status: GOOD (  30.63  )
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

T24gVGh1LCBEZWMgMTEsIDIwMjUgYXQgMzoxOOKAr1BNIERtaXRyeSBCYXJ5c2hrb3YKPGRtaXRy
eS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIDExIERlYyAy
MDI1IGF0IDE2OjEwLCBMb2ljIFBvdWxhaW4KPiA8bG9pYy5wb3VsYWluQG9zcy5xdWFsY29tbS5j
b20+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgRGVjIDExLCAyMDI1IGF0IDI6NTfigK9QTSBEbWl0
cnkgQmFyeXNoa292Cj4gPiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPiB3cm90
ZToKPiA+ID4KPiA+ID4gT24gVGh1LCBEZWMgMTEsIDIwMjUgYXQgMDI6NDg6MzZQTSArMDEwMCwg
TG9pYyBQb3VsYWluIHdyb3RlOgo+ID4gPiA+IEVuYWJsaW5nIHJ1bnRpbWUgUE0gYmVmb3JlIGF0
dGFjaGluZyB0aGUgUVBIWSBpbnN0YW5jZSBhcyBkcml2ZXIgZGF0YQo+ID4gPiA+IGNhbiBsZWFk
IHRvIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHJ1bnRpbWUgUE0gY2FsbGJhY2tzIHRo
YXQKPiA+ID4gPiBleHBlY3QgdmFsaWQgZHJpdmVyIGRhdGEuIFRoZXJlIGlzIGEgc21hbGwgd2lu
ZG93IHdoZXJlIHRoZSBzdXNwZW5kCj4gPiA+ID4gY2FsbGJhY2sgbWF5IHJ1biBhZnRlciBQTSBy
dW50aW1lIGVuYWJsaW5nIGFuZCBiZWZvcmUgcnVudGltZSBmb3JiaWQuCj4gPiA+ID4gVGhpcyBj
YXVzZXMgYSBzcG9yYWRpYyBjcmFzaCBkdXJpbmcgYm9vdDoKPiA+ID4gPgo+ID4gPiA+IGBgYAo+
ID4gPiA+IFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBh
dCB2aXJ0dWFsIGFkZHJlc3MgMDAwMDAwMDAwMDAwMDBhMQo+ID4gPiA+IFsuLi5dCj4gPiA+ID4g
Q1BVOiAwIFVJRDogMCBQSUQ6IDExIENvbW06IGt3b3JrZXIvMDoxIE5vdCB0YWludGVkIDYuMTYu
NysgIzExNiBQUkVFTVBUCj4gPiA+ID4gV29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dvcmsKPiA+
ID4gPiBwc3RhdGU6IDIwMDAwMDA1IChuekN2IGRhaWYgLVBBTiAtVUFPIC1UQ08gLURJVCAtU1NC
UyBCVFlQRT0tLSkKPiA+ID4gPiBwYyA6IHF1c2IyX3BoeV9ydW50aW1lX3N1c3BlbmQrMHgxNC8w
eDFlMCBbcGh5X3Fjb21fcXVzYjJdCj4gPiA+ID4gbHIgOiBwbV9nZW5lcmljX3J1bnRpbWVfc3Vz
cGVuZCsweDJjLzB4NDQKPiA+ID4gPiBbLi4uXQo+ID4gPiA+IGBgYAo+ID4gPiA+Cj4gPiA+ID4g
RW5hYmxlIFBNIHJ1bnRpbWUgb25seSBhZnRlciBhdHRhY2hpbmcgdGhlIFFQSFkgaW5zdGFuY2Ug
YXMgZHJpdmVyIGRhdGEgdG8KPiA+ID4gPiBhdm9pZCBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5j
ZSBpbiBQTSBydW50aW1lIGNhbGxiYWNrcy4KPiA+ID4gPgo+ID4gPiA+IFJlb3JkZXIgcG1fcnVu
dGltZV9lbmFibGUoKSBhbmQgcG1fcnVudGltZV9mb3JiaWQoKSB0byBwcmV2ZW50IGEKPiA+ID4g
PiBzaG9ydCB3aW5kb3cgd2hlcmUgYW4gdW5uZWNlc3NhcnkgcnVudGltZSBzdXNwZW5kIGNhbiBv
Y2N1ci4KPiA+ID4gPgo+ID4gPiA+IFVzZSB0aGUgZGV2cmVzLW1hbmFnZWQgdmVyc2lvbiB0byBl
bnN1cmUgUE0gcnVudGltZSBpcyBzeW1tZXRyaWNhbGx5Cj4gPiA+ID4gZGlzYWJsZWQgZHVyaW5n
IGRyaXZlciByZW1vdmFsIGZvciBwcm9wZXIgY2xlYW51cC4KPiA+ID4gPgo+ID4gPiA+IEZpeGVz
OiA4OTFhOTZmNjVhYzMgKCJwaHk6IHFjb20tcXVzYjI6IEFkZCBzdXBwb3J0IGZvciBydW50aW1l
IFBNIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMb2ljIFBvdWxhaW4gPGxvaWMucG91bGFpbkBv
c3MucXVhbGNvbW0uY29tPgo+ID4gPiA+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxk
bWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIHYy
OiBNb3ZlIHJ1bnRpbWUtcG0gZW5hYmxpbmcgYWZ0ZXIgZGV2X3NldF9kcnZkYXRhCj4gPiA+ID4g
ICAgICB1c2UgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpIHRvIGZpeCB1bmJhbGFuY2VkIGVuYWJs
aW5nIG9uIHJlbW92YWwKPiA+ID4gPiAgICAgIHJld29yZCBjb21taXQgbWVzc2FnZQo+ID4gPiA+
Cj4gPiA+ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgfCAxOSArKysr
KysrKy0tLS0tLS0tLS0tCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDExIGRlbGV0aW9ucygtKQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xdXNiMi5jCj4gPiA+ID4gaW5kZXggYjU1MTRhMzJmZjhmLi5jNDk2YWNiYWQwYmIgMTAwNjQ0
Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYwo+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiA+ID4gPiBA
QCAtMTA5MywxOSArMTA5MywxMCBAQCBzdGF0aWMgaW50IHF1c2IyX3BoeV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiA+ICAgICAgICAgICAgICAgb3ItPmhzZGlzY190
cmltLm92ZXJyaWRlID0gdHJ1ZTsKPiA+ID4gPiAgICAgICB9Cj4gPiA+ID4KPiA+ID4gPiAtICAg
ICBwbV9ydW50aW1lX3NldF9hY3RpdmUoZGV2KTsKPiA+ID4gPiAtICAgICBwbV9ydW50aW1lX2Vu
YWJsZShkZXYpOwo+ID4gPiA+IC0gICAgIC8qCj4gPiA+ID4gLSAgICAgICogUHJldmVudCBydW50
aW1lIHBtIGZyb20gYmVpbmcgT04gYnkgZGVmYXVsdC4gVXNlcnMgY2FuIGVuYWJsZQo+ID4gPiA+
IC0gICAgICAqIGl0IHVzaW5nIHBvd2VyL2NvbnRyb2wgaW4gc3lzZnMuCj4gPiA+ID4gLSAgICAg
ICovCj4gPiA+ID4gLSAgICAgcG1fcnVudGltZV9mb3JiaWQoZGV2KTsKPiA+ID4gPiAtCj4gPiA+
ID4gICAgICAgZ2VuZXJpY19waHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBOVUxMLCAmcXVzYjJf
cGh5X2dlbl9vcHMpOwo+ID4gPgo+ID4gPiBOby4gcGh5X2NyZWF0ZSgpIGNoZWNrcyB3aGV0aGVy
IHRoZSBkZXZpY2UgaGFzIHJ1bnRpbWUgUE0gZW5hYmxlZC4gQnkKPiA+ID4gbW92aW5nIHRoZXNl
IGNhbGxzIGxhdGVyIHlvdSd2ZSBkaXNhYmxlZCBydW50aW1lIFBNIGZvciB0aGUgUEhZLgo+ID4K
PiA+IFRoYW5rcyBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIEkgY2FuIGFkZHJlc3MgaXQsIGJ1dCBp
cyB0aGVyZSBhCj4gPiBzcGVjaWZpYyByZWFzb24gd2h5IHRoZSBjaGlsZCBQSFkgZGV2aWNlIHNo
b3VsZCBjb25kaXRpb25hbGx5IGVuYWJsZQo+ID4gaXRzIG93biBydW50aW1lIFBNIGJhc2VkIG9u
IHRoZSBwYXJlbnTigJlzIHN0YXRlPwo+Cj4gWWVzLiBJdCBtYWtlcyBhIGxpZmUgb2YgZHJpdmVy
cyBlYXNpZXI6IGlmIHRoZSBwYXJlbnQgaGFzIHJ1bnRpbWUgUE0KPiBlbmFibGVkLCBlbmFibGUg
cnVudGltZSBQTSBmb3IgdGhlIFBIWSBkZXZpY2UgaW4gYSBzdGFuZGFyZCB3YXkuCj4gT3RoZXJ3
aXNlIHRoZSBub24tcnVudGltZS1lbmFibGVkIFBIWSBkZXZpY2Ugd2lsbCBwcmV2ZW50IHRoZSBw
YXJlbnQKPiAoYWN0dWFsIGRldmljZSkgZnJvbSBydW50aW1lIHN1c3BlbmRpbmcuCgpPaywgdGhl
biBJ4oCZbGwgbW92ZSBkZXZfc2V0X2RydmRhdGEoKSBpbnN0ZWFkIGFuZCBjaGVjayB0aGF0IHJ1
bnRpbWUgUE0Kc3RpbGwgd29ya3MsIHdoaWNoIEkgc2hvdWxkIGhhdmUgdGVzdGVkIGZvciB0aGlz
IHBhdGNoIHZlcnNpb24uLi4KClJlZ2FyZHMsCkxvaWMKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
