Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6539ACD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 01:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H69Liiz1ZMwcbqfaj1GHC2dgluOaC0FCDrm/Ct8L5+Q=; b=kFpYoxRbXyXmy4
	VtaVPAsE9Gb7GSBAXZKrkLcB3WzM5f3D/WBfjCt9hmfEFEHZrygsHDN2HBc2P3fjL6vG1bRBd3RIU
	HjUL3cbKiVx4GKUHNAK5N/H5cj+AmClrRAY/wUiNgG6IJbf1/1MTNlvJRCR4ikTc8mx698xULRUc5
	P927aIUKhNpsoH9H0S9ztpr3vlPysOq5VSgmILqzksADCwQpy5/dWG/dW0L/0jWlsjZKgiO25PPkj
	0hY1cKit+0pnLz9tQ4qf9f3cWPpGka0PdlAfIoYSwTnLKcbaryDf8r1LbGYtu3L0j+ER75gRirMcB
	coBABAFikePzmclLcRww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrvL-00000006LOB-368m;
	Thu, 21 May 2026 01:10:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrvI-00000006LMZ-3VND
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 01:10:05 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KM10Ol3680415
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:10:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+hhG8da4DumoUI+vB6A92v5ZtZlBaXWB9NrZWaYMTPc=; b=JfS5aHGz4pyIXxHX
	/A9TPu5pRAWtc692FLEgyrlNO8H4/b/FptWcud+TaT3DPIEYWxg8GKcGTcWIuxQn
	+WhT7NvDDhZK3YgjAY9m6BYMLZzBgI/kvC48cXV3j4wvmKnu7wN9vb8QIuu1I9mJ
	j9x99HG7c3YaK5smLqCI4hIRUfqb3VkA6aSt9ntxGO8m+cIn2VkDPhfwuwGPIA/n
	8pxDL4gpetoQqB4SBDS9w72gg8EEtZZx1QZe8NAkXlqd5FsxF3BOc3nlw3CiO6pz
	0v0JQ79Pt26OPsGD/6ZIRpJNExPpHbARv4zXlUB1UfepvzllLtTBD+itqB2v/Wzn
	luOaSg==
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9e9j2exc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 01:10:04 +0000 (GMT)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-7cb345d0b29so122331177b3.2
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 18:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779325803; x=1779930603; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+hhG8da4DumoUI+vB6A92v5ZtZlBaXWB9NrZWaYMTPc=;
        b=do71ImF0+fhGDU529RlO+vYhU2/OTeHbksjY3gSOWJpNHPUXydyMc6AyZaf/XLcvTT
         gyGZFlsD85tK+LC9Ty2Qc8f/OFumPq4q7PKL0U5jNuAsTs5ckvXtP0MJfLv4Q9Nq9NIB
         Wggbki0+sqEYaM5jo2DaHsE7/s9O7PYSjeMlQ4sfCPklKV/A03sbB26ne6M3W/RA12Y4
         lpNrl5toc5+YGSqXNZuS0dkCRSZzAsyHnAjPaPPNXjf/8iEWkI6Qe5BnbKaW+kthq4nG
         lX8arO3LyYjRZtlHDA55TnoBNeGLuj9THSbH86glzHsqcZogwkoZPHrg7oj1/xpjNcV4
         Txww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779325803; x=1779930603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+hhG8da4DumoUI+vB6A92v5ZtZlBaXWB9NrZWaYMTPc=;
        b=h62ZG0ROqcVL9qv66/F+hvP5KWKeCaqFtckk1t7LUEZnNUXP7UIzLxSI/WpTwTN2lE
         9qoS4C+CL3WZz2FZGRhQqaAEzLlQz5hmblx9UNNz/j7ZtB2ib4OzH4HKO96lFXnJvecV
         3N7WUVSfrcSttU8Nyga7YwNsw+J/918CPDRz38BVToYqDcFVQjtGeZGsLhh6SQhnK+u0
         4KFMxNmMQXXacIZjL1tIKypOlQSZo9mc9jrhA47a4rH25aBSOx9ucl+zgrCm3TsoGO2T
         ducj0UvcPDQ87T7k9pJplMSG9HvGsHqk7ATtuxEENI0f9cwlP45j9swLz6QbGNJ+d38l
         EUsA==
