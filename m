Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8464CAC5AA
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ja2lKZJZpDACyGSALHhZ2UpRoL0FFXDiv6tpd/wZ8M=; b=JvBCYdb5ndYbh3
	9ot5FYkT31ehiZxOga5DsZD52okRaUpxCUvoO3so8BRUg19ANT0x5+VSh0G+O4hpbWxLLIVYBkVse
	mlc0aWAednQZrjl3yTIEnI1dn7eNtaaplA8LROAeGNI5o1WtdAdLFH8EvKGmQuHM5IiE83RT9XSqF
	07+scyZnEtZq9KVfUv7IR2wKa4D44zZgM2nau8J85/YSy5d7maYhqNzGS5OwVJd7pahBC/eIrxErB
	PGN388MU3TuHepLPbgRAE5KWjc4axKYlUEdDoZ81N/ABLtpci7Yccr5srPuDvLfFrNjw7CY+e0LnB
	8KRjoagKGevR+5plZRAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g2d-00000006Xxr-2A4d;
	Thu, 25 Sep 2025 07:05:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g2a-00000006XwD-3zet
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:05:22 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1WO8u029619
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=yZ+xuQsK8TPZF/qA5Y0n2S
	yswG9xNhbXSlZdrQ5xB8w=; b=VwrchYiQ2Zg1sNSe93WIcnYH+sM91lNdzFPPdp
	kVJxG7VeAfbzOmpWwaBRfJJMCwVJQnkUDPwDrdcOVIyw+dH7nC+Xh9BWQgrOPLr8
	YaxmzGJPqaQarDjClmIHCpR39JQT3y2+LnXBN6ZlCVy6t8LGPaoejdca/oeFeT7Z
	o+b4h5JTiflrMoFyb3ekJCCRQJX+YKJwEHs0HCMoaDD1UAhNsHMRPkEc24gsOCUw
	RQFZ9EMA2TUOfTzh+j+RlLJajTgqRUwOxFObJEKf6vwFE3rkbjXRA2ndPdbaotHl
	bYF1z71I9jNcT7jPrJ0TSyng3cre7Jl/nwzrs/IEksKKE/Zg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fq0y9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:19 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33085281806so200193a91.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:05:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783919; x=1759388719;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yZ+xuQsK8TPZF/qA5Y0n2SyswG9xNhbXSlZdrQ5xB8w=;
        b=ZvoIiyxqxl9xTNTJ0MpEX7BwkPjY78Z7JK1w6xdzk27ovo0BT1p3ozKnz9Qx+/zVzh
         Wcovx7x6X2g8gvPyb3BaDnUs0lKVSOMxAY5tqBWcVIlvo00KLxZssC+HdSorWTPY2IL+
         7O0n11A9o4x/l/cGq7B7N09uPewE4DWhuFcldP6+9vs1C8Yb/rBYM6Yme7RvA17wOmLn
         wejHPajDM8tsyIoEWTYXCnhx9G+cdO6zBLeUZxQg7xXMAtaqWsyCdW8gTRalnMz7OhfO
         I69rSpgexIA47PxfocySo/jroW7DuxmXB8SKyD/7vZmwsDwOQUtMYnhm5f9aPEKXujWC
         1oLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJFtbBql/9MYBkAgC8qtCrNYzFnMXi4e2Ko4zJI5BRW+CX6nmxRdRDvrCfUTYsT1WhZDa+HdC/VwM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyH+5BBmJDuxExprXDqFzmdPN7Xrp73syLX8wJH6JRhS07xFkSO
	PJyzSgghlggrWjfU84QycYTDDmG1Jbq7Yg5Lyc//ulS0VOKYMZGOcKlAVwI8Bn0Z0yknC0L3o+H
	XOZ1VrT1leRltyBChbeWjlEYwEq10UucyzIpqg1BQXSG85SPCc1xYnWTrs8ks1kNeJFQe
X-Gm-Gg: ASbGncsRyZoAFGW0HUX71w0Srz6U+RoIyBY9h9ipdN6lsFLRt7YQT5uZccUxAkwRyvw
	tXVMG7VmAH9Au0j4tqpA7naT7qJNS6LIuhoOxOv8dQmhLkPTaaKMo+PjSqmJiBMkneGTyyAVGBm
	w6P/1hC7rnyqpt6pUm2BTWQdYbXvifSe8yKlRkcavmeAu5T2d3gmXqes4csu03hFUB2rapz2do9
	GlaWK7tHPp1iMg7YqpPG0BK/GReAOPc2vbcST5uD1ikHRSWbRrivc1Qr7YzmHzdoTxWsTgl6U73
	5GaPWHST+AWInOtXWdqV1kt7KBIa14aW5Lds7Y0XGTWlfRC9eqcLCO4YgLPrtTsZImUoEStpMRt
	uCg5QMCNbOUZAVPY81gj0sL09dzTIYMdmscAs9GdZ+bFfQsc6JwUFriaS
