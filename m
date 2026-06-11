Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6D0BCD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 16:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaLvsNmIcp1qUwjD1oPALArySqQmZ8w2Mek5lCBxy5c=; b=ITggPEPJ6I0CdB
	jgC7HPs88p3kieDKAIOX/j9V8D/uYMGBt4A+5yfE6tuzvB9RQKsPpxNVA1j70C5ikamTHqsoz35nE
	ECouxUkwEN8qFLCGvFqKGbkJ/akHh+bYGPchEzPZzi4VyafHiEfdSxsxlwGHs7bzi1f456SLIEx7Y
	OYeS0konx5ib1RnVJM6cWhqyBTNsAn0ws5JpJd4wCTNN7x1sPKRnwczYVa9bYmOCRBGqnFIWyHpz2
	/rRXndiQMj6i7AxRVAkJxxkQ5MgQyjWqiei0BfZBXpbousLFww9NZdR3HqrN05z0zl1uk1HbPpdFP
	GeXUJhq2DfdZ59XGAHJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXiAZ-00000009kkP-1WuS;
	Thu, 11 Jun 2026 16:22:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXiAW-00000009kjX-4BOU
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 16:22:14 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BErbTu954638
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 16:22:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ym9JHhuGJVnxTXzvMLa8Dh5LEiXzF8dTCSzFskP6WRE=; b=RNEoKpZpXXlhW19u
	rkq2Yg+M6qExhzikZiCg8s/DzeWVooppQDlIjVVrvvAJmismaREsXBMA3P78+34x
	N9OCj4dDl7wCDhtEyXkecvSMlECLaAxH+lF76hZkkoy4ZypghqJ6irCatdaCnWJO
	eBQwfW8Lv1f4a7xPiiHP7eeacHVVc7BVMfA8vCvvdoEdWNOKZrDGTv6zWWdpLyyD
	9XvxXNIpmfJc5z1iCKaprNgfQ07MqaBwmdS68Z+7ETNP5nJV4CrXh/gZetvSVBs2
	C96DKy3inAJ8+PUCOyCqmOXeWDas3Czz0SR1CBBqFcaqPL0h/QP4kybalCBu2w7a
	1gDu3Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqtb5hr0t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 16:22:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2c0c32faa62so115945ad.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 09:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781194930; x=1781799730; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ym9JHhuGJVnxTXzvMLa8Dh5LEiXzF8dTCSzFskP6WRE=;
        b=eVTraqetZFZYXdX1N6LiEQ+kHS7iwuei4M4vJ/pExMG/WqqP+1rg9wnfaiJVrnweAT
         PmbCRpfzATtXJdMON+4OIniuUvgmaL9nXDOfHzjPG5hj/FRmDxX6Ol8LAUWLKvlC+tTq
         qv7BJQ2hTF+a56RvwWvgDLzoE4j6H1RaxaAKHP+hVlAGGtZ+FwOnhOeWylhi/x0HmTy9
         38qdrWyKfPbLGmNBaApEnuZJCC+m2PBfI4RoDOx9bsQRWdLsrqvLbm83M6scsA5Pox65
         8rW6r+x3CRNL/3BSCYcNJWUbB8rUvXnRYKHNa67C3V+hLl1F6fvTU8hyq8bx2Lx5RIA4
         TyZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781194930; x=1781799730;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ym9JHhuGJVnxTXzvMLa8Dh5LEiXzF8dTCSzFskP6WRE=;
        b=CZwzfqUQPTHzZV5Ifg0X2WYHzsa4fcS7XkGOi7jRU+YjMW603k8I3JIB0tFvZzmrRO
         CCtNEnz7vT58PXjtj056RKEWcHHll08ZSRZTDd3igO0Bdzv0mDsZG3O9tk/i0cpdWjOy
         bzn2gKMqX0M1I1LXEnQYNpKZSbx1psDJmKKMBtTkh5ePxBuCWX/eJaIUIjWWLgVQr/9j
         3Ajn13G3nmix1+zLS6E/LAYL4h/Ssp9OlLaNKX4r4S2NZdjp0ST3uG2AIhIquzxcCzGM
         pf8vXsSkgsDTRvo+vx5y2astGZvIDa2GXfrCoS33hIULcgKYnAKcOOzSjeOy8thJ/30a
         KByg==
