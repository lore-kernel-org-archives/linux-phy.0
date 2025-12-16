Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40956D5CC8D
	for <linux-phy@archiver.kernel.org>; Tue, 16 Dec 2025 09:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yv4JtMXWRdaO6jBdMR69vSgwOKANMEgAgCW33Ayipew=; b=UAPFCqmUdm4PYD
	2KsXLfl68djOxSfpmAw6q+50xVcNfg+vAmGuL0UiU6VtZWMrELjTD3SDJcgulmuJKQci+NhhW/qby
	KnQLcz7+W2tHt7nGk+RovH2o7AUZIqThTBEXXY+YWOAhhTBPlBj1Er2FaC8Uw0b3SWywPpm41U7u6
	iVbbX3J8qKiyUrGYX/D3/QklM2VYHdUAe2fNJFRKSm51cTeIz8xWF9TEDZQFLBtUoIWDnX4DxYasT
	+Mo7FiuD/+XN/hQYMebjVA30PCOlDX4kdQmpsfv9LIsv6E5W7qVB8rMjS2AdoYsY8qbPn4bEbVgvh
	gP6keG3zN8RcyI5s+7UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVRUT-0000000507I-3J5N;
	Tue, 16 Dec 2025 09:37:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVRUR-0000000506n-1Vk9
	for linux-phy@lists.infradead.org;
	Tue, 16 Dec 2025 09:37:08 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG9aAxD3147317
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 09:37:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+1CTEU7VE95vXn9BXK2XzIHYYp5cBBqguTtER1oe9NY=; b=GrNAbpQg4T/AqGEr
	8cp2sNwxYJmp3fpkwtYmoLwvVU8+U9RfKY+zdg/uIcxMK8pcG8knoxK8vy/9xakH
	2ov2qLdHTvT6I7aQ3nZmtqgQgE+bmCMvJpFDodi+krazrij42E/oIDHIjIM2K6AR
	sncmTuWekKIYIqPqzXXBLi40zGJc1NRzy/+4n7Ab3gxVobSZxsOZv4ppjpDWhYPq
	olTDLdyhO+t933Ei15wOqjV8GwH5+n61f1K8tKrcaG+Orzcuv6decD8FCxN0lXx9
	qNqEnchVYoBioIu0ZXLTlV1zu1G2+8lZGBvNsN1iqQlWiingekrkVFmQmzALE4ok
	jXL5oA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b34xhr038-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 09:37:06 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edad69b4e8so86628771cf.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 01:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765877825; x=1766482625; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1CTEU7VE95vXn9BXK2XzIHYYp5cBBqguTtER1oe9NY=;
        b=eycyJRWnE03GcSd1DqPpdK5BzS6tbuWGsLRXw3mLWN8oxecdkF1Ra7WHrkBdPWwlB+
         XH732o0N1B0kx/7tHhkm6M9MpE24Yq2Wv5vkGsZESsFPq73hq/JAeg5kBTCGucnQidkx
         4GnX9JDkWgn4OznBecAsFdjU2hKVW65QOhC77aZSX3zkt/sIS00U8hWQ9dC4D/nIIRbY
         e2RpocTA26HIMrY2MWS2RzO4uBlV50fnKddI55dm4DUVSLsJW2bFH6QL3Qxx7ZoSEIEW
         C9WR8ccOzcnFInvR83WG3skqtyYKbEgIH4lC8J5kFulEOgPgTP2BBO0jpLDFBCA0hnUQ
         kYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765877825; x=1766482625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+1CTEU7VE95vXn9BXK2XzIHYYp5cBBqguTtER1oe9NY=;
        b=Tlrl65TN3SCoYU2TsnT7FWFHOtjZCWwzv60tC3xeZG6zh32Kf3S98kMjyLNi2UEAsL
         V9FJbL92WkXWr4GAxtuU7IWrkbuxMfAukW6Xdo5u5oZV8nMGk6W0kUVmrLny7OfDRPX3
         9LsW9RnssJjCvoZ1dwZwLZHJFU2J+9Tbj4X5k0CrSnDAUnupR479EiPpxOF3POgglcdu
         D1YWryM461R1Hyt2mbO9r8GfDvY8QjQStbr6TI7IXUOw3qu4j8MKxiN5YWXxFDB9YT/W
         gP2t+teh/u+I15oPvaz57j09Wjlo1vh9kxdFykyOAB0NisudMGaJq08hdmetaGSIqWxh
         O1FA==
