Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7B5C369B4
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 09:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LApTanySJrE9BLUDUcXlWTNKabhcm2/p5QoA79jr50M=; b=NIaL/ciKrFErn5
	au4O4RP/HajRdMTjrMdbi5pUneCdaLSj/4Np7nF8nJoHw98t5kLlKhO7JSNZPGzVLJZY3lblpBLUp
	QGRSmL2hq1cS3oTrsRoBfKzadytI3JTalfzSHkETgl9QgUnUPOQzf/Xt/iXmKlHwKWJBoXgqfS3dz
	THpP7e7WuafeQ6gc5D0qzCqJ1xwGyXb8RBwZqYqfOWeE5mApH+lFf4Ln+mH8CmpkFmrkFTBCbqu/T
	VDYpJYUgfb0jw6bncQh/9msu08w/pC1tMkcs3wi9Y4qQHsT1DG+dYXvXFnCHv69yqM3rPk72cqBpU
	1zWzbuDvCoP+WXeRUqnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4ceF-00000005AFd-0yv4;
	Tue, 15 Apr 2025 09:32:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4cbh-000000059sL-0QG9
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 09:29:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tB50025041
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 09:29:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+DQx+6nDYoMWkFAXLYdIlJNZxYtgpOoe+Wc439AsM1s=; b=HaJ9E2iItwmtVZb7
	hnM/qvXYEnujd45SmZ55VlJ4IF81QQcrspbgH4yuSz7tZoBe9u6y948xZr7vjbZx
	sUP7SNptYAW2RAsIRDuDR6S5wrQhyqbjWoUn9WyCqK82CZcYyl9YYEo5aCO7por3
	N0uBfw0ARjEIlrZox9D1//df7jBQP4VzViZ1NgZ8/+vauZJmvahTTaaSI2Qa5ZcJ
	1KXpeMc9o1b2ITDJ+JPfbAy7JmEZ3dHPJDWKVzNjoecfRz8JJtpBgBj5GpAYG+/0
	ynGW17OczbIwxYwualJ/8ljarFfi+xblNcVlKQ3FDYDWXLLpm5A0OTI03Dp4w0NE
	XK0OYg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wfg5g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 09:29:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5c9abdbd3so497653285a.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 02:29:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744709367; x=1745314167;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+DQx+6nDYoMWkFAXLYdIlJNZxYtgpOoe+Wc439AsM1s=;
        b=eNh1m8piGGhhjBct0bSGvT6nlzQW7cK0bQIanFvgiqMKG6gl4PYJTGcFeUHkztILcv
         wFlGlFR2qpsy/yLEfV0fmxNPAU1wJCS6/saR4UXpoGxjc87uvqiaQq4zeWYjtuOjjhOB
         sJQdMEKYzPfmjiCg9fxBIsW0dXM9DhS7mGRZjLStF0DjU6NH94NIfl64M3FSUKnJQJxZ
         2uoyC0EL89fS98GM+3RVUsoEwLVqMpm7uvEozo7xlO4vS7GZ/DqGTEPnT7zEAmpS60P7
         UwtwIYzIls/EAqvzyCfvwfunZ8Y1wanoX+4wE/k+l5Z4VHBiBQUd3PPEZM/LwUNQKk/V
         US3A==
X-Forwarded-Encrypted: i=1; AJvYcCXn/TntkglyfWwXzdC0KiMP2Rfu2I/3eBkPJQM5//t6SprxI6+Mzg89MsDTB7Zss3APr3gJKgtcgS8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKfPZ6TbOdi4leOhTdOrK9z50t7wCxImzqhQVsTQ12XsLm+dG+
	vib7TftzgNk0ruZ0wd9GWVePbLJ7b2E5dnuD64eUo/h2IfUC4BiQSL4p8mjjQL/ZAotAwUHEdzH
	i7RMS8Zo6W+uLAur7MzRNNtnRgnxs/FyCEbdjLJI4SLXvmdccODV0pgVWppocvNDo