X-Received: by 2002:a17:90b:38c7:b0:32e:e18a:368d with SMTP id 98e67ed59e1d1-3342a332253mr1367420a91.8.1758783918956;
        Thu, 25 Sep 2025 00:05:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUbujVjnPE51nMK7rlaHLU2fKEdCZgVZSnTJAA3gW7yMsssg3WWsRWMJZqIVrdYskdNrhg0Q==
X-Received: by 2002:a17:90b:38c7:b0:32e:e18a:368d with SMTP id 98e67ed59e1d1-3342a332253mr1367391a91.8.1758783918444;
        Thu, 25 Sep 2025 00:05:18 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:05:18 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v6 00/14] Add DisplayPort support for QCS615 platform
Date: Thu, 25 Sep 2025 15:04:46 +0800
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJDp1GgC/5XRTW7DIBAF4KtErEsEAxjoKveousD8NEhxsMG2G
 kW+e7Glyl00C6/QY6T3jTRPVHyOvqD30xNlP8cS072G5u2E7NXcvzyOrmYEBATRVGPjHHax9Df
 z6FMecZn67Q0p48GWhgpcZ2ONHQ5KCaFly4RkqDb22Yf4vWkfnzVfYxlTfmz4TNff1eGUwjFnp
 phgog1nTDnNfLgMU7Txbs82dWiVZvhtF0QCHGuH2s6h5YRJKmlQl1TKeZjMrbZ3O8F2QgE5RrB
 K1PVbB8Jbpu0Lgu+EpvQYwSsBkkDrnKHcuxeE+EscPIOohDe+aRQNnBD4h1iW5QcZmX2OdAIAA
 A==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783908; l=5389;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=BriQ9CGzQPqKZfWizw8gSbddYqDWtC7/j8W0uWp5qUM=;
 b=/+juXQNfDmiteVOMuuSFk8BU/ejjFAKfyZOY1rODm2qSmgMfUlT38RitbEUoDhXbe9Ps5SJLU
 OYw0Oe6PmpoB7t0FStYiiPmDd6G9osrC8ci0mRdv00fXYvytnIJH4Q/
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: 72Nj0Iwim0mHwuBk0s4xKtobtxk7pat5
X-Proofpoint-GUID: 72Nj0Iwim0mHwuBk0s4xKtobtxk7pat5
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4e9af cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=-mfqEiHr7Cy1ujZptoQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXwPb2qfeoeTsi
 PUM0UyBINrMADupEtw6CNvfiBPYJqSJ2My7B5VAutDpN3szQKFuZo8Zo7Ht7lhmtl813pYluwVt
 RU1+5GXppNrn17yXk2olNilGreyaOL6izO/b7/OqVlHqdOioo3LCsfe84KMEws1TW86HIifdLnM
 9liD/ZEdiuVt3eeN1UXr5MuPnvJp8r+udzNtuYv9m7Cc0OJpYBngh8gssqPO4kkarG0SfcFrUY2
 1PvzbphteHPFznrcFgtIxCgJvLXsjYsoN9WM376ohByM3ybpkRSvAvYh/M8gfqds3t4lGt56PaV
 maH/yXEUAvuJsAi7iHaeqHWJDxMkBj8LFNTJQkrCp8VBJZdMZhXOvR0Hupx7AT1Z9wSk2lCwCm9
 aGoEJaL6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000520_999583_B4A1CD99 
