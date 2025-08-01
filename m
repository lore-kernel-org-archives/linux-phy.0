Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32F4CC87FCB
	for <linux-phy@archiver.kernel.org>; Fri,  1 Aug 2025 07:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufcr7F9AZZHwNXLq0GUl5UU3CWlyIzHdTbvSo2aO+ek=; b=ers+moordpqnNX
	UPldYzHCi7P7adEEbdM6gmM/6XVCq1NLWgU/MpuPx+IZnUXYsxgSLeBkyHQLQSPsb06QaXetA+cz5
	1rMoxJVdlGleRsmxSQa2H7VQS2FXlzcuZMhpJDUFpduFfZEMdb7i7bjUpmQHcq76DJhQBCYgykvqg
	fyxdicygoA943OmdnfOxfk8mx6yat+xYCqX/d3T/OrclmC4EG8Zi4e4Z8CGZD/I2m2XEb0EO4EErj
	qKP5wiz3RMKhcH0RghxtOrArc16A5paf+goNutDGpXXYmSeUsPVHuGeM2bGDFSlVzfAIzAwojb6Fu
	Zw4lkep7cPozvqO6GpXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhkTt-00000005Ab9-3WKe;
	Fri, 01 Aug 2025 07:47:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhkDr-000000058e7-3bs4
	for linux-phy@lists.infradead.org;
	Fri, 01 Aug 2025 07:30:37 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5710TO13001555
	for <linux-phy@lists.infradead.org>; Fri, 1 Aug 2025 07:30:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DS1d6uuJTVVlh+sODDiMs3u3lzDiNe6wejq9+G3vOk4=; b=lOAJYBB9pHterVsj
	+ihKJGqKSxCW5YyPkxNvkQGi3kDcTPz7tKatNm4V5n4lwg6hygMjP+vckiVf5rv9
	s+JbVp/zW2FPXtuHa4+gQ9vWM4e38dRqZm71mlUNZPTR4rPaXmKK5gSb25ksYxLg
	WzcVqNfjdZ/mm11/cK6AhhkF1aKLUhJ3gQi3YykGj5unIQp9kgObEbGJ+LRyy4rJ
	HxbYcDBav7OQ1RGUeNeqWtPkVp4CXvVfo5YOcWszezu7+ncblgwsjdjRjVAY/j4R
	/7WvToa15rVBapfKmJoa/JH0+PJ1esxntVDuifpBnUUvApAx4zZpYU+6UsZPTqbv
	bZFFLA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyubb5s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 01 Aug 2025 07:30:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e32df3ace0so62364685a.0
        for <linux-phy@lists.infradead.org>; Fri, 01 Aug 2025 00:30:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754033432; x=1754638232;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DS1d6uuJTVVlh+sODDiMs3u3lzDiNe6wejq9+G3vOk4=;
        b=BOmKBI3mriJ2KfUji4a22crcFVwE2g2GP9hQSVIO9Z579/gWM9S9lKH7g8Oo0PNDVs
         nHd/4fmPjU9ZndBpjX4FWqq7VaOuc8rPartEF76yBvjPVrfXDlMX2zba82Uk7mW12/fK
         gVo8V0qks4GxuMaKm3LrdvjWGBac+eD4lbaP99We/CJdUffgNj2/vHJoWoqzEwNwy/8k
         s/vKLJlgwQtGge5OJF7Ep1XWFZtFOzQ7NEXFtI4RIgsv19nDIC84JxgfxwwKTRrUUe+S
         6qvG2/TYCIJRG6P/Y0UMP0HcBeOEXs28zLjuHm4GhlJRi2tFY6Ht+Ta8s6ydM2hkw9DN
         FmUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXd+p20znKkEcd2tx0CplSbwCuohsBU7B9ZBQtO/4ToPPcQ9dKDJk23jiK2PS3D0nl978kZklpbafU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrPPIVcUFrZ94tDDwfmPVQa+jUxTgaRfagIGkxj8jkSteeXWBW
	xPzy7SG4LNVgLaHXfeXJY22EHJQ46EK5/cqHwBKdUTMo6YzFm/ZazkKJpKWC1x2HT6J8GfO15zY
	53KZVcpj3Z8/DNHqXYQb2mDk2YRWe7LsMcrTKTeca7WEN8T/JmY6d6RTdS2RV1PBv4jkg