X-Forwarded-Encrypted: i=1; AJvYcCXXXi6IAxsjlMiZyFg7AkbXo43mfZjM2ZFJON7K1GybftAnTVF/Kp5A/8OfMa1EeOKB7ssAwoA357o=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAV4vtQ3wzPHcIR6l+5D70JTruZDF8ovUaMQtlsobEzC1uOpv9
	nGA7cxNeRLggp6ivAIxu9O2ayVN7WT+CtRDFtLO2hTwruMHSjp6vr+u/Ch6wJK30tJ6093M5yIJ
	cevWi/frKCJZnDlpdJWLy1KZ3m2PKheEh1CfZKfcYfyWFwy/lXp7iVKyg0C6MFafJFXN5j/+urL
	DlJxwGNUiyi6eG2unyQqucq3bRwmq41wwGc1CXXoOOHpo=
X-Gm-Gg: AY/fxX6dKTNdjCaO5CpdZ/NwDffNNUAgWDJ8WrwBnGFz92gBmgzDpU5aOhH4u++qgDc
	YtNFxoqXKcUnmq25r9ws8DsziszLSpCwnr5A7iUUzm9pomOeDL6p35n0T17sHb5VZA1gC+F17nC
	Fc/8GFhR8iCdRBMcB7fg9EENjbj6bdLVracBjeas46WEMkSEbTrhUBkogqZXp3HhBp2telzgjHp
	WKhQvmhXwbPIymTF9hwybadlDI=
X-Received: by 2002:ac8:5fd0:0:b0:4ee:4656:54e8 with SMTP id d75a77b69052e-4f1bfc3630emr228648861cf.26.1765877825363;
        Tue, 16 Dec 2025 01:37:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF40aQv/vCjzaAlLKXbivtURqZbxdmEvfbkecBCsD0jYy4haDh9ZsncsUAvd7ll2ZvVewkoQg7bVPgfbeZG2Q0=
X-Received: by 2002:ac8:5fd0:0:b0:4ee:4656:54e8 with SMTP id
 d75a77b69052e-4f1bfc3630emr228648721cf.26.1765877824880; Tue, 16 Dec 2025
 01:37:04 -0800 (PST)
MIME-Version: 1.0
References: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com>
 <aktk3ofvgdusfo33kebaepfc2epyty36sltxxceaq5q2gy2kfz@6lki7itbthd5>
 <CAFEp6-1nQHUTQwaxX0TrjFuKsAGYjdMHG0018z8FqsXZQ0Nffg@mail.gmail.com> <53a56an76s3ehg6eufr66l5ch2ygmp5wmc7dfqbp3srbspcuo6@i5r4gkadykm2>
In-Reply-To: <53a56an76s3ehg6eufr66l5ch2ygmp5wmc7dfqbp3srbspcuo6@i5r4gkadykm2>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 10:36:54 +0100
X-Gm-Features: AQt7F2pI_WEWV4GWSq9_BNW_tzXyMph3uzfYEBLCjMT8mjl5XsB_U1bCLNCfo8s
Message-ID: <CAFEp6-3x2JiqermQw-9S=+73gTCVSFyNuDLr85b=Ry2TRJDhyw@mail.gmail.com>
Subject: Re: [PATCH v3] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
X-Proofpoint-ORIG-GUID: eoVCLIfBZUPhgf36YGBDBYm55Nh9un-9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA4MCBTYWx0ZWRfX/oDBmMQGg2Ql
 BO+W8ZMUaBYAglnM3zuxQ1doVZzalU9KniTCddEluIRbSx8o/bf9cgrZ/ygN5SLjDeWpKIbg+0H
 yXQAef/WePm5LUQYk5QL8gwLG5WDuHs7LMgQSODkT4SRA/Nd+T6qQoyt7cE/JGjQXskCNeDD00m
 HPWicgXTG+TPvWqOwJfhSW7RHqlYwdFdEs0FS2UtGAOjPhNZIutnBKLw9VWbaLmkk6xMY8/Nshh
 mWDA98j6UxUUvXVffv348v5ZQztg3T0n9u8CEpjz+4jRHXXilcxD9aaRfJ3kqQclUO4UgrxKYRE
 9sQ+Y2v9j9gmHBNmmeIUh0H2b14PwQdCDSX5jntrfYoLwplU9cLMzZMx6O+BZOdWTNLGgT8hnY/
 n+vDoO+f8keFBO0KPWscvByCEOY9uA==
