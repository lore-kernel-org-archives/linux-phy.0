Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 736F2CA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/hBcezTEgiREZhxHx35w68JconJUJg2seMNL0mnsfic=; b=PSs39sqZrp52dF
	T0+mJmRDPLItWs9OdZNR4i9sEg33MTBNwnfsGvZdOVRsCH5TDx3fsT4wAqGdoN8hBuVGQUC+V2IFu
	A357WuLLxEDzbws7AnobgW2JPa5v7N1+ZgF4oMuT1pc5Ig0WJLdJE7lhbfXzern25O2KiDBlDNbcj
	JQLwNdm7lCAAzbVRD3nIYoA6+KlYVUVsf6Lgh/DW6nW7bpF/rqUMm1oeK4nzjvN7uXvqwNpvGM6gZ
	+MFRXyP36uuC9dR6vQX/JwBKgGM2TzZ/fgioSaTEuz0KymaLCmLYa1JSxX9BmbQH8Ecjj2971t0Wo
	bPzsv6MJVxTqIvo081cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofhF-0000000D5Cl-0wAP;
	Wed, 20 Aug 2025 10:05:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofEC-0000000CwxP-3koC
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 09:35:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1oeNq010469
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:35:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I4X0zxCuPGuD7zZ5V2a6EO
	SgLaDvK+Bop09VatFyBrA=; b=lS6/+gLgKeyBONPR4Zcli+rJT16dHjVlH93RQW
	NE449wKkmlPBpuvLhRsmQDFm9YulVqZiSkpQRSZqN8eivfTlrXIh9tXJbY6Uw20U
	0sy1devP6IWJTKm6Fkrb1bnpztWFNW7sBwhsDReWAkELMv/qanhTlVxZQNnYNU5d
	bLO4wbf0DUhgOkb5KXcr9hI4gvtv6dj8VVknzSd4KyXQ7E0I0vQFyzhZfvHnMBjC
	6ONksFoxNe32bPNawrRgj7EqZiRHH0vPQtnfu1hghKnDQTAjSwhNzPtdBqpIGyps
	hjLzDMwYf3KPEdblHBKT4UHrUofJxK+KlhoTrB2/5PogsqdQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52bh7mb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:35:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581cbf91so9363025ad.2
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 02:35:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682531; x=1756287331;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I4X0zxCuPGuD7zZ5V2a6EOSgLaDvK+Bop09VatFyBrA=;
        b=IHUwfHaQSBzCXbMXgzwaPMKosO2E9m31X1QdAPBo6qsPFJ9cXv0ecQdkHvApvlRk/J
         m3S/vdP/tDy0Y6INapJLl+dPgpWlc7KZjgC/lbrG6uriU4BBtAfzSczZETJBBB0ajep/
         RHGEQJSZVUT2rcEd7CPyh++dg3koEAIzBsGNYliqFPqMXc9AdfLAFrsnQlihbtVzBCKx
         1aksYi4woMi6xpojpn5MBr9hjgQXR0vgmU+dVMGcigft9K2yd2ccS+X/x9W8I8JvvxqU
         lFUa3RzAtAzeNVqkt+ba0doGw85xsVmHKgrrcZX/zv/SnMFiz+II2iADCNIvlUsxL1eF
         oNGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXIaYFd2yTZT48MjLuA/JDKuwqjxjCCXCx3zlXd6WKfPQMjm4XhjSj8kpqTF09yAquhBMJ00SGKbA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdCwzfrpy3PZsFLNSHN3vqJA9q0SQYCJW+qExs/ePsYcr7ML1f
	kpsPj/HXf1vMsFrzmvPn0vfGSwID5XHavuW8BUSAHtHSIoWIxQIL0uhiduBwb+EqPtUHTGZC4pV
	5HK63Vna4IYULEYDRdqcFUm8dxdfquGBJos+2bc4MVIJgQmTykR/Q5iwaZ5cuTsD6992S