X-Gm-Gg: ASbGncuZjJnqETNkZjzRD6weJMv6z7ERq7uFGsZUEbKYmmqcIUeIi6tQUhAQNBRgitl
	vMLYdCY54XvTZg11enJbfHqFa4+F3iJ1Z/q6tthA36o+XrLzSvdDU1ahsQoBbNYdvcTBJtFe6ub
	p0BXFItbXz43sLnBRqejVxdJ3p3+7xq58xLMQQ996X3VX/gY1ZdNeE05YpckfvNXsJ17cf4cTCO
	g6czkf6qFY1J+KU2eOGQfcyC28U91SVh8OgcFfQWbwhTqSV3UW0BUjA57+lNLp/nbGvus2D4val
	w97i9yiQ63PXpe+gV0mmGlLqlOTnJuP8JsBQDsYnfGcHIbd9oWpRT7xqq67uvthEoPkEj8rLKG4
	TCmJ22ejTLiElNl8Pu3C88yPgbAuMAOom7Zgkx1bKyCxj/q/CYoALVK6SPHSn
X-Received: by 2002:a05:620a:4316:b0:7c5:60c7:346 with SMTP id af79cd13be357-7c7af0b97c3mr2006008985a.10.1744709367184;
        Tue, 15 Apr 2025 02:29:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFujg27qdYNPJcN55cZ+HIN0mfrHoNU47hlImWynWN+yTG5SH9uM9PPLNNq6/CYxgOEVjDfag==
X-Received: by 2002:a05:620a:4316:b0:7c5:60c7:346 with SMTP id af79cd13be357-7c7af0b97c3mr2006006985a.10.1744709366781;
        Tue, 15 Apr 2025 02:29:26 -0700 (PDT)
Received: from ?IPV6:2001:14bb:aa:77bc:64e0:30e4:f6ff:5bd? (2001-14bb-aa-77bc-64e0-30e4-f6ff-5bd.rev.dnainternet.fi. [2001:14bb:aa:77bc:64e0:30e4:f6ff:5bd])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d50270csm1387967e87.114.2025.04.15.02.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 02:29:25 -0700 (PDT)
Message-ID: <c2ec6b7c-421d-43c3-8c0a-de4f7bdd867c@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:29:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/9] phy: qcom-qmp-ufs: Refactor UFS PHY reset
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, bjorande@quicinc.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250410090102.20781-1-quic_nitirawa@quicinc.com>
 <20250410090102.20781-5-quic_nitirawa@quicinc.com>
 <pur4y63xhfmqlyymg4pehk37ry4gg22h24zceoqjbsxp3hj4yf@4kptase3c4qp>
 <317faeaa-3130-4e28-8c5d-441a76aa79b4@quicinc.com>
 <CAO9ioeXnnbNzriVOYPUeBiWdrPfYUcMk+pVWYv0vZpJbFeByoQ@mail.gmail.com>
 <2820908b-4548-4e0a-94b2-6065cb5ff1f3@quicinc.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <2820908b-4548-4e0a-94b2-6065cb5ff1f3@quicinc.com>
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=67fe26f8 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=BcQP8Xzm53tihf4Fw6EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: XzOlSEXWoZWRIOUYuAXGvBWm7Sfe-s63
X-Proofpoint-GUID: XzOlSEXWoZWRIOUYuAXGvBWm7Sfe-s63
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_022930_371440_58D91334 
X-CRM114-Status: GOOD (  34.09  )
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

