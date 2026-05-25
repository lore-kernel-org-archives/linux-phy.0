Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88DBFCD5BBF
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 09:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EugTduQrx15nroZhr+NQptVHK9gtZc3FUNIxujCwnPY=; b=rQ4K5QR/uGXJCl
	wEpw1gj/DX2hE3b75HoHTTd7sZ1QUvYktalfaz7/EflxBFA5zZyvO9WnkSaWVCIVB1kT4mgvQDIhe
	ILDhU8Wt/tiRX+5aZWEZAnFlhEt0mPj8t95tz36QpY0I2gQ24KX+js68CMDkIFTwHVP8jfJ/1Z8rn
	DqSAqhUn2+I2Oc17SvYoUe4VWB36q/+3Z97cWUM53hnPzguPZjGpdgSJp6xlfs6AMIg8tHoYfraFK
	+0JAlYz8HHa8uGR7Y5PeQuR9QCL2NBTQCdkjBoJzMNhHmvp1ryv8gPrwdXEiGzq8XqoGN2pz+lGcK
	Z3iiHRL8wE6+6dEfcgiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRRiI-0000000GphP-0HJd;
	Mon, 25 May 2026 09:35:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRRiH-0000000GphA-2iBo
	for linux-phy@bombadil.infradead.org;
	Mon, 25 May 2026 09:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=aERorl8PN3gDoNsxGdbl0MdT5E8Sf4bdoBmoK0Ydoe0=; b=qhz+tlp1qeYr6WomdPWsog4yhT
	F1U2TdzRCoTcuATGaw3uXdPdUN/S2gEBRh0/IvqeFQKo/fizPZK+7ETFelLXpZXHHkx9Aip7VuVzH
	tdWYIwV0r5ZCXDiLJ+imy5p/QsDtxLUvMZH/qqfoKEM+mHtdf3B6s56N5E1xE8nILfwmqi+S2fQOx
	lIjWJb2AW6S6zRRyC2IzXiQxYWaj5crpURSRyuKgCi6kNLMXqYh2HTDWhsI2WhKhuA1zDGSmXQSdS
	7YMHS0221fBzlyXfQBDScbx3xLFkdzhaDdOl6mVXNffxNcmjcKTi7NzWgm/bigWC04Km/rEOsrC8O
	jo1UXadw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRRiD-00000008uvX-0qdX
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 09:35:08 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64P9EJ60079191;
	Mon, 25 May 2026 09:34:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aERorl8PN3gDoNsxGdbl0MdT5E8Sf4bdoBmoK0Ydoe0=; b=ireRREY2UtyHqXP1
	3p+cmJx/4cYlxX2t2Zwxp30+M17MrGubqOP8uf/eStALGvi5Ol37rQ/ESsqc3kML
	OKg7NlGxxFmCplDFbEAePb1usqo9Ol++No4uzJvfiCYzGaVSvZdaCuDgnpTd77Yr
	zxeN69LwZC5yZdF6wG34gpiJ90HL+9ALnKZR/lyIBj4msq6UHjHCUdGclC77zwuF
	GljtJ63aUfoMlN+0ZuPswS0mvp5vmatN2lpKQvj5NEXVL8jmGh/+PG0U0AzEv/jT
	uzhJBMosPmdM4QDP25qwE94KmFiNqG7nxrPmIHioWmeWIgHxJDOy2EiNRZSgLN1G
	RwPqdg==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eckma82ss-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 May 2026 09:34:58 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.7/8.18.1.7) with ESMTP id 64P9Ys8t006777;
	Mon, 25 May 2026 09:34:54 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 4eb5ahteuj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 May 2026 09:34:54 +0000 (GMT)
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.18.1.12/8.18.1.12) with ESMTP id 64P9YshP006772;
	Mon, 25 May 2026 09:34:54 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-kotarake-hyd.qualcomm.com [10.213.97.140])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 64P9YsOd006770
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 May 2026 09:34:54 +0000 (GMT)
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2389607)
	id 4C35CB2D; Mon, 25 May 2026 15:04:53 +0530 (+0530)