X-Gm-Gg: ASbGncsBLAK8n7WIMEJKCJR6uT96rTUYa0w5NkijCfRNo6KISLtMJ/KP9Dsp4XVefdC
	Jl241JM2ZXWNfMOori6GvvbQcZ/vzj5j4NOPaaH+is0BxIMcdaGgtVV8vhEBkjOUSiByXxOxq/7
	FScebQPyBMh3jFE3UMANUku6A6uu+bfs2unktjkzVsvYZX+nozs8E0FnGuwJ+YpBWSqmK8zjxl5
	7gAPoeu8VViCt9mLx9E8R6pX0uGkCT67ft+rk/+BQO3QW7WZeBS/A4wipwfNwcMci95kqhKJ9vb
	cTxDNisIXmjN7Z79Vjp7Q+MoiVUz2DcJcfKNon5SssqdjPdJvtDA8UV0EWbZ1Mbvs/rw/KK+dt3
	bhptWdnHAJhPx5/lV0eYlbZ3FzU+rIq4oOY1cZBgYSeDp4U6AlWAqZo/a
X-Received: by 2002:a17:902:d509:b0:240:58a7:892f with SMTP id d9443c01a7336-245ef16f680mr14993175ad.5.1755682530567;
        Wed, 20 Aug 2025 02:35:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGr0NVkQfXcCIKCjD1fxDIFyfCk8rIWZqpRUI9U3M16bnnc9L9TWNuM7EAKKRr45/Jvuk5CLg==
X-Received: by 2002:a17:902:d509:b0:240:58a7:892f with SMTP id d9443c01a7336-245ef16f680mr14992845ad.5.1755682530073;
        Wed, 20 Aug 2025 02:35:30 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:35:29 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v3 00/14] Add DisplayPort support for QCS615 platform
Date: Wed, 20 Aug 2025 17:34:42 +0800
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALSWpWgC/5WNQW6DMBBFrxJ53YnGY1Mgq9yj6sK1h2akgMEG1
 Cji7jVUPUBWozdfeu+pMifhrC6np0q8SpY4FDBvJ+VvbvhmkFBYEVKFDSG4ECBIHu/uMcY0Q17
 G43YxweTzu66gbHPBHpq2YusY2WhUxTgm7uTnqH18Fr5JnmN6HPFV79+9Y7Wm9qXOqgEBW2eNa
 UJruLtOi3gZ/NnHXu2llf7tFdZEr9mp2C19WTS1rnXXXGPO52lx92Lv/xLbtv0CyWq1b0sBAAA
 =
X-Change-ID: 20250820-add-displayport-support-for-qcs615-platform-895e4ae0e310
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
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
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682519; l=3563;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=zUh1szy7KTdYK9/oS/fJJKLcM6Fi75L1xDm/pFLliWg=;
 b=DBrrepe3Z1uwwfZQewXsSbAeEsU3FWGv8qkYIgvmhcN27WRoGUvuRKh5M1LpGMgpJVcNg4gR0
 IdMokpxlMG7DDeENu/ectt/wC6NDmrjE59IITa4sfdSnlcHUGo1+8Ck
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX//hy/4hiTb8r
 i71H2KTkqV54hNnpSB1Fw06o/JbAnFEPXdm/JcXfQfyzXS53okaO+SV5wGgsi6edZzL/fEJoZJM
 XIVgJQhn7rtRukPTe64l4kMcSjJZ+Xc10McKed9c63F0o4LcuecucIIpHqXfFR7M8nPOxrGJn5o
 XRaljAiWSg+4jE4hI90k1UR5gx6zPxtYq+k2OkENH9eO3dfiN8iD63HNwM8FjRXi0H9/IlAub47
 2BjfkCVqUGPRnF1uQVUlxowKSf09VkrCYZrRZhkBxLz8Lb7R1zrBFBOTd59vk+PLWf+1kTFotoh
 1cIWni7BDUrnxo/e39KobqMJZOkVTd9xDo/iIWcOdj6rpnmrVPTjHZSjVglGEh/cRB5NFadKWAb
 6dvxRegjIwkpFPEXMjMDMj3ejc8Z4g==
