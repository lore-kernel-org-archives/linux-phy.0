Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA8FCAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7X5/RGzDTCANmTi4rI8ObqImscFviQ3qiA8zB5ZhThI=; b=YJaS3vzwms6iYx
	L05HarrGWEIzIMp2e1EP0hUhABAnnoEaAaDnNzSfNdAjGyN+dITCNkj5LA7gJVQdNYDuCokouI4Vo
	1OcXGZkzKmFcWBJyp++QdZkVTibIb+8RsWw+muVXMQgoZXWgaXkg3ofZxZNza9uf88RQKHjs02VzJ
	xFxy0demrIF+otyJvroTOAWr5d5/pmv1UJfKmSubbhy6qn+WDfIFMpEhkjmYURcGIJLNyFotbU8vN
	/h2gjonLxJ0Cn7aU6AGdmQHeLNxMyu3iJagKvgeFZ3tQQWaPgv0YKY+kyB3gF4lMe977ce/n7e0J8
	ttBOQH8gXsOT3puhWrtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0eif-0000000ACNf-1KE4;
	Mon, 22 Sep 2025 11:28:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0eib-0000000ACLd-3Pn6
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 11:28:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M91dVl017962
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 11:28:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vhPS2DpVO5rMmjT/67K3Kgtn22q0loN6kh/+0Y18da0=; b=n1nb9aYOq3EyHaOj
	c4UBjNTgHUM9vgFrThXaqHS1hfPu1iMbOUHCh6iKl/L1F1Zcaea+R2gwTtejObuc
	SOY3KNd1R+57NuGeHMOfpZ9wsghm0SlG05acoIW55/VOhHnL/SLGyOa4VOTv2/ac
	7HBMVoFFCaO7kvHLd2mLRdLYF2AJbRlpUA5L9VYsKJD9Zk5dbm1ORIDPBah/zBZq
	Dx6AJ3pO1SPme64NP9ZSHL9314yOKJW5pBmmiZuthVX6xzJRcTIorD9Z6uGcvH/t
	zu9TTWsxcV33O4NULgx1A9R5fFDtfujo1aS6CsNhVnOYA5uo/Uyy9uMmRtM4pUxI
	fM7q5w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv0vj26-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 11:28:28 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-245fbdc2546so9161105ad.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 04:28:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758540507; x=1759145307;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vhPS2DpVO5rMmjT/67K3Kgtn22q0loN6kh/+0Y18da0=;
        b=NKh9PqtdLp4nAt3h4RZfIwhTvkYWWZvM7Z8sZeu7FDpYF6tx9nJ2XFnv/md7sNK2Rp
         ozMofo6GkkdWoSa4bcuNa1pmGvVkh8+0Z9zFqTlH1pEK9OmX1ljAshGCL0HKy6nQCIzQ
         Xetb0LTECO8F2GIr44kMQE0RsuYdSsbOs10cqJG3dqdQ2kCYRSQug+z2OQBo+hNWmecN
         zjT6DX3gBpXSqc5EwaxiubzNKKCz5HT+5PjTLvHgSdxVQdr2zsSGQC2qi021mdqnOjsU
         aGf5SNyqaItdnBLWB83u6K1L8RLCWTATMUC27H1Qv9Iwp0hCKP0YymrSnpPaL1I/YGl4
         U0Ig==
X-Forwarded-Encrypted: i=1; AJvYcCUyMFJalCAbOB/JHaagL+2DREOI+isZsj5XQ+Hkrvqxvm2AnEZa4bB9Qr/PqNkgHuD6wavPMkOhx3A=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWmEiSdm4jXXdUDnplZhagtiO0UNP+SHn9xRiook6rdAeRusFJ
	nNEKGVCUmOsh85KUUs/oaKmpWe3oNqVec9pojIURQ3i1n5c70oo7MxQmeVieD7NhNu9ZGmoEYg6
	2RTW/JyWdBFcs7YAbS1rNpYUYSGFbZRX7zVEPk97Xy5R1LczDWNk04p7vgDu1/pZTllf1
X-Gm-Gg: ASbGncuCpYwA6FwrO+Z4dY3I9kAwKaeGB74IsIuW8/lzl9qjo2ueKH//Tu6nAPKVs+S
	R2Hrkdsr+AEhORDMfpMcjbwgeQt4ItfgqUIxaSAvcHIkxA6dct+ojBeFKnZZrxCQLrPCjFXn5CH
	LkvO1qOyOpy+JN67wfOnhTIHRdOVM6U0VDDtsjtk3jSPK5OoPxGmdG+Ta5YUxzuuwidrx1fO5K4
	jfKggBPji9Ue0+xleUOkSmlX8KZsv0X+E+VC3TYdz1c76q9DkCLWYauOYRlDjnDWTrGKTA9gCty
	/c0kjJ+9PgNBFxzuQzMWAe32iAbwQW8MOjGzT33qgA4Ta4OEp/Lvg+tiwr3QvowQv1FOE8JtVq2
	E7bRiMMIi46qI7w/Na3ReOYiz0+t0W7KoLsg=
