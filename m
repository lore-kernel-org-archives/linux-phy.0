Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F30BCAC5AE
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 07:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n75Im9CQtVNm9yYimr/SNrXouO7NY41KEyo6795nNtA=; b=S4+t2li12+XKVc
	nARLmx0PrZY1smc5rzTkHsZoU8BGXHv5hML5VDtnREGhSM/YMEO7+PwmD6WKEyh00QDAkaqjB8COr
	HmhuGarwMLwqFe1qDeedXwCv0ibnH5ZOxJf7+12OBWK6Ji++hbBPYnd6lP8rJX9foNS+k5qrn1pyP
	WBO3RVblRebdanC3N0OjGhHUXy6OZtoYQemreNSi2KdVJEhxGL760R4HQenDKttKV5Ul/+O0Xb0XE
	rK2R8rSDceHvGxgY3NV8QPivzQBXsWvQUGnYpMNjSheWSi+5W4ngXHWDsMYA3EY4yUoG+BQk5/luh
	I7ZIiFgqeyie3bxgOfmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22qP-0000000GksO-3dNx;
	Fri, 26 Sep 2025 07:26:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22qN-0000000Gkrd-1VKJ
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 07:26:16 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6ofmT011343
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:26:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=dud8WJNENTmI5gxnKUE5mo
	+sgzvsIU1AqAlFb2/ff4g=; b=jOmbzYoOcF389FUnUJYAwuRjQ4tMNMig09hthU
	W/HdEmhKbPeDGO6974HooNYmQip1WKawnXhYyMvjGlc5MyBrrYgHvtAPttELhJrT
	bbW4trrFtsXJw3EGGF+G2bDlLt0f08H4CiSKh46yv8oQTZIachK95M9NdKWWsJci
	LjiXcw1aAht8ZtRpMJbE1hiIpmb7pxFbjeREu+xXD1st4lXAcsFFcQtemhFoZmwk
	8VYb++/FECvu//MbGsRADUE2t3xg4IRGiF7JV5IjfDq/mvNaD3W8fblXkGdC4U8b
	vfWUKFU2Z5T336aEy8sMmIEFIrRFZSxJG1U+6un2iY0lW/IQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q1vyw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:26:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-26970768df5so4238155ad.1
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:26:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871573; x=1759476373;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dud8WJNENTmI5gxnKUE5mo+sgzvsIU1AqAlFb2/ff4g=;
        b=rgvACxwa+6tQFvzniAiAlRnpkhJbnvrak8AsXtyZXTk+n/OIWikSsDERZ7IRnulCHQ
         5KA7BBt/HxZvfCbbHklN7JFoTQf+PaaAt8CKS1F+0pmYkKIRVrh4uqINeVfGIFe/4q8v
         OARzGwLOgd7pdvop4zl/5I9ChZrKdEfQEMw4X1GkKea9WwVhpXrsS183NC5sEj7bCSXe
         TQ6B37GNoXjawuq1qCC29CifJZ3gpD4ZE07NYOiBQT6URtzSR6GNWKLzMkQDTQWDDOlG
         dIQiBNdzNXuAUceJSUYlgvVWNKatPPUE+wXLuH8RhdaEXvyRoiqJIVYTLcp/wTMI7f0L
         NfMg==
X-Forwarded-Encrypted: i=1; AJvYcCXentg608aK8wKuWCqiHD2XR3GUyQNcPkCXIcMdiOi4JIiRXacGvauT2i6fcpFAPQSv7TRMXS2O+is=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrEUBh2jvxdvqmWQOLdinznNcWkTh1prZnlMsjqOBSMi0pI4GG
	Liit3jKaWsIEwger3wjiVhVmmi9FeSx8pW7nHkGt8haUGg7mGVTdJ8/uzfNj3fR2I01RJgDlt81
	LcP/R7Eqeqzaj9l3kZ4ANB0DNIryikUH+dx29MPiFRq3AeWqmn72RWv8D+Ul/LL7C+T3+