X-Forwarded-Encrypted: i=1; AFNElJ9drdVXwYyemaLWTUjwvq5mffO5Iy59cr1D83ijCls/prmahix+7oUtanvO6bHl0i7i6inK3Usb1Mw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlBFxFi9VYttsPMxGkrz1M6Wg/EYBxLvHI9spqMej8o7KdNpv7
	jcrYgx317IDyZgSDh8NfRVeVf080V2ZQBheWaN3kI/11+on/Q2W4OV9QVCDt9ZmgDQ1gPBQUSI6
	msaCUS4qBJVzRSd9Qi4N6ZU8Wrg78pplYijbxtZvXysHk/qez+j7szOOeL1nF0ALT1tIp
X-Gm-Gg: Acq92OGbhtd3EO78/rM5v+Ss4IvaDRWoTkqhSIs9mBqbyumUJmBZrHSplH19HJeJrQ6
	kIenLzLBZY0fHh1LiSD9MPJgQK9RD6aMmlKgQJNzU8K+PPBjxaiT1tLDv7lpc/NOTVLNnswbrMP
	kjYih6DtG0kR5brRc5qkfHwyjOZgEYmjSy8O+YSwz65RSxvU46NyWzK/Ath46w76fxOedgHqGJM
	CeVx2XuP5hmcTa04V0FKQIEocNetCnsO/fYJbzNB7tZTMGi5/E3AbgfFvsXse7MCA1e1OSDvWDK
	vbTaYTypdNrnlCm+V9Xy+emgqJbWaNOm1C9zKv+JXauGCLvWulpNEneG9TRoWdmCqLYgCVYPv6q
	9I3Sm/F/E3S6EVUMoeKfhr9uxtrM94n3PGX1DwZkbDctmnAotLCizRmMA8qJUItY=
X-Received: by 2002:a17:903:1984:b0:2c1:5135:39f3 with SMTP id d9443c01a7336-2c2f0639a6dmr44760165ad.11.1781194930349;
        Thu, 11 Jun 2026 09:22:10 -0700 (PDT)
X-Received: by 2002:a17:903:1984:b0:2c1:5135:39f3 with SMTP id d9443c01a7336-2c2f0639a6dmr44759545ad.11.1781194929759;
        Thu, 11 Jun 2026 09:22:09 -0700 (PDT)