X-Received: by 2002:a17:902:e751:b0:27a:186f:53ec with SMTP id d9443c01a7336-27a186f5486mr11582505ad.9.1758540506949;
        Mon, 22 Sep 2025 04:28:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbTTlEoreUEOX6AkaJ7bnWs6eRBLiaiABm7kGf/pBZ+bhPDPXyhXj4EX3Eva+nVibdWRmp5A==
X-Received: by 2002:a17:902:e751:b0:27a:186f:53ec with SMTP id d9443c01a7336-27a186f5486mr11582105ad.9.1758540506290;
        Mon, 22 Sep 2025 04:28:26 -0700 (PDT)
Received: from [10.133.33.111] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3306061925esm13230568a91.2.2025.09.22.04.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 04:28:25 -0700 (PDT)
Message-ID: <28eef277-c778-4ffe-94c6-2e90d58633de@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:28:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
 <bfpgktxgo2hb6dpzy3i7jdr6w4de5boorx4n6qeapct2vre4sn@4z2mnppridn5>
 <14cdf3a4-714c-4136-8c1d-99392e7911f5@oss.qualcomm.com>
 <2ewxoe76rrii4w3n5b6wl32vmatcp2boj75o65cuq5nx4f2a55@7cn6m7oxzu6c>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <2ewxoe76rrii4w3n5b6wl32vmatcp2boj75o65cuq5nx4f2a55@7cn6m7oxzu6c>
X-Proofpoint-GUID: i5v0Y48NQz2dd_gHr5dOyKcCR3Mglr6e
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d132dc cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=XVeZa78dugChcG7OFuEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfXyEMCSHx0x+s9
 ddae7yAd+T0B+QDiTxExmiWuFpgQR9ZrhR0PPSuvzM1Kvi7iYDVhEQyn9ML26+gPIJCQ9dbZKWj
 K8SEt//YE5RyLazk2MhXWI4libCrzUMX+kCS2gWMKSv2hUVWtdmyT2LFxpNrE51uJ/Gxn9bDbzz
 ZRiFFK7Ictg/RWono/+xqyF2tCFpc3DKYovokXAAUrWbuAHzLkLHKOMW1Ogbnn93MYYaUzkS8D1
 AWaSnsedWfBonhFV+kV97yXOBWm79caBBFICL9JcmRASYa5iqNTYTjWMNwby1/ko9Gs9mzp41TZ
 bsVyCog42F8rRE/Hu29BwCU8xGunomXRabmQC9KStGEjVQ0uzQJLuADT9di71oi7VNzzBbuHKPh
 Q8jHVv/Z
X-Proofpoint-ORIG-GUID: i5v0Y48NQz2dd_gHr5dOyKcCR3Mglr6e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_042829_964903_632C132B 
X-CRM114-Status: GOOD (  25.66  )
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