X-Gm-Gg: ASbGnctl+zVI6US4pj+IYibA7cthOIhdbJN3wbFDiw3pPcw4qtZJhpRNbPezIUzNCkU
	+KWszA+fcAc3QcpUjBDGra26ss2hGgE+YP+8MJsShP6o2SaJo7bXwAPT+dn/qNVBz8h/riTd1gj
	b979tK9h6bq8lYnDgP0Bjbu6Fac5e19YYggBCfrP6hJwGhczOcJFL4ek8CjacIvIQCsktgvGDaO
	DpyTS4aw0Tsu2Q9ll8vWhoXXHKZBggJxadmAtf/2Stt7CB253VMfMhfQFd3nd7b//8ip/IuxrIY
	I76CvK5hfDN14VO/fAmXortvEUtz4YqVRKvTMhd0td5S8vdvgWjtwM4M3xEEz2AW6wqMrO+0qlP
	ciJs4W2qdGuAiGm3+TEc7YjTqfTej+6Z0ISmbe1Aah59jTETjrLMTtqC9
X-Received: by 2002:a17:903:2341:b0:257:3283:b859 with SMTP id d9443c01a7336-27ed4a47a07mr38672675ad.9.1758871572565;
        Fri, 26 Sep 2025 00:26:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6gfLG3g7l3wZ67mkycPSyt36CZJqPFSpdlPEG8XiWyzxlncH2l4wJA2fUOLl0HLc9gG5qqg==
X-Received: by 2002:a17:903:2341:b0:257:3283:b859 with SMTP id d9443c01a7336-27ed4a47a07mr38672575ad.9.1758871572067;
        Fri, 26 Sep 2025 00:26:12 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:11 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v7 00/14] Add DisplayPort support for QCS615 platform
Date: Fri, 26 Sep 2025 15:25:36 +0800
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPM/1mgC/5XRz4rDIBAG8FcpntfijBq1p77Hsgfjn63Q1DS2Y
 Uvpu68JLOlhc8hJPge+38A8SQlDCoUcdk8yhDGVlC81qI8dcSd7+Q40+ZoJMpTMgKHWe+pT6c/
 20efhRsu9n9+YB3p1pQFJ6+xWY0ej1lIa1XKpOKmN/RBi+pm1z6+aT6nc8vCY8RGm38kRALjNG
 YEyyowVnGtveIjH6z25dHF7lzsySSP+tUumELe1Y20X2ArGFSiI+phL2V/v9lzbu4XgC6GRbSN
 4Jer6rUcZHDduhRALYQC2EaISqBi23lsQwa8Q8p3YeAZZiWBD02iIgjFcIZo3AuU2opluASYGa
 RquwfxDvF6vX7s/6DfXAgAA
X-Change-ID: 20250919-add-displayport-support-for-qcs615-platform-f885597b3573
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871562; l=5625;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=YPasll5NQP6TVIaoA2rYTgUFmw5RRjjIlz3VdB4qxWU=;
 b=2LVd7ANysco9u/gEASSF1mlgveF/gQTbuuMOj3m6iaQ5teJqwkL9kUDMdyVJ6HODH8UZA4dS6
 kR8CdvESMCmDUKy8f44E9UVsAeA2/W30sm4xS75w6nvKhT5ssRDrfZa
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: TbbbKMFi_2XCF8Cn8fExBXWED1Px82zY
X-Proofpoint-GUID: TbbbKMFi_2XCF8Cn8fExBXWED1Px82zY
X-Authority-Analysis: v=2.4 cv=aZhsXBot c=1 sm=1 tr=0 ts=68d64015 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=-mfqEiHr7Cy1ujZptoQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXwDhErPXMhKWV
 D/CEint3mWjp27dUcdxK9HV4FLCu/YoPLqe0OVcnyDGIglQrAPz9ob0e7jkmyD2EZOoCy5IRsCD
 AE5eVxSnCRzZLb2daJI+ASMYaDN7OvqHyvIhcMoG709oiG8d6En+LmrmOMTeoQYUge0zziWKTN/
 41+p9JWkWO/9txAg8s+AeqILMvxWLdCi8RKSluZNtYtWqA4bLGzO+T6EmGWJ+Q6N+v3W8lW2YMz
 s5KKTvrgywI4GBF1UgcFSGn9xPYDiCT9B6WFiUhYSdxGdvrfenQhu27r4fRM5hNYwYpNS93Au7Z
 wM5y+z8aKJaV1//+DeJIQGBtAmf6JQKbViD+yfU/45lAg7hFshXmGGqHzFZprNse8yWhiteDOih
 WoL3W7l9w6CqufGE1saIt42WUi5GLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_002615_400261_59E35C1A 
