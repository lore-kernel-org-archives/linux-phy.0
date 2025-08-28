Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BC96CA0EED
	for <linux-phy@archiver.kernel.org>; Thu, 28 Aug 2025 04:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0xz7XFhKrJKSvQsZLoYWZ+ydjHWLCNF6UYLr5ki/qA=; b=qX0DsVU55LGvq1
	QfahyKcW8n117mRssRdZHfoKDqads3IJxUM6tptTqcVl6CjUtCx1hqG4d8zPm/NObf+1CwAW+ROr2
	E8ZRwRXwOL3IbiMI/HGAcJDuCvHPgrUu8J39PwInTe9x2bvbAR8TUDDwZ1IEJsp+AxExBwmoLHrQW
	Tvrjc9N5JJoaJIxggK2n+TNpGJ1WwsvDyMeVWQvMxDywHoP8CSa5Xvxv/gvjTL5fRfjwiv8k5nHd5
	KAvFgmsrkhnkRAIIHXx/NRFOdTxZw5SAwBFdtICVdwTuAAtX5QDtfJL1Dh/lkneGwQ3GcVFkjX8Jl
	Im/qpOjOSdFbplplCasg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urUbX-00000000GZY-2xkC;
	Thu, 28 Aug 2025 04:51:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urUbV-00000000GYz-0DOp
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 04:51:18 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RGEJ3s016037
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 04:51:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jx+gQH4DjWBB2/iazSCQmloXHWcepkEB1b0fEXviJpw=; b=k4bGtHj/gKo8gjmQ
	A9eJvxG33infZlCbybUvdrkUHfTeucuGnhBKjiQxy7fRgFtO9KCY7utD1yQ+JdQ2
	a0Qi0JIaofhGapQPGrmZfhuRFSKuIh3cJKwOLgqpYhQaHU9VUpvmDaIkIMTLyVdW
	9RD28ON52PiubJqyM+RayTbLb9sbEdjHsBQspPQ0dTA18tI9tS2C6j4TV/LY9h/6
	heFCPQTDy6mWNg+udOCIy9Ft/5X/MIECfp3m64Eh6NOVStMiK5AYBLGuusENe/2p
	kQA7JXDo2AWC8YWA0x8nNKMUnqRVGShTJhyNHZ+MKYUDYnDvdP8tPmwpnorpubZc
	gwzNNw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpf17yg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 04:51:15 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4756169c46so144697a12.3
        for <linux-phy@lists.infradead.org>; Wed, 27 Aug 2025 21:51:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756356674; x=1756961474;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jx+gQH4DjWBB2/iazSCQmloXHWcepkEB1b0fEXviJpw=;
        b=HKGL1OmciT7gya6OhRVgDcTOt6yfzTpzZzQDaBS9k0eX+t0jtsKVZa2XGQCsRCfP8f
         HZUcwEPh4Ds7HCAgMj8eUgxa7gvMAgi+sh2XmRjPqzZlWTWFMN4cwsVmyZTllD0gMxk0
         ppzA4z49iRYnVllr8VSBPdjrLT/G2vgElvPW+XuPMYVYk1/TUTmta9Cf2HkaZQMTJAW7
         0HR2K2PsFFHwDbwkg3VZer/vRme1sTw/q201Aisnq6nWV7+ADUmewrTrTJwBH8G48FCL
         Ws6fw92JjnLcOoDSYCHNbSDWELV/OHLLYd8Xfy/4qlk55czXjWujLPcjymDR2uJTFjl+
         LyZA==
X-Forwarded-Encrypted: i=1; AJvYcCU4/rz99v9St62msAN6QJD9P7AA5jI8jHR8Z8J4iYvGlnOKQ/cS8hUy00FYpTZVUggo6kpKxsVhAgk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWSx1N9WIxhCwHDFjO+c4FgYU+SFf3TzeZDSAG/EQv+VKB26m5
	Yvd2VhQtdyhOGpWcIERaYN0X9aUZOz5g71Pk3ewmu5AuVOhCIXHSuSoXV5l3yDl5aLa93TqSDpw
	KXf63egCegzlyjyg0rJWU1QjZF4dyzqlFaJscFqhZ1TYL9Ypy74E6rY2amVA2lei2w3zp
X-Gm-Gg: ASbGnctkulo5oTplKJqGuoiENpaLEkQpbVcl7M1euckkwMKM+2c4Q1xb0lOvIewny02
	eNARyyD0zOKMBcr2d39ArDluQ1ahmFn8g85u0s1TNw8FlLAjt8lyK0HbUoKoW4pl8aeZ7w1iSHo
	MX5bojLnON7HvE7fkp2EV/eWT7WKxw3nTSUQblRMVKKuC7EuuXgUO+dl24l80LmIesohLH6RIJV
	HEMboKOdQZxPewmHLwTNGvQbOwZopzg4MSw1bgD5HdUi35j05KH9EDV7cQU6XGpzrY/pmtit0Nw
	jOTpXzzcqdNjtnNgrqtKjxVy3OADkc8zytJT9FP2CRnIEl9kQGXVLabU1YpI83WLFyQFkV6POJZ
	kc8ZBjuEsF6g4hFwoh7S9OE0H6UXxYw==
X-Received: by 2002:a17:902:e5c7:b0:248:dfe0:2bac with SMTP id d9443c01a7336-248dfe02faamr4013875ad.8.1756356674466;
        Wed, 27 Aug 2025 21:51:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmRbZMzQhw30/ipLkmYDVQtFMWzPa3KvkwGn6LZpn9/xGeveJfUognFXSqr0kP7nvEeevGgA==
