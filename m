Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D04A8D68BC9
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 00:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uvp7JBSXJbRu1O8AaZ66Rlzo0dY/lqXq0/VCOQU1MXo=; b=OHgs8Oev8E0gVb
	stS5hc2WiPuDwepu+kiy94b9eVvj7qKB78I6QjMNTrUg/zBrx2yiMI/lyLVpSn2ivp6Zdrud+bijY
	L6A9bnvRX9hShN7IKes4pOlRUtOtaeioHfACv1H4E5mgVjI8JInyEP1HCArltzUzmigkSrxWOasPi
	+O3lZagqcUw/ySwf8oeFZLPRJI0UHuWMAgUCEPld+QMEJQbfXSAVqC0VKfKmGU+QfNRzBNjp1AgKC
	Uf/BfgzSNvXuwmusXn1MR4S4/iVomtkVlJp8uZHu9yfL8MuS5yZZfh948laboRJFT5eSfM62IUfOx
	c91BHnCoU/2eQ9lpMScg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW2K8-00000007d56-1ha3;
	Thu, 18 Dec 2025 00:56:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW2K5-00000007d4b-483B
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 00:56:55 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHMSar2296539
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 00:56:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LiQBhPQ1TALsrrID+vtryhq0T/DQA1ylaIXlvBUxIFU=; b=Fxs+LEl06NAtB6I9
	SGMZGZvrFre2Qym9RCVUM4JeB+BiXFA533ydUqwAOaEF7agEcqPNiCEpmqHcLpIw
	TeIQuSNhXbOkY1zCtmaYYnlgFkMgQH643U1mfB3pP+gNQFoTc6dLPl9bCZKGC2Fl
	lSSYoRe7WzUCCDYNtAVMevCIm3sNfBy1DQvofarlmWq4pEFrYsYVZAdl46mGugkF
	ctViTBkrggzffEfvG1ybohRL9zmQBzPPJYsIK0L90d9y0ev16qPiXJqXtTeN6ZYy
	R71y8XUZjTMZtc+gXw45YRDqGSbGnqQxVO6teprDTHlzvKnK1dSK++Us3BLrWJqB
	xFHreQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b45bhg9mv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 00:56:52 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a3a4af701so3083816d6.1
        for <linux-phy@lists.infradead.org>; Wed, 17 Dec 2025 16:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766019412; x=1766624212; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LiQBhPQ1TALsrrID+vtryhq0T/DQA1ylaIXlvBUxIFU=;
        b=aFIhCDqmL/AHRutb0hdpbZ8UR5jQ2uzRpAWBoGO1I0iEE5z3BQUgtRFCdsHRAFSJOZ
         JH4M1+zyIWioPJyaUk2nkD6Guoxmo1I6TjOuCTDQA8LdiC+Ue+bsHeRA/EwA/VHNvj2m
         SHShVWdBFePQORzxTjPWbzK1uaBbpQuHeDLdm/nROp+YHjtC7F9fdVYd3qPuCasYzTwo
         7WUTqbjZo2wO2kOLq3IaZStU1RAlOw7hCCgoClZ3Z6/H7Mmf7ccJ/Xj6rD8izRhws+gX
         dLST8IQEUJeKXOCyk3aMcJk6gSev7S0g1zfnHzvhPDK6aS/EMfaLRXNhvvGO5w850nL4
         O9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766019412; x=1766624212;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LiQBhPQ1TALsrrID+vtryhq0T/DQA1ylaIXlvBUxIFU=;
        b=h/ZywqzYG/Lol3M0vcjkDsN8iifx/vrvRXpIBgM5rfUsTo+bY/eCPuP3zLVtIzLogj
         Hz7QJtkHY2pYIvfgbAV8R+FEUFg2A+E7MtYB8/4j7CBvkqEB7Qcj6036P2YJRn8uYf+Q
         hwWshGS+6jBk6wTTznbiXGyNXIfePhXXrpTRbFVVL1zPWdzsM+ddwZhuAgChVqPHV+9V
         VzYFYRAah0Bd9DhQZ+gxnx7biSBZUC5h3LHivWF8ojwIeBD8wvPqulDNWkRtpdbufrIb
         AkTehcki1Wp5J+QcekVQ9A1bFnX5T0CMeqdJE864t7Sa4ewgU8l8aeVdWzY0AzcpecCg
         bmPA==
