Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B95C021A4
	for <linux-phy@archiver.kernel.org>; Mon, 24 Feb 2025 12:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W63ZpouFG+yTB5hyRcqVRgCMztc1EOBTDSQoMhBEWBs=; b=hgNVLP9RuKpGab
	0sK1807pGHyinEFOUCd8xAKhImXD4s7qj3JgFFzTLcBfg8mzbxfM/2qrpPLD/2pLXTEMgPacBk1gR
	ucz48UY899VaLbXzAsKHjsptvm7uojzABzxIBqWhPjxRIpFzFtK4Bek2LY7cP/asmHTOV4Unp2oBI
	tPBRDAGOOpD/VkfnLO5+1GN89RyDYehTMF9Qs2I8Oewe7+XRfDyhGMH3DFfXyf4uHM82AAFwHnr/N
	K/+oEvQwVmTw6G96QSct5f+x0JfpAEqavww+QGy/xIDfIH6eC9VW7+Qb+WNpCQ6qVe0dGmS5/EyCt
	2Cm0kDPFF0RJ/oMrBoaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmXDP-0000000Dbhr-0uh2;
	Mon, 24 Feb 2025 12:05:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmWvC-0000000DUcg-3O9r
	for linux-phy@lists.infradead.org;
	Mon, 24 Feb 2025 11:46:52 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51O9VSB6012860
	for <linux-phy@lists.infradead.org>; Mon, 24 Feb 2025 11:46:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xa3GHQtmXXvUkIsS5ubfpH9d30YWI2ILON8s0tgJN8A=; b=DDTg2VxlH5n0g0p4
	EtdCiksujrsoUdTC21uB1k6cHMu0rB5cGagKQn9dknbgSWfaGpX6xBKTKfw2+D8Y
	Ichq3PMP8c+YiJvJOVdVmmuQtuisV0djPd3Bph7Qhel+oejA6qPBQQDtZLPsBlwy
	5CHISj7r5Wdmlue8a0itnCXCIVucqzJTekbYgq4ddu0E9hgMUAK3McwGSESqPyjC
	t1pRtesBp+EBQ7jEbsKYt/B54vwcj3XP05gPWJ2VfKYTKgyGNQrVsC1SjO8fHvj8
	EaMzxOM3J1hkPcrG6u3W/596tXyxa5CwRMu/aCy5m9Wa0P5tR0NJ/BGMPx2S9anp
	W3teAQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y3xnd7p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Feb 2025 11:46:48 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-471f32b8d45so11836571cf.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Feb 2025 03:46:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740397608; x=1741002408;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xa3GHQtmXXvUkIsS5ubfpH9d30YWI2ILON8s0tgJN8A=;
        b=aNC0HzCMVxH+p2PW1dUmok+nW9CVdPCEWbLze5P+GHuZRC60aauJOGb5t4+1C6ecSI
         Z3i1znk4gy/x9KIfHTnzkoW0Vdf+QuaIbK9o/YniIc+5l9COVU7xgWY1aTSrGOor2l5W
         x/4QX0eDchJrIs+IXx7JbrP4P8P76Atee1M5pKkNj7L+1FXbVCpjUHH9f7fxII7xL68L
         9WnRfbiatJi2/GZ0eipwgAoJ1HLk5ilC8phO4+Rf/eIljnyZ9dw4vF6UHGlqEj4HUY8W
         tIgLjN3YfwZdgv/Yh+5yk4QqyZt0reBOjKbJ6r02232L9eV/IaaQ2JR69wgrRdRnYtAa
         4bxA==
X-Forwarded-Encrypted: i=1; AJvYcCXRQ20l8PpjhcAbOHx06A4RiqkEiPVTIOHocIf/fJS3u3aFEWpvxZ4I3aXNtFMIWLutIEItZB4+Fn8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlEcPQUiHofT3H9aIroO04sdtfv0E9ssxAcP9GmgfpW7A81+f7
	3gc3ToFAQEAcWZ/GMwWRRhPzKE5X8L2pvgH3UqrAaGrVe9x7l2SJlWAmaLSPWVGLEaideBs11Pb
	ZM/+NzaHsKueTi3v3rmaaojU/P6BNHoJ6jH8IFZZqEDtj+sz7yCtUEFignOASA0xO
X-Gm-Gg: ASbGncsUj744T8IclEkREoEPWjbQmIJe+/XEffdGG2OnimKoU5qWPeZfe01ko0ECK1c
	VG3CEZhNaEjNGcWMyNfxUGhEtfM+GdkAxzfXXQOFPlVeP3lUtgMl9vSSNzIavu3MoxN4qWP3MGp
	ojK4hzVOMKUzWDE9OEXxuJyeWc7iG8ymO/9Amy/v0q6KfUSkGlq7+ekQmoRzVYGTGg9nfKW15up
	jqG5BY1IEzUMLEXE+cdH52Qpd5Eqi8Y+vD0vAV8UCXSfQoDD0dvI5Q77i4cMCh6wfm9lXarTlDA
	NsnEgvfzngvgFz9UJ1lB3lCA3TGQp27g4gkC9/H2HRoeVcChAXmYXC0PqV68DZg2S4ZlyQ==
X-Received: by 2002:a05:6214:5190:b0:6d8:967a:1a60 with SMTP id 6a1803df08f44-6e6ae7d9a09mr65659806d6.2.1740397608188;
        Mon, 24 Feb 2025 03:46:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+5WWCtb4qyPi6Hdk7FQSLpQ7/kRF6GbZ4urrGS273dUwCcdOpWH2AW2Megucz8XI5EO8lng==