X-Forwarded-Encrypted: i=1; AFNElJ+B2C2daOwffvwveb+MjKcFhv8fFD0BS/vmhOUaqrPNRgdTEaj9M+91MQdQsi3qQ//7SDmKfl3QLAA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnaWvKoTIh0KZLpsBJmrgQAAGRs8o/OJkRgZA+IreAKjcBS2S/
	jWHDDLjmnHJPyHbR1QmDdGeidGB2j7XkNK99kKtFYNO9b4mCwOU368CWC660uzkpbO8hXnU4siZ
	ygfA7v6+Mp5XT+7WRE69zzSjb7tXwrtQpvPe0K9Tt/gyu430NiFShl+uye6OiulAFLnZf
X-Gm-Gg: Acq92OFdF7PBkMAZtr3Yzmi+URRnP5XbtPkExlMa3JDlbDGvPcdCuze7UY1DcXJxjFT
	ToTejfOFRvYwSnfixWWlAnc21wEnjyeveih2VqmOoWYCYD8svEBahr1+C0Xr2pf6WXKy8o0e5Ze
	l8W0kLb8cJxCv/NzXpSZBVnKbx8F3URkYDECfj8I77TsTAYY1GazvrkMr2YLqutZ76DMYs1lMC5
	GYbubNLAxCBCe99vKtkIUELuM6gG1bnUteEAuUgRibTLh4AAyFEU8mvcJjWFjouCTG6Ihfkagd0
	aDFGPLPOgHBqwt2OXg3pZOJpth0jh2KSPANnk3JwwTenqdomHu8yZu7GcAyJ+40YKbtEDIZQp+k
	yo2bvfu+It6BNKGZmAYjPRN/zkH8ofylF77i+3FLVW8nfZI2KEjWaj3RqwKLbg+dEEX9TNP2xFd
	A3RGIrmWjvp4aLTyg=
X-Received: by 2002:a05:690c:25c9:b0:7b4:3d82:bf6 with SMTP id 00721157ae682-7d20ab9e281mr9263667b3.11.1779325803500;
        Wed, 20 May 2026 18:10:03 -0700 (PDT)
X-Received: by 2002:a05:690c:25c9:b0:7b4:3d82:bf6 with SMTP id 00721157ae682-7d20ab9e281mr9263337b3.11.1779325803021;
        Wed, 20 May 2026 18:10:03 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60851307b3.10.2026.05.20.18.10.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 18:10:02 -0700 (PDT)
From: Michael Scott <mike.scott@oss.qualcomm.com>
To: linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
        linux-phy@lists.infradead.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, val@packett.cool,
        bryan.odonoghue@linaro.org, laurentiu.tudor1@dell.com,
        alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org,
        Michael Scott <mike.scott@oss.qualcomm.com>
Subject: [PATCH v2 4/4] arm64: dts: qcom: x1-dell-thena: bump linux,cma to 256 MiB
Date: Wed, 20 May 2026 18:09:35 -0700
Message-ID: <20260521010935.1333494-5-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=bfhbluPB c=1 sm=1 tr=0 ts=6a0e5b6c cx=c_pps
 a=0mLRTIufkjop4KoA/9S1MA==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=GRacV1d55YfRzDIv3pQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=WgItmB6HBUc_1uVUp3mg:22