Ck9uIDkvMjIvMjAyNSA1OjQ1IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwg
U2VwIDIyLCAyMDI1IGF0IDAyOjU4OjE3UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBP
biA5LzIwLzIwMjUgMjo0MSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+IE9uIEZyaSwg
U2VwIDE5LCAyMDI1IGF0IDEwOjI0OjI5UE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+Pj4+
IEFkZCBRQ1M2MTUtc3BlY2lmaWMgY29uZmlndXJhdGlvbiBmb3IgVVNCL0RQIFBIWSwgaW5jbHVk
aW5nIERQIGluaXQKPj4+PiByb3V0aW5lcywgdm9sdGFnZSBzd2luZyB0YWJsZXMsIGFuZCBwbGF0
Zm9ybSBkYXRhLiBBZGQgY29tcGF0aWJsZQo+Pj4+ICJxY3M2MTUtcW1wLXVzYjMtZHAtcGh5Ii4K
Pj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVh
bGNvbW0uY29tPgo+Pj4+IC0tLQo+Pj4+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAtdXNiYy5jIHwgMzk1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+PiAgMSBm
aWxlIGNoYW5nZWQsIDM5NSBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiArCj4+Pj4gKwl3cml0ZWwo
MHgzZiwgcW1wLT5kcF90eCArIFFTRVJERVNfVjJfVFhfVFJBTlNDRUlWRVJfQklBU19FTik7Cj4+
Pj4gKwl3cml0ZWwoMHgxMCwgcW1wLT5kcF90eCArIFFTRVJERVNfVjJfVFhfSElHSFpfRFJWUl9F
Tik7Cj4+Pj4gKwl3cml0ZWwoMHgwYSwgcW1wLT5kcF90eCArIFFTRVJERVNfVjJfVFhfVFhfUE9M
X0lOVik7Cj4+Pj4gKwl3cml0ZWwoMHgzZiwgcW1wLT5kcF90eDIgKyBRU0VSREVTX1YyX1RYX1RS
QU5TQ0VJVkVSX0JJQVNfRU4pOwo+Pj4+ICsJd3JpdGVsKDB4MTAsIHFtcC0+ZHBfdHgyICsgUVNF
UkRFU19WMl9UWF9ISUdIWl9EUlZSX0VOKTsKPj4+PiArCXdyaXRlbCgweDBhLCBxbXAtPmRwX3R4
MiArIFFTRVJERVNfVjJfVFhfVFhfUE9MX0lOVik7Cj4+PiBBcmUgeW91IHN1cmUgdGhhdCB0aGVz
ZSBkb24ndCBuZWVkIHRvIGJlIGFkanVzdGVkIGJhc2VkIG9uCj4+PiBxbXAtPm9yaWVudGF0aW9u
IG9yIHNlbGVjdGVkIGxhbmVzIGNvdW50Pwo+Pj4KPj4+IEluIGZhY3QuLi4gSSBkb24ndCBzZWUg
b3JpZW50YXRpb24gaGFuZGxpbmcgZm9yIERQIGF0IGFsbC4gRG9uJ3Qgd2UgbmVlZAo+Pj4gaXQ/
Cj4+Cj4+IFRoYW5rcyBmb3IgdGhlIHJldmlldy4KPj4KPj4gSSBhZ3JlZSB3aXRoIHlvdXIgcmVh
c29uaW5nIGFuZCBjb21wYXJlZCB0YWxvcyAxNG5tIEhQRyB3aXRoIGhhbmEva29uYQo+PiA3bm0g
UEhZIEhQRzsgdGhlIDdubSBDT01CTyBQSFkgc2VyaWVzIGhhcyBvcmllbnRhdGlvbi9sYW5lLWNv
dW50IGRlcGVuZGVudAo+PiBjb25maWdzLCBidXQgdGhlIDE0bm0gUEhZIHNlcmllcyBkb2VzIG5v
dC4gT24gUUNTNjE1ICh0YWxvcyksIHRoZSBUWF8qCj4+IHJlZ2lzdGVycyB5b3UgcG9pbnRlZCB0
byBhcmUgcHJvZ3JhbW1lZCB3aXRoIGNvbnN0YW50IHZhbHVlcyByZWdhcmRsZXNzCj4+IG9mIG9y
aWVudGF0aW9uIG9yIGxhbmUgY291bnQuIFRoaXMgaGFzIGJlZW4gY29uZmlybWVkIGZyb20gYm90
aCB0aGUgSFBHCj4+IGFuZCB0aGUgZG93bnN0cmVhbSByZWZlcmVuY2UgZHJpdmVyLgo+IFRoYW5r
cyBmb3IgdGhlIGNvbmZpcm1hdGlvbi4KPgo+PiBGb3Igb3JpZW50YXRpb24sIGZyb20gcmVmZXJl
bmNlIHRoZSBvbmx5IGRpZmZlcmVuY2UgaXMgRFBfUEhZX01PREUsIHdoaWNoCj4+IGlzIHNldCBi
eSBxbXBfdXNiY19jb25maWd1cmVfZHBfbW9kZSgpLiBUaGUgRFAgUEhZIGRvZXMgaGF2ZSBhbgo+
PiBTV19QT1JUU0VMRUNULXJlbGF0ZWQgcmVnaXN0ZXIsIGJ1dCBkdWUgdG8gdGFsb3MgbGFuZSBt
YXBwaW5nIGZyb20gdGhlCj4+IERQIGNvbnRyb2xsZXIgdG8gdGhlIFBIWSBub3QgYmVpbmcgdGhl
IHN0YW5kYXJkIDwwIDEgMiAzPiBzZXF1ZW5jZSwgaXQKPj4gY2Fubm90IHJlbGlhYmx5IGhhbmRs
ZSBvcmllbnRhdGlvbiBmbGlwLiBBbHNvLCBRQ1M2MTUgaXMgYSBmaXhlZC0KPj4gb3JpZW50YXRp
b24gcGxhdGZvcm0gKG5vdCBEUC1vdmVyLVR5cGVDKSwgc28gdGhlcmUgaXMgbm8gdmFsaWRhdGVk
IGhhcmR3YXJlCj4+IHBhdGggZm9yIG9yaWVudGF0aW9uIGZsaXAgb24gdGhpcyBwbGF0Zm9ybS4K
PiBXYWl0Li4uIEkgdGhvdWdodCB0aGF0IHRoZSB0aGUgbm9uLXN0YW5kYXJkIGxhbmUgb3JkZXIg
aXMgaGFuZGxlZCBieSB0aGUKPiBEUCBkcml2ZXIsIHRoZW4gd2Ugc2hvdWxkIGJlIGFibGUgdG8g
aGFuZGxlIHRoZSBvcmllbnRhdGlvbiBpbnNpZGUgUEhZCj4gZHJpdmVyIGFzIHVzdWFsLgoKClll
cywgSSBoYXZlIGNvbmZpcm1lZCB0aGlzIHdpdGggb3VyIHZlcmlmaWNhdGlvbiB0ZWFtLgoKRm9y
IHRoZSBub24tc3RhbmRhcmQgbGFuZSBvcmRlciwgaGFuZGxpbmcgZmxpcCByZXF1aXJlcyBzd2Fw
cGluZyBtYXBwZWTCoApsYW5lIDAg4oaUIGxhbmUgMyBhbmQgbGFuZSAxIOKGlCBsYW5lIDIgaW4g
dGhlIGxvZ2ljYWwycGh5c2ljYWwgbWFwcGluZy4KVGhpcyBpcyBhIGhhcmR3YXJlIGxpbWl0YXRp
b24sIGFuZCB3aXRoIHRoZSBjdXJyZW50IFBIWSBkcml2ZXIgd2UgY2Fubm90CnByb3BhZ2F0ZSBv
cmllbnRhdGlvbiBzdGF0dXMgdG8gZHBfY3RybCBmb3IgcHJvY2Vzc2luZy4KCgo+IEFueXdheSwg
cGxlYXNlIGFkZCBhIEZJWE1FIGNvbW1lbnQgaW50byB0aGUgc291cmNlIGZpbGUgYW5kIGEgbm90
ZSB0bwo+IHRoZSBjb21taXQgbWVzc2FnZSB0aGF0IFNXX1BPUlRTRUxFQ1Qgc2hvdWxkIGJlIGhh
bmRsZWQsIGJ1dCBpdCdzIG5vdCBhCj4gcGFydCBvZiB0aGlzIHBhdGNoIGZvciB0aGUgc3RhdGVk
IHJlYXNvbnMuCgoKT0ssIEkgd2lsbCBhZGQgYSB8RklYTUV8IGNvbW1lbnQgaW4gfHFtcF91c2Jj
X2RwX3Bvd2VyX29ufCBhbmQgdXBkYXRlIHRoZQpyZWxhdGVkIGNvbW1pdCBtZXNzYWdlLgoKCj4+
Cj4+Pj4gKwo+Pj4+ICsJd3JpdGVsKDB4MTgsIHFtcC0+ZHBfZHBfcGh5ICsgUVNFUkRFU19EUF9Q
SFlfQ0ZHKTsKPj4+PiArCXdyaXRlbCgweDE5LCBxbXAtPmRwX2RwX3BoeSArIFFTRVJERVNfRFBf
UEhZX0NGRyk7Cj4+Pj4gKwo+Pj4+ICsJaWYgKHJlYWRsX3BvbGxfdGltZW91dChxbXAtPmRwX2Rw
X3BoeSArIFFTRVJERVNfVjJfRFBfUEhZX1NUQVRVUywKPj4+PiArCQkJICAgICAgIHN0YXR1cywK
Pj4+PiArCQkJICAgICAgICgoc3RhdHVzICYgQklUKDEpKSA+IDApLAo+Pj4+ICsJCQkgICAgICAg
NTAwLAo+Pj4+ICsJCQkgICAgICAgMTAwMDApKXsKPj4+PiArCQlkZXZfZXJyKHFtcC0+ZGV2LCAi
UEhZX1JFQURZIG5vdCByZWFkeVxuIik7Cj4+Pj4gKwkJcmV0dXJuIC1FVElNRURPVVQ7Cj4+Pj4g
Kwl9Cj4+Pj4gKwo+Pj4+ICsJcmV0dXJuIDA7Cj4+Pj4gK30KPj4+PiArCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
