Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F1E7C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 12:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffp2X2PtC4oy44/YgQScMJXSFX6TkSpfgTM+Iv6D7WY=; b=Z8132ajmeHnt7m
	FNn/9MpRn5maypUtr3bx+aZNZRCH5Nj83+wGEhWownUmDkSuoRIBKSUSojgBF7lkjR3/tgdRcp29d
	3FY90WzOY6C6kz01mtdBgxg1CIY77czAUgtaZOJ35cDVpTsqc5a3Aw8j+DRLnFs3kI8LzIC82nH3P
	k7vmX/moyR7/om3zBrp+hR0OazT8hTpkANkyPU36JaBQ4lxxQtCKtytFLy3Cpd+L/FIP20qS+HpTP
	yfzkzeMPVd2rKzIt895R5DYiVFiOiPwaVvHeGVmvDw+7Pb8WrGjn04uNJQ2FuylxUm5d9LtdIDOIp
	svPXoUdMQakT+I3mMGJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueBmK-00000002Nab-4BYS;
	Tue, 22 Jul 2025 12:07:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueBkI-00000002NKT-065S
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 12:05:23 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M8Pwsl012733
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 12:05:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iyIbCMFrlPdmkgoKqjBfMM2i4HyJIcVeeKjewThJMrU=; b=cQ3mzrxNu4xA2qQl
	15LSXW1qN4oae5WXWOBB3WKRr0CFk0URXkVWpuv8FyM3dDfrh1enzJIjYxsz1Nw5
	C+uTK+VtUmdGuo0uI2ojVSs8csmJvW5dPwV79wAH8Sxyz3mtsXWfXiBtb2kXZjfr
	MtF83WGtuMThSBrpjkvSjGFdNbzBfz8m5s9xpQ/mzXMkcWYqKx8v+YpQ/z9manIv
	wKE0UO8Z7FDY6XTjii8KQlLk0KgjDIKRH4P2HjWEYzZWPRzuLMUdloGJRKZdUyMM
	129Et38wqLP+ex0G+B3BfAGPQFZR5sGQESMY6IorZlseTIgDAgcXjOblYigbiiJM
	uyeibQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6km04-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 12:05:20 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b3f357b7594so278474a12.2
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 05:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753185919; x=1753790719;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iyIbCMFrlPdmkgoKqjBfMM2i4HyJIcVeeKjewThJMrU=;
        b=svaazCFIVE4F7+W3pMz7Ie1RoaEOXCn+wOIeSnnDVnKeP7PCGpzYWW7iBg6WYgwqYV
         H9o9cZDWwOHfdFtNXCaK8mvdrnIwyqcD0QCi/YI3hkOsNmFVYrT7qTnqojl588iNjM+Y
         KzRssq/q482IcsEd83StiUntvTTMXy3SEe2812v92rr48Akod9iiSZfm48vGoavAfrMl
         bFoufnKoJ17MGq0Fdo3IfhqSV8f/PBIBPYBPOlgt8S6BQnvdVks8EVdSbnt/7wOLN5B/
         B4+rhqAWjCuW+QKuR0Sz9oAlQzFzdGKpNwOmn6YFyCKol2k+Uu/xqLfgSNptwM68twTi
         7SGA==
X-Forwarded-Encrypted: i=1; AJvYcCWlIq/nTUA+3zzub6zyqDte8Ud6YHmdTp2diPvF3iC0QglzOLLGNWQ6qpSF9p8epQ3XYpRrp5RC0hY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhTtH+AAdDVrGyptfFlk4Pdz9ipHyE0OjDDrTG83vPdHofVkQX
	PGXc+rUvlCz5nbw4hZpdVT9iiqr7YwBsy+OfXgvsOyBl2EX9uuTH/NhXvpjZfC9eOTAzEdGfxUe
	nZ/UjbQKv7H5r/AdHdIFmh5o8ABoVlbMNOqVbrZxckHaGhrCuT3Yo0HTMwP+HK31C3Va4
