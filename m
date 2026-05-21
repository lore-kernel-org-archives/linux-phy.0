Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5C1BCD4F5E
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 00:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WaiWNVJfYJoabfjGoleOJwzoQE+8rl0Olsc9pi3uyiM=; b=PUU4H3Xy91lCWr
	ndkaxsRmW4O/iRqs1WiPgowKPvlTsOVj8xBJXIQKWXmIEy7iLZvGSVFvOGOD8qIVvW2K2h3E6mMeV
	LssLCjCAUamYWK3/VpFli0NkW2fVBpfD03r/b+ZnhWxL7wBDmzBCFCQZeSEV7DfQcAgy9VQqyll4W
	4wo7kY1/8varfkWrASQsTcutQlMI//NQK+6D94kyELWSRsigUUILvFtHErK8MlaEmNpk1faOnHzS2
	orLGG2y2j6hx8sHeAOupgOWJkN3bM0AKxzY8KA9Jx8pY7v+R1OR9lqlXiNQgH2qyoL/uuP7DVrD55
	SYy/js04p37w+QqoyMZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPi-00000006I1c-2o9p;
	Thu, 21 May 2026 00:37:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPrPg-00000006I0P-3QR1
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 00:37:26 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64KJ85Qp3085785
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ndtMzgmuY+0pFl9mHos/KMSkAJpI2bJq6DS/PiSdLZw=; b=ZTAOCRBM27immPp6
	oJq01245epfnbyeN788qu8Pw7+bIZRkhdG3VvZj+4TZxjvdrM9yivnrYOEOaQzC0
	t+mBE35auXrggiyT7PigQBLIKotocgzzaMLOyIntUpLT+pKhxhkCT+xlTwHEm95i
	kIENQt9H8NkQURBZ9nz783rUnQMps/JnJRQEI/KM+sGCbal6WY2TmcbdYfWyZo9M
	fhCG3qgkjjtQOfckV0Yi9sMa15Grd9zkNBjmzl7jzBmKVOiveFgEBauTDC0ioVaE
	5x8yUvHrt0D8xrhEEOE8fhRRNPqQw2YMOQm8v0Td13cONUza0oAdqkyHOlc1csRN
	xoRMZA==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e9c7f2uf1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 00:37:23 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7bd726a9569so108410887b3.3
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 17:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779323843; x=1779928643; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ndtMzgmuY+0pFl9mHos/KMSkAJpI2bJq6DS/PiSdLZw=;
        b=WTLN253y7yU2BM3t89hfmQKMGIMhEUQaYu8Q7GrveBMJKzI42X+1T+OvwWoYhM3tcZ
         3hElazGk5nSvBowpBk38RpGGK4yNIjYJ7oJDDGw2CqTQuQ4U28WIzTmrLAWCZFpqdVen
         1//KEzs2np1SD89f0DwniWktWfvSHL/talSPZKTx92k4I80vJArS/dRFucn6StrdfsLm
         K5wNFoOedYEPe9a2YPjBtn3QECT2ay7r1kgbeY98SA6OscHHADumUJwHpsKeOTTCi7mm
         tUvM3yn30Lhem2VsK5J9I3IH2j8ESdWtmAmvHxOXwoJps8YaEI/JkeoFab6XN00smBY1
         oZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779323843; x=1779928643;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ndtMzgmuY+0pFl9mHos/KMSkAJpI2bJq6DS/PiSdLZw=;
        b=mFP3LcYsdkOzLHc8NxPoFofVaTJGlso37OVvFMx+sdOeka8cN1Z9aQ/jQDW7QnJAq2
         ylQKuV9Kst2X+PM7bvwtk4M+IkhVca2VeAx2aOLNBk4AUZnVauh8zQ4cZNxqOct8Lc8e
         DVl4nMVmXR+LHlfhvepaNZkugFrO0wLUg6U9cBupAbmMWdbOz0zouu0OR1aCfj65912U
         eaxPg0WdDFNXX3v086X48lPg5uoYNtqWe+8twn9ihAKWFUkYBmnVVQT8QMfmx7/1ur+H
         A/q50AkfbsEJqdJk9PIMR0eXVnh092LewaBNcAkEXjL0iev1SBo9KHhwYIuJqpzeZw/8
         tszw==
X-Forwarded-Encrypted: i=1; AFNElJ+sTHicfTSGUsD5DVFmWA1MQfR/0Jecw/JkmOLBEBuUps+9M2VLKeFgLViH1v0pM1Na51uRIyxKGyg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/xGdiKSAlofoquZuR7qqDeXZqR7bchVAYkqkancdSNeselWca
	OUIftp6plSEEG2IOIAAmk6rliU8nm+jQjLmFfPGs2/NKH7cqyG/swJjMBz5A5X4nJ2c2vVBaY1o
	5OECRt2kncXacNjYw1nwYeeSCTpeLTOhSklD8eObJsNR21yz33kDbmPNqG3Z3M7kHKvWB