X-Received: by 2002:a05:6214:5190:b0:6d8:967a:1a60 with SMTP id 6a1803df08f44-6e6ae7d9a09mr65659726d6.2.1740397607829;
        Mon, 24 Feb 2025 03:46:47 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba9bd6e22sm1409071066b.121.2025.02.24.03.46.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 03:46:47 -0800 (PST)
Message-ID: <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
Date: Mon, 24 Feb 2025 12:46:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        quic_devipriy@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
 <20250220102253.755116-3-quic_wenbyao@quicinc.com>
 <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
X-Proofpoint-ORIG-GUID: 0ToAiRweCGLN5KLr6yVcmHPa_-p8sv27
X-Proofpoint-GUID: 0ToAiRweCGLN5KLr6yVcmHPa_-p8sv27
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-24_05,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502240086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_034650_966516_4BCBA8A4 
X-CRM114-Status: GOOD (  15.77  )
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

T24gMjQuMDIuMjAyNSA5OjQ2IEFNLCBXZW5iaW4gWWFvIChDb25zdWx0YW50KSB3cm90ZToKPiBP
biAyLzI0LzIwMjUgMzozMyBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+PiBPbiBU
aHUsIEZlYiAyMCwgMjAyNSBhdCAwNjoyMjo1M1BNICswODAwLCBXZW5iaW4gWWFvIHdyb3RlOgo+
Pj4gRnJvbTogUWlhbmcgWXUgPHF1aWNfcWlhbnl1QHF1aWNpbmMuY29tPgo+Pj4KPj4+IFNvbWUg
UUNPTSBQQ0llIFBIWXMgc3VwcG9ydCBub19jc3IgcmVzZXQuIFVubGlrZSBCQ1IgcmVzZXQgd2hp
Y2ggcmVzZXRzIHRoZQo+Pj4gd2hvbGUgUEhZIChoYXJkd2FyZSBhbmQgcmVnaXN0ZXIpLCBub19j
c3IgcmVzZXQgb25seSByZXNldHMgUEhZIGhhcmR3YXJlCj4+PiBidXQgcmV0YWlucyByZWdpc3Rl
ciB2YWx1ZXMsIHdoaWNoIG1lYW5zIFBIWSBzZXR0aW5nIGNhbiBiZSBza2lwcGVkIGR1cmluZwo+
Pj4gUEhZIGluaXQgaWYgUENJZSBsaW5rIGlzIGVuYWJsZWQgaW4gYm9vbHRsb2FkZXIgYW5kIG9u
bHkgbm9fY3NyIGlzIHRvZ2dsZWQKPj4+IGFmdGVyIHRoYXQuCj4+Pgo+Pj4gSGVuY2UsIGRldGVy
bWluZSB3aGV0aGVyIHRoZSBQSFkgaGFzIGJlZW4gZW5hYmxlZCBpbiBib290bG9hZGVyIGJ5Cj4+
PiB2ZXJpZnlpbmcgUVBIWV9TVEFSVF9DVFJMIHJlZ2lzdGVyLiBJZiBpdCdzIHByb2dyYW1tZWQg
YW5kIG5vX2NzciByZXNldCBpcwo+Pj4gYXZhaWxhYmxlLCBza2lwIEJDUiByZXNldCBhbmQgUEhZ
IHJlZ2lzdGVyIHNldHRpbmcgdG8gZXN0YWJsaXNoIHRoZSBQQ0llCj4+PiBsaW5rIHdpdGggYm9v
dGxvYWRlciAtIHByb2dyYW1tZWQgUEhZIHNldHRpbmdzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IFFpYW5nIFl1IDxxdWljX3FpYW55dUBxdWljaW5jLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IFdl
bmJpbiBZYW8gPHF1aWNfd2VuYnlhb0BxdWljaW5jLmNvbT4KPj4gU29tZSBuaXRwaWNrcyBiZWxv
dy4KPj4KPj4+IC0tLQoKWy4uLl0KCj4+Cj4+PiArwqDCoMKgwqAgKiBJbiB0aGlzIHdheSwgbm8g
bWF0dGVyIHdoZXRoZXIgdGhlIFBIWSBzZXR0aW5ncyB3ZXJlIGluaXRpYWxseQo+Pj4gK8KgwqDC
oMKgICogcHJvZ3JhbW1lZCBieSBib290bG9hZGVyIG9yIFBIWSBkcml2ZXIgaXRzZWxmLCB3ZSBj
YW4gcmV1c2UgdGhlbQo+PiBJdCBpcyByZWFsbHkgcG9zc2libGUgdG8gaGF2ZSBib290bG9hZGVy
IG5vdCBwcm9ncmFtbWluZyB0aGUgaW5pdCBzZXF1ZW5jZSBmb3IKPj4gbm9fY3NyIHJlc2V0IHBs
YXRmb3Jtcz8gVGhlIGNvbW1lbnQgc291bmRzIGxpa2UgaXQgaXMgcG9zc2libGUuIEJ1dCBJIGhl
YXJkIHRoZQo+PiBvcHBvc2l0ZS4KPiAKPiBQQ0llMyBvbiBYMUU4MDEwMCBRQ1AgaXMgZGlzYWJs
ZWQgYnkgZGVmYXVsdCBpbiBVRUZJLiBXZSBuZWVkIHRvIGVuYWJsZSBpdAo+IG1hbnVhbGx5IGlu
IFVFRkkgc2hlbGwgaWYgd2Ugd2FudC4KCklJVUMgdGhpcyB3aWxsIG5vdCBiZSBhIGNvbmNlcm4g
Z29pbmcgZm9yd2FyZCwgYW5kIHRoaXMgaXMgYSBzcGVjaWFsIGNhc2UKCktvbnJhZAoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