X-Gm-Gg: ASbGnctByxa9WqDNqMtkcegv0QoscnOTCcLTrT+FoIkw6DGqE5iTRv96BzRWGQYJoRU
	vrcp4fo8Gnf9WSF26lx801u7+MA5URN/X1s1Ro98n+Mo8QsXbKj6FyosDQekaR3G9toqiV4k+pC
	t/ADgWPwhIPD1d6LzNZJKrDRrDF5RcKQK+MW1EpMNBaakQFFtyjRzaVAb2Yb7qs3I6kzC4fQrUY
	Dm06QYLZ61AYig0ApHGsas6mkSuveVlpbW8mAeRblJ/UBIpc92A9DtG1qmUrCDdsCoSCkiY9IGJ
	qRJQiYpcV9vrcnaLVMDYHUv2ehwooKLcXhw3jxdG51v9yspgxtjJ8uoEwCIQId4pdpbFsj3rL2o
	qDmHRU5Vxwb0ran8e5F5k+iUFEUA24YZNPq6/s9BmxsrsStKVbKfI
X-Received: by 2002:a05:620a:2584:b0:7e6:67c2:a95b with SMTP id af79cd13be357-7e66f3b4567mr1356787185a.51.1754033431940;
        Fri, 01 Aug 2025 00:30:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQuekGzv0jTOloZYm8zH/eCq5x2X1Bb4QDXyOYS+z3nUEHpAUxNETANKjB+YB8wrtb6aK+Og==
X-Received: by 2002:a05:620a:2584:b0:7e6:67c2:a95b with SMTP id af79cd13be357-7e66f3b4567mr1356780185a.51.1754033431109;
        Fri, 01 Aug 2025 00:30:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88caf6dcsm491610e87.159.2025.08.01.00.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Aug 2025 00:30:30 -0700 (PDT)
Date: Fri, 1 Aug 2025 10:30:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        konrad.dybcio@oss.qualcomm.com, fange.zhang@oss.qualcomm.com,
        quic_lliu6@quicinc.com, quic_yongmou@quicinc.com
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
Message-ID: <x4ozwgcti2vrgorgow6nttcjmduk5e4kkd3pjj6xfsgihk6u4n@klfpypor6ya6>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
 <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
 <w3rwao5wbmstdyics6qhp7beulbbp5ludqkwpfsmevgqmzz3d6@u2e533zlitkr>
 <e5a3f05f-9775-4e3d-ae7d-ebbca14b4df5@oss.qualcomm.com>
 <ffdvzupefzhqq7fqtloycc3xzu57i55ths73xcjftor2cifuzr@5vhq2hfmkvda>
 <bd8f8643-a8c8-43d7-b293-acdba5ff798a@oss.qualcomm.com>
 <ad4f53eb-2f4b-4e62-a162-461de431e3de@oss.qualcomm.com>
 <2de51bf2-baed-4bf9-a40c-1681b2efcf79@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2de51bf2-baed-4bf9-a40c-1681b2efcf79@oss.qualcomm.com>
X-Proofpoint-GUID: w90AQuSUFXlK7jzCTUoilmi9ONSpUNvc
X-Proofpoint-ORIG-GUID: w90AQuSUFXlK7jzCTUoilmi9ONSpUNvc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDA1MyBTYWx0ZWRfX4Mx9/BmOdUO8
 vEy5ZMDgJaLY/YOhyOKp8KOPBLtsxuPstqXgf82P6T0EWZbYK/G2Zxky6097sWjxBoFNkJxn11j
 ZtY3OfhknxLo6AALmMpX4hmy9LI/fnn6mYwXav6SwSQxuqUDIJo6TQKXWgrXLdNZFr+1sUK7VVY
 EtrUYDFcdc7WkT2mka5i7D35jks/Xu2+FWk9JTOgs6Emasx/wQPljSX1NpPg8Lct7gg3JYBu4pt
 ugU5aAPQHDmoTGzp2UcLIYnHGoZ6XLVRKrSxnAFQRM3CAhC1CLJw6QiWi5nalC4xhyeD1LnsomL
 jXE2D2du6XXr6hsm3Bit5mtZShzW+Cf6kE1uu6YUyNYfZcQDMQfEoqpUrjIav+er8yyZMDFRzvr
 CMTW2l8A5eMIpFVrPxNZ0NYZyPcoW0ColnFsgcegbE2fBDjrH1oIB0Pz2dE1J8nCdoqMvMcb
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=688c6d19 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=Oh2cFVv5AAAA:8 a=OU9VWU6s7H6VDRzcY4UA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_02,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250801_003035_916527_AB29A5F3 
X-CRM114-Status: GOOD (  50.58  )
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