X-Proofpoint-GUID: WekBTPey2T-CWcVQyL9pxWtflT7cvDdD
X-Proofpoint-ORIG-GUID: WekBTPey2T-CWcVQyL9pxWtflT7cvDdD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwOCBTYWx0ZWRfX0KjUBzFiJfY+
 w0tqU9niQFM2XFRHpj5rv07yyoau3QmlDkXc39sjYrYJuHkxrhrMX50/Zeidb4vCpR7DrBApinV
 ZtapLCYdKIucPTPqJg20ZKV5bbQwL8H1CxWmGFrGjv5nKA4ID3waGfjYUY1FvYcgTK779VfSABH
 LxH+KXgnRkAOxH56a6c5z7uhRH7XnyMtC/qpAFilnjMKZZ+cKsr5yG/cj4OmGLnRJNI7CAjgenT
 GlVjFG4KOqTRClyQ5Gj/0qUCNWJUpjAHm/dI1ZiVBxv1X9OieCvpwfMB6jz+9M1O5C3AOGxLoVe
 fhHCvOCycw2ZeQAFzjF4KTGLp5TugnghBihGRIO2Vl2VrzTRZXMtf3+9ELSrt717tytuDtAAcGN
 Y5XVkvkZhAQZLHb5So8/THTEmO4+pJyDv88JkhS9lasWqvcmof746JTldDarZwD7D6KIRQtlG0M
 Ov45leFw/gyPP/hWQRQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605210008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_181004_881872_DAC91B61 
X-CRM114-Status: GOOD (  15.30  )
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