X-CRM114-Status: GOOD (  16.17  )
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
eHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgotLS0KQ2hhbmdlcyBpbiB2NjoK
LSBNb3ZlIHVzYjNkcHBoeV9yZXNldF9sIGRlZmluaXRpb24gdG8gdGhlIHBhdGNoIGFkZGluZyBj
b21wYXRpYmxlIGFuZCByZWxhdGVkIGNvbmZpZyBkYXRhLiBbRG1pdHJ5XQotIEFkZCBOT1RFIGFi
b3V0IFNXX1BPUlRTRUxFQ1Qvb3JpZW50YXRpb24gaGFuZGxpbmcuIFtEbWl0cnldCi0gVXNlIEM5
OS1zdHlsZSBsb29wIHZhcmlhYmxlIGRlY2xhcmF0aW9uIGluIG1zbV9kcF9saW5rX2xhbmVfbWFw
LiBbUm9iXQotIFVwZGF0ZSBjb21taXQgbXNnIHdpdGggaXNzdWUgZGVzY3JpcHRpb24gZm9yIFsw
NS8xNCwgMDYvMTQsIDA3LzE077yMMTIvMTRdLgotIExpbmsgdG8gdjU6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNTA5MTktYWRkLWRpc3BsYXlwb3J0LXN1cHBvcnQtZm9yLXFjczYxNS1w
bGF0Zm9ybS12NS0wLWVhZTY2ODFmNDAwMkBvc3MucXVhbGNvbW0uY29tCgpDaGFuZ2VzIGluIHY1
OgotIEFkZCBuZXcgcGF0Y2ggdG8gaW50cm9kdWNlIFFTRVJERVMgdjIgQ09NL1RYUlggcmVnaXN0
ZXIgaGVhZGVycy4KLSBSZXN0b3JlIGxlZ2FjeSByZXNldCAmIGNsb2NrIHJlZ2lzdGVyIGxvZ2lj
LiBbRG1pdHJ5XQotIFVwZGF0ZSBwaHlfeGxhdGUoKSB0byByZXR1cm4gRVJSX1BUUigtRU5PREVW
KSB3aGVuIGRwX3BoeSBpcyBOVUxMLiBbRG1pdHJ5XQotIFJlbmFtZSBoZWxwZXIgZnJvbSBxbXBf
Y2hlY2tfbXV0ZXhfcGh5KCkgdG8gcW1wX3VzYmNfY2hlY2tfcGh5X3N0YXR1cygpLiBbRG1pdHJ5
XQotIERyb3Agc3RvcmluZyBzdHJ1Y3QgZGV2aWNlICpkZXYgaW4gZHBfbGluayBhcyBpdCBpcyBv
bmx5IHVzZWQgb25jZS4gW0RtaXRyeV0KLSBBZGQgcm9idXN0IGxhbmUgbWFwcGluZzogZGVmYXVs
dCAxOjEsIGNvbXBsZXRlIHBhcnRpYWwgY29uZmlncy4gW0RtaXRyeV0KLSBSZW9yZ2FuaXplIHN1
Yi1wYXRjaGVzIHY1WzA3LzE077yMIDA4LzE0LCAxMS8xNO+8jCAxMi8xNF0gYXMgc3VnZ2VzdGVk
LgotIExpbmsgdG8gdjQ6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDkxMS1hZGQt
ZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLXY0LTAtMjcwMmJkZGExNGVk
QG9zcy5xdWFsY29tbS5jb20vCgpDaGFuZ2VzIGluIHY0OgotIERyb3AgcGF0Y2ggdjNbMDEvMTQg
JiAxMy8xNF0sIHdpbGwgc3V0Ym1pdCBuZXcgcGF0Y2hzZXRzIGJhc2VkIG1zdCBkdCBiaW5kaW5n
IHNlcmllcy4KLSBVcGRhdGUgbWFpbnRhaW5lciBvZiBxY29tLHFjczYxNS1xbXAtdXNiM2RwLXBo
eS55YW1sIHRvIG15c2VsZi4KLSBBZGQgbWlzc2luZyBhdXggYW5kIHBpcGUgY2xvY2tzLiBbRG1p
dHJ5XQotIERyb3Agc2Vjb25kIFRDU1IgcGhhbmRsZTsgcmVnaXN0ZXIgb2Zmc2V0cyBhcmUgZGVz
Y3JpYmVkIGRpcmVjdGx5LiBbRG1pdHJ5XQotIEFkZCBVU0JDIFBIWSBzZXJpZXMgcmVsYXRlZCBp
bml0X2xvYWRfdUEgY29uZmlncy4gW0RtaXRyeV0KLSBEcm9wIHYzWzA0LzE0XSBxbXBfcGh5X3Vz
YmNfdHlwZSBkZWZpbmUgYW5kIHVzZSBkcF9zZXJkZXMgb2Zmc2V0cyB0byBjb25maXJtIERQIGNh
cGFiaWxpdHkgW0RtaXRyeV0KLSBSZW9yZ2FuaXplIHN1Yi1wYXRjaGVzIGFzIHN1Z2dlc3RlZC4K
LSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA4MjAtYWRkLWRp
c3BsYXlwb3J0LXN1cHBvcnQtZm9yLXFjczYxNS1wbGF0Zm9ybS12My0wLWE0M2JkMjVlYzM5Y0Bv
c3MucXVhbGNvbW0uY29tLwoKQ2hhbmdlcyBpbiB2MzoKLSBSZW5hbWVkIHFjb20scWNzNjE1LXFt
cC1kcC1waHkueWFtbCBpbiB2MiB0byBxY29tLHFjczYxNS1xbXAtZHAtcGh5LnlhbWwgaW4gdjMg
Zm9yIFFDUzYxNSBVU0IzK0RQIFBIWS4KLSBVcGRhdGVkIHBhdGNoIHYzWzAyLzE0XSB0byByZXZp
c2UgYmluZGluZyB0aXRsZSwgZGVzY3JpcHRpb24sIGFuZCBwcm9wZXJ0eSBvcmRlci4gW0tyenlz
enRvZl0KLSBVcGRhdGVkIGNvbW1pdCBtZXNzYWdlcyBpbiBwYXRjaCB2M1swMS8xNF0gYW5kIFsx
My8xNF0gdG8gcmVmbGVjdCB0aGUgRFRTSSByZW5hbWUgYW5kIGNsYXJpZnkgY29tcGF0aWJpbGl0
eS4gW0tyenlzenRvZl0KLSBBZGRlZCBVU0IzK0RQIG1vZGUgaW1wbGVtZW50YXRpb24gaW4gcGF0
Y2hlcyB2MyBbMDAz4oCTMDEyXSwgb3JnYW5pemVkIGluIGxvZ2ljYWwgY2h1bmtzLiBbRG1pdHJ5
XQotIERyb3BwZWQgcGF0Y2ggdjJbMDMvMTNdIHRvIG1haW50YWluIGZ1bGwgYmFja3dhcmQgY29t
cGF0aWJpbGl0eSB3aXRoIFVTQkMuCi0gTGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjUwNzIyLWFkZC1kaXNwbGF5cG9ydC1zdXBwb3J0LWZvci1xY3M2MTUtcGxhdGZv
cm0tdjItMC00MmI0MDM3MTcxZjhAb3NzLnF1YWxjb21tLmNvbS8KCkNoYW5nZXMgaW4gdjI6Ci0g
QWRkIG5ldyBiaW5kaW5nIHFjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCBmb3IgUUNTNjE1IHN0
YW5kYWxvbmUgRFAKLSBTcGxpdCBEUCBQSFkgZHJpdmVyIGludG8gcGF0Y2hlcyA0LTExIGJ5IGxv
Z2ljYWwgY2h1bmtzIFtEbWl0cnldCi0gVXBkYXRlIERQIFBIWSBjb25maWd1cmF0aW9uIGZsb3cg
dG8gYWxpZ24gd2l0aCBRTVAgQ29tYm8gUEhZIGltcGxlbWVudGF0aW9uIFtEbWl0cnldCi0gVXBk
YXRlIGFsbCBoZXggdmFsdWVzIHRvIGxvd2VyY2FzZSBbRG1pdHJ5XQotIFJlbW92ZSByZWR1bmRh
bnQgY29tbWVudHMgaW4gRFAgUEhZIGRyaXZlciBbS3J6eXN6dG9mXQotIFJlbW92ZSBpbnZhbGlk
IFVTQkMgdHlwZSBkZWZpbmUgW0RtaXRyeV0KLSBNb3ZlIGxhbmVfbWFw77yMIG1heF9kcF9sYW5l
c++8jCBtYXhfZHBfbGlua19yYXRlIHBhcnNpbmcgbG9naWMgdG8gZHBfbGluayBbRG1pdHJ5XQot
IEFkZCBUQ1NSLWJhc2VkIG11dGV4IGxvZ2ljIGZvciBEUCBhbmQgVVNCIFBIWSBjb2V4aXN0ZW5j
ZSBbRG1pdHJ5XQotIERyb3AgcGF0Y2hlcyA24oCTOCBhbmQgcmVtb3ZlIHJlbGF0ZWQgYmluZGlu
ZyBwcm9wZXJ0aWVzIGFzIHJlamVjdGVkIHVwc3RyZWFtCi0gTGluayB0byB2MTogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQxMTI5LWFkZC1kaXNwbGF5cG9ydC1zdXBwb3J0LWZvci1x
Y3M2MTUtcGxhdGZvcm0tdjEtMC0wOWE0MzM4ZDkzZWZAcXVpY2luYy5jb20vCgotLS0KWGlhbmd4
dSBZaW4gKDE0KToKICAgICAgZHQtYmluZGluZ3M6IHBoeTogQWRkIFFNUCBVU0IzK0RQIFBIWSBm
b3IgUUNTNjE1CiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IFJlbmFtZSBVU0Itc3BlY2lmaWMg
b3BzIHRvIHByZXBhcmUgZm9yIERQIHN1cHBvcnQKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzog
QWRkIERQLXJlbGF0ZWQgZmllbGRzIGZvciBVU0IvRFAgc3dpdGNoYWJsZSBQSFkKICAgICAgcGh5
OiBxY29tOiBxbXAtdXNiYzogQWRkIHJlZ3VsYXRvciBpbml0X2xvYWQgc3VwcG9ydAogICAgICBw
aHk6IHFjb206IHFtcC11c2JjOiBNb3ZlIHJlc2V0IGNvbmZpZyBpbnRvIFBIWSBjZmcKICAgICAg
cGh5OiBxY29tOiBxbXAtdXNiYzogYWRkIERQIGxpbmsgYW5kIHZjb19kaXYgY2xvY2tzIGZvciBE
UCBQSFkKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogTW92ZSBVU0Itb25seSBpbml0IHRvIHVz
Yl9wb3dlcl9vbgogICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQgVENTUiBwYXJzaW5nIGFu
ZCBQSFkgbW9kZSBzZXR0aW5nCiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBEUCBQSFkg
b3BzIGZvciBVU0IvRFAgc3dpdGNoYWJsZSBUeXBlLUMgUEhZcwogICAgICBwaHk6IHFjb206IHFt
cC11c2JjOiBBZGQgVVNCL0RQIGV4Y2x1ZGUgaGFuZGxpbmcKICAgICAgcGh5OiBxY29tOiBxbXA6
IEFkZCBEUCB2MiBQSFkgcmVnaXN0ZXIgZGVmaW5pdGlvbnMKICAgICAgcGh5OiBxY29tOiBxbXAt
dXNiYzogQWRkIFFDUzYxNSBVU0IvRFAgUEhZIGNvbmZpZyBhbmQgRFAgbW9kZSBzdXBwb3J0CiAg
ICAgIGRybS9tc20vZHA6IG1vdmUgbGluay1zcGVjaWZpYyBwYXJzaW5nIGZyb20gZHBfcGFuZWwg
dG8gZHBfbGluawogICAgICBkcm0vbXNtL2RwOiBBZGQgc3VwcG9ydCBmb3IgbGFuZSBtYXBwaW5n
IGNvbmZpZ3VyYXRpb24KCiAuLi4vYmluZGluZ3MvcGh5L3Fjb20scWNzNjE1LXFtcC11c2IzZHAt
cGh5LnlhbWwgICB8ICAxMTEgKysKIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY3RybC5jICAg
ICAgICAgICAgICAgICAgIHwgICAxMCArLQogZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9saW5r
LmMgICAgICAgICAgICAgICAgICAgfCAgMTE4ICsrKwogZHJpdmVycy9ncHUvZHJtL21zbS9kcC9k
cF9saW5rLmggICAgICAgICAgICAgICAgICAgfCAgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9tc20v
ZHAvZHBfcGFuZWwuYyAgICAgICAgICAgICAgICAgIHwgICA3OCArLQogZHJpdmVycy9ncHUvZHJt
L21zbS9kcC9kcF9wYW5lbC5oICAgICAgICAgICAgICAgICAgfCAgICAzIC0KIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1kcC1waHktdjIuaCAgICAgIHwgICAyMSArCiBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRlcy1jb20tdjIuaCB8ICAxMDYgKysKIC4u
Li9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC12Mi5oICAgIHwgICA2OCAr
KwogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMuYyAgICAgICAgICAgfCAx
MDY2ICsrKysrKysrKysrKysrKysrKy0tCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1x
bXAuaCAgICAgICAgICAgICAgICB8ICAgIDMgKwogMTEgZmlsZXMgY2hhbmdlZCwgMTQyMSBpbnNl
cnRpb25zKCspLCAxNjggZGVsZXRpb25zKC0pCi0tLQpiYXNlLWNvbW1pdDogYjVhNGRhMmM0NTlm
NzlhMmM4N2M4NjczOThmMWMwYzMxNTc3OTc4MQpjaGFuZ2UtaWQ6IDIwMjUwOTE5LWFkZC1kaXNw
bGF5cG9ydC1zdXBwb3J0LWZvci1xY3M2MTUtcGxhdGZvcm0tZjg4NTU5N2IzNTczCgpCZXN0IHJl
Z2FyZHMsCi0tIApYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3NzLnF1YWxjb21tLmNvbT4KCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