X-Forwarded-Encrypted: i=1; AJvYcCXAaBdt6jzg+a+FvAoxLlxEhrWotCPVzaOjOb88OHCZScItTUANHzJDJsEL8/5Yp+ggJpVt607rOk4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2po97NdNJEBcqQ3fse+1AgP1p9/XqALs3JxR3Pnjsav6wwXcq
	gYrdowEeLPehnCGZsp6PO4RtmKs7D1ixAkAj7cUh2AKbzR3Z6CrFhsQD2F1o2mQpXbW8mV1L1sJ
	8Ksd9tvQ6A0eYRQvTQ4692rl99Z8hBuC2G83yXPo9Kxaweydrx8pHkB/2jAIKAIIC6/xK
X-Gm-Gg: AY/fxX7kF9gfAIJo6PjDYyqhzH12mBb5shAtFXZ4MCe27869TcWaNicraI61xgHneZY
	cEuA6WW12ThznRV0lxaNgBWVmOx7WP2m/jdzyymuUKe8CQIrVySD3Pw3mZRy81ApiQM90u6Jbx6
	myuxqG04CoLUFSXqb/pjSIglDupAtFl51hizmSr1X4/g5VNZ2WqOUNx1FNNu4v7CAqeg2SRoC2J
	Rnxt1Hg2uaQ5f9qucp/UuJOGr1L2XALYO5s3Lz0zr9VCjUH9sQbej5lm5SmpSEIF7sMftqfsQo9
	0Ijj3fTOJWB4J6L15562eXeAF4MCJ2LdXa9fZYZ2WqogAfaguX1xBier9VOr73A+CCcXYDZxa7r
	i97THdV2DjvCDHoK223YDpQ2U+Gd5E2VCA6/H+V4RXTDwOt4DlEs6ynZ7/2XfPDiho/oE4AsB+Z
	cM5JPe4jsQTjCCffRresQLpVk=
X-Received: by 2002:a05:6214:3f88:b0:888:b2b5:81d3 with SMTP id 6a1803df08f44-888b2b58387mr253470366d6.25.1766019411786;
        Wed, 17 Dec 2025 16:56:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqboVwFq4SsdhaXnQPhWtnWAC55+mjpl8i4P1O6TUMvk3T4onhuiOJWP08Iy22OuT15YM66g==
X-Received: by 2002:a05:6214:3f88:b0:888:b2b5:81d3 with SMTP id 6a1803df08f44-888b2b58387mr253470096d6.25.1766019411309;
        Wed, 17 Dec 2025 16:56:51 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a13506a35sm365547e87.89.2025.12.17.16.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 16:56:50 -0800 (PST)
Date: Thu, 18 Dec 2025 02:56:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, andersson@kernel.org
Subject: Re: [PATCH v3] phy: qcom-qusb2: Fix NULL pointer dereference on
 early suspend
Message-ID: <ejzsnwkz5mhgmfp6bh2hbq3c2einvw6xoesh3yem6d77t7rbtr@vfqrpmpd4lqz>
References: <20251211153536.1880258-1-loic.poulain@oss.qualcomm.com>
 <aktk3ofvgdusfo33kebaepfc2epyty36sltxxceaq5q2gy2kfz@6lki7itbthd5>
 <CAFEp6-1nQHUTQwaxX0TrjFuKsAGYjdMHG0018z8FqsXZQ0Nffg@mail.gmail.com>
 <53a56an76s3ehg6eufr66l5ch2ygmp5wmc7dfqbp3srbspcuo6@i5r4gkadykm2>
 <CAFEp6-3x2JiqermQw-9S=+73gTCVSFyNuDLr85b=Ry2TRJDhyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEp6-3x2JiqermQw-9S=+73gTCVSFyNuDLr85b=Ry2TRJDhyw@mail.gmail.com>