X-CRM114-Status: GOOD (  15.42  )
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

VGhpcyBzZXJpZXMgYWltcyB0byBleHRlbmQgdGhlIFVTQi1DIFBIWSB0byBzdXBwb3J0IERQIG1v
ZGUgYW5kIGVuYWJsZQpEaXNwbGF5UG9ydCBvbiB0aGUgUXVhbGNvbW0gUUNTNjE1IHBsYXRmb3Jt
LgoKVGhlIGRldmljZXRyZWUgbW9kaWZpY2F0aW9uIGZvciBEaXNwbGF5UG9ydCBvbiBRQ1M2MTUg
d2lsbCBiZSBwcm92aWRlZAppbiBhIGZ1dHVyZSBwYXRjaC4KClNpZ25lZC1vZmYtYnk6IFhpYW5n
eHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgotLS0KQ2hhbmdlcyBpbiB2NzoK
LSBGaXggUVNFUkRFU19WMl9UWF9MQU5FX01PREVfMSBjb25maWd1cmF0aW9uIGZyb20gQ09NIGlu
aXQgdGFibGUgdG8gY29uZmlndXJlX2RwX3R4KCkuCi0gTGluayB0byB2NjogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvci8yMDI1MDkyNS1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1
LXBsYXRmb3JtLXY2LTAtNDE5ZmU1OTYzODE5QG9zcy5xdWFsY29tbS5jb20KCkNoYW5nZXMgaW4g
djY6Ci0gTW92ZSB1c2IzZHBwaHlfcmVzZXRfbCBkZWZpbml0aW9uIHRvIHRoZSBwYXRjaCBhZGRp
bmcgY29tcGF0aWJsZSBhbmQgcmVsYXRlZCBjb25maWcgZGF0YS4gW0RtaXRyeV0KLSBBZGQgTk9U
RSBhYm91dCBTV19QT1JUU0VMRUNUL29yaWVudGF0aW9uIGhhbmRsaW5nLiBbRG1pdHJ5XQotIFVz
ZSBDOTktc3R5bGUgbG9vcCB2YXJpYWJsZSBkZWNsYXJhdGlvbiBpbiBtc21fZHBfbGlua19sYW5l
X21hcC4gW1JvYl0KLSBVcGRhdGUgY29tbWl0IG1zZyB3aXRoIGlzc3VlIGRlc2NyaXB0aW9uIGZv
ciBbMDUvMTQsIDA2LzE0LCAwNy8xNO+8jDEyLzE0XS4KLSBMaW5rIHRvIHY1OiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9yLzIwMjUwOTE5LWFkZC1kaXNwbGF5cG9ydC1zdXBwb3J0LWZvci1xY3M2
MTUtcGxhdGZvcm0tdjUtMC1lYWU2NjgxZjQwMDJAb3NzLnF1YWxjb21tLmNvbQoKQ2hhbmdlcyBp
biB2NToKLSBBZGQgbmV3IHBhdGNoIHRvIGludHJvZHVjZSBRU0VSREVTIHYyIENPTS9UWFJYIHJl
Z2lzdGVyIGhlYWRlcnMuCi0gUmVzdG9yZSBsZWdhY3kgcmVzZXQgJiBjbG9jayByZWdpc3RlciBs
b2dpYy4gW0RtaXRyeV0KLSBVcGRhdGUgcGh5X3hsYXRlKCkgdG8gcmV0dXJuIEVSUl9QVFIoLUVO
T0RFVikgd2hlbiBkcF9waHkgaXMgTlVMTC4gW0RtaXRyeV0KLSBSZW5hbWUgaGVscGVyIGZyb20g
cW1wX2NoZWNrX211dGV4X3BoeSgpIHRvIHFtcF91c2JjX2NoZWNrX3BoeV9zdGF0dXMoKS4gW0Rt
aXRyeV0KLSBEcm9wIHN0b3Jpbmcgc3RydWN0IGRldmljZSAqZGV2IGluIGRwX2xpbmsgYXMgaXQg
aXMgb25seSB1c2VkIG9uY2UuIFtEbWl0cnldCi0gQWRkIHJvYnVzdCBsYW5lIG1hcHBpbmc6IGRl
ZmF1bHQgMToxLCBjb21wbGV0ZSBwYXJ0aWFsIGNvbmZpZ3MuIFtEbWl0cnldCi0gUmVvcmdhbml6
ZSBzdWItcGF0Y2hlcyB2NVswNy8xNO+8jCAwOC8xNCwgMTEvMTTvvIwgMTIvMTRdIGFzIHN1Z2dl
c3RlZC4KLSBMaW5rIHRvIHY0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA5MTEt
YWRkLWRpc3BsYXlwb3J0LXN1cHBvcnQtZm9yLXFjczYxNS1wbGF0Zm9ybS12NC0wLTI3MDJiZGRh
MTRlZEBvc3MucXVhbGNvbW0uY29tLwoKQ2hhbmdlcyBpbiB2NDoKLSBEcm9wIHBhdGNoIHYzWzAx
LzE0ICYgMTMvMTRdLCB3aWxsIHN1dGJtaXQgbmV3IHBhdGNoc2V0cyBiYXNlZCBtc3QgZHQgYmlu
ZGluZyBzZXJpZXMuCi0gVXBkYXRlIG1haW50YWluZXIgb2YgcWNvbSxxY3M2MTUtcW1wLXVzYjNk
cC1waHkueWFtbCB0byBteXNlbGYuCi0gQWRkIG1pc3NpbmcgYXV4IGFuZCBwaXBlIGNsb2Nrcy4g
W0RtaXRyeV0KLSBEcm9wIHNlY29uZCBUQ1NSIHBoYW5kbGU7IHJlZ2lzdGVyIG9mZnNldHMgYXJl
IGRlc2NyaWJlZCBkaXJlY3RseS4gW0RtaXRyeV0KLSBBZGQgVVNCQyBQSFkgc2VyaWVzIHJlbGF0
ZWQgaW5pdF9sb2FkX3VBIGNvbmZpZ3MuIFtEbWl0cnldCi0gRHJvcCB2M1swNC8xNF0gcW1wX3Bo
eV91c2JjX3R5cGUgZGVmaW5lIGFuZCB1c2UgZHBfc2VyZGVzIG9mZnNldHMgdG8gY29uZmlybSBE
UCBjYXBhYmlsaXR5IFtEbWl0cnldCi0gUmVvcmdhbml6ZSBzdWItcGF0Y2hlcyBhcyBzdWdnZXN0
ZWQuCi0gTGluayB0byB2MzogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwODIwLWFk
ZC1kaXNwbGF5cG9ydC1zdXBwb3J0LWZvci1xY3M2MTUtcGxhdGZvcm0tdjMtMC1hNDNiZDI1ZWMz
OWNAb3NzLnF1YWxjb21tLmNvbS8KCkNoYW5nZXMgaW4gdjM6Ci0gUmVuYW1lZCBxY29tLHFjczYx
NS1xbXAtZHAtcGh5LnlhbWwgaW4gdjIgdG8gcWNvbSxxY3M2MTUtcW1wLWRwLXBoeS55YW1sIGlu
IHYzIGZvciBRQ1M2MTUgVVNCMytEUCBQSFkuCi0gVXBkYXRlZCBwYXRjaCB2M1swMi8xNF0gdG8g
cmV2aXNlIGJpbmRpbmcgdGl0bGUsIGRlc2NyaXB0aW9uLCBhbmQgcHJvcGVydHkgb3JkZXIuIFtL
cnp5c3p0b2ZdCi0gVXBkYXRlZCBjb21taXQgbWVzc2FnZXMgaW4gcGF0Y2ggdjNbMDEvMTRdIGFu
ZCBbMTMvMTRdIHRvIHJlZmxlY3QgdGhlIERUU0kgcmVuYW1lIGFuZCBjbGFyaWZ5IGNvbXBhdGli
aWxpdHkuIFtLcnp5c3p0b2ZdCi0gQWRkZWQgVVNCMytEUCBtb2RlIGltcGxlbWVudGF0aW9uIGlu
IHBhdGNoZXMgdjMgWzAwM+KAkzAxMl0sIG9yZ2FuaXplZCBpbiBsb2dpY2FsIGNodW5rcy4gW0Rt
aXRyeV0KLSBEcm9wcGVkIHBhdGNoIHYyWzAzLzEzXSB0byBtYWludGFpbiBmdWxsIGJhY2t3YXJk
IGNvbXBhdGliaWxpdHkgd2l0aCBVU0JDLgotIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDI1MDcyMi1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBs
YXRmb3JtLXYyLTAtNDJiNDAzNzE3MWY4QG9zcy5xdWFsY29tbS5jb20vCgpDaGFuZ2VzIGluIHYy
OgotIEFkZCBuZXcgYmluZGluZyBxY29tLHFjczYxNS1xbXAtZHAtcGh5LnlhbWwgZm9yIFFDUzYx
NSBzdGFuZGFsb25lIERQCi0gU3BsaXQgRFAgUEhZIGRyaXZlciBpbnRvIHBhdGNoZXMgNC0xMSBi
eSBsb2dpY2FsIGNodW5rcyBbRG1pdHJ5XQotIFVwZGF0ZSBEUCBQSFkgY29uZmlndXJhdGlvbiBm
bG93IHRvIGFsaWduIHdpdGggUU1QIENvbWJvIFBIWSBpbXBsZW1lbnRhdGlvbiBbRG1pdHJ5XQot
IFVwZGF0ZSBhbGwgaGV4IHZhbHVlcyB0byBsb3dlcmNhc2UgW0RtaXRyeV0KLSBSZW1vdmUgcmVk
dW5kYW50IGNvbW1lbnRzIGluIERQIFBIWSBkcml2ZXIgW0tyenlzenRvZl0KLSBSZW1vdmUgaW52
YWxpZCBVU0JDIHR5cGUgZGVmaW5lIFtEbWl0cnldCi0gTW92ZSBsYW5lX21hcO+8jCBtYXhfZHBf
bGFuZXPvvIwgbWF4X2RwX2xpbmtfcmF0ZSBwYXJzaW5nIGxvZ2ljIHRvIGRwX2xpbmsgW0RtaXRy
eV0KLSBBZGQgVENTUi1iYXNlZCBtdXRleCBsb2dpYyBmb3IgRFAgYW5kIFVTQiBQSFkgY29leGlz
dGVuY2UgW0RtaXRyeV0KLSBEcm9wIHBhdGNoZXMgNuKAkzggYW5kIHJlbW92ZSByZWxhdGVkIGJp
bmRpbmcgcHJvcGVydGllcyBhcyByZWplY3RlZCB1cHN0cmVhbQotIExpbmsgdG8gdjE6IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTEyOS1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1m
b3ItcWNzNjE1LXBsYXRmb3JtLXYxLTAtMDlhNDMzOGQ5M2VmQHF1aWNpbmMuY29tLwoKLS0tClhp
YW5neHUgWWluICgxNCk6CiAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IEFkZCBRTVAgVVNCMytEUCBQ
SFkgZm9yIFFDUzYxNQogICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBSZW5hbWUgVVNCLXNwZWNp
ZmljIG9wcyB0byBwcmVwYXJlIGZvciBEUCBzdXBwb3J0CiAgICAgIHBoeTogcWNvbTogcW1wLXVz
YmM6IEFkZCBEUC1yZWxhdGVkIGZpZWxkcyBmb3IgVVNCL0RQIHN3aXRjaGFibGUgUEhZCiAgICAg
IHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCByZWd1bGF0b3IgaW5pdF9sb2FkIHN1cHBvcnQKICAg
ICAgcGh5OiBxY29tOiBxbXAtdXNiYzogTW92ZSByZXNldCBjb25maWcgaW50byBQSFkgY2ZnCiAg
ICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IGFkZCBEUCBsaW5rIGFuZCB2Y29fZGl2IGNsb2NrcyBm
b3IgRFAgUEhZCiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IE1vdmUgVVNCLW9ubHkgaW5pdCB0
byB1c2JfcG93ZXJfb24KICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogQWRkIFRDU1IgcGFyc2lu
ZyBhbmQgUEhZIG1vZGUgc2V0dGluZwogICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQgRFAg
UEhZIG9wcyBmb3IgVVNCL0RQIHN3aXRjaGFibGUgVHlwZS1DIFBIWXMKICAgICAgcGh5OiBxY29t
OiBxbXAtdXNiYzogQWRkIFVTQi9EUCBleGNsdWRlIGhhbmRsaW5nCiAgICAgIHBoeTogcWNvbTog
cW1wOiBBZGQgRFAgdjIgUEhZIHJlZ2lzdGVyIGRlZmluaXRpb25zCiAgICAgIHBoeTogcWNvbTog
cW1wLXVzYmM6IEFkZCBRQ1M2MTUgVVNCL0RQIFBIWSBjb25maWcgYW5kIERQIG1vZGUgc3VwcG9y
dAogICAgICBkcm0vbXNtL2RwOiBtb3ZlIGxpbmstc3BlY2lmaWMgcGFyc2luZyBmcm9tIGRwX3Bh
bmVsIHRvIGRwX2xpbmsKICAgICAgZHJtL21zbS9kcDogQWRkIHN1cHBvcnQgZm9yIGxhbmUgbWFw
cGluZyBjb25maWd1cmF0aW9uCgogLi4uL2JpbmRpbmdzL3BoeS9xY29tLHFjczYxNS1xbXAtdXNi
M2RwLXBoeS55YW1sICAgfCAgMTExICsrCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwu
YyAgICAgICAgICAgICAgICAgICB8ICAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBf
bGluay5jICAgICAgICAgICAgICAgICAgIHwgIDExOCArKysKIGRyaXZlcnMvZ3B1L2RybS9tc20v
ZHAvZHBfbGluay5oICAgICAgICAgICAgICAgICAgIHwgICAgNSArCiBkcml2ZXJzL2dwdS9kcm0v
bXNtL2RwL2RwX3BhbmVsLmMgICAgICAgICAgICAgICAgICB8ICAgNzggKy0KIGRyaXZlcnMvZ3B1
L2RybS9tc20vZHAvZHBfcGFuZWwuaCAgICAgICAgICAgICAgICAgIHwgICAgMyAtCiBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtZHAtcGh5LXYyLmggICAgICB8ICAgMjEgKwogZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtY29tLXYyLmggfCAgMTA2ICsr
CiAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLXR4cngtdjIuaCAgICB8ICAg
NjggKysKIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgICAgICAgICAg
IHwgMTA3MiArKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLmggICAgICAgICAgICAgICAgfCAgICAzICsKIDExIGZpbGVzIGNoYW5nZWQsIDE0Mjcg
aW5zZXJ0aW9ucygrKSwgMTY4IGRlbGV0aW9ucygtKQotLS0KYmFzZS1jb21taXQ6IDhlMjc1NWQ3
Nzc5YTk1ZGQ2MWQ4OTk3ZWJjZTMzZmY4YjFlZmQzZmIKY2hhbmdlLWlkOiAyMDI1MDkxOS1hZGQt
ZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLWY4ODU1OTdiMzU3MwoKQmVz
dCByZWdhcmRzLAotLSAKWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29tbS5jb20+
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