T24gMTQvMDQvMjAyNSAyMzozNCwgTml0aW4gUmF3YXQgd3JvdGU6Cj4gCj4gCj4gT24gNC8xMS8y
MDI1IDQ6MzggUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+IE9uIEZyaSwgMTEgQXByIDIw
MjUgYXQgMTM6NTAsIE5pdGluIFJhd2F0IDxxdWljX25pdGlyYXdhQHF1aWNpbmMuY29tPiAKPj4g
d3JvdGU6Cj4+Pgo+Pj4KPj4+Cj4+PiBPbiA0LzExLzIwMjUgMTozOCBBTSwgRG1pdHJ5IEJhcnlz
aGtvdiB3cm90ZToKPj4+PiBPbiBUaHUsIEFwciAxMCwgMjAyNSBhdCAwMjozMDo1N1BNICswNTMw
LCBOaXRpbiBSYXdhdCB3cm90ZToKPj4+Pj4gUmVmYWN0b3IgdGhlIFVGUyBQSFkgcmVzZXQgaGFu
ZGxpbmcgdG8gcGFyc2UgdGhlIHJlc2V0IGxvZ2ljIG9ubHkgb25jZQo+Pj4+PiBkdXJpbmcgcHJv
YmUsIGluc3RlYWQgb2YgZXZlcnkgcmVzdW1lLgo+Pj4+Pgo+Pj4+PiBNb3ZlIHRoZSBVRlMgUEhZ
IHJlc2V0IHBhcnNpbmcgbG9naWMgZnJvbSBxbXBfcGh5X3Bvd2VyX29uIHRvCj4+Pj4+IHFtcF91
ZnNfcHJvYmUgdG8gYXZvaWQgdW5uZWNlc3NhcnkgcGFyc2luZyBkdXJpbmcgcmVzdW1lLgo+Pj4+
Cj4+Pj4gSG93IGRpZCB5b3Ugc29sdmUgdGhlIGNpcmN1bGFyIGRlcGVuZGVuY3kgaXNzdWUgYmVp
bmcgbm90ZWQgYmVsb3c/Cj4+Pgo+Pj4gSGkgRG1pdHJ5LAo+Pj4gQXMgcGFydCBvZiBteSBwYXRj
aCwgSSBtb3ZlZCB0aGUgcGFyc2luZyBsb2dpYyBmcm9tIHFtcF9waHlfcG93ZXJfb24gdG8KPj4+
IHFtcF91ZnNfcHJvYmUgdG8gYXZvaWQgdW5uZWNlc3NhcnkgcGFyc2luZyBkdXJpbmcgcmVzdW1l
LiBJJ20gdW5jZXJ0YWluCj4+PiBhYm91dCB0aGUgY2lyY3VsYXIgZGVwZW5kZW5jeSBpc3N1ZSBh
bmQgd2hldGhlciBpZiBpdCBzdGlsbCBleGlzdHMuCj4+Cj4+IEl0IHN1cmVseSBkb2VzLiBUaGUg
cmVzZXQgY29udHJvbGxlciBpcyByZWdpc3RlcmVkIGluIHRoZSBiZWdpbm5pbmcgb2YKPj4gdWZz
X3Fjb21faW5pdCgpIGFuZCB0aGUgUEhZIGlzIGFjcXVpcmVkIG9ubHkgYSBmZXcgbGluZXMgYmVs
b3cuIEl0Cj4+IGNyZWF0ZXMgYSB2ZXJ5IHNtYWxsIHdpbmRvdyBmb3IgUEhZIGRyaXZlciB0byBw
cm9iZS4KPj4gV2hpY2ggbWVhbnMsIE5BSywgdGhpcyBwYXRjaCBkb2Vzbid0IGxvb2sgYWNjZXB0
YWJsZS4KPiAKPiBIaSBEbWl0cnksCj4gCj4gVGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dC4g
SSBhZ3JlZSB0aGF0IGl0IGxlYXZlcyB2ZXJ5IGxpdHRsZSB0aW1lIAo+IGZvciB0aGUgUEhZIHRv
IHByb2JlLCB3aGljaCBtYXkgY2F1c2UgaXNzdWVzIHdpdGggdGFyZ2V0cyB3aGVyZSAKPiBub19w
Y3Nfc3dfcmVzZXQgaXMgc2V0IHRvIHRydWUuCj4gCj4gQXMgYW4gZXhwZXJpbWVudCwgSSBrZXB0
IG5vX3Bjc19zd19yZXNldCBzZXQgdG8gdHJ1ZSBmb3IgdGhlIFNNODc1MCwgYW5kIAo+IGl0IGNh
dXNlZCBib290dXAgcHJvYmUgaXNzdWVzIGluIHNvbWUgb2YgdGhlIGl0ZXJhdGlvbnMgSSByYW4u
Cj4gCj4gVG8gYWRkcmVzcyB0aGlzLCBJIHByb3Bvc2UgdXBkYXRpbmcgdGhlIHBhdGNoIHRvIG1v
dmUgdGhlIAo+IHFtcF91ZnNfZ2V0X3BoeV9yZXNldCBjYWxsIHRvIHBoeV9jYWxpYnJhdGUsIGp1
c3QgYmVmb3JlIHRoZSAKPiByZXNldF9jb250cm9sX2Fzc2VydCBjYWxsLgoKV2lsbCBpdCBjYXVz
ZSBhbiBpc3N1ZSBpZiB3ZSBtb3ZlIGl0IHRvIHBoeV9pbml0KCkgaW5zdGVhZCBvZiAKcGh5X2Nh
bGlicmF0ZSgpPwoKPiAKPiBUaGlzIGNoYW5nZSB3aWxsIGRlbGF5IHRoZSBVRlMgUEhZIHJlc2V0
IGFzIG11Y2ggYXMgcG9zc2libGUgaW4gdGhlIAo+IGNvZGUuIEFkZGl0aW9uYWxseSwgbW92aW5n
IGl0IGZyb20gcGh5X3Bvd2VyX29uIHRvIGNhbGlicmF0ZSB3aWxsIGVuc3VyZSAKPiB0aGF0IHFt
cF91ZnNfZ2V0X3BoeV9yZXNldCBpcyBjYWxsZWQgb25seSBvbmNlIGR1cmluZyBib290LCByYXRo
ZXIgdGhhbiAKPiBkdXJpbmcgZWFjaCBwaHlfcG93ZXJfb24gY2FsbC4KPiAKPiBQbGVhc2UgbGV0
IG1lIGtub3cgeW91ciB0aG91Z2h0cy4KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQo+ICDCoHN0YXRpYyBpbnQgcW1wX3Vmc19waHlfY2FsaWJyYXRlKHN0cnVj
dCBwaHkgKnBoeSkKPiAgwqB7Cj4gIMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBxbXBfdWZzICpxbXAg
PSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiBAQCAtMTc5Myw2ICsxODI2LDEyIEBAIHN0YXRpYyBp
bnQgcW1wX3Vmc19waHlfY2FsaWJyYXRlKHN0cnVjdCBwaHkgKnBoeSkKPiAgwqDCoMKgwqDCoMKg
wqAgdW5zaWduZWQgaW50IHZhbDsKPiAgwqDCoMKgwqDCoMKgwqAgaW50IHJldDsKPiAKPiArwqDC
oMKgwqDCoMKgIHByX2VycigiJXMgJWRcbiIsIF9fZnVuY19fLCBfX0xJTkVfXyk7Cj4gKwo+ICvC
oMKgwqDCoMKgwqAgcmV0ID0gcW1wX3Vmc19nZXRfcGh5X3Jlc2V0KHFtcCk7Cj4gK8KgwqDCoMKg
wqDCoMKgIGlmIChyZXQpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
cmV0Owo+ICsKPiAgwqDCoMKgwqDCoMKgwqAgcmV0ID0gcmVzZXRfY29udHJvbF9hc3NlcnQocW1w
LT51ZnNfcmVzZXQpOwo+ICDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPiBAQCAtMTgxNyw3ICsxODU2LDcgQEAgc3Rh
dGljIGludCBxbXBfdWZzX3BoeV9jYWxpYnJhdGUoc3RydWN0IHBoeSAqcGh5KQo+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2VycihxbXAtPmRldiwgInBoeSBpbml0aWFsaXph
dGlvbiB0aW1lZC1vdXRcbiIpOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIHJldDsKPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+
IAo+IAo+IFJlZ2FyZHMuCj4gTml0aW4KPj4KPj4+Cj4+PiBSZWdhcmRzLAo+Pj4gTml0aW4KPj4+
Cj4+Pgo+Pj4+Cj4+Pj4+Cj4+Pj4+IENvLWRldmVsb3BlZC1ieTogUmFtIEt1bWFyIER3aXZlZGkg
PHF1aWNfcmR3aXZlZGlAcXVpY2luYy5jb20+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFJhbSBLdW1h
ciBEd2l2ZWRpIDxxdWljX3Jkd2l2ZWRpQHF1aWNpbmMuY29tPgo+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+
IMKgwqAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIHwgNjEgKysrKysr
KysrKysrIAo+Pj4+PiArLS0tLS0tLS0tLS0tCj4+Pj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDMz
IGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIvZHJpdmVycy9waHkvIAo+
Pj4+PiBxdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKPj4+Pj4gaW5kZXggNjM2ZGMzZGMzZWE4
Li4xMmRhZDI4Y2MxYmQgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC11ZnMuYwo+Pj4+PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtdWZzLmMKPj4+Pj4gQEAgLTE3OTksMzggKzE3OTksMTEgQEAgc3RhdGljIGludCBxbXBf
dWZzX2NvbV9leGl0KHN0cnVjdCBxbXBfdWZzIAo+Pj4+PiAqcW1wKQo+Pj4+PiDCoMKgIHN0YXRp
YyBpbnQgcW1wX3Vmc19wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4+Pj4+IMKgwqAgewo+Pj4+
PiDCoMKgwqDCoMKgIHN0cnVjdCBxbXBfdWZzICpxbXAgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsK
Pj4+Pj4gLcKgwqDCoCBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+
Pj4+PiDCoMKgwqDCoMKgIGludCByZXQ7Cj4+Pj4+IMKgwqDCoMKgwqAgZGV2X3ZkYmcocW1wLT5k
ZXYsICJJbml0aWFsaXppbmcgUU1QIHBoeVxuIik7Cj4+Pj4+Cj4+Pj4+IC3CoMKgwqAgaWYgKGNm
Zy0+bm9fcGNzX3N3X3Jlc2V0KSB7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qCj4+
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBHZXQgVUZTIHJlc2V0LCB3aGljaCBpcyBk
ZWxheWVkIHVudGlsIG5vdyB0byBhdm9pZCBhCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKiBjaXJjdWxhciBkZXBlbmRlbmN5IHdoZXJlIFVGUyBuZWVkcyBpdHMgUEhZLCBidXQgCj4+
Pj4+IHRoZSBQSFkKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIG5lZWRzIHRoaXMg
VUZTIHJlc2V0Lgo+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+Pj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmICghcW1wLT51ZnNfcmVzZXQpIHsKPj4+Pj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHFtcC0+dWZzX3Jlc2V0ID0KPj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZt
X3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZShxbXAtIAo+Pj4+PiA+ZGV2LAo+Pj4+PiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IAo+Pj4+PiAidWZzcGh5Iik7Cj4+Pj4+IC0KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGlmIChJU19FUlIocW1wLT51ZnNfcmVzZXQpKSB7Cj4+Pj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0g
UFRSX0VSUihxbXAtPnVmc19yZXNldCk7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2VycihxbXAtPmRldiwKPj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgImZhaWxlZCB0byBnZXQgVUZTIHJlc2V0OiAlZFxuIiwKPj4+Pj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0KTsKPj4+Pj4gLQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHFtcC0+dWZzX3Jlc2V0ID0gTlVMTDsKPj4+Pj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gcmV0Owo+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4+IC3CoMKgwqAgfQo+Pj4+PiAt
Cj4+Pj4+IMKgwqDCoMKgwqAgcmV0ID0gcW1wX3Vmc19jb21faW5pdChxbXApOwo+Pj4+PiAtwqDC
oMKgIGlmIChyZXQpCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+
Pj4+IC0KPj4+Pj4gLcKgwqDCoCByZXR1cm4gMDsKPj4+Pj4gK8KgwqDCoCByZXR1cm4gcmV0Owo+
Pj4+PiDCoMKgIH0KPj4+Pj4KPj4+Pj4gwqDCoCBzdGF0aWMgaW50IHFtcF91ZnNfcGh5X2NhbGli
cmF0ZShzdHJ1Y3QgcGh5ICpwaHkpCj4+Pj4+IEBAIC0yMDg4LDYgKzIwNjEsMzQgQEAgc3RhdGlj
IGludCBxbXBfdWZzX3BhcnNlX2R0KHN0cnVjdCBxbXBfdWZzIAo+Pj4+PiAqcW1wKQo+Pj4+PiDC
oMKgwqDCoMKgIHJldHVybiAwOwo+Pj4+PiDCoMKgIH0KPj4+Pj4KPj4+Pj4gK3N0YXRpYyBpbnQg
cW1wX3Vmc19nZXRfcGh5X3Jlc2V0KHN0cnVjdCBxbXBfdWZzICpxbXApCj4+Pj4+ICt7Cj4+Pj4+
ICvCoMKgwqAgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKPj4+Pj4g
K8KgwqDCoCBpbnQgcmV0Owo+Pj4+PiArCj4+Pj4+ICvCoMKgwqAgaWYgKCFjZmctPm5vX3Bjc19z
d19yZXNldCkKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+Pj4+ICsK
Pj4+Pj4gK8KgwqDCoCAvKgo+Pj4+PiArwqDCoMKgwqAgKiBHZXQgVUZTIHJlc2V0LCB3aGljaCBp
cyBkZWxheWVkIHVudGlsIG5vdyB0byBhdm9pZCBhCj4+Pj4+ICvCoMKgwqDCoCAqIGNpcmN1bGFy
IGRlcGVuZGVuY3kgd2hlcmUgVUZTIG5lZWRzIGl0cyBQSFksIGJ1dCB0aGUgUEhZCj4+Pj4+ICvC
oMKgwqDCoCAqIG5lZWRzIHRoaXMgVUZTIHJlc2V0Lgo+Pj4+PiArwqDCoMKgwqAgKi8KPj4+Pj4g
K8KgwqDCoCBpZiAoIXFtcC0+dWZzX3Jlc2V0KSB7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHFtcC0+dWZzX3Jlc2V0ID0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2bV9y
ZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUocW1wLT5kZXYsICJ1ZnNwaHkiKTsKPj4+Pgo+Pj4+
IFN0cmFuZ2UgaW5kZW50YXRpb24uCj4+Pj4KPj4+Pj4gKwo+Pj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAoSVNfRVJSKHFtcC0+dWZzX3Jlc2V0KSkgewo+Pj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gUFRSX0VSUihxbXAtPnVmc19yZXNldCk7
Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKHFt
cC0+ZGV2LCAiZmFpbGVkIHRvIGdldCBQSFkgcmVzZXQ6IAo+Pj4+PiAlZFxuIiwgcmV0KTsKPj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHFtcC0+dWZzX3Jlc2V0
ID0gTlVMTDsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiByZXQ7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+Pj4gK8KgwqDCoCB9
Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoCByZXR1cm4gMDsKPj4+Pj4gK30KPj4+Pj4gKwo+Pj4+PiDC
oMKgIHN0YXRpYyBpbnQgcW1wX3Vmc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+Pj4+PiDCoMKgIHsKPj4+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRl
di0+ZGV2Owo+Pj4+PiBAQCAtMjExNCw2ICsyMTE1LDEwIEBAIHN0YXRpYyBpbnQgcW1wX3Vmc19w
cm9iZShzdHJ1Y3QgCj4+Pj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+Pj4gwqDCoMKgwqDC
oCBpZiAocmV0KQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+
Pj4+Pgo+Pj4+PiArwqDCoMKgIHJldCA9IHFtcF91ZnNfZ2V0X3BoeV9yZXNldChxbXApOwo+Pj4+
PiArwqDCoMKgIGlmIChyZXQpCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBy
ZXQ7Cj4+Pj4+ICsKPj4+Pj4gwqDCoMKgwqDCoCAvKiBDaGVjayBmb3IgbGVnYWN5IGJpbmRpbmcg
d2l0aCBjaGlsZCBub2RlLiAqLwo+Pj4+PiDCoMKgwqDCoMKgIG5wID0gb2ZfZ2V0X25leHRfYXZh
aWxhYmxlX2NoaWxkKGRldi0+b2Zfbm9kZSwgTlVMTCk7Cj4+Pj4+IMKgwqDCoMKgwqAgaWYgKG5w
KSB7Cj4+Pj4+IC0tIAo+Pj4+PiAyLjQ4LjEKPj4+Pj4KPj4+Pgo+Pj4KPj4KPj4KPiAKCgotLSAK
V2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