X-Proofpoint-GUID: eoVCLIfBZUPhgf36YGBDBYm55Nh9un-9
X-Authority-Analysis: v=2.4 cv=BPi+bVQG c=1 sm=1 tr=0 ts=69412842 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=f1n9FbYBeM80bOThnCMA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 malwarescore=0 spamscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_013707_435631_B5BF35C1 
X-CRM114-Status: GOOD (  44.69  )
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

SGkgRG1pdHJ5LAoKT24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgOToxNuKAr1BNIERtaXRyeSBCYXJ5
c2hrb3YKPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiBN
b24sIERlYyAxNSwgMjAyNSBhdCAwOTo0OToyMUFNICswMTAwLCBMb2ljIFBvdWxhaW4gd3JvdGU6
Cj4gPiBIaSBEbWl0cnksCj4gPgo+ID4gT24gRnJpLCBEZWMgMTIsIDIwMjUgYXQgODozMOKAr1BN
IERtaXRyeSBCYXJ5c2hrb3YKPiA+IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+
IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUaHUsIERlYyAxMSwgMjAyNSBhdCAwNDozNTozNlBNICsw
MTAwLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gPiA+ID4gRW5hYmxpbmcgcnVudGltZSBQTSBiZWZv
cmUgYXR0YWNoaW5nIHRoZSBRUEhZIGluc3RhbmNlIGFzIGRyaXZlciBkYXRhCj4gPiA+ID4gY2Fu
IGxlYWQgdG8gYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UgaW4gcnVudGltZSBQTSBjYWxsYmFj
a3MgdGhhdAo+ID4gPiA+IGV4cGVjdCB2YWxpZCBkcml2ZXIgZGF0YS4gVGhlcmUgaXMgYSBzbWFs
bCB3aW5kb3cgd2hlcmUgdGhlIHN1c3BlbmQKPiA+ID4gPiBjYWxsYmFjayBtYXkgcnVuIGFmdGVy
IFBNIHJ1bnRpbWUgZW5hYmxpbmcgYW5kIGJlZm9yZSBydW50aW1lIGZvcmJpZC4KPiA+ID4gPiBU
aGlzIGNhdXNlcyBhIHNwb3JhZGljIGNyYXNoIGR1cmluZyBib290Ogo+ID4gPiA+Cj4gPiA+ID4g
YGBgCj4gPiA+ID4gVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJl
bmNlIGF0IHZpcnR1YWwgYWRkcmVzcyAwMDAwMDAwMDAwMDAwMGExCj4gPiA+ID4gWy4uLl0KPiA+
ID4gPiBDUFU6IDAgVUlEOiAwIFBJRDogMTEgQ29tbToga3dvcmtlci8wOjEgTm90IHRhaW50ZWQg
Ni4xNi43KyAjMTE2IFBSRUVNUFQKPiA+ID4gPiBXb3JrcXVldWU6IHBtIHBtX3J1bnRpbWVfd29y
awo+ID4gPiA+IHBzdGF0ZTogMjAwMDAwMDUgKG56Q3YgZGFpZiAtUEFOIC1VQU8gLVRDTyAtRElU
IC1TU0JTIEJUWVBFPS0tKQo+ID4gPiA+IHBjIDogcXVzYjJfcGh5X3J1bnRpbWVfc3VzcGVuZCsw
eDE0LzB4MWUwIFtwaHlfcWNvbV9xdXNiMl0KPiA+ID4gPiBsciA6IHBtX2dlbmVyaWNfcnVudGlt
ZV9zdXNwZW5kKzB4MmMvMHg0NAo+ID4gPiA+IFsuLi5dCj4gPiA+ID4gYGBgCj4gPiA+ID4KPiA+
ID4gPiBBdHRhY2ggdGhlIFFQSFkgaW5zdGFuY2UgYXMgZHJpdmVyIGRhdGEgYmVmb3JlIGVuYWJs
aW5nIHJ1bnRpbWUgUE0gdG8KPiA+ID4gPiBwcmV2ZW50IE5VTEwgcG9pbnRlciBkZXJlZmVyZW5j
ZSBpbiBydW50aW1lIFBNIGNhbGxiYWNrcy4KPiA+ID4gPgo+ID4gPiA+IFJlb3JkZXIgcG1fcnVu
dGltZV9lbmFibGUoKSBhbmQgcG1fcnVudGltZV9mb3JiaWQoKSB0byBwcmV2ZW50IGEKPiA+ID4g
PiBzaG9ydCB3aW5kb3cgd2hlcmUgYW4gdW5uZWNlc3NhcnkgcnVudGltZSBzdXNwZW5kIGNhbiBv
Y2N1ci4KPiA+ID4gPgo+ID4gPiA+IFVzZSB0aGUgZGV2cmVzLW1hbmFnZWQgdmVyc2lvbiB0byBl
bnN1cmUgUE0gcnVudGltZSBpcyBzeW1tZXRyaWNhbGx5Cj4gPiA+ID4gZGlzYWJsZWQgZHVyaW5n
IGRyaXZlciByZW1vdmFsIGZvciBwcm9wZXIgY2xlYW51cC4KPiA+ID4gPgo+ID4gPiA+IEZpeGVz
OiA4OTFhOTZmNjVhYzMgKCJwaHk6IHFjb20tcXVzYjI6IEFkZCBzdXBwb3J0IGZvciBydW50aW1l
IFBNIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMb2ljIFBvdWxhaW4gPGxvaWMucG91bGFpbkBv
c3MucXVhbGNvbW0uY29tPgo+ID4gPiA+IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxk
bWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIHYz
OiBUaGUgcGh5LWNvcmUgZXhwZWN0cyBwYXJlbnQncyBydW50aW1lLXBtIHRvIGJlIHNldHVwIGJl
Zm9yZSBjcmVhdGluZwo+ID4gPiA+ICAgICAgdGhlIHBoeSwgc28gbW92ZSBiYWNrIHJ1bnRpbWUt
cG0gdG8gaXRzIGluaXRpYWwgbG9jYXRpb24gYW5kCj4gPiA+ID4gICAgICByZWxvY2F0ZSBkZXZf
c2V0X2RydmRhdGEoKSBpbnN0ZWFkLgo+ID4gPiA+Cj4gPiA+ID4gIHYyOiBNb3ZlIHJ1bnRpbWUt
cG0gZW5hYmxpbmcgYWZ0ZXIgZGV2X3NldF9kcnZkYXRhCj4gPiA+ID4gICAgICB1c2UgZGV2bV9w
bV9ydW50aW1lX2VuYWJsZSgpIHRvIGZpeCB1bmJhbGFuY2VkIGVuYWJsaW5nIG9uIHJlbW92YWwK
PiA+ID4gPiAgICAgIHJld29yZCBjb21taXQgbWVzc2FnZQo+ID4gPiA+Cj4gPiA+ID4gIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMgfCAxNCArKysrKystLS0tLS0tLQo+ID4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+ID4g
PiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1
c2IyLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jCj4gPiA+ID4gaW5k
ZXggYjU1MTRhMzJmZjhmLi42Mzg2ZDgzNGIwZTQgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiA+ID4gPiBAQCAtMTA5MywyOSArMTA5MywyNyBA
QCBzdGF0aWMgaW50IHF1c2IyX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ID4gPiA+ICAgICAgICAgICAgICAgb3ItPmhzZGlzY190cmltLm92ZXJyaWRlID0gdHJ1ZTsK
PiA+ID4gPiAgICAgICB9Cj4gPiA+ID4KPiA+ID4gPiAtICAgICBwbV9ydW50aW1lX3NldF9hY3Rp
dmUoZGV2KTsKPiA+ID4gPiAtICAgICBwbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+ID4gPiA+ICsg
ICAgIGRldl9zZXRfZHJ2ZGF0YShkZXYsIHFwaHkpOwo+ID4gPiA+ICsKPiA+ID4gPiAgICAgICAv
Kgo+ID4gPiA+IC0gICAgICAqIFByZXZlbnQgcnVudGltZSBwbSBmcm9tIGJlaW5nIE9OIGJ5IGRl
ZmF1bHQuIFVzZXJzIGNhbiBlbmFibGUKPiA+ID4gPiAtICAgICAgKiBpdCB1c2luZyBwb3dlci9j
b250cm9sIGluIHN5c2ZzLgo+ID4gPiA+ICsgICAgICAqIEVuYWJsZSBydW50aW1lIFBNIHN1cHBv
cnQsIGJ1dCBmb3JiaWQgaXQgYnkgZGVmYXVsdC4KPiA+ID4gPiArICAgICAgKiBVc2VycyBjYW4g
YWxsb3cgaXQgYWdhaW4gdmlhIHRoZSBwb3dlci9jb250cm9sIGF0dHJpYnV0ZSBpbiBzeXNmcy4K
PiA+ID4gPiAgICAgICAgKi8KPiA+ID4gPiArICAgICBwbV9ydW50aW1lX3NldF9hY3RpdmUoZGV2
KTsKPiA+ID4gPiAgICAgICBwbV9ydW50aW1lX2ZvcmJpZChkZXYpOwo+ID4gPgo+ID4gPiBJIHRo
aW5rLCB0aGlzIHNob3VsZCBiZSBjYWxsZWQgYWZ0ZXIgZW5hYmxpbmcgcnVudGltZSBQTS4gUGxl
YXNlIGNvcnJlY3QKPiA+ID4gbWUgaWYgSSdtIHdyb25nLgo+ID4KPiA+IGVuYWJsZS9kaXNhYmxl
IGFuZCBmb3JiaWQvYWxsb3cgYXBwZWFyIHRvIGJlIG9ydGhvZ29uYWwsIHRoZSBwdXJwb3NlCj4g
PiBvZiBpbnZlcnRpbmcgdGhlbSBoZXJlIGlzIHRvIHByZXZlbnQgYW4gdW5uZWNlc3Nhcnkgc3Vz
cGVuZC9yZXN1bWUKPiA+IGN5Y2xlIGZyb20gb2NjdXJyaW5nIGJldHdlZW4gZW5hYmxlIGFuZCBm
b3JiaWQuIEFsc28sIHRoaXMgc2VxdWVuY2UKPiA+IGhhcyBiZWVuIHRlc3RlZCBhbmQgd29ya3Mg
Y29ycmVjdGx5Lgo+Cj4gSSBzZWUgdGhhdCBpbiBtb3N0IG9mIHRoZSBwbGFjZXMgcG1fcnVudGlt
ZV9mb3JiaWQoKSBpcyBiZWluZyBjYWxsZWQKPiBhZnRlciBwbV9ydW50aW1lX2VuYWJsZSgpIHJh
dGhlciB0aGFuIGJlZm9yZS4KClllcywgdGhpcyBwYXR0ZXJuIGhhcyBiZWVuIHVzZWQvcmVwbGlj
YXRlZCBpbiBzZXZlcmFsIHBsYWNlcywgYW5kCndoaWxlIGl0IGlzIGxvZ2ljYWxseSB2YWxpZCwg
aXQgZG9lc27igJl0IG5lY2Vzc2FyaWx5IG1ha2UgaXQgYSBnb29kCnByYWN0aWNlLiBJbiBmYWN0
LCBpdCBsZWF2ZXMgcm9vbSBmb3Igb3Bwb3J0dW5pc3RpYyBydW50aW1lIHN1c3BlbmQgdG8Kb2Nj
dXIsIHdoZXJlYXMgdGhlIHVzdWFsIGV4cGVjdGF0aW9uIGlzIHRvIGNvbXBsZXRlbHkgYmxvY2sg
cnVudGltZQpzdXNwZW5kIChhcyBpbml0aWFsbHkgZXhwZWN0ZWQgaW4gdGhpcyBwaHkgZHJpdmVy
KS4KCkFuIGV4YW1wbGUgb2YgdGhlICdyaWdodCcgcGF0dGVybiBjYW4gYmUgZm91bmQgaW4gdGhl
IFBDSSBjb3JlOiB0aGUKcGNpX3BtX2luaXQoKSBmdW5jdGlvbiBjYWxscyBwbV9ydW50aW1lX3Nl
dF9hY3RpdmUoKSBhbmQKcG1fcnVudGltZV9mb3JiaWQoKSBiZWZvcmUgaW52b2tpbmcgcG1fcnVu
dGltZV9lbmFibGUoKS4KCj4gSXQgbWFrZXMgc2Vuc2Ugc2luY2UKPiBmb3JiaWQgaXMgZGVmaW5l
ZCBhczogIlJlc3VtZSBAZGV2IGlmIGFscmVhZHkgc3VzcGVuZGVkIGFuZCBibG9jawo+IHJ1bnRp
bWUgc3VzcGVuZCIuIEl0J3Mgbm90IGNsZWFyIHdoYXQgX2lzXyB0aGUgYmVoYXZpb3VyIGlmIHJ1
bnRpbWUgUE0KPiBpcyBkaXNhYmxlZCBhbmQgd2lsbCBiZSBlbmFibGVkIGxhdGVyLgoKSeKAmW0g
bm90IGVudGlyZWx5IGNvbnZpbmNlZCB0aGF0IGl0IGltcGxpZXMgYSBzcGVjaWZpYyBvcmRlci4K
QW5vdGhlciBjb21tb24gcGF0dGVybiBzZWVuIGluIGRyaXZlcnMgaXMgdGhlIGZvbGxvd2luZzoK
YGBgCnBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKGRldik7CnBtX3J1bnRpbWVfc2V0X2FjdGl2ZShk
ZXYpOwpwbV9ydW50aW1lX2VuYWJsZShkZXYpOwpgYGAKClRoZSBhYm92ZSBpcyB0eXBpY2FsbHkg
dXNlZCB0byBwcmV2ZW50IHRoZSBkZXZpY2UgZnJvbSBlbnRlcmluZwpzdXNwZW5kIGR1cmluZyBp
bml0aWFsaXphdGlvbi4gcG1fcnVudGltZV9nZXRfbm9yZXN1bWUoKSBiZWhhdmVzCnNvbWV3aGF0
IGxpa2UgcG1fcnVudGltZV9mb3JiaWQoKSwgYnV0IGdldF9ub3Jlc3VtZSgpIGlzIHVzdWFsbHkK
YmFsYW5jZWQgYnkgYSBjb3JyZXNwb25kaW5nIHBtX3J1bnRpbWVfcHV0XyooKSBhdCB0aGUgZW5k
IG9mCmluaXRpYWxpemF0aW9uLCB3aGVyZWFzIHBtX3J1bnRpbWVfZm9yYmlkKCkgYmxvY2tzIHJ1
bnRpbWUgc3VzcGVuZAp1bnRpbCBpdCBpcyBleHBsaWNpdGx5IHJldmVydGVkIHdpdGggcG1fcnVu
dGltZV9hbGxvdygpICh1c3VhbGx5IGZyb20KdXNlcnNpZGUgdmlhIHN5c2ZzKS4KCkFsc28gIHBt
X3J1bnRpbWVfZW5hYmxlKCkgb3BlcmF0ZXMgb24gYSBkZXB0aCBjb3VudGVyLCBzbyBjYWxsaW5n
IGl0CmF0IGEgc3BlY2lmaWMgcG9pbnQgZG9lcyBub3QgbmVjZXNzYXJpbHkgZ3VhcmFudGVlIGl0
cyBhY3RpdmF0aW9uLCBJCnRoaW5rIHRoaXMgcmVkdWNlcyBhbnkgc3RyaWN0bmVzcyBvZiBvcmRl
cmluZyBleHBlY3RhdGlvbnMgY29tcGFyZWQgdG8KcG1fcnVudGltZV9mb3JiaWQoKS4KCj4KPiA+
Cj4gPiA+Cj4gPiA+ID4gKyAgICAgZGV2bV9wbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+ID4gPgo+
ID4gPiBNaXNzaW5nIGVycm9yIGhhbmRsaW5nCj4gPgo+ID4gSSB3YXNu4oCZdCBjZXJ0YWluIHdo
ZXRoZXIgd2Ugc2hvdWxkIGFib3J0IG9uIHRoaXMgbm9uLWZhdGFsIGVycm9yLAo+ID4gc2luY2Ug
dGhlIGRyaXZlciBjYW4gb3BlcmF0ZSB3aXRob3V0IFBNLXJ1bnRpbWUgZW5hYmxlZC4gSG93ZXZl
ciwgaWYKPiA+IHRoaXMgZXJyb3Igb2NjdXJzLCBpdCBsaWtlbHkgaW5kaWNhdGVzIGEgbW9yZSBz
aWduaWZpY2FudCB1bmRlcmx5aW5nCj4gPiBtZW1vcnkgaXNzdWUuCj4KPiBZZXMuIE5ldmVydGhl
bGVzcywgaW4gZ2VuZXJhbCBlcnJvcnMgc2hvdWxkIGJlIGhhbmRsZWQgcmF0aGVyIHRoYW4gYmVp
bmcKPiBpZ25vcmVkLgoKQWNrLgoKPgo+ID4KPiA+Cj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiAgICAg
ICBnZW5lcmljX3BoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5VTEwsICZxdXNiMl9waHlfZ2Vu
X29wcyk7Cj4gPiA+ID4gICAgICAgaWYgKElTX0VSUihnZW5lcmljX3BoeSkpIHsKPiA+ID4gPiAg
ICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoZ2VuZXJpY19waHkpOwo+ID4gPiA+ICAgICAgICAg
ICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIHBoeSwgJWRcbiIsIHJldCk7Cj4g
PiA+ID4gLSAgICAgICAgICAgICBwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsKPiA+ID4gPiAgICAg
ICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gICAgICAgfQo+ID4gPiA+ICAgICAgIHFwaHkt
PnBoeSA9IGdlbmVyaWNfcGh5Owo+ID4gPiA+Cj4gPiA+ID4gLSAgICAgZGV2X3NldF9kcnZkYXRh
KGRldiwgcXBoeSk7Cj4gPiA+ID4gICAgICAgcGh5X3NldF9kcnZkYXRhKGdlbmVyaWNfcGh5LCBx
cGh5KTsKPiA+ID4gPgo+ID4gPiA+ICAgICAgIHBoeV9wcm92aWRlciA9IGRldm1fb2ZfcGh5X3By
b3ZpZGVyX3JlZ2lzdGVyKGRldiwgb2ZfcGh5X3NpbXBsZV94bGF0ZSk7Cj4gPiA+ID4gLSAgICAg
aWYgKElTX0VSUihwaHlfcHJvdmlkZXIpKQo+ID4gPiA+IC0gICAgICAgICAgICAgcG1fcnVudGlt
ZV9kaXNhYmxlKGRldik7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICByZXR1cm4gUFRSX0VSUl9PUl9a
RVJPKHBoeV9wcm92aWRlcik7Cj4gPiA+ID4gIH0KPiA+ID4gPiAtLQo+ID4gPiA+IDIuMzQuMQo+
ID4gPiA+Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+IFdpdGggYmVzdCB3aXNoZXMKPiA+ID4gRG1pdHJ5
Cj4KPiAtLQo+IFdpdGggYmVzdCB3aXNoZXMKPiBEbWl0cnkKClJlZ2FyZHMsCkxvaWMKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