X-Gm-Gg: ASbGncshd4BI3+/fnw+OKEnfKOT4XJmTdWxcgEl1IUqFUwjKcjAy+LRf+OP/LIU7Kcx
	ojsOsmGkMBLdJ6spe87LwNeniPIOHHjzSbVPBdXHmeaJIVXJXKoEMSvhm/S/Veb5b3BbJs3eOVw
	MYI8mtN3eOgt/CAJNNKtMUi5V+1nwHAlL908heMErHkhaQ8X/Wh5P+WQDQqtA25vmN9fOhQgD3b
	cz42TFp0AHoBk7rithxfeLegzgPXCTi/StC8gYeHOFwIlM/fF3y3TjQBQnUhAGwWZeEg8IrtNjd
	VhgM5Bv7wpSATE5eNSxvfIBNwEDkuNdHZzm6RE2VRDCjw6xGc8SCRQ/4lfmgzIkj01oiOObcVXW
	A8lflvRXWlpvJgJN9tY4SwjKHMexW
X-Received: by 2002:a05:6a00:4fc9:b0:736:559f:eca9 with SMTP id d2e1a72fcca58-756e99fe5afmr14912581b3a.3.1753185917412;
        Tue, 22 Jul 2025 05:05:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoGJCKiTPaM45TrN+M/E5LCa63vjhB/iRPsOdQ17RiEy//OhqN7LQOTuKba6p+/2B4x4JuLw==
X-Received: by 2002:a05:6a00:4fc9:b0:736:559f:eca9 with SMTP id d2e1a72fcca58-756e99fe5afmr14912493b3a.3.1753185915178;
        Tue, 22 Jul 2025 05:05:15 -0700 (PDT)
Received: from [10.133.33.17] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2fe8dc8fsm6980846a12.28.2025.07.22.05.05.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 05:05:14 -0700 (PDT)
Message-ID: <e673a3a3-6924-49db-9040-e34b82199a43@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 20:05:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] dt-bindings: phy: Add binding for QCS615
 standalone QMP DP PHY
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
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
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
 <20250722-add-displayport-support-for-qcs615-platform-v2-2-42b4037171f8@oss.qualcomm.com>
 <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <jemfu5sy7k4a2iar55im5bhyhxzlrwpftmpqmps3b2tco7r6a2@oodls7gi45yy>
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687f7e80 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=Oh2cFVv5AAAA:8 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=cRT8ne84DSJdP7yTid4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22 a=7KeoIwV6GZqOttXkcoxL:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: HzBIrRn3OuVqPL9Q3Dp0qq1kTtP31YgV
X-Proofpoint-GUID: HzBIrRn3OuVqPL9Q3Dp0qq1kTtP31YgV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA5OCBTYWx0ZWRfX9+xgHETcdaOH
 mqqJPSDjVo69Va09MBTfHxkJI2981WMY3S3TGD0V+EmP15R3XeMH28q9tZE+PT7lznamkm/mA34
 huJtcidbsc0oENbLEGes+FWYLxE2+HO7wBpRVFQ0TrMXOh7M5dGD/xgdOAWWME9qQzhBg7VPVQ+
 ol5hyPYlSnXfw6Vrt3Y/Ga1gvq/gvv9kFaKE/Lc4r6jTQ77jHjJ3vqhn8jNm7Qy5GTteFfWeWY5
 Vcg9gajNvfokwrL4hp5IxaiR5ik+hU/MtMTiK4sG83fhmrgbzVa6FUsGg7D25ylb21vkDJjz2Bh
 oJBUXwFGQgLvYkIpM7coYf1wkApdmjJ5kx3Z5JltxiA6il1qY55tWZKyk94xIqB5TsyUf399j0V
 FSSWAuJCN7sN1NZWJnFaTW+rxAwxMSDcSkLctMHimKLpxNx0+X0nnChGM/StWYb2UznnLR3V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_050522_174681_4C139B0C 
X-CRM114-Status: GOOD (  41.95  )
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