Date: Mon, 25 May 2026 15:04:53 +0530
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
To: sashiko-reviews@lists.linux.dev
Cc: Komal Bajaj <komal.bajaj@oss.qualcomm.com>, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org,
        conor+dt@kernel.org, olteanv@gmail.com, vkoul@kernel.org,
        robh@kernel.org, kamal.wadhwa@oss.qualcomm.com,
        jishnu.prakash@oss.qualcomm.com
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
Message-ID: <20260525093453.edmqryggp5kcqxxy@hu-kotarake-hyd.qualcomm.com>
References: <20260522-shikra-dt-v3-3-80ffde8a3dc4@oss.qualcomm.com>
 <20260522191013.23B0C1F000E9@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260522191013.23B0C1F000E9@smtp.kernel.org>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Authority-Analysis: v=2.4 cv=cL3QdFeN c=1 sm=1 tr=0 ts=6a1417c2 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=1FUQUpU6QHfrpmvLx8oA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: ExxfN7E2PfhBIgUHJ5awJWAt2ht5vaJv
X-Proofpoint-GUID: ExxfN7E2PfhBIgUHJ5awJWAt2ht5vaJv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI1MDA5NyBTYWx0ZWRfXwCYTS+ICWKTx
 HOOP85wwTbqkawMl7xtzzultOLy24p5xJuBoNrcsjRihKN/GQFepOLIZYrTR4KrPEdcwGir1q3T
 7U0jKtiXIcSwYR/rS+iFl4NX/0PuxOMa3L4rSMKqEJCLapdZI8YLEFiMjJBJENs6zNgoy4MvwRB
 oOS4Oz5ODqhzw/qEZ5OXIvQ8twwhOL8uFA+lZEPETTFd23pL/MPwCi59vOHfQ44QCBtt2QQLJev
 3Opsz72uoSDp24OesO7Fy0HKVly14lBe6aTBSZx+zF0Tq2/D+j7A94zliZikIoEDF4kEc7CyJhY
 1pz2BfeGQN4kHavB2GIuZqc9dIlGb1/D7M7lq+RYHdsXMXfjNwpLcR4P3frcrXgw0s9aawVI4su
 v9yXk9F1uuDcbBY6iebX9uFEnTISy9ydj4BiVhS/90Xn57hfHo0CziE8uV3Yk1H7VMp5c07I/yR
 qbxPtRqNGwWh0LMIcag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-25_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605250097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_103506_793931_FD73A130 