X-Proofpoint-GUID: e6rLma-rW7LNGZvFQq-_lnvwRE_HD2xO
X-Proofpoint-ORIG-GUID: e6rLma-rW7LNGZvFQq-_lnvwRE_HD2xO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDAwNSBTYWx0ZWRfXxbgl6EnpDAFN
 qbY45ts7Ao8vre9F6TQ2clUNF3/NSDTqX9QyPlvf+LVcpfA7v3SBZT9asZVub9s2qvzzuztCJ8X
 3pqCCVOWvlAa7ucRHax0JUQCYI9OR2c6GylE9DvuBpG8BOwAdGkKVJryUuU6RhEJl0Fgv58LHAo
 zCodG0YMCCLNaagSrqzLral1DjUnFutvjixJhTrWkLye8Oq+HmYjXuQDUMqMOSF9to53Bl7T+Ox
 wE8HQyHLACyigAwinxfcK0g+NzrE3YYifXPaKl3rhofNXfhXvo0CrW7I6/rv8zDRcEgDJUbH9g/
 TG/O+29ujEynBllrUMk+hLJyBYIP0ztwP/HAD9Mg+F0V8eRQtutscwYwU7ygqmfLkfp31f6QFRA
 6f7Q0I+WG6MZiDHSZHH2OHSrF7ucIA==
X-Authority-Analysis: v=2.4 cv=SZr6t/Ru c=1 sm=1 tr=0 ts=69435154 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=AReADLFyNFYBa5P5A8IA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512180005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_165654_152465_17790F44 
X-CRM114-Status: GOOD (  50.97  )
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