Ck9uIDcvMjIvMjAyNSA0OjM4IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFR1ZSwg
SnVsIDIyLCAyMDI1IGF0IDAzOjIyOjAzUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBJ
bnRyb2R1Y2UgZGV2aWNlIHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgUXVhbGNv
bW0gUU1QIERQIFBIWQo+PiBvbiBRQ1M2MTUgU29Dcy4gVGhpcyBQSFkgc3VwcG9ydHMgRGlzcGxh
eVBvcnQgZnVuY3Rpb25hbGl0eSBhbmQgaXMKPj4gZGVzaWduZWQgdG8gb3BlcmF0ZSBpbmRlcGVu
ZGVudGx5IGZyb20gdGhlIFVTQjMgUEhZLgo+Pgo+PiBVbmxpa2UgY29tYm8gUEhZcyBmb3VuZCBv
biBvdGhlciBwbGF0Zm9ybXMsIHRoZSBRQ1M2MTUgRFAgUEhZIGlzCj4+IHN0YW5kYWxvbmUgYW5k
IGRvZXMgbm90IHN1cHBvcnQgVVNCL0RQIG11bHRpcGxleGluZy4gVGhlIGJpbmRpbmcKPj4gZGVz
Y3JpYmVzIHRoZSByZXF1aXJlZCBjbG9ja3MsIHJlc2V0cywgVENTUiBjb25maWd1cmF0aW9uLCBh
bmQgY2xvY2svUEhZCj4+IGNlbGxzIGZvciBwcm9wZXIgaW50ZWdyYXRpb24uCj4gU2ltcGx5IHB1
dDogbm8sIHRoaXMgaXMgbm90IGNvcnJlY3QuIEV2ZW4gaWYgeW91IGdvIHRvIHRoZSBTTTYxNTAg
YmxvY2sKPiBkaWFncmFtLCBpdCBwb2ludHMgb3V0IHRoYXQgRFAgdXNlcyB0aGUgVVNCMyBQSFks
IG5vdCBhIHNlcGFyYXRlIERQIFBIWS4KPgo+IEkgdGhvdWdodCB0aGF0IHdlIGhhdmUgZGlzY3Vz
c2VkIGl0IGJlZm9yZWhhbmQuCj4KPiBJIGNhbiBxdW90ZSBteSBjb21tZW50IGZyb20gdGhlIHBy
ZXZpb3VzIHRocmVhZDoKPgo+Pj4gTm8uIEl0IG1lYW5zIHJlcGxhY2luZyBleHRlbmRpbmcgZXhp
c3RpbmcgZW50cmllcyB3aXRoIGJpZ2dlciByZWcgYW5kCj4+PiAjcGh5LWNlbGxzID0gPDE+LiBU
aGUgZHJpdmVyIG11c3Qga2VlcCB3b3JraW5nIHdpdGggb2xkIG5vZGUgZGVmaW5pdGlvbnMKPj4+
IGFzIGlzIHRvIGVuc3VyZSBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eS4gTmV3IG5vZGVzIHNob3Vs
ZCBtYWtlIGl0Cj4+PiByZWdpc3RlciB0d28gUEhZcyAoVVNCMyBhbmQgRFApLiBPbiB0aGUgZHJp
dmVyIHNpZGUgbW9kaWZ5IGdlbmVyaWMgY29kZQo+Pj4gcGF0aHMsIGFsbCBwbGF0Zm9ybXMgc3Vw
cG9ydGVkIGJ5IHRoZSBkcml2ZXIgc2hvdWxkIGJlIGFibGUgdG8gc3VwcG9ydAo+Pj4gVVNCMytE
UCBjb21iaW5hdGlvbi4KPiBMb29raW5nIGF0IHRoZSBoYXJkd2FyZSBtZW1vcnkgbWFwczoKPgo+
IE1TTTg5OTg6IFVTQjMgUEhZIHJlZ3MgYXQgMHhjMDEwMDAwLCBEUCBQSFkgcmVncyBhdCAweGMw
MTEwMDAKPiBTRE02NjA6IFVTQjMgUEhZIHJlZ3MgYXQgMHhjMDEwMDAwLCBEUCBQSFkgcmVncyBh
dCAweGMwMTEwMDAKPiBRQ00yMjkwOiBVU0IzIFBIWSByZWdzIGF0IDB4MTYxNTAwMCwgRFAgUEhZ
IHJlZ3MgYXQgMHgxNjE2MDAwCj4gU002MTE1OiBVU0IzIFBIWSByZWdzIGF0IDB4MTYxNTAwMCwg
RFAgUEhZIHJlZ3MgYXQgMHgxNjE2MDAwCj4KPiBOb3c6Cj4gU002MTUwOiBVU0IzIFBIWSByZWdz
IGF0IDB4ODhlNjAwMAo+ICAgICAgICAgVVNCMyBQSFkgcmVncyBhdCAweDg4ZTgwMDAsIERQIFBI
WSByZWdzIGF0IDB4ODhlOTAwMAo+Cj4gSSBkbyBub3Qga25vdywgd2h5IG1zbS00LjE0IGRpZG4n
dCBkZXNjcmliZSBzZWNvbmQgVVNCMyBQSFkuIE1heWJlIHlvdQo+IGNhbiBjb21tZW50IG9uIGl0
Lgo+Cj4gQnV0IGJhc2VkIG9uIHRoYXQgbGlzdCwgdGhlIG9ubHkgc3BlY2lhbCBjYXNlIHRoYXQg
d2UgbmVlZCB0byBoYW5kbGUgaXMKPiB0aGUgZmlyc3QgVVNCMyBQSFksIHdoaWNoIGRvZXNuJ3Qg
aGF2ZSBhIGNvcnJlc3BvbmRpbmcgRFAgUEhZIGJsb2NrLiBCdXQKPiBpdCB3aWxsIGJlIGhhbmRs
ZWQgYW55d2F5IGJ5IHRoZSBjb2RlIHRoYXQgaW1wbGVtZW50cyBzdXBwb3J0IGZvciB0aGUKPiBl
eGlzdGluZyBEVCBlbnRyaWVzLiBBbGwgb3RoZXIgaGFyZHdhcmUgYmxvY2tzIGFyZSBjb21ibyBV
U0IrRFAgUEhZcy4KPgo+IEhhdmluZyBhbGwgb2YgdGhhdCBpbiBtaW5kLCBwbGVhc2UsIGZvciB2
MyBwYXRjaHNldCBpbXBsZW1lbnQgVVNCK0RQCj4gc3VwcG9ydCBpbiB0aGUgcGh5LXFjb20tcW1w
LXVzYmMgZHJpdmVyIGFuZCBhZGQgdGhlIGZvbGxvd2luZyBsb2dpYwo+IHRoYXQgYWxzbyB3YXMg
cmVxdWVzdGVkIGluIHYxIHJldmlldzoKPgo+Pj4gTm90IHF1aXRlLiBCb3RoIFVTQjMgYW5kIERQ
IGRyaXZlcnMgc2hvdWxkIGJlIGNhbGxpbmcgcG93ZXJfb24gLyBfb2ZmLgo+Pj4gSWYgVVNCMyBp
cyBvbiwgcG93ZXJpbmcgb24gRFAgUEhZIHNob3VsZCBmYWlsLiBWaWNlIHZlcnNhLCBpZiBEUCBp
cyBvbiwKPj4+IHBvd2VyaW5nIG9uIFVTQiBzaG91bGQgZmFpbC4KPiBJIHRoaW5rIG91ciB1bmRl
cnN0YW5kaW5nIG1pZ2h0IG5vdCBiZSBmdWxseSBhbGlnbmVkLiAKPiBQZXJoYXBzIHRoaXMgaXMg
YmVjYXVzZSBJIGRpZG7igJl0IGFjY3VyYXRlbHkgdXBkYXRlIHRoZSBtdXR1YWwgZXhjbHVzaW9u
IHJlbGF0aW9uc2hpcHMgYW5kIHRlc3QgcmVzdWx0cyBmb3IgdGhlIGRpZmZlcmVudCBQSFlzLiAK
PiBMZXQgbWUgY2xhcmlmeSBteSBsYXRlc3QgZmluZGluZ3MgYW5kIGV4cGxhaW4gd2h5IEkgYmVs
aWV2ZSB0aGVzZSBhcmUgc2VwYXJhdGUgUEhZcyB0aGF0IHJlcXVpcmUgbXV0dWFsIGV4Y2x1c2lv
biB2aWEgVENTUi4KPgo+IDEuIEFib3V0IHRoZSBUQ1NSIERQX1BIWU1PREUgUmVnaXN0ZXJzCj4K
PiBNU004OTk4L1NETTY2MDoKPiAJT25seSBvbmUgVENTUl9VU0IzX0RQX1BIWU1PREUgcmVnaXN0
ZXIgYXQgMHgxRkNCMjQ4Lgo+IFFDTTIyOTAvU002MTE1Ogo+IAlUQ1NSX1VTQjNfMF9EUF9QSFlN
T0RFIGF0IDB4M0NCMjQ4Cj4gCVRDU1JfVVNCM18xX0RQX1BIWU1PREUgYXQgMHgzQ0IyNEMKPiBT
TTYxNTA6Cj4gCVRDU1JfVVNCM18wX0RQX1BIWU1PREUgYXQgMHgxRkNCMjQ4Cj4gCVRDU1JfVVNC
M18xX0RQX1BIWU1PREUgYXQgMHgxRkNCMjRDCj4gRXZlbiB0aG91Z2ggTVNNODk5OCwgU0RNNjYw
LCBRQ00yMjkwLCBhbmQgU002MTE1IGFsbCBoYXZlIG9uZSBVU0IzIFBIWSBhbmQgb25lIERQIFBI
WSwgdGhlIFRDU1IgRFBfUEhZTU9ERSByZWdpc3RlciBjb25maWd1cmF0aW9uIGlzIGRpZmZlcmVu
dCBvbiBlYWNoIHBsYXRmb3JtLgo+Cj4gQWRkaXRpb25hbGx5LCBJIGZvdW5kIHNvbWUgaW50ZXJl
c3RpbmcgcmVnaXN0ZXIgZG9jdW1lbnRhdGlvbiBmb3IgUUNNMjI5MC9TTTYxMTU6Cj4gCVRDU1Jf
VVNCM18wX0RQX1BIWU1PREU6IOKAnEluIGthbW9ydGEgdGhpcyBvbmUgaXMgZm9yIG1vYmlsZSB1
c2IuIERQIG5vdCBzdXBwb3J0ZWQu4oCdCj4gCVRDU1JfVVNCM18xX0RQX1BIWU1PREU6IOKAnERQ
IG1vZGUgc3VwcG9ydGVkIGZvciBBdXRvIHVzYiBpbiBrYW1vcnRhLuKAnQo+IEkgdGhpbmsgdGhl
IHJlYXNvbiBmb3IgaGF2aW5nIHR3byBkaWZmZXJlbnQgVENTUiByZWdpc3RlcnMgaXMgdG8gYWxs
b3cgYm90aCB0aGUgVVNCMy4wIGFuZCBEUCBQSFlzIHRvIGJlIHVzZWRzIGF0IHRoZSBzYW1lIHRp
bWUgaW4gY2VydGFpbiBwcm9kdWN0IGNvbmZpZ3VyYXRpb25zLgo+Cj4gMi4gU002MTUwIFRlc3Qg
UmVzdWx0cwo+IFdoZW4gVENTUl9EUF9QSFlNT0RFXzAgaXMgc3dpdGNoZWQgdG8gRFAsIHRoZSBV
U0IzIHByaW1hcnkgUEhZIGNhbm5vdCB3b3JrLCBhbmQgdGhlIERQIFBIWSBpcyBhbHNvIG5vdCBm
dW5jdGlvbmFsIChwb3NzaWJseSBkdWUgdG8gY2xvY2sgbGFjayBvciBvdGhlciBjb25maWd1cmF0
aW9uIG1pc21hdGNoIHdpdGggdGhpcyBUQ1NSIHNldHRpbmcpLgo+IFdoZW4gVENTUl9EUF9QSFlN
T0RFXzEgaXMgc3dpdGNoZWQgdG8gRFAsIGJvdGggdGhlIFVTQjMgcHJpbWFyeSBQSFkgYW5kIHRo
ZSBEUCBQSFkgd29yayBub3JtYWxseS4KPiBJIHRoaW5rICJ3aHkgbXNtLTQuMTQgZGlkbid0IGRl
c2NyaWJlIHNlY29uZCBVU0IzIFBIWSIsIGJlY2F1c2UgVENTUl9EUF9QSFlNT0RFXzEgYWx3YXlz
IHdvcmtzIGluIERQIG1vZGUuCj4gaHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2Vy
bmVsL21zbS8rL2FmMDNlZWY3ZDRjM2NiZDFmZTI2YzY3ZDRmMTkxNWIwNWQwYzE0ODgvZHJpdmVy
cy9ncHUvZHJtL21zbS9kcC9kcF9jYXRhbG9nX3YyMDAuYwo+Cj4gQmFzZWQgb24gdGhlc2UgaW5m
bywgSSBiZWxpZXZlIHRoZXNlIGFyZSBzZXBhcmF0ZSBQSFlzLCBhbmQgb25seSB0aGUgVENTUiBE
UF9QSFlNT0RFIHJlZ2lzdGVycyBkZXRlcm1pbmUgd2hpY2ggVVNCMy9EUCBQSFlzIGFyZSBwYWly
ZWQgb3IgbXV0dWFsbHkgZXhjbHVzaXZlLiBUaGlzIGlzIHdoeSBJIGhhdmUgbWFpbnRhaW5lZCBz
ZXBhcmF0ZSBwcml2YXRlIGRhdGEgZm9yIGVhY2ggUEhZIGFuZCBpbXBsZW1lbnRlZCBQb3dlciBv
biBtdXRleCBjb250cm9sIHZpYSBUQ1NSLCByYXRoZXIgdGhhbiB1c2luZyBhIHFtcF9jb21iby1s
aWtlIHN0cnVjdHVyZS4KPgo+IEdpdmVuIHRoZSBhYm92ZSwgZG8geW91IHRoaW5rIHdlIHN0aWxs
IG5lZWQgdG8gZm9yY2UgVVNCIGFuZCBEUCB0byBiZSBzdHJpY3RseSBib3VuZCB0b2dldGhlciBs
aWtlIGEgY29tYm8gUEhZPwo+Cj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4aWFuZ3h1
LnlpbkBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxx
Y3M2MTUtcW1wLWRwLXBoeS55YW1sICAgICAgIHwgMTExICsrKysrKysrKysrKysrKysrKysrKwo+
PiAgMSBmaWxlIGNoYW5nZWQsIDExMSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC1kcC1w
aHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxxY3M2
MTUtcW1wLWRwLXBoeS55YW1sCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAuLjE3ZTM3YzFkZjdiNjFkYzJmN2Fh
MzVlZTEwNmZkOTRlZTI4MjljNWYKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbAo+
PiBAQCAtMCwwICsxLDExMSBAQAo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0y
LjAgT1IgQlNELTItQ2xhdXNlKQo+PiArJVlBTUwgMS4yCj4+ICstLS0KPj4gKyRpZDogaHR0cDov
L2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L3Fjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCMK
Pj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1s
Iwo+PiArCj4+ICt0aXRsZTogUXVhbGNvbW0gUU1QIFBIWSBjb250cm9sbGVyIChEUCwgUUNTNjE1
KQo+PiArCj4+ICttYWludGFpbmVyczoKPj4gKyAgLSBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwu
b3JnPgo+PiArCj4+ICtkZXNjcmlwdGlvbjoKPj4gKyAgVGhlIFFNUCBEUCBQSFkgY29udHJvbGxl
ciBzdXBwb3J0cyBEaXNwbGF5UG9ydCBwaHlzaWNhbCBsYXllciBmdW5jdGlvbmFsaXR5Cj4+ICsg
IG9uIFF1YWxjb21tIFFDUzYxNSBTb0NzLiBUaGlzIFBIWSBpcyBpbmRlcGVuZGVudCBmcm9tIFVT
QjMgUEhZIGFuZCBkb2VzIG5vdAo+PiArICBzdXBwb3J0IGNvbWJvIG1vZGUuCj4+ICsKPj4gK3By
b3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAgZW51bToKPj4gKyAgICAgIC0gcWNv
bSxxY3M2MTUtcW1wLWRwLXBoeQo+PiArCj4+ICsgIHJlZzoKPj4gKyAgICBtYXhJdGVtczogNAo+
PiArCj4+ICsgIGNsb2NrczoKPj4gKyAgICBtYXhJdGVtczogMgo+PiArCj4+ICsgIGNsb2NrLW5h
bWVzOgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBjb25zdDogY2ZnX2FoYgo+PiArICAgICAg
LSBjb25zdDogcmVmCj4+ICsKPj4gKyAgY2xvY2stb3V0cHV0LW5hbWVzOgo+PiArICAgIG1heEl0
ZW1zOiAyCj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBOYW1lcyBvZiB0aGUgY2xvY2tz
IHByb3ZpZGVkIGJ5IHRoZSBQSFkuCj4+ICsKPj4gKyAgcWNvbSx0Y3NyLXJlZzoKPj4gKyAgICAk
cmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlLWFycmF5Cj4+ICsg
ICAgaXRlbXM6Cj4+ICsgICAgICAtIGl0ZW1zOgo+PiArICAgICAgICAgIC0gZGVzY3JpcHRpb246
IHBoYW5kbGUgdG8gVENTUiBoYXJkd2FyZSBibG9jawo+PiArICAgICAgICAgIC0gZGVzY3JpcHRp
b246IG9mZnNldCBvZiB0aGUgRFAgUEhZIG1vb2RlIHJlZ2lzdGVyCj4+ICsgICAgZGVzY3JpcHRp
b246Cj4+ICsgICAgICBEUCBQSFkgbW9vZGUgcmVnaXN0ZXIgcHJlc2VudCBpbiB0aGUgVENTUgo+
PiArCj4+ICsgIHJlc2V0czoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgIHJlc2V0LW5h
bWVzOgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBjb25zdDogcGh5Cj4+ICsKPj4gKyAgdmRk
YS1waHktc3VwcGx5OiB0cnVlCj4+ICsKPj4gKyAgdmRkYS1wbGwtc3VwcGx5OiB0cnVlCj4+ICsK
Pj4gKyAgIiNjbG9jay1jZWxscyI6Cj4+ICsgICAgY29uc3Q6IDEKPj4gKyAgICBkZXNjcmlwdGlv
bjoKPj4gKyAgICAgIFNlZSBpbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHktcWNvbS1xbXAuaAo+
PiArCj4+ICsgICIjcGh5LWNlbGxzIjoKPj4gKyAgICBjb25zdDogMQo+PiArICAgIGRlc2NyaXB0
aW9uOgo+PiArICAgICAgU2VlIGluY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS1xY29tLXFtcC5o
Cj4+ICsKPj4gK3JlcXVpcmVkOgo+PiArICAtIGNvbXBhdGlibGUKPj4gKyAgLSByZWcKPj4gKyAg
LSBjbG9ja3MKPj4gKyAgLSBjbG9jay1uYW1lcwo+PiArICAtIGNsb2NrLW91dHB1dC1uYW1lcwo+
PiArICAtIHFjb20sdGNzci1yZWcKPj4gKyAgLSByZXNldHMKPj4gKyAgLSByZXNldC1uYW1lcwo+
PiArICAtIHZkZGEtcGh5LXN1cHBseQo+PiArICAtIHZkZGEtcGxsLXN1cHBseQo+PiArICAtICIj
Y2xvY2stY2VsbHMiCj4+ICsgIC0gIiNwaHktY2VsbHMiCj4+ICsKPj4gK2FkZGl0aW9uYWxQcm9w
ZXJ0aWVzOiBmYWxzZQo+PiArCj4+ICtleGFtcGxlczoKPj4gKyAgLSB8Cj4+ICsgICAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3Fjb20scWNzNjE1LWdjYy5oPgo+PiArICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9jbG9jay9xY29tLHJwbWguaD4KPj4gKwo+PiArICAgIHBoeUA4OGU5MDAw
IHsKPj4gKyAgICAgIGNvbXBhdGlibGUgPSAicWNvbSxxY3M2MTUtcW1wLWRwLXBoeSI7Cj4+ICsg
ICAgICByZWcgPSA8MHgwODhlOTAwMCAweDIwMD4sCj4+ICsgICAgICAgICAgICA8MHgwODhlOTQw
MCAweDEwYz4sCj4+ICsgICAgICAgICAgICA8MHgwODhlOTgwMCAweDEwYz4sCj4+ICsgICAgICAg
ICAgICA8MHgwODhlOWMwMCAweDIwMD47Cj4+ICsKPj4gKyAgICAgIGNsb2NrcyA9IDwmZ2NjIEdD
Q19BSEIyUEhZX1dFU1RfQ0xLPiwKPj4gKyAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19VU0IzX1NF
Q19DTEtSRUZfQ0xLPjsKPj4gKyAgICAgIGNsb2NrLW5hbWVzID0gImNmZ19haGIiLCAicmVmIjsK
Pj4gKyAgICAgIGNsb2NrLW91dHB1dC1uYW1lcyA9ICJkcF9waHlfbGlua19jbGsiLCAiZHBfcGh5
X3Zjb19kaXZfY2xrIjsKPj4gKwo+PiArICAgICAgcWNvbSx0Y3NyLXJlZyA9IDwmdGNzciAweGIy
NGM+Owo+PiArCj4+ICsgICAgICByZXNldHMgPSA8JmdjYyBHQ0NfVVNCM19EUF9QSFlfU0VDX0JD
Uj47Cj4+ICsgICAgICByZXNldC1uYW1lcyA9ICJwaHkiOwo+PiArCj4+ICsgICAgICB2ZGRhLXBo
eS1zdXBwbHkgPSA8JnZyZWdfbDExYT47Cj4+ICsgICAgICB2ZGRhLXBsbC1zdXBwbHkgPSA8JnZy
ZWdfbDVhPjsKPj4gKwo+PiArICAgICAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+PiArICAgICAgI3Bo
eS1jZWxscyA9IDwxPjsKPj4gKyAgICB9Owo+Pgo+PiAtLSAKPj4gMi4zNC4xCj4+CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