X-CRM114-Status: GOOD (  20.76  )
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgMDc6MTA6MTJQTSArMDAwMCwgc2FzaGlrby1ib3RAa2Vy
bmVsLm9yZyB3cm90ZToKPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtv
IEFJIHJldmlldyBmb3VuZCAxIHBvdGVudGlhbCBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtN
ZWRpdW1dIFRoZSBjb21taXQgbWVzc2FnZSBjbGFpbXMgdG8gYWRkIFBNODAwNSBQTUlDIHJlZ3Vs
YXRvciBkZWZpbml0aW9ucywgYnV0IHRoZSBwYXRjaCBleHBsaWNpdGx5IGRpc2FibGVzIHRoZSBQ
TTgwMDUgcmVndWxhdG9ycyBhbmQgcHJvdmlkZXMgbm8gY29uZmlndXJhdGlvbi4KPiAtLQo+IAo+
IGNvbW1pdCBiODIwN2NkZmQ4MDkyNGUyOTFlZTUyNDQ4YTEwNTcwOGFhN2I2YTA5Cj4gQXV0aG9y
OiBLb21hbCBCYWphaiA8a29tYWwuYmFqYWpAb3NzLnF1YWxjb21tLmNvbT4KPiAKPiBhcm02NDog
ZHRzOiBxY29tOiBBZGQgU2hpa3JhIENRMjM5ME0gU29NIHBsYXRmb3JtCj4gCj4gVGhpcyBjb21t
aXQgYWRkcyB0aGUgZGV2aWNlIHRyZWUgaW5jbHVkZSBmb3IgdGhlIENRMjM5ME0gdmFyaWFudCBv
ZiB0aGUKPiBTaGlrcmEgU3lzdGVtLW9uLU1vZHVsZS4gSXQgaW50ZWdyYXRlcyB0aGUgU2hpa3Jh
IFNvQyBhbmQgaW5jbHVkZXMgUE1JQwo+IHJlZ3VsYXRvciBjb25maWd1cmF0aW9ucyBmb3IgdGhl
IHJldGFpbCBTb00uCj4gCj4gPiBUaGUgRFRTSSBpbmNsdWRlcyB0aGUgY29tbW9uIHNoaWtyYS5k
dHNpLCBhZGRzIFBNNDEyNSBhbmQgUE04MDA1IFBNSUMKPiA+IHJlZ3VsYXRvciBkZWZpbml0aW9u
cyBzcGVjaWZpYyB0byB0aGlzIHZhcmlhbnQuCj4gCj4gWyAuLi4gXQo+IAo+ID4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3FtLXNvbS5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3NoaWtyYS1jcW0tc29tLmR0c2kKPiA+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vc2hpa3JhLWNxbS1zb20uZHRzaQo+IAo+IFsgLi4uIF0KPiAKPiA+ICsmcG04MDA1X3JlZ3Vs
YXRvcnMgewo+ID4gKwlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gK307Cj4gCj4gW1NldmVyaXR5
OiBNZWRpdW1dCj4gSXMgdGhlIGNvbW1pdCBtZXNzYWdlIGluYWNjdXJhdGUsIG9yIGFyZSB0aGUg
ZGVmaW5pdGlvbnMgZm9yIHRoZSBQTTgwMDUKPiByZWd1bGF0b3JzIG1pc3NpbmcgZnJvbSB0aGlz
IHBhdGNoPwo+IAo+IFRoZSBjb21taXQgbWVzc2FnZSBzdGF0ZXMgdGhhdCBQTTgwMDUgUE1JQyBy
ZWd1bGF0b3IgZGVmaW5pdGlvbnMgYXJlCj4gYWRkZWQsIGJ1dCB0aGUgY29kZSBleHBsaWNpdGx5
IGRpc2FibGVzIHRoZW0gd2l0aG91dCBwcm92aWRpbmcgYW55Cj4gY29uZmlndXJhdGlvbi4gSWYg
dGhlIFNvTSB2YXJpYW50IHJlcXVpcmVzIHRoZSBQTTgwMDUgcmVndWxhdG9ycyB0byBwb3dlcgo+
IGhhcmR3YXJlIGNvbXBvbmVudHMsIHdpbGwgbGVhdmluZyB0aGVtIGRpc2FibGVkIHJlc3VsdCBp
biBydW50aW1lIGZhaWx1cmVzPwo+ClllcywgeW91IGFyZSByaWdodCDigJQgd2Ugd2lsbCB1cGRh
dGUgdGhlIGNvbW1pdCBtZXNzYWdlIHRvIHJlZmxlY3QgdGhpcwptb3JlIGNsZWFybHkuCgpUaGUg
cmVhc29uIGZvciBkaXNhYmxpbmcgcG04MDA1X3JlZ3VsYXRvcnMgaGVyZSBpcyB0aGF0IHRoZSBQ
TTgwMDUKcmVndWxhdG9ycyBhcmUgY29udHJvbGxlZCBieSBycG1wZCBhbmQgYXJlIG5vdCBleHBl
Y3RlZCB0byBiZSBlbmFibGVkCmZyb20gdGhpcyBwYXRjaC4gVGhleSBhcmUgYWxyZWFkeSBlbmFi
bGVkIGluIHBtODAwNS5kdHNpLCBzbyB0aGlzIGNoYW5nZQpkb2VzIG5vdCBhZmZlY3QgcnVudGlt
ZSBmYWlsdXJlcy4KCnJlZ2FyZHMKUmFrZXNoCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