T24gRnJpLCBBdWcgMDEsIDIwMjUgYXQgMTE6NTc6NTBBTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gT24gOC8xLzIwMjUgMToxMyBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+
IE9uIDMxLzA3LzIwMjUgMDg6MDYsIFhpYW5neHUgWWluIHdyb3RlOgo+ID4+Cj4gPj4gT24gNy8z
MS8yMDI1IDI6MzUgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+IE9uIFdlZCwgSnVs
IDMwLCAyMDI1IGF0IDA0OjUzOjE2UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+ID4+Pj4g
T24gNy8yMi8yMDI1IDg6NDEgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+Pj4gT24g
VHVlLCBKdWwgMjIsIDIwMjUgYXQgMDg6MDU6MDZQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6
Cj4gPj4+Pj4+IE9uIDcvMjIvMjAyNSA0OjM4IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+
ID4+Pj4+Pj4gT24gVHVlLCBKdWwgMjIsIDIwMjUgYXQgMDM6MjI6MDNQTSArMDgwMCwgWGlhbmd4
dSBZaW4gd3JvdGU6Cj4gPj4+Pj4+Pj4gSW50cm9kdWNlIGRldmljZSB0cmVlIGJpbmRpbmcgZG9j
dW1lbnRhdGlvbiBmb3IgdGhlIFF1YWxjb21tIFFNUCBEUCBQSFkKPiA+Pj4+Pj4+PiBvbiBRQ1M2
MTUgU29Dcy4gVGhpcyBQSFkgc3VwcG9ydHMgRGlzcGxheVBvcnQgZnVuY3Rpb25hbGl0eSBhbmQg
aXMKPiA+Pj4+Pj4+PiBkZXNpZ25lZCB0byBvcGVyYXRlIGluZGVwZW5kZW50bHkgZnJvbSB0aGUg
VVNCMyBQSFkuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBVbmxpa2UgY29tYm8gUEhZcyBmb3VuZCBv
biBvdGhlciBwbGF0Zm9ybXMsIHRoZSBRQ1M2MTUgRFAgUEhZIGlzCj4gPj4+Pj4+Pj4gc3RhbmRh
bG9uZSBhbmQgZG9lcyBub3Qgc3VwcG9ydCBVU0IvRFAgbXVsdGlwbGV4aW5nLiBUaGUgYmluZGlu
Zwo+ID4+Pj4+Pj4+IGRlc2NyaWJlcyB0aGUgcmVxdWlyZWQgY2xvY2tzLCByZXNldHMsIFRDU1Ig
Y29uZmlndXJhdGlvbiwgYW5kIGNsb2NrL1BIWQo+ID4+Pj4+Pj4+IGNlbGxzIGZvciBwcm9wZXIg
aW50ZWdyYXRpb24uCj4gPj4+Pj4+PiBTaW1wbHkgcHV0OiBubywgdGhpcyBpcyBub3QgY29ycmVj
dC4gRXZlbiBpZiB5b3UgZ28gdG8gdGhlIFNNNjE1MCBibG9jawo+ID4+Pj4+Pj4gZGlhZ3JhbSwg
aXQgcG9pbnRzIG91dCB0aGF0IERQIHVzZXMgdGhlIFVTQjMgUEhZLCBub3QgYSBzZXBhcmF0ZSBE
UCBQSFkuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gSSB0aG91Z2h0IHRoYXQgd2UgaGF2ZSBkaXNjdXNz
ZWQgaXQgYmVmb3JlaGFuZC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBJIGNhbiBxdW90ZSBteSBjb21t
ZW50IGZyb20gdGhlIHByZXZpb3VzIHRocmVhZDoKPiA+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IE5vLiBJ
dCBtZWFucyByZXBsYWNpbmcgZXh0ZW5kaW5nIGV4aXN0aW5nIGVudHJpZXMgd2l0aCBiaWdnZXIg
cmVnIGFuZAo+ID4+Pj4+Pj4+PiAjcGh5LWNlbGxzID0gPDE+LiBUaGUgZHJpdmVyIG11c3Qga2Vl
cCB3b3JraW5nIHdpdGggb2xkIG5vZGUgZGVmaW5pdGlvbnMKPiA+Pj4+Pj4+Pj4gYXMgaXMgdG8g
ZW5zdXJlIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LiBOZXcgbm9kZXMgc2hvdWxkIG1ha2UgaXQK
PiA+Pj4+Pj4+Pj4gcmVnaXN0ZXIgdHdvIFBIWXMgKFVTQjMgYW5kIERQKS4gT24gdGhlIGRyaXZl
ciBzaWRlIG1vZGlmeSBnZW5lcmljIGNvZGUKPiA+Pj4+Pj4+Pj4gcGF0aHMsIGFsbCBwbGF0Zm9y
bXMgc3VwcG9ydGVkIGJ5IHRoZSBkcml2ZXIgc2hvdWxkIGJlIGFibGUgdG8gc3VwcG9ydAo+ID4+
Pj4+Pj4+PiBVU0IzK0RQIGNvbWJpbmF0aW9uLgo+ID4+Pj4+Pj4gTG9va2luZyBhdCB0aGUgaGFy
ZHdhcmUgbWVtb3J5IG1hcHM6Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gTVNNODk5ODogVVNCMyBQSFkg
cmVncyBhdCAweGMwMTAwMDAsIERQIFBIWSByZWdzIGF0IDB4YzAxMTAwMAo+ID4+Pj4+Pj4gU0RN
NjYwOiBVU0IzIFBIWSByZWdzIGF0IDB4YzAxMDAwMCwgRFAgUEhZIHJlZ3MgYXQgMHhjMDExMDAw
Cj4gPj4+Pj4+PiBRQ00yMjkwOiBVU0IzIFBIWSByZWdzIGF0IDB4MTYxNTAwMCwgRFAgUEhZIHJl
Z3MgYXQgMHgxNjE2MDAwCj4gPj4+Pj4+PiBTTTYxMTU6IFVTQjMgUEhZIHJlZ3MgYXQgMHgxNjE1
MDAwLCBEUCBQSFkgcmVncyBhdCAweDE2MTYwMDAKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBOb3c6Cj4g
Pj4+Pj4+PiBTTTYxNTA6IFVTQjMgUEhZIHJlZ3MgYXQgMHg4OGU2MDAwCj4gPj4+Pj4+PiDCoMKg
wqDCoMKgwqDCoMKgIFVTQjMgUEhZIHJlZ3MgYXQgMHg4OGU4MDAwLCBEUCBQSFkgcmVncyBhdCAw
eDg4ZTkwMDAKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBJIGRvIG5vdCBrbm93LCB3aHkgbXNtLTQuMTQg
ZGlkbid0IGRlc2NyaWJlIHNlY29uZCBVU0IzIFBIWS4gTWF5YmUgeW91Cj4gPj4+Pj4+PiBjYW4g
Y29tbWVudCBvbiBpdC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBCdXQgYmFzZWQgb24gdGhhdCBsaXN0
LCB0aGUgb25seSBzcGVjaWFsIGNhc2UgdGhhdCB3ZSBuZWVkIHRvIGhhbmRsZSBpcwo+ID4+Pj4+
Pj4gdGhlIGZpcnN0IFVTQjMgUEhZLCB3aGljaCBkb2Vzbid0IGhhdmUgYSBjb3JyZXNwb25kaW5n
IERQIFBIWSBibG9jay4gQnV0Cj4gPj4+Pj4+PiBpdCB3aWxsIGJlIGhhbmRsZWQgYW55d2F5IGJ5
IHRoZSBjb2RlIHRoYXQgaW1wbGVtZW50cyBzdXBwb3J0IGZvciB0aGUKPiA+Pj4+Pj4+IGV4aXN0
aW5nIERUIGVudHJpZXMuIEFsbCBvdGhlciBoYXJkd2FyZSBibG9ja3MgYXJlIGNvbWJvIFVTQitE
UCBQSFlzLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEhhdmluZyBhbGwgb2YgdGhhdCBpbiBtaW5kLCBw
bGVhc2UsIGZvciB2MyBwYXRjaHNldCBpbXBsZW1lbnQgVVNCK0RQCj4gPj4+Pj4+PiBzdXBwb3J0
IGluIHRoZSBwaHktcWNvbS1xbXAtdXNiYyBkcml2ZXIgYW5kIGFkZCB0aGUgZm9sbG93aW5nIGxv
Z2ljCj4gPj4+Pj4+PiB0aGF0IGFsc28gd2FzIHJlcXVlc3RlZCBpbiB2MSByZXZpZXc6Cj4gPj4+
Pj4+Pgo+ID4+Pj4+Pj4+PiBOb3QgcXVpdGUuIEJvdGggVVNCMyBhbmQgRFAgZHJpdmVycyBzaG91
bGQgYmUgY2FsbGluZyBwb3dlcl9vbiAvIF9vZmYuCj4gPj4+Pj4+Pj4+IElmIFVTQjMgaXMgb24s
IHBvd2VyaW5nIG9uIERQIFBIWSBzaG91bGQgZmFpbC4gVmljZSB2ZXJzYSwgaWYgRFAgaXMgb24s
Cj4gPj4+Pj4+Pj4+IHBvd2VyaW5nIG9uIFVTQiBzaG91bGQgZmFpbC4KPiA+Pj4+Pj4+IEkgdGhp
bmsgb3VyIHVuZGVyc3RhbmRpbmcgbWlnaHQgbm90IGJlIGZ1bGx5IGFsaWduZWQuCj4gPj4+Pj4g
SSBkaWQgbm90IHdyaXRlIHRoaXMuIFBsZWFzZSBmaXggeW91ciBtYWlsZXIgdG8gcXVvdGUgbWVz
c2FnZXMgcHJvcGVybHkuCj4gPj4+Pj4gQXMgeW91IGFyZSB1c2luZyBUaHVuZGVyYmlyZCwgSSdt
IG5vdCBzdXJlIHdoZXJlIHRoZSBpc3N1ZSBjb21lcyBmcm9tLgo+ID4+Pj4+Cj4gPj4+Pj4gQWxz
byBwbGVhc2UgZml4IGl0IHRvIHdyYXAgeW91ciByZXNwb25zZXMgc29td2hlcmUgbG9naWNhbGx5
Lgo+ID4+Pj4+Cj4gPj4+Pj4+PiBQZXJoYXBzIHRoaXMgaXMgYmVjYXVzZSBJIGRpZG7igJl0IGFj
Y3VyYXRlbHkgdXBkYXRlIHRoZSBtdXR1YWwgZXhjbHVzaW9uIHJlbGF0aW9uc2hpcHMgYW5kIHRl
c3QgcmVzdWx0cyBmb3IgdGhlIGRpZmZlcmVudCBQSFlzLgo+ID4+Pj4+Pj4gTGV0IG1lIGNsYXJp
ZnkgbXkgbGF0ZXN0IGZpbmRpbmdzIGFuZCBleHBsYWluIHdoeSBJIGJlbGlldmUgdGhlc2UgYXJl
IHNlcGFyYXRlIFBIWXMgdGhhdCByZXF1aXJlIG11dHVhbCBleGNsdXNpb24gdmlhIFRDU1IuCj4g
Pj4+Pj4+Pgo+ID4+Pj4+Pj4gMS4gQWJvdXQgdGhlIFRDU1IgRFBfUEhZTU9ERSBSZWdpc3RlcnMK
PiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBNU004OTk4L1NETTY2MDoKPiA+Pj4+Pj4+IMKgwqDCoMKgT25s
eSBvbmUgVENTUl9VU0IzX0RQX1BIWU1PREUgcmVnaXN0ZXIgYXQgMHgxRkNCMjQ4Lgo+ID4+Pj4+
Pj4gUUNNMjI5MC9TTTYxMTU6Cj4gPj4+Pj4+PiDCoMKgwqDCoFRDU1JfVVNCM18wX0RQX1BIWU1P
REUgYXQgMHgzQ0IyNDgKPiA+Pj4+Pj4+IMKgwqDCoMKgVENTUl9VU0IzXzFfRFBfUEhZTU9ERSBh
dCAweDNDQjI0Qwo+ID4+Pj4+Pj4gU002MTUwOgo+ID4+Pj4+Pj4gwqDCoMKgwqBUQ1NSX1VTQjNf
MF9EUF9QSFlNT0RFIGF0IDB4MUZDQjI0OAo+ID4+Pj4+Pj4gwqDCoMKgwqBUQ1NSX1VTQjNfMV9E
UF9QSFlNT0RFIGF0IDB4MUZDQjI0Qwo+ID4+Pj4+IFNNNjE1MCBoYXMgdHdvIGRpZmZlcmVudCBz
ZXRzIG9mIG91dHB1dCBwaW5zLCBzbyB0aGUgZmlyc3QgcmVnaXN0ZXIKPiA+Pj4+PiBjb3ZlcnMg
Zmlyc3Qgc2V0IG9mIFNTIGxhbmVzICh3aGljaCBhcmUgcm91dGVkIHRvIHRoZSBkb2N1bWVudGVk
IFNTCj4gPj4+Pj4gUEhZKSwgdGhlIHNlY29uZCByZWdpc3RlciBjb3ZlcnMgdGhlIHNlY29uZCBz
ZXQgb2YgU1MgbGFuZXMgKHdoaWNoIGFyZQo+ID4+Pj4+IHJvdXRlZCB0byB0aGUgRFAgYW5kIHNl
Y29uZGFyeSBVU0IgUEhZKS4KPiA+Pj4+Pgo+ID4+Pj4+IEkgY2FuIG9ubHkgYXNzdW1lIHRoYXQg
dGhlIHNhbWUgY29uZmlndXJhdGlvbiB3YXMgc3VwcG9zZWQgdG8gYmUKPiA+Pj4+PiBhcHBsaWNh
YmxlIHRvIFFDTTIyOTAgLyBTTTYxMTUsIGJ1dCB3YXMgbGF0ZXIgcmVtb3ZlZCAvIGRpc2FibGVk
LCB3aGlsZQo+ID4+Pj4+IHRoZSByZWdpc3RlcnMgd2VyZSBrZXB0IGluIHRoZSBUQ1NSIGJsb2Nr
Lgo+ID4+Pj4+Cj4gPj4+Pj4+PiBFdmVuIHRob3VnaCBNU004OTk4LCBTRE02NjAsIFFDTTIyOTAs
IGFuZCBTTTYxMTUgYWxsIGhhdmUgb25lIFVTQjMgUEhZIGFuZCBvbmUgRFAgUEhZLCB0aGUgVENT
UiBEUF9QSFlNT0RFIHJlZ2lzdGVyIGNvbmZpZ3VyYXRpb24gaXMgZGlmZmVyZW50IG9uIGVhY2gg
cGxhdGZvcm0uCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gQWRkaXRpb25hbGx5LCBJIGZvdW5kIHNvbWUg
aW50ZXJlc3RpbmcgcmVnaXN0ZXIgZG9jdW1lbnRhdGlvbiBmb3IgUUNNMjI5MC9TTTYxMTU6Cj4g
Pj4+Pj4+PiDCoMKgwqDCoFRDU1JfVVNCM18wX0RQX1BIWU1PREU6IOKAnEluIGthbW9ydGEgdGhp
cyBvbmUgaXMgZm9yIG1vYmlsZSB1c2IuIERQIG5vdCBzdXBwb3J0ZWQu4oCdCj4gPj4+Pj4+PiDC
oMKgwqDCoFRDU1JfVVNCM18xX0RQX1BIWU1PREU6IOKAnERQIG1vZGUgc3VwcG9ydGVkIGZvciBB
dXRvIHVzYiBpbiBrYW1vcnRhLuKAnQo+ID4+Pj4+Pj4gSSB0aGluayB0aGUgcmVhc29uIGZvciBo
YXZpbmcgdHdvIGRpZmZlcmVudCBUQ1NSIHJlZ2lzdGVycyBpcyB0byBhbGxvdyBib3RoIHRoZSBV
U0IzLjAgYW5kIERQIFBIWXMgdG8gYmUgdXNlZHMgYXQgdGhlIHNhbWUgdGltZSBpbiBjZXJ0YWlu
IHByb2R1Y3QgY29uZmlndXJhdGlvbnMuCj4gPj4+Pj4gU3VyZS4gT25lIGZvciB0aGUgZmlyc3Qg
UEhZIChVU0IpLCBvbmUgZm9yIHRoZSBzZWNvbmQgUEhZIChVU0IrRFApLgo+ID4+Pj4+IElmIHlv
dSBjaGVjayB0aGUgbWVtb3J5IG1hcCwgeW91IHdpbGwgZmluZCB0aGUgc2Vjb25kIFZMUyBDTEFN
UCByZWdpc3Rlcgo+ID4+Pj4+IGZvciB0aGUgc2Vjb25kIFVTQiBQSFkuCj4gPj4+Pj4KPiA+Pj4+
Pj4+IDIuIFNNNjE1MCBUZXN0IFJlc3VsdHMKPiA+Pj4+Pj4+IFdoZW4gVENTUl9EUF9QSFlNT0RF
XzAgaXMgc3dpdGNoZWQgdG8gRFAsIHRoZSBVU0IzIHByaW1hcnkgUEhZIGNhbm5vdCB3b3JrLCBh
bmQgdGhlIERQIFBIWSBpcyBhbHNvIG5vdCBmdW5jdGlvbmFsIChwb3NzaWJseSBkdWUgdG8gY2xv
Y2sgbGFjayBvciBvdGhlciBjb25maWd1cmF0aW9uIG1pc21hdGNoIHdpdGggdGhpcyBUQ1NSIHNl
dHRpbmcpLgo+ID4+Pj4+Pj4gV2hlbiBUQ1NSX0RQX1BIWU1PREVfMSBpcyBzd2l0Y2hlZCB0byBE
UCwgYm90aCB0aGUgVVNCMyBwcmltYXJ5IFBIWSBhbmQgdGhlIERQIFBIWSB3b3JrIG5vcm1hbGx5
Lgo+ID4+Pj4+Pj4gSSB0aGluayAid2h5IG1zbS00LjE0IGRpZG4ndCBkZXNjcmliZSBzZWNvbmQg
VVNCMyBQSFkiLCBiZWNhdXNlIFRDU1JfRFBfUEhZTU9ERV8xIGFsd2F5cyB3b3JrcyBpbiBEUCBt
b2RlLgo+ID4+Pj4+Pj4gaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL21z
bS8rL2FmMDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRmMTkxNWIwNWQwYzE0ODgvZHJpdmVycy9ncHUv
ZHJtL21zbS9kcC9kcF9jYXRhbG9nX3YyMDAuYwo+ID4+Pj4+IEhlcmUgaXQgc3RpbGwgcHJvZ3Jh
bXMgdGhlIFRDU1IgcmVnaXN0ZXIuCj4gPj4+Pj4KPiA+Pj4+Pj4+IEJhc2VkIG9uIHRoZXNlIGlu
Zm8sIEkgYmVsaWV2ZSB0aGVzZSBhcmUgc2VwYXJhdGUgUEhZcywgYW5kIG9ubHkgdGhlCj4gPj4+
Pj4+PiBUQ1NSIERQX1BIWU1PREUgcmVnaXN0ZXJzIGRldGVybWluZSB3aGljaCBVU0IzL0RQIFBI
WXMgYXJlIHBhaXJlZCBvcgo+ID4+Pj4+Pj4gbXV0dWFsbHkgZXhjbHVzaXZlLiBUaGlzIGlzIHdo
eSBJIGhhdmUgbWFpbnRhaW5lZCBzZXBhcmF0ZSBwcml2YXRlCj4gPj4+Pj4+PiBkYXRhIGZvciBl
YWNoIFBIWSBhbmQgaW1wbGVtZW50ZWQgUG93ZXIgb24gbXV0ZXggY29udHJvbCB2aWEgVENTUiwK
PiA+Pj4+Pj4+IHJhdGhlciB0aGFuIHVzaW5nIGEgcW1wX2NvbWJvLWxpa2Ugc3RydWN0dXJlLgo+
ID4+Pj4+IFN0aWxsLCBuby4gQ2hlY2sgdGhlIGJsb2NrIGRpYWdyYW0gb2YgU002MTUwLgo+ID4+
Pj4+Cj4gPj4+Pj4+PiBHaXZlbiB0aGUgYWJvdmUsIGRvIHlvdSB0aGluayB3ZSBzdGlsbCBuZWVk
IHRvIGZvcmNlIFVTQiBhbmQgRFAgdG8gYmUgc3RyaWN0bHkgYm91bmQgdG9nZXRoZXIgbGlrZSBh
IGNvbWJvIFBIWT8KPiA+Pj4+PiBZZXMuCj4gPj4+PiBJIGNoZWNrZWQgdGhlIHJlbGF0ZWQgUEhZ
IHNlcmllcyBhbmQgYmxvY2sgZGlhZ3JhbXMgYWdhaW4uCj4gPj4+Pgo+ID4+Pj4gUFJJIGFuZCBT
RUMgZ28gdG8gZGlmZmVyZW50IG5vZGVzIGJhc2VkIG9uIHRoZSBTb0MgZGVzaWduLCBhbmQgdGhl
cmUgYXJlIHR3byB0eXBlcyBvZiBjb25maWd1cmF0aW9uczogVVNCMy1vbmx5IGFuZCBVU0IzK0RQ
IHBhaXJpbmcuCj4gPj4+Pgo+ID4+Pj4gQmVmb3JlIHByb2NlZWQgdGhlIHYzIHBhdGNoc2V0LCBJ
4oCZZCBsaWtlIHRvIGRvdWJsZS1jb25maXJtIHdoZXRoZXIgdGhlIGZvbGxvd2luZyBzdHJ1Y3R1
cmUgaXMgd2hhdCB5b3UgZXhwZWN0Ogo+ID4+Pj4KPiA+Pj4+IHVzYl9xbXBwaHlfMTogcGh5QDg4
ZTYwMDAgewo+ID4+Pj4gwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHNtNjE1MC1xbXAtdXNi
My1wcmltLXBoeSI7IDw9PSByZW5hbWUgdG8gUFJJTQo+ID4+PiBObywgd2UgYWxyZWFkeSBoYXZl
IGEgY29tcGF0aWJsZSBuYW1lIGFuZCBEVCBzY2hlbWEgZm9yIHRoaXMgZGV2aWNlLgo+ID4+IFRo
ZW4gY3VycmVudCBjb21wYXRpYmxlIG5hbWUgaXMgInFjb20scWNzNjE1LXFtcC11c2IzLXBoeSIg
YW5kIHNoYWxsIHdlIG5lZWQgdXBkYXRlIHRvICJxY29tLHNtNjE1MC1xbXAtdXNiMy1waHkiPwo+
ID4KPiA+IFdoeT8gWW91IF9hbHJlYWR5XyBoYXZlIGEgY29tcGF0aWJsZSBzdHJpbmcuIFlvdSBk
b24ndCBuZWVkIHRvIGNoYW5nZSBpdCBqdXN0IHRvIGZvbGxvdyB0aGUgU29DIG5hbWUuwqAKPiA+
Cj4gT2ssIGJ1dCBqdXN0IHRvIGNvbmZpcm0g4oCUIGluIHRoaXMgY2FzZSwgdGhlIFVTQjMtRFAg
UEhZIHdvdWxkIHVzZSAicWNvbSxzbTYxNTAtcW1wLXVzYjMtZHAtcGh5IiB3aGlsZSB0aGUgVVNC
My1vbmx5IFBIWSBzdGlsbCB1c2VzICJxY29tLHFjczYxNS1xbXAtdXNiMy1waHkiPwo+IAo+IFNp
bmNlIGJvdGggUEhZcyBhcmUgb24gdGhlIHNhbWUgU29DLCB3b3VsZCBpdCBtYWtlIHNlbnNlIHRv
IGtlZXAgdGhlIG5hbWluZyBjb25zaXN0ZW50IGFuZCB1c2UgInFjb20scWNzNjE1LS4uLiIgZm9y
IGJvdGg/wqAKCkVpdGhlciB3YXkgaXMgZmluZSB3aXRoIG1lLgoKPiAKCi0tIApXaXRoIGJlc3Qg
d2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