T24gVHVlLCBEZWMgMTYsIDIwMjUgYXQgMTA6MzY6NTRBTSArMDEwMCwgTG9pYyBQb3VsYWluIHdy
b3RlOgo+IEhpIERtaXRyeSwKPiAKPiBPbiBNb24sIERlYyAxNSwgMjAyNSBhdCA5OjE24oCvUE0g
RG1pdHJ5IEJhcnlzaGtvdgo+IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IHdy
b3RlOgo+ID4KPiA+IE9uIE1vbiwgRGVjIDE1LCAyMDI1IGF0IDA5OjQ5OjIxQU0gKzAxMDAsIExv
aWMgUG91bGFpbiB3cm90ZToKPiA+ID4gSGkgRG1pdHJ5LAo+ID4gPgo+ID4gPiBPbiBGcmksIERl
YyAxMiwgMjAyNSBhdCA4OjMw4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo+ID4gPiA8ZG1pdHJ5LmJh
cnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIFRodSwg
RGVjIDExLCAyMDI1IGF0IDA0OjM1OjM2UE0gKzAxMDAsIExvaWMgUG91bGFpbiB3cm90ZToKPiA+
ID4gPiA+IEVuYWJsaW5nIHJ1bnRpbWUgUE0gYmVmb3JlIGF0dGFjaGluZyB0aGUgUVBIWSBpbnN0
YW5jZSBhcyBkcml2ZXIgZGF0YQo+ID4gPiA+ID4gY2FuIGxlYWQgdG8gYSBOVUxMIHBvaW50ZXIg
ZGVyZWZlcmVuY2UgaW4gcnVudGltZSBQTSBjYWxsYmFja3MgdGhhdAo+ID4gPiA+ID4gZXhwZWN0
IHZhbGlkIGRyaXZlciBkYXRhLiBUaGVyZSBpcyBhIHNtYWxsIHdpbmRvdyB3aGVyZSB0aGUgc3Vz
cGVuZAo+ID4gPiA+ID4gY2FsbGJhY2sgbWF5IHJ1biBhZnRlciBQTSBydW50aW1lIGVuYWJsaW5n
IGFuZCBiZWZvcmUgcnVudGltZSBmb3JiaWQuCj4gPiA+ID4gPiBUaGlzIGNhdXNlcyBhIHNwb3Jh
ZGljIGNyYXNoIGR1cmluZyBib290Ogo+ID4gPiA+ID4KPiA+ID4gPiA+IGBgYAo+ID4gPiA+ID4g
VW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGF0IHZpcnR1
YWwgYWRkcmVzcyAwMDAwMDAwMDAwMDAwMGExCj4gPiA+ID4gPiBbLi4uXQo+ID4gPiA+ID4gQ1BV
OiAwIFVJRDogMCBQSUQ6IDExIENvbW06IGt3b3JrZXIvMDoxIE5vdCB0YWludGVkIDYuMTYuNysg
IzExNiBQUkVFTVBUCj4gPiA+ID4gPiBXb3JrcXVldWU6IHBtIHBtX3J1bnRpbWVfd29yawo+ID4g
PiA+ID4gcHN0YXRlOiAyMDAwMDAwNSAobnpDdiBkYWlmIC1QQU4gLVVBTyAtVENPIC1ESVQgLVNT
QlMgQlRZUEU9LS0pCj4gPiA+ID4gPiBwYyA6IHF1c2IyX3BoeV9ydW50aW1lX3N1c3BlbmQrMHgx
NC8weDFlMCBbcGh5X3Fjb21fcXVzYjJdCj4gPiA+ID4gPiBsciA6IHBtX2dlbmVyaWNfcnVudGlt
ZV9zdXNwZW5kKzB4MmMvMHg0NAo+ID4gPiA+ID4gWy4uLl0KPiA+ID4gPiA+IGBgYAo+ID4gPiA+
ID4KPiA+ID4gPiA+IEF0dGFjaCB0aGUgUVBIWSBpbnN0YW5jZSBhcyBkcml2ZXIgZGF0YSBiZWZv
cmUgZW5hYmxpbmcgcnVudGltZSBQTSB0bwo+ID4gPiA+ID4gcHJldmVudCBOVUxMIHBvaW50ZXIg
ZGVyZWZlcmVuY2UgaW4gcnVudGltZSBQTSBjYWxsYmFja3MuCj4gPiA+ID4gPgo+ID4gPiA+ID4g
UmVvcmRlciBwbV9ydW50aW1lX2VuYWJsZSgpIGFuZCBwbV9ydW50aW1lX2ZvcmJpZCgpIHRvIHBy
ZXZlbnQgYQo+ID4gPiA+ID4gc2hvcnQgd2luZG93IHdoZXJlIGFuIHVubmVjZXNzYXJ5IHJ1bnRp
bWUgc3VzcGVuZCBjYW4gb2NjdXIuCj4gPiA+ID4gPgo+ID4gPiA+ID4gVXNlIHRoZSBkZXZyZXMt
bWFuYWdlZCB2ZXJzaW9uIHRvIGVuc3VyZSBQTSBydW50aW1lIGlzIHN5bW1ldHJpY2FsbHkKPiA+
ID4gPiA+IGRpc2FibGVkIGR1cmluZyBkcml2ZXIgcmVtb3ZhbCBmb3IgcHJvcGVyIGNsZWFudXAu
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gRml4ZXM6IDg5MWE5NmY2NWFjMyAoInBoeTogcWNvbS1xdXNi
MjogQWRkIHN1cHBvcnQgZm9yIHJ1bnRpbWUgUE0iKQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
TG9pYyBQb3VsYWluIDxsb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4KPiA+ID4gPiA+IFJl
dmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29t
bS5jb20+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICB2MzogVGhlIHBoeS1jb3JlIGV4cGVjdHMg
cGFyZW50J3MgcnVudGltZS1wbSB0byBiZSBzZXR1cCBiZWZvcmUgY3JlYXRpbmcKPiA+ID4gPiA+
ICAgICAgdGhlIHBoeSwgc28gbW92ZSBiYWNrIHJ1bnRpbWUtcG0gdG8gaXRzIGluaXRpYWwgbG9j
YXRpb24gYW5kCj4gPiA+ID4gPiAgICAgIHJlbG9jYXRlIGRldl9zZXRfZHJ2ZGF0YSgpIGluc3Rl
YWQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gIHYyOiBNb3ZlIHJ1bnRpbWUtcG0gZW5hYmxpbmcgYWZ0
ZXIgZGV2X3NldF9kcnZkYXRhCj4gPiA+ID4gPiAgICAgIHVzZSBkZXZtX3BtX3J1bnRpbWVfZW5h
YmxlKCkgdG8gZml4IHVuYmFsYW5jZWQgZW5hYmxpbmcgb24gcmVtb3ZhbAo+ID4gPiA+ID4gICAg
ICByZXdvcmQgY29tbWl0IG1lc3NhZ2UKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYyB8IDE0ICsrKysrKy0tLS0tLS0tCj4gPiA+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiA+ID4gPiA+
Cj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVz
YjIuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXF1c2IyLmMKPiA+ID4gPiA+IGlu
ZGV4IGI1NTE0YTMyZmY4Zi4uNjM4NmQ4MzRiMGU0IDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcXVzYjIuYwo+ID4gPiA+ID4gQEAgLTEwOTMsMjkgKzEw
OTMsMjcgQEAgc3RhdGljIGludCBxdXNiMl9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiA+ID4gPiA+ICAgICAgICAgICAgICAgb3ItPmhzZGlzY190cmltLm92ZXJyaWRl
ID0gdHJ1ZTsKPiA+ID4gPiA+ICAgICAgIH0KPiA+ID4gPiA+Cj4gPiA+ID4gPiAtICAgICBwbV9y
dW50aW1lX3NldF9hY3RpdmUoZGV2KTsKPiA+ID4gPiA+IC0gICAgIHBtX3J1bnRpbWVfZW5hYmxl
KGRldik7Cj4gPiA+ID4gPiArICAgICBkZXZfc2V0X2RydmRhdGEoZGV2LCBxcGh5KTsKPiA+ID4g
PiA+ICsKPiA+ID4gPiA+ICAgICAgIC8qCj4gPiA+ID4gPiAtICAgICAgKiBQcmV2ZW50IHJ1bnRp
bWUgcG0gZnJvbSBiZWluZyBPTiBieSBkZWZhdWx0LiBVc2VycyBjYW4gZW5hYmxlCj4gPiA+ID4g
PiAtICAgICAgKiBpdCB1c2luZyBwb3dlci9jb250cm9sIGluIHN5c2ZzLgo+ID4gPiA+ID4gKyAg
ICAgICogRW5hYmxlIHJ1bnRpbWUgUE0gc3VwcG9ydCwgYnV0IGZvcmJpZCBpdCBieSBkZWZhdWx0
Lgo+ID4gPiA+ID4gKyAgICAgICogVXNlcnMgY2FuIGFsbG93IGl0IGFnYWluIHZpYSB0aGUgcG93
ZXIvY29udHJvbCBhdHRyaWJ1dGUgaW4gc3lzZnMuCj4gPiA+ID4gPiAgICAgICAgKi8KPiA+ID4g
PiA+ICsgICAgIHBtX3J1bnRpbWVfc2V0X2FjdGl2ZShkZXYpOwo+ID4gPiA+ID4gICAgICAgcG1f
cnVudGltZV9mb3JiaWQoZGV2KTsKPiA+ID4gPgo+ID4gPiA+IEkgdGhpbmssIHRoaXMgc2hvdWxk
IGJlIGNhbGxlZCBhZnRlciBlbmFibGluZyBydW50aW1lIFBNLiBQbGVhc2UgY29ycmVjdAo+ID4g
PiA+IG1lIGlmIEknbSB3cm9uZy4KPiA+ID4KPiA+ID4gZW5hYmxlL2Rpc2FibGUgYW5kIGZvcmJp
ZC9hbGxvdyBhcHBlYXIgdG8gYmUgb3J0aG9nb25hbCwgdGhlIHB1cnBvc2UKPiA+ID4gb2YgaW52
ZXJ0aW5nIHRoZW0gaGVyZSBpcyB0byBwcmV2ZW50IGFuIHVubmVjZXNzYXJ5IHN1c3BlbmQvcmVz
dW1lCj4gPiA+IGN5Y2xlIGZyb20gb2NjdXJyaW5nIGJldHdlZW4gZW5hYmxlIGFuZCBmb3JiaWQu
IEFsc28sIHRoaXMgc2VxdWVuY2UKPiA+ID4gaGFzIGJlZW4gdGVzdGVkIGFuZCB3b3JrcyBjb3Jy
ZWN0bHkuCj4gPgo+ID4gSSBzZWUgdGhhdCBpbiBtb3N0IG9mIHRoZSBwbGFjZXMgcG1fcnVudGlt
ZV9mb3JiaWQoKSBpcyBiZWluZyBjYWxsZWQKPiA+IGFmdGVyIHBtX3J1bnRpbWVfZW5hYmxlKCkg
cmF0aGVyIHRoYW4gYmVmb3JlLgo+IAo+IFllcywgdGhpcyBwYXR0ZXJuIGhhcyBiZWVuIHVzZWQv
cmVwbGljYXRlZCBpbiBzZXZlcmFsIHBsYWNlcywgYW5kCj4gd2hpbGUgaXQgaXMgbG9naWNhbGx5
IHZhbGlkLCBpdCBkb2VzbuKAmXQgbmVjZXNzYXJpbHkgbWFrZSBpdCBhIGdvb2QKPiBwcmFjdGlj
ZS4gSW4gZmFjdCwgaXQgbGVhdmVzIHJvb20gZm9yIG9wcG9ydHVuaXN0aWMgcnVudGltZSBzdXNw
ZW5kIHRvCj4gb2NjdXIsIHdoZXJlYXMgdGhlIHVzdWFsIGV4cGVjdGF0aW9uIGlzIHRvIGNvbXBs
ZXRlbHkgYmxvY2sgcnVudGltZQo+IHN1c3BlbmQgKGFzIGluaXRpYWxseSBleHBlY3RlZCBpbiB0
aGlzIHBoeSBkcml2ZXIpLgo+IAo+IEFuIGV4YW1wbGUgb2YgdGhlICdyaWdodCcgcGF0dGVybiBj
YW4gYmUgZm91bmQgaW4gdGhlIFBDSSBjb3JlOiB0aGUKPiBwY2lfcG1faW5pdCgpIGZ1bmN0aW9u
IGNhbGxzIHBtX3J1bnRpbWVfc2V0X2FjdGl2ZSgpIGFuZAo+IHBtX3J1bnRpbWVfZm9yYmlkKCkg
YmVmb3JlIGludm9raW5nIHBtX3J1bnRpbWVfZW5hYmxlKCkuCj4gCj4gPiBJdCBtYWtlcyBzZW5z
ZSBzaW5jZQo+ID4gZm9yYmlkIGlzIGRlZmluZWQgYXM6ICJSZXN1bWUgQGRldiBpZiBhbHJlYWR5
IHN1c3BlbmRlZCBhbmQgYmxvY2sKPiA+IHJ1bnRpbWUgc3VzcGVuZCIuIEl0J3Mgbm90IGNsZWFy
IHdoYXQgX2lzXyB0aGUgYmVoYXZpb3VyIGlmIHJ1bnRpbWUgUE0KPiA+IGlzIGRpc2FibGVkIGFu
ZCB3aWxsIGJlIGVuYWJsZWQgbGF0ZXIuCj4gCj4gSeKAmW0gbm90IGVudGlyZWx5IGNvbnZpbmNl
ZCB0aGF0IGl0IGltcGxpZXMgYSBzcGVjaWZpYyBvcmRlci4KPiBBbm90aGVyIGNvbW1vbiBwYXR0
ZXJuIHNlZW4gaW4gZHJpdmVycyBpcyB0aGUgZm9sbG93aW5nOgo+IGBgYAo+IHBtX3J1bnRpbWVf
Z2V0X25vcmVzdW1lKGRldik7Cj4gcG1fcnVudGltZV9zZXRfYWN0aXZlKGRldik7Cj4gcG1fcnVu
dGltZV9lbmFibGUoZGV2KTsKPiBgYGAKPiAKPiBUaGUgYWJvdmUgaXMgdHlwaWNhbGx5IHVzZWQg
dG8gcHJldmVudCB0aGUgZGV2aWNlIGZyb20gZW50ZXJpbmcKPiBzdXNwZW5kIGR1cmluZyBpbml0
aWFsaXphdGlvbi4gcG1fcnVudGltZV9nZXRfbm9yZXN1bWUoKSBiZWhhdmVzCj4gc29tZXdoYXQg
bGlrZSBwbV9ydW50aW1lX2ZvcmJpZCgpLCBidXQgZ2V0X25vcmVzdW1lKCkgaXMgdXN1YWxseQo+
IGJhbGFuY2VkIGJ5IGEgY29ycmVzcG9uZGluZyBwbV9ydW50aW1lX3B1dF8qKCkgYXQgdGhlIGVu
ZCBvZgo+IGluaXRpYWxpemF0aW9uLCB3aGVyZWFzIHBtX3J1bnRpbWVfZm9yYmlkKCkgYmxvY2tz
IHJ1bnRpbWUgc3VzcGVuZAo+IHVudGlsIGl0IGlzIGV4cGxpY2l0bHkgcmV2ZXJ0ZWQgd2l0aCBw
bV9ydW50aW1lX2FsbG93KCkgKHVzdWFsbHkgZnJvbQo+IHVzZXJzaWRlIHZpYSBzeXNmcykuCj4g
Cj4gQWxzbyAgcG1fcnVudGltZV9lbmFibGUoKSBvcGVyYXRlcyBvbiBhIGRlcHRoIGNvdW50ZXIs
IHNvIGNhbGxpbmcgaXQKPiBhdCBhIHNwZWNpZmljIHBvaW50IGRvZXMgbm90IG5lY2Vzc2FyaWx5
IGd1YXJhbnRlZSBpdHMgYWN0aXZhdGlvbiwgSQo+IHRoaW5rIHRoaXMgcmVkdWNlcyBhbnkgc3Ry
aWN0bmVzcyBvZiBvcmRlcmluZyBleHBlY3RhdGlvbnMgY29tcGFyZWQgdG8KPiBwbV9ydW50aW1l
X2ZvcmJpZCgpLgoKQWNrLgoKPiAKPiA+Cj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiA+ICsgICAgIGRl
dm1fcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPiA+ID4gPgo+ID4gPiA+IE1pc3NpbmcgZXJyb3Ig
aGFuZGxpbmcKPiA+ID4KPiA+ID4gSSB3YXNu4oCZdCBjZXJ0YWluIHdoZXRoZXIgd2Ugc2hvdWxk
IGFib3J0IG9uIHRoaXMgbm9uLWZhdGFsIGVycm9yLAo+ID4gPiBzaW5jZSB0aGUgZHJpdmVyIGNh
biBvcGVyYXRlIHdpdGhvdXQgUE0tcnVudGltZSBlbmFibGVkLiBIb3dldmVyLCBpZgo+ID4gPiB0
aGlzIGVycm9yIG9jY3VycywgaXQgbGlrZWx5IGluZGljYXRlcyBhIG1vcmUgc2lnbmlmaWNhbnQg
dW5kZXJseWluZwo+ID4gPiBtZW1vcnkgaXNzdWUuCj4gPgo+ID4gWWVzLiBOZXZlcnRoZWxlc3Ms
IGluIGdlbmVyYWwgZXJyb3JzIHNob3VsZCBiZSBoYW5kbGVkIHJhdGhlciB0aGFuIGJlaW5nCj4g
PiBpZ25vcmVkLgo+IAo+IEFjay4KPiAKPiA+Cj4gPiA+Cj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiAgICAgICBnZW5lcmljX3BoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5VTEws
ICZxdXNiMl9waHlfZ2VuX29wcyk7Cj4gPiA+ID4gPiAgICAgICBpZiAoSVNfRVJSKGdlbmVyaWNf
cGh5KSkgewo+ID4gPiA+ID4gICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGdlbmVyaWNfcGh5
KTsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRl
IHBoeSwgJWRcbiIsIHJldCk7Cj4gPiA+ID4gPiAtICAgICAgICAgICAgIHBtX3J1bnRpbWVfZGlz
YWJsZShkZXYpOwo+ID4gPiA+ID4gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiA+ID4g
ICAgICAgfQo+ID4gPiA+ID4gICAgICAgcXBoeS0+cGh5ID0gZ2VuZXJpY19waHk7Cj4gPiA+ID4g
Pgo+ID4gPiA+ID4gLSAgICAgZGV2X3NldF9kcnZkYXRhKGRldiwgcXBoeSk7Cj4gPiA+ID4gPiAg
ICAgICBwaHlfc2V0X2RydmRhdGEoZ2VuZXJpY19waHksIHFwaHkpOwo+ID4gPiA+ID4KPiA+ID4g
PiA+ICAgICAgIHBoeV9wcm92aWRlciA9IGRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRl
diwgb2ZfcGh5X3NpbXBsZV94bGF0ZSk7Cj4gPiA+ID4gPiAtICAgICBpZiAoSVNfRVJSKHBoeV9w
cm92aWRlcikpCj4gPiA+ID4gPiAtICAgICAgICAgICAgIHBtX3J1bnRpbWVfZGlzYWJsZShkZXYp
Owo+ID4gPiA+ID4KPiA+ID4gPiA+ICAgICAgIHJldHVybiBQVFJfRVJSX09SX1pFUk8ocGh5X3By
b3ZpZGVyKTsKPiA+ID4gPiA+ICB9Cj4gPiA+ID4gPiAtLQo+ID4gPiA+ID4gMi4zNC4xCj4gPiA+
ID4gPgo+ID4gPiA+Cj4gPiA+ID4gLS0KPiA+ID4gPiBXaXRoIGJlc3Qgd2lzaGVzCj4gPiA+ID4g
RG1pdHJ5Cj4gPgo+ID4gLS0KPiA+IFdpdGggYmVzdCB3aXNoZXMKPiA+IERtaXRyeQo+IAo+IFJl
Z2FyZHMsCj4gTG9pYwoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