X-Gm-Gg: Acq92OG5YKSGhQjwF1p49zX5oUzYFiHSsV7GRoIUGoJ35LY5y816F8UWcrbBY8k1ajN
	OiSrPztD7lNYMd9jQy0btK3toyg/Agru+VveVlBbcLHI/QiVx9/8gR725Htjp8xBxbDSuxF7WhS
	PXGjXU3OeqYgDALuBfhfWnkgOWys5ZZvwPcJj0BQA3lmD4kxnywT9CL2HwPBDyKW0oFH8LqgICt
	8TYnE1omlSzSeVtpNraORfMHlSan2DONhccOpGZocPR4UkdA0JGh6XE+HBkn0FmeoPr/hICRBLP
	6/acNU2e0UTim/42m8414o7vUYNlendGNVDlvimtAaQVvXiXzfCCWzZ4mh9K6FVsuIhebhHb3mp
	1viYnyePliextTF7DdGNwWr499WFZydPcx5U2G+D95u3huFwbWdhoXJU/m6m9AhYoJfZFi/Hxnh
	OvnEXo7X7mRZcTld0=
X-Received: by 2002:a05:690c:6c07:b0:7d0:ef8:6898 with SMTP id 00721157ae682-7d20a6b0832mr8730157b3.14.1779323843235;
        Wed, 20 May 2026 17:37:23 -0700 (PDT)
X-Received: by 2002:a05:690c:6c07:b0:7d0:ef8:6898 with SMTP id 00721157ae682-7d20a6b0832mr8729907b3.14.1779323842866;
        Wed, 20 May 2026 17:37:22 -0700 (PDT)
Received: from scottml-Latitude-7455 (107-198-5-8.lightspeed.irvnca.sbcglobal.net. [107.198.5.8])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc991c98d9sm60545717b3.10.2026.05.20.17.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 17:37:22 -0700 (PDT)
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
Subject: [PATCH 4/4] arm64: dts: qcom: x1-dell-thena: bump linux,cma to 256 MiB
Date: Wed, 20 May 2026 17:36:15 -0700
Message-ID: <20260521003615.1260844-5-mike.scott@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
References: <20260521003615.1260844-1-mike.scott@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=c/ibhx9l c=1 sm=1 tr=0 ts=6a0e53c3 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=cdagev08qavQYXHyx3V8vg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=GRacV1d55YfRzDIv3pQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-GUID: 98zUYFe2CbNRtfMf6qS99kkP0z9-8Rou
X-Proofpoint-ORIG-GUID: 98zUYFe2CbNRtfMf6qS99kkP0z9-8Rou
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDAwMyBTYWx0ZWRfX0TjhfCXyXKOZ
 RTmxfcMCvPiO7LSkBcoSTwOSQstOlHTGmrsh0C1HH29vDVt+dm8QucfVrfHF/oBR/VtZjlPnxAp
 ///XQX7L47yeeLS9DbRhjlWbg96OWerb7nGPV+hz3glv5htlcST72YhqrnOL8RSyKRlzCs/rF6m
 SoEv6mtGdcRmoWNEmJjoUiTvePW+Iojfrq8DFXZeTe71uODedIb24BzlRa3AUGYfvU7IUCIo9BE
 MPnorbnzB8BWpRjH3F7jZTU23dRpWBH/gbINb7dVJYTu56HfWNV+isFZwI6ReOj1PeV/YT9J95n
 ncgJVXp7gelYVSm2eR2oZ3rvYn64xfAUMcIPzIz8X63TCnRObiRuiV82gdYT355NIFg6h++jVT5
 bIuZz0lNA+wnsKlnH/x3Folw7C8V4vkFqLAY/IVnGjlFIfM6tFsx/uXOPhH91uw+J5b8Mw+7wMV
 ay4HIrIdOv4d6XXl2tQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605210003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_173724_976433_88F02ACF 
X-CRM114-Status: GOOD (  15.86  )
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
bC10aGVuYS5kdHNpCmluZGV4IGQ5M2I3MDQ4NzJiNS4uNzg5NGQ5NmQzNGVlIDEwMDY0NAotLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDEtZGVsbC10aGVuYS5kdHNpCisrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS94MS1kZWxsLXRoZW5hLmR0c2kKQEAgLTE2Nyw3ICsxNjcsNyBA
QCBsZWQtY2FtZXJhLWluZGljYXRvciB7CiAJcmVzZXJ2ZWQtbWVtb3J5IHsKIAkJbGludXgsY21h
IHsKIAkJCWNvbXBhdGlibGUgPSAic2hhcmVkLWRtYS1wb29sIjsKLQkJCXNpemUgPSA8MHgwIDB4
ODAwMDAwMD47CisJCQlzaXplID0gPDB4MCAweDEwMDAwMDAwPjsKIAkJCXJldXNhYmxlOwogCQkJ
bGludXgsY21hLWRlZmF1bHQ7CiAJCX07Ci0tIAoyLjUzLjAKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