X-Received: by 2002:a17:902:e5c7:b0:248:dfe0:2bac with SMTP id d9443c01a7336-248dfe02faamr4013685ad.8.1756356673983;
        Wed, 27 Aug 2025 21:51:13 -0700 (PDT)
Received: from [10.133.33.166] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-248e3e0b73csm2558005ad.132.2025.08.27.21.51.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 21:51:13 -0700 (PDT)
Message-ID: <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 12:51:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
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
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
 <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
X-Proofpoint-GUID: khXugt7frw6qKuPFmcOS-iiCvzq7NUL2
X-Proofpoint-ORIG-GUID: khXugt7frw6qKuPFmcOS-iiCvzq7NUL2
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68afe043 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=RRKZIDRkA7xEvhLoEfwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX7uiQ35ImroHO
 5C+IVDvgg9jSQOpqpiHO1K3N3XdewxMALntjCh/+ZS3xzMiDMt2BNBMhAxrg1j6CX/GLQ/ZkM9f
 poSGOdUTcdabhY1RLktzC1odjWZt4zlvDEECVVSnstiJyp4bP9N0vYwtGaGgMKLD8lcIQFxpRTx
 j+oMMbxMApxW+WmdDgGDhfo/1TjpapfQaXVFpBN/9skF/MHsKKOpDIEMIII4JdIyNrD1BBqbdZ3
 F7SJif3Qu4u1wgYU2f5Ahxy22czlK/jcVEnAmssa2bVxHXFotXVOpKV5P+Rwz601wjeMA19eXez
 M5Cw1ucRbXPb+uIDTNVxVQlmGdvRpMoyb9d5r1JSYQcTS1SkDOQQWvND1jrN47CemdxyWqaqQL/
 1UyvCSH0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_215117_218938_307A0DBA 
X-CRM114-Status: GOOD (  13.96  )
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

Ck9uIDgvMjAvMjAyNSA2OjE4IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFdlZCwg
QXVnIDIwLCAyMDI1IGF0IDA1OjM0OjQzUE0gKzA4MDAsIFhpYW5neHUgWWluIHdyb3RlOgo+PiBB
ZGQgRGlzcGxheVBvcnQgY29udHJvbGxlciBmb3IgUXVhbGNvbW0gU002MTUwIFNvQy4KPj4gV2hp
bGUgU002MTUwIGN1cnJlbnRseSBzaGFyZXMgdGhlIHNhbWUgY29uZmlndXJhdGlvbiBhcyBTQzcx
ODAsCj4+IGl0cyBoYXJkd2FyZSBjYXBhYmlsaXRpZXMgZGlmZmVyLiBFeHBsaWNpdGx5IGxpc3Rp
bmcgaXQgZW5zdXJlcyBjbGFyaXR5Cj4+IGFuZCBhdm9pZHMgcG90ZW50aWFsIGlzc3VlcyBpZiBT
QzcxODAgc3VwcG9ydCBldm9sdmVzIGluIHRoZSBmdXR1cmUuCj4gSSBhc3N1bWUsIGl0IGhhcyBu
byBNU1Qgc3VwcG9ydC4gQW0gSSByaWdodD8KCgpGcm9tIHNtNjE1MCBpcGNhdCwgSSBmb3VuZCBN
U1QtcmVsYXRlZCByZWdpc3RlcnMgYW5kIHBpeGVsMSBjbGvCoGRlZmluaXRpb24uCgpBY2NvcmRp
bmcgdG8gdGhlIGhhcmR3YXJlIHNwZWMsIE1TVCBpcyBzdXBwb3J0ZWQsIGJ1dCBkdWUgdG8gbGlt
aXRhdGlvbnMgaW4gY2xvY2sgYW5kIHBpcGUgcmVzb3VyY2VzLMKgCgp0aGUgbWF4aW11bSBjb25j
dXJyZW5jeSBjYXBhYmlsaXR5IGlzIHJlc3RyaWN0ZWQgdG8gMTkyMHgxMjAwQDYwICsgMTI4MHg3
MjBANjAuCgoKPj4gU2lnbmVkLW9mZi1ieTogWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5x
dWFsY29tbS5jb20+Cj4+IC0tLQo+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbCB8IDEgKwo+PiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9tc20vZHAtY29udHJvbGxlci55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbAo+PiBp
bmRleCA5OTIzYjA2NTMyM2JiYWI5OWRlNTA3OWI2NzRhMDMxN2YzMDc0MzczLi45OTZkMDEzMmUw
ODRkNDAxZGI4NTAxNGExYTRlNDQ1ZDAwZDYyZWQ4IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20vZHAtY29udHJvbGxlci55YW1sCj4+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9kcC1j
b250cm9sbGVyLnlhbWwKPj4gQEAgLTI3LDYgKzI3LDcgQEAgcHJvcGVydGllczoKPj4gICAgICAg
ICAgICAtIHFjb20sc2M4MjgweHAtZHAKPj4gICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtZWRw
Cj4+ICAgICAgICAgICAgLSBxY29tLHNkbTg0NS1kcAo+PiArICAgICAgICAgIC0gcWNvbSxzbTYx
NTAtZHAKPj4gICAgICAgICAgICAtIHFjb20sc204MzUwLWRwCj4+ICAgICAgICAgICAgLSBxY29t
LHNtODY1MC1kcAo+PiAgICAgICAgLSBpdGVtczoKPj4KPj4gLS0gCj4+IDIuMzQuMQo+PgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