VGhlIDEyOCBNaUIgbGludXgsY21hIHJlc2VydmVkLW1lbW9yeSBwb29sIG9uIGRlbGwtdGhlbmEg
aXMgdG9vIHNtYWxsCnRvIHN1cHBvcnQgdGhlIGNhbWVyYSBwaXBlbGluZSBpbiBwYXJhbGxlbCB3
aXRoIHRoZSBub3JtYWwgTGludXgKZGVza3RvcC4gT24gYSBmcmVzaGx5LWJvb3RlZCBzeXN0ZW0g
d2l0aCBHTk9NRSBydW5uaW5nLCB0aGUgdHlwaWNhbApydW50aW1lIGNvbnN1bWVycyDigJQgbXNt
IERSTSBmcmFtZWJ1ZmZlcnMgKFdheWxhbmQgdHJpcGxlIGJ1ZmZlcmluZyBvbgp0aGUgZURQIHBh
bmVsKSwgcWNvbV9pcmlzIHZpZGVvIGNvZGVjIGJ1ZmZlcnMsIHFjb21fY2Ftc3MgVkZFCnByZS1h
bGxvY2F0ZWQgYnVmZmVycyDigJQgYWxyZWFkeSBvY2N1cHkgfjEwMCBNaUIgb2YgdGhlIHBvb2ws
IGxlYXZpbmcKb25seSB+MjUgTWlCIGZyZWUuCgpUaGUgbGliY2FtZXJhICJzaW1wbGUiIHBpcGVs
aW5lIGhhbmRsZXIgdXNlZCBieSAvZGV2L21lZGlhMCBvbgpkZWxsLXRoZW5hIGFsbG9jYXRlcyBm
b3VyIEFCR1I4ODg4IGZyYW1lcyBhdCAxOTIww5cxMDg4ID0gMzIgTWlCIHRvdGFsLgpUaGF0IHJl
cXVlc3QgZmFpbHMgb24gdGhlIGZvdXJ0aCBmcmFtZToKCiAgICBFUlJPUiBEbWFCdWZBbGxvY2F0
b3I6IGRtYS1oZWFwIGFsbG9jYXRpb24gZmFpbHVyZSBmb3IgZnJhbWUtMwogICAgRVJST1IgQWxs
b2NhdG9yOiBTdHJlYW0gaXMgbm90IHBhcnQgb2YgL2Jhc2UvLi4uL2NhbWVyYUAxMCBhY3RpdmUg
Y29uZmlndXJhdGlvbgogICAgQ2FuJ3QgYWxsb2NhdGUgYnVmZmVycwogICAgRmFpbGVkIHRvIHN0
YXJ0IGNhbWVyYSBzZXNzaW9uCgpyZXN1bHRpbmcgaW4gZ25vbWUtc25hcHNob3QncyAiQ291bGQg
bm90IHBsYXkgY2FtZXJhIHN0cmVhbSIgYW5kIGFueQpvdGhlciBsaWJjYW1lcmEtbWVkaWF0ZWQg
YXBwIGJlaW5nIHVuYWJsZSB0byBhY3R1YWxseSBzdHJlYW0uCgpCdW1waW5nIGxpbnV4LGNtYSB0
byAyNTYgTWlCIChhIDAuOSUgcmVzZXJ2YXRpb24gb24gdGhlc2UgbGFwdG9wcycKdHlwaWNhbCAy
NyBHaUIgUkFNKSBsZWF2ZXMgfjE1MCBNaUIgZnJlZSBhdCBydW50aW1lIOKAlCBzdWZmaWNpZW50
IGZvcgp0aGUgbGliY2FtZXJhIGJ1ZmZlciBzZXQgcGx1cyBoZWFkcm9vbSBmb3IgdmlkZW8gcGxh
eWJhY2sgb3Igb3RoZXIKQ01BLWh1bmdyeSB3b3JrbG9hZHMgaW4gcGFyYWxsZWwuCgpUZXN0ZWQg
b24gRGVsbCBMYXRpdHVkZSA3NDU1OiB3aXRoIHRoZSAyNTYgTWlCIHBvb2wsIENtYUZyZWUgYXQK
R05PTUUtZGVza3RvcCBpZGxlIGlzIH4xNTAgTWlCLCBnbm9tZS1zbmFwc2hvdCBzdHJlYW1zIHRo
ZSBPVjAyRTEwCmNhbWVyYSBjbGVhbmx5LCBhbmQgYGNhbSAtYyAxIC0tY2FwdHVyZT0yYCBzdWNj
ZWVkcy4KClRoZSBjb21wYW5pb24gYm9hcmQgZmlsZXMgZGVsbC1pbnNwaXJvbi0xNC1wbHVzLTc0
NDEgYW5kIHRoZSB1cHN0cmVhbQouZHRzIHZhcmlhbnRzIGluaGVyaXQgZnJvbSB4MS1kZWxsLXRo
ZW5hLmR0c2ksIHNvIHRoaXMgY2hhbmdlcyB0aGUKcG9vbCBzaXplIGZvciBldmVyeSBkZWxsLXRo
ZW5hLWJhc2VkIGxhcHRvcCBpbiBvbmUgcGxhY2UuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFNj
b3R0IDxtaWtlLnNjb3R0QG9zcy5xdWFsY29tbS5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3gxLWRlbGwtdGhlbmEuZHRzaSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS94MS1kZWxsLXRoZW5hLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDEtZGVs
bC10aGVuYS5kdHNpCmluZGV4IGQ2ZGU0ZGEwMmRjZC4uNzE0OTg4YTgxMzg0IDEwMDY0NAotLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDEtZGVsbC10aGVuYS5kdHNpCisrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS94MS1kZWxsLXRoZW5hLmR0c2kKQEAgLTE2Nyw3ICsxNjcsNyBA
QCBsZWQtY2FtZXJhLWluZGljYXRvciB7CiAJcmVzZXJ2ZWQtbWVtb3J5IHsKIAkJbGludXgsY21h
IHsKIAkJCWNvbXBhdGlibGUgPSAic2hhcmVkLWRtYS1wb29sIjsKLQkJCXNpemUgPSA8MHgwIDB4
ODAwMDAwMD47CisJCQlzaXplID0gPDB4MCAweDEwMDAwMDAwPjsKIAkJCXJldXNhYmxlOwogCQkJ
bGludXgsY21hLWRlZmF1bHQ7CiAJCX07Ci0tIAoyLjUzLjAKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