Received: from [192.168.1.8] ([122.164.81.0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164fa3a5fsm296310835ad.36.2026.06.11.09.22.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 09:22:09 -0700 (PDT)
Message-ID: <8a0e9314-0c97-48c8-be95-986c7e6fe641@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 21:52:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for the QMP PCIe PHYs in Qualcomm IPQ9650
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <aiqYtowP2DQt7Jw0@vaman>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <aiqYtowP2DQt7Jw0@vaman>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDE2NCBTYWx0ZWRfXym/yfMKYXOGz
 I2JyDHbj2ylMSblivkIrfOnWHcD6sRcxATroTv/ZEgM8ovbfzhWooiMKIxrB2u9HPIIhWdGq4UQ
 ClzM+/tRtTyePNEbzuzXvRlicKIkQUTKi0ndqKH8PNBs7chYzfYh0T7xxESwMkRq/9mUFnQLc5Q
 zMG20JAVGJnN9KfF92Qhpo75FO5nIM0SQaaLGiePGYt2cFw0c6kOLzzClV7pfg+uI6OPN42Wd3j
 YNYFu8FeOmsuSmN59MHRUoaMNdkUDBoHLW7z7NE69oV5Z+2abg72DufYbym7sCcbP7X2aZybllm
 bOTEh3yU71WRUGeb3xf4ZimGRH0mVmUYGhG2oI+x7OEKiakhKpUWgHAafqLGuclSjO3j01bHfhV
 VUvLZ0uwY3ZJSX+9VeLIdZYMqBGkaYiVxmgEvM3XrPUKfo40+nxb24nEUvmt2ahuU9yXUfqDEl/
 +zmzTWTIPEjZQRzHYiA==
X-Proofpoint-ORIG-GUID: -cr3TEzgP8hNBeshmmxSP7G_XbxMlu6A
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDE2NCBTYWx0ZWRfX8xMVJGj9rSaK
 00oWmNy4dhVQdMOLsmEudW6f1eQdlSJ7u831ZIe5PWlM3MWFy2xlZP42GhE6CcR5/L1GuJ458I2
 oM4S9daHoEbrGngG2FjXddf//gBNemI=
X-Authority-Analysis: v=2.4 cv=e6g2j6p/ c=1 sm=1 tr=0 ts=6a2ae0b3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=DVNErGSwdtF8OHn2hLoakQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=MO7iE5JbH1gLMWvasfoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: -cr3TEzgP8hNBeshmmxSP7G_XbxMlu6A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_03,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 clxscore=1015 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_092213_154664_2A1F36CF 
X-CRM114-Status: GOOD (  10.74  )
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

Ck9uIDYvMTEvMjAyNiA0OjQ1IFBNLCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDAyLTA2LTI2LCAx
NDo0MCwgS2F0aGlyYXZhbiBUaGlydW1vb3J0aHkgd3JvdGU6Cj4+IFF1YWxjb21tJ3MgSVBROTY1
MCBTb0MgaGFzIDMgR2VuMyBkdWFsIGxhbmUgYW5kIDIgR2VuMyBzaW5nbGUgbGFuZQo+PiBjb250
cm9sbGVycyB3aXRoIHRoZSBRTVAgUEhZcy4gVW5saWtlIHRoZSBQSFlzIGluIHRoZSBvdGhlciBJ
UFEgU29DLAo+PiByZWZnZW4gc3VwcGx5IGlzIG5lZWRlZCB0byBicmluZ3VwIHRoZSBQSFlzLiBC
b3RoIHNpbmdsZSBhbmQgZHVhbCBsYW5lCj4+IHNoYXJlcyB0aGUgc2FtZSBIVyBpbml0IHNlcXVl
bmNlLiBTbyByZXVzZSB0aGUgdGFibGVzLgo+Pgo+PiBEb2N1bWVudCB0aGUgY29tcGF0aWJsZSBh
bG9uZyB3aXRoIHJlZmdlbiBzdXBwbHkgYW5kIGFkZCB0aGUgcGh5IGRyaXZlcgo+PiBzdXBwb3J0
IGZvciBpdC4KPiBQbGVhc2UgcmViYXNlIHRoaXMgb24gcGh5LW5leHQgdG9tb3Jyb3cuIEl0IGRv
ZXMgbm90IGFwcGx5IGZvciBtZSBkdWUgdG8KPiBjaGFuZ2VzIGFwcGxpZWQgZWFsaWVyIHRvZGF5
CgpUaGVyZSBpcyBhIGRpc2N1c3Npb27CoG9wZW4gYWJvdXQgdGhlIHN1cHBsaWVzWzFdLiBPbmNl
IHRoYXQgaXMgCmNsYXJpZmllZCwgbGV0IG1lIHJlIHNwaW4uIFNvIHdlIGNhbiB0YWtlIHVwIHRo
aXMgc2VyaWVzIGZvciB2Ny4zIG9uY2UgCnRoYXQgZGlzY3Vzc2lvbiBpcyBjbG9zZWQuCgpbMV0g
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20vYWlxWXRvd1AyRFF0N0p3MEB2
YW1hbi9ULyNtMzdhNTcxZmFjMGM3N2ZkMDBmNjM3OWFkOWEyNDE0YjYwNDMxODIwYgoKPgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