X-Authority-Analysis: v=2.4 cv=cr3CU14i c=1 sm=1 tr=0 ts=68a596e3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=ROZvIIAdAcjLDz1xLgoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: pB4_0XTjkGRWsQ5uC0ZMyrmNou9TF_lO
X-Proofpoint-ORIG-GUID: pB4_0XTjkGRWsQ5uC0ZMyrmNou9TF_lO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_023532_961932_81FF5423 
X-CRM114-Status: GOOD (  13.42  )
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
eHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgotLS0KQ2hhbmdlcyBpbiB2MzoK
Ci0gUmVuYW1lZCBxY29tLHFjczYxNS1xbXAtZHAtcGh5LnlhbWwgaW4gdjIgdG8gcWNvbSxxY3M2
MTUtcW1wLWRwLXBoeS55YW1sIGluIHYzIGZvciBRQ1M2MTUgVVNCMytEUCBQSFkuCi0gVXBkYXRl
ZCBwYXRjaCBbdjMsMDIvMTRdIHRvIHJldmlzZSBiaW5kaW5nIHRpdGxlLCBkZXNjcmlwdGlvbiwg
YW5kIHByb3BlcnR5IG9yZGVyLiBbS3J6eXN6dG9mXQotIFVwZGF0ZWQgY29tbWl0IG1lc3NhZ2Vz
IGluIHBhdGNoIFt2MywwMS8xNF0gYW5kIFt2MywxMy8xNF0gdG8gcmVmbGVjdCB0aGUgRFRTSSBy
ZW5hbWUgYW5kIGNsYXJpZnkgY29tcGF0aWJpbGl0eS4gW0tyenlzenRvZl0KLSBBZGRlZCBVU0Iz
K0RQIG1vZGUgaW1wbGVtZW50YXRpb24gaW4gcGF0Y2hlcyBbdjMsMDAz4oCTMDEyXSwgb3JnYW5p
emVkIGluIGxvZ2ljYWwgY2h1bmtzLiBbRG1pdHJ5XQotIERyb3BwZWQgcGF0Y2ggW3YyLDAzLzEz
XSB0byBtYWludGFpbiBmdWxsIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgd2l0aCBVU0JDLgotIExp
bmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDcyMi1hZGQtZGlzcGxh
eXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLXYyLTAtNDJiNDAzNzE3MWY4QG9zcy5x
dWFsY29tbS5jb20vCgpDaGFuZ2VzIGluIHYyOgoKLSBBZGQgbmV3IGJpbmRpbmcgcWNvbSxxY3M2
MTUtcW1wLWRwLXBoeS55YW1sIGZvciBRQ1M2MTUgc3RhbmRhbG9uZSBEUAotIFNwbGl0IERQIFBI
WSBkcml2ZXIgaW50byBwYXRjaGVzIDQtMTEgYnkgbG9naWNhbCBjaHVua3MgW0RtaXRyeV0KLSBV
cGRhdGUgRFAgUEhZIGNvbmZpZ3VyYXRpb24gZmxvdyB0byBhbGlnbiB3aXRoIFFNUCBDb21ibyBQ
SFkgaW1wbGVtZW50YXRpb24gW0RtaXRyeV0KLSBVcGRhdGUgYWxsIGhleCB2YWx1ZXMgdG8gbG93
ZXJjYXNlIFtEbWl0cnldCi0gUmVtb3ZlIHJlZHVuZGFudCBjb21tZW50cyBpbiBEUCBQSFkgZHJp
dmVyIFtLcnp5c3p0b2ZdCi0gUmVtb3ZlIGludmFsaWQgVVNCQyB0eXBlIGRlZmluZSBbRG1pdHJ5
XQotIE1vdmUgbGFuZV9tYXAsIG1heF9kcF9sYW5lcywgbWF4X2RwX2xpbmtfcmF0ZSBwYXJzaW5n
IGxvZ2ljIHRvIGRwX2xpbmsgW0RtaXRyeV0KLSBBZGQgVENTUi1iYXNlZCBtdXRleCBsb2dpYyBm
b3IgRFAgYW5kIFVTQiBQSFkgY29leGlzdGVuY2UgW0RtaXRyeV0KLSBEcm9wIHBhdGNoZXMgNuKA
kzggYW5kIHJlbW92ZSByZWxhdGVkIGJpbmRpbmcgcHJvcGVydGllcyBhcyByZWplY3RlZCB1cHN0
cmVhbQotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTEyOS1h
ZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLXYxLTAtMDlhNDMzOGQ5
M2VmQHF1aWNpbmMuY29tLwoKLS0tClhpYW5neHUgWWluICgxNCk6CiAgICAgIGR0LWJpbmRpbmdz
OiBkaXNwbGF5L21zbTogZHAtY29udHJvbGxlcjogQWRkIHNtNjE1MAogICAgICBkdC1iaW5kaW5n
czogcGh5OiBBZGQgUU1QIFVTQjMrRFAgUEhZIGZvciBRQ1M2MTUKICAgICAgcGh5OiBxY29tOiBx
bXAtdXNiYzogUmVuYW1lIFVTQi1zcGVjaWZpYyBvcHMgdG8gcHJlcGFyZSBmb3IgRFAgc3VwcG9y
dAogICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQgVVNCQyBQSFkgdHlwZSBlbnVtCiAgICAg
IHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBEUC1yZWxhdGVkIGZpZWxkcyBmb3IgVVNCL0RQIHN3
aXRjaGFibGUgUEhZCiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBRQ1M2MTUgRFAgUEhZ
IGNvbmZpZ3VyYXRpb24gYW5kIGluaXQgZGF0YQogICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBN
b3ZlIHJlc2V0IGFuZCByZWd1bGF0b3IgY29uZmlnIGludG8gUEhZIGNmZwogICAgICBwaHk6IHFj
b206IHFtcC11c2JjOiBBZGQgRFAgUEhZIGNvbmZpZ3VyYXRpb24gc3VwcG9ydCBmb3IgUUNTNjE1
CiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBEUCBQSFkgb3BzIGZvciBVU0IvRFAgc3dp
dGNoYWJsZSBUeXBlLUMgUEhZcwogICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQgVENTUiBw
YXJzaW5nIGFuZCBVU0IvRFAgbW9kZSBtdXRleCBoYW5kbGluZwogICAgICBwaHk6IHFjb206IHFt
cC11c2JjOiBGaW5hbGl6ZSBVU0IvRFAgc3dpdGNoYWJsZSBQSFkgc3VwcG9ydAogICAgICBwaHk6
IHFjb206IHFtcC11c2JjOiBBZGQgUUNTNjE1IERQIFBIWSBjb21wYXRpYmxlCiAgICAgIGRybS9t
c20vZHA6IEFkZCBEaXNwbGF5UG9ydCBzdXBwb3J0IGZvciBzbTYxNTAKICAgICAgZHJtL21zbS9k
cDogQWRkIHN1cHBvcnQgZm9yIGxhbmUgbWFwcGluZyBjb25maWd1cmF0aW9uCgogLi4uL2JpbmRp
bmdzL2Rpc3BsYXkvbXNtL2RwLWNvbnRyb2xsZXIueWFtbCAgICAgICAgfCAgICAxICsKIC4uLi9i
aW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLXVzYjNkcC1waHkueWFtbCAgIHwgIDEwOCArKwog
ZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jdHJsLmMgICAgICAgICAgICAgICAgICAgfCAgIDEw
ICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuYyAgICAgICAgICAgICAgICB8
ICAgIDEgKwogZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9saW5rLmMgICAgICAgICAgICAgICAg
ICAgfCAgIDcxICsrCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2xpbmsuaCAgICAgICAgICAg
ICAgICAgICB8ICAgIDUgKwogZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5jICAgICAg
ICAgICAgICAgICAgfCAgIDc4ICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmgg
ICAgICAgICAgICAgICAgICB8ICAgIDMgLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLWRwLXBoeS5oICAgICAgICAgfCAgICAxICsKIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC11c2JjLmMgICAgICAgICAgIHwgMTE2NSArKysrKysrKysrKysrKysrKy0tLQogMTAg
ZmlsZXMgY2hhbmdlZCwgMTIzNCBpbnNlcnRpb25zKCspLCAyMDkgZGVsZXRpb25zKC0pCi0tLQpi
YXNlLWNvbW1pdDogOTU4NDY5NzIzYjBkZjJhNWVmYTIyOWY5YzQ0NjRjODk2MmMzNWJhZgpjaGFu
Z2UtaWQ6IDIwMjUwODIwLWFkZC1kaXNwbGF5cG9ydC1zdXBwb3J0LWZvci1xY3M2MTUtcGxhdGZv
cm0tODk1ZTRhZTBlMzEwCgpCZXN0IHJlZ2FyZHMsCi0tIApYaWFuZ3h1IFlpbiA8eGlhbmd4dS55
aW5Ab3NzLnF1YWxjb21tLmNvbT4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
