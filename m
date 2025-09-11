Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78FCACAC58E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FevZ8qaBeBpyQ8tLQr2vOn6tVWX/PJVCs2hm42qnwzA=; b=3HJNt8+3VBWrXu
	KVBfCPJ+jiIqRW8eAK2kYo6rxse7HxZbUyb45J4G3uYNBfnqPjH3CBQHLbBvSzXF0e/A1CnHfaZ9+
	Mfv5kIgtO+GhAYzfCP3zpvhj5f8ULuVz3iw1gh0ABB5Xj/pe21QB9s2XryrqqPpNi0iGCm9Afjn7j
	ivoV4c21XjQvE2S++UJKC3/Dk2hvgNvvxKnqZ6vagy9bZeahz+TOEM9KMFNFUU+8gyekxhjChMe7s
	8rFAie7j41xP9lMsUqHO3DeXH8AEwOmawypeEpiQXMA6IvCIVwmy8PSf+irgTuWZP17+i1TB/X79k
	PkFhpRAjGGwYNa41EdvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwii4-00000003hH3-0XOc;
	Thu, 11 Sep 2025 14:55:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwii1-00000003hFN-1jKg
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:55:38 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BBNlVu015872
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:55:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/xEH5bhCDH+EambDfpLJYH
	Y3ZvSSk+a6Bg2AG4xJvXg=; b=i5GLLpNVVOTy2CW0REr5xB0CVkwKWoa/nOY0Mz
	wfJuewuRr4rQ3XXbvGR5f1cL+hzkp6VaW4mus7Rppxp42EtCqo737Z4WisH8xxEt
	JddOqTCEmwc2gYdnm6WhvEPtMVAoPsdN0pAHpheVWcqe81jByEvaQ9qDybuYeoQ9
	W2SItl6kOFh97G5XtDmE0wKzsNgSM3Y19pcdFWZlmAtEishR9yUxVbjn/IxOhaVo
	5V23rmpXuwxfVBhE6RIQlFLrrKVBdolb+51/6CG1M8PGrRUdg/IUt4H/1UHPPW59
	4rCe2kVUll+DVn6Fs1UvHolgvSXxie51iUWifFhUOZ7hivHw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m813x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:55:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-774199117b3so143873b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:55:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602536; x=1758207336;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/xEH5bhCDH+EambDfpLJYHY3ZvSSk+a6Bg2AG4xJvXg=;
        b=SpH4dPxdMqPKL4+jefQ/HPyABXdjrWuawoiig6qNRLA+FJ5W7JsvmnNFkiRqfMf/8m
         pw0+drNWXPfFg/XSJKUOYVKvjM8px/Hxx72O7JZnBtgVWu3OwUUxUZE/AU1qhYYLg7Lw
         K1zFG2OiOQo9T6EjgHmUlAN2fxW+2jhuaQ6QAta2TuhQXNDDVVI5wwCabae5U00Mcy09
         VScxXrxuDmdBfaIQps0eko6qVkYJxR0Elyx2wmFFt8RjbWL0WLdfQp5jrKYr1g3h9JDW
         rzkVetwIAKWaBGPesVY1Dj/N9WwPspNeYd/4AEQmz6cJOamogwColvznLze+oed19m2F
         KdDQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3dCbxKocfADM+KPioc5v9Hlh2wLzMPFcgvbvwLq/Khe9hKmMj9ruDzFLqFuVylHsLphSfqlkNjiM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPE2tVUJOMoir30JQDPfIqXdEVxuQEZwgA31/unRnqg6grRq3x
	mune0Yw5HX6sHqE68qIupvCOzXfSIPCKKE6eJUfJJJKn50PgrzOvZ935lZ/s2gOcG46ugoiMYf0
	qfynu0wmXPKD8dOcF4zTCOI0+BWnT3tTRGr+4/OdmbBIQZN2Sb67Hg9yUnMj8CIuLj8pe
X-Gm-Gg: ASbGncu41hDoT37iAt5S6aufo25DpK5bnloRVAn1vdh3d1Maacuf6lIEWl9hlvHNzqJ
	zTK4MsaA379oCCdOTckwcSLLMF7sd6r4PahRzl+FxJ5w3W84g6inPLY5iJp12vvWe14C23doxN3
	xc6SQcbVLecmHa8TLOo9cm+dz653tgnDB2rqBFGRVdKmFdb1RlgCvRryEQRcBqEwGOJy/Txrjwr
	xkKq2PtdfW2PJFM1KIEfacXGMxMRQFSorXKfcOteU150Dk9BAo526bMMJuQGhIQHQS+2I4pLDr+
	shPTsumo9hhRuAfgrBZ9AaArC+dN6ajLMwRs6jbc48H1Xcu6twwq6AicLd2dl4LWNoYVYU7B+mI
	ddAxfC/BZdN7Hb/Xij0SueH6PY2lioWGzLwW6r8+A4bY17JCcr6BLwBJO
X-Received: by 2002:a05:6a20:3c90:b0:249:ce31:f771 with SMTP id adf61e73a8af0-2533e47d9abmr15639413637.2.1757602535602;
        Thu, 11 Sep 2025 07:55:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxaoAZb131tH41lL2qHb/K1dU+uAWx1P1xOf2PHZqYOFrD6zV6LGLcSxOT6jLhp1rAFlJicQ==
X-Received: by 2002:a05:6a20:3c90:b0:249:ce31:f771 with SMTP id adf61e73a8af0-2533e47d9abmr15639396637.2.1757602535088;
        Thu, 11 Sep 2025 07:55:35 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.55.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:55:34 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v4 00/13] Add DisplayPort support for QCS615 platform
Date: Thu, 11 Sep 2025 22:54:57 +0800
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMPiwmgC/5XOTW6DMBAF4KtEXteRZ2wK7ir3qLIw/mksBQw2o
 EQRd++AVGXTDavRm5HeNy9WfI6+sK/Ti2W/xBJTT0F9nJi9mf7H8+goMxRYCQ3AjXPcxTLczXN
 IeeJlHvYZUuajLZ9QcbpNFDuOQdTosTUoNaPGIfsQH7v2faV8i2VK+bnjC2zbzVEAqA85C3DBh
 TZKysZp6cNlnKONvT3b1LFNWvCvvaKX8Fg7UrvCVglZQw2huaRSzuNs7tTevQn5JhoUxwhJBL3
 fOqy8ldr+Q6zr+gsijr6+rgEAAA==
X-Change-ID: 20250911-add-displayport-support-for-qcs615-platform-2f072e2ba239
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=4013;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=PxQ+Nl+6gXCfV0SnVCZ6IaDcnEi2VND1S9/H0brbNM8=;
 b=A3jxmUUA2sbBI+BX54DDNMZhtyvRapP9PvOmX6yKpvtKD3v4cUgHbeOLw8W0YXg71m/8SEC5q
 PIm0TDCnoZVAoAYe6fq2H1VETMItFDUUQOJl/5mAVI6JMEu2+p4zrA6
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX4clSrJA0EZBt
 miLDyPbB3ntKIhgWZEDkqt2il2s6lCbBQMXsoY9oMCChBZs9cV/NCsuRv8yOj91wONR3Z7VWNem
 dTtJKx1L18yf7Md0KBLbVGhBjMV5kzYqkzpcb+RvIcJ1yg33hcHaV66YX1mCMRa9aRDH3qtMxQv
 D3kjDT876I0QaSIS8u8U0I7nI46pSGeQ3GYZnsd7tSYXQD3OTFGsMrSluQQ1kZ7nkJlVfs7t1p/
 gdy/QBu3V3eXAHb9QGksTNKaQUGnuZL6vZcZBTi9OsVJAetC4eFwXHtwp2hcF1dDCuRxQNLAT01
 pK+Tkld4caIHrF9vvT7qXDHqAOmK1UJ5keJa8S8TpwDCJ0kO6iYdeRYxv1hMOWtzz3NG6KXnaDd
 m01C3ndJ
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c2e2e8 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=NhqbsNcZucgFEQMbMWwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Kvq9L7I4tyUb7PPAOoCKn3Ib9a42eHIj
X-Proofpoint-ORIG-GUID: Kvq9L7I4tyUb7PPAOoCKn3Ib9a42eHIj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075537_451015_8BEB7A69 
X-CRM114-Status: GOOD (  13.67  )
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
eHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgotLS0KQ2hhbmdlcyBpbiB2NDoK
Ci0gRHJvcCBwYXRjaCB2M1swMS8xNCAmIDEzLzE0XSwgd2lsbCBzdXRibWl0IG5ldyBwYXRjaHNl
dHMgYmFzZWQgbXN0IGR0IGJpbmRpbmcgc2VyaWVzLgotIFVwZGF0ZSBtYWludGFpbmVyIG9mIHFj
b20scWNzNjE1LXFtcC11c2IzZHAtcGh5LnlhbWwgdG8gbXlzZWxmLgotIEFkZCBtaXNzaW5nIGF1
eCBhbmQgcGlwZSBjbG9ja3MuIFtEbWl0cnldCi0gRHJvcCBzZWNvbmQgVENTUiBwaGFuZGxlOyBy
ZWdpc3RlciBvZmZzZXRzIGFyZSBkZXNjcmliZWQgZGlyZWN0bHkuIFtEbWl0cnldCi0gQWRkIFVT
QkMgUEhZIHNlcmllcyByZWxhdGVkIGluaXRfbG9hZF91QSBjb25maWdzLiBbRG1pdHJ5XQotIERy
b3AgdjNbMDQvMTRdIHFtcF9waHlfdXNiY190eXBlIGRlZmluZSBhbmQgdXNlIGRwX3NlcmRlcyBv
ZmZzZXRzIHRvIGNvbmZpcm0gRFAgY2FwYWJpbGl0eSBbRG1pdHJ5XQotIFJlb3JnYW5pemUgc3Vi
LXBhdGNoZXMgYXMgc3VnZ2VzdGVkLgotIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMDI1MDgyMC1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRm
b3JtLXYzLTAtYTQzYmQyNWVjMzljQG9zcy5xdWFsY29tbS5jb20vCgpDaGFuZ2VzIGluIHYzOgoK
LSBSZW5hbWVkIHFjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCBpbiB2MiB0byBxY29tLHFjczYx
NS1xbXAtZHAtcGh5LnlhbWwgaW4gdjMgZm9yIFFDUzYxNSBVU0IzK0RQIFBIWS4KLSBVcGRhdGVk
IHBhdGNoIHYzWzAyLzE0XSB0byByZXZpc2UgYmluZGluZyB0aXRsZSwgZGVzY3JpcHRpb24sIGFu
ZCBwcm9wZXJ0eSBvcmRlci4gW0tyenlzenRvZl0KLSBVcGRhdGVkIGNvbW1pdCBtZXNzYWdlcyBp
biBwYXRjaCB2M1swMS8xNF0gYW5kIFsxMy8xNF0gdG8gcmVmbGVjdCB0aGUgRFRTSSByZW5hbWUg
YW5kIGNsYXJpZnkgY29tcGF0aWJpbGl0eS4gW0tyenlzenRvZl0KLSBBZGRlZCBVU0IzK0RQIG1v
ZGUgaW1wbGVtZW50YXRpb24gaW4gcGF0Y2hlcyB2MyBbMDAz4oCTMDEyXSwgb3JnYW5pemVkIGlu
IGxvZ2ljYWwgY2h1bmtzLiBbRG1pdHJ5XQotIERyb3BwZWQgcGF0Y2ggdjJbMDMvMTNdIHRvIG1h
aW50YWluIGZ1bGwgYmFja3dhcmQgY29tcGF0aWJpbGl0eSB3aXRoIFVTQkMuCi0gTGluayB0byB2
MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNzIyLWFkZC1kaXNwbGF5cG9ydC1z
dXBwb3J0LWZvci1xY3M2MTUtcGxhdGZvcm0tdjItMC00MmI0MDM3MTcxZjhAb3NzLnF1YWxjb21t
LmNvbS8KCkNoYW5nZXMgaW4gdjI6CgotIEFkZCBuZXcgYmluZGluZyBxY29tLHFjczYxNS1xbXAt
ZHAtcGh5LnlhbWwgZm9yIFFDUzYxNSBzdGFuZGFsb25lIERQCi0gU3BsaXQgRFAgUEhZIGRyaXZl
ciBpbnRvIHBhdGNoZXMgNC0xMSBieSBsb2dpY2FsIGNodW5rcyBbRG1pdHJ5XQotIFVwZGF0ZSBE
UCBQSFkgY29uZmlndXJhdGlvbiBmbG93IHRvIGFsaWduIHdpdGggUU1QIENvbWJvIFBIWSBpbXBs
ZW1lbnRhdGlvbiBbRG1pdHJ5XQotIFVwZGF0ZSBhbGwgaGV4IHZhbHVlcyB0byBsb3dlcmNhc2Ug
W0RtaXRyeV0KLSBSZW1vdmUgcmVkdW5kYW50IGNvbW1lbnRzIGluIERQIFBIWSBkcml2ZXIgW0ty
enlzenRvZl0KLSBSZW1vdmUgaW52YWxpZCBVU0JDIHR5cGUgZGVmaW5lIFtEbWl0cnldCi0gTW92
ZSBsYW5lX21hcO+8jCBtYXhfZHBfbGFuZXPvvIwgbWF4X2RwX2xpbmtfcmF0ZSBwYXJzaW5nIGxv
Z2ljIHRvIGRwX2xpbmsgW0RtaXRyeV0KLSBBZGQgVENTUi1iYXNlZCBtdXRleCBsb2dpYyBmb3Ig
RFAgYW5kIFVTQiBQSFkgY29leGlzdGVuY2UgW0RtaXRyeV0KLSBEcm9wIHBhdGNoZXMgNuKAkzgg
YW5kIHJlbW92ZSByZWxhdGVkIGJpbmRpbmcgcHJvcGVydGllcyBhcyByZWplY3RlZCB1cHN0cmVh
bQotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTEyOS1hZGQt
ZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLXYxLTAtMDlhNDMzOGQ5M2Vm
QHF1aWNpbmMuY29tLwoKLS0tClhpYW5neHUgWWluICgxMyk6CiAgICAgIGR0LWJpbmRpbmdzOiBw
aHk6IEFkZCBRTVAgVVNCMytEUCBQSFkgZm9yIFFDUzYxNQogICAgICBwaHk6IHFjb206IHFtcC11
c2JjOiBSZW5hbWUgVVNCLXNwZWNpZmljIG9wcyB0byBwcmVwYXJlIGZvciBEUCBzdXBwb3J0CiAg
ICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBEUC1yZWxhdGVkIGZpZWxkcyBmb3IgVVNCL0RQ
IHN3aXRjaGFibGUgUEhZCiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBRQ1M2MTUgRFAg
UEhZIGNvbmZpZ3VyYXRpb24gYW5kIGluaXQgZGF0YQogICAgICBwaHk6IHFjb206IHFtcC11c2Jj
OiBBZGQgcmVndWxhdG9yIGluaXRfbG9hZCBzdXBwb3J0CiAgICAgIHBoeTogcWNvbTogcW1wLXVz
YmM6IE1vdmUgcmVzZXQgY29uZmlnIGludG8gUEhZIGNmZwogICAgICBwaHk6IHFjb206IHFtcC11
c2JjOiBBZGQgRFAgUEhZIGNvbmZpZ3VyYXRpb24gc3VwcG9ydCBmb3IgUUNTNjE1CiAgICAgIHBo
eTogcWNvbTogcW1wLXVzYmM6IEFkZCBVU0IvRFAgc3dpdGNoYWJsZSBQSFkgY2xrIHJlZ2lzdGVy
CiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBUQ1NSIHBhcnNpbmcgYW5kIFBIWSBtb2Rl
IHNldHRpbmcKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogQWRkIERQIFBIWSBvcHMgZm9yIFVT
Qi9EUCBzd2l0Y2hhYmxlIFR5cGUtQyBQSFlzCiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFk
ZCBVU0IvRFAgbXV0ZXggaGFuZGxpbmcKICAgICAgZHJtL21zbS9kcDogbW92ZSBsaW5rLXNwZWNp
ZmljIHBhcnNpbmcgZnJvbSBkcF9wYW5lbCB0byBkcF9saW5rCiAgICAgIGRybS9tc20vZHA6IEFk
ZCBzdXBwb3J0IGZvciBsYW5lIG1hcHBpbmcgY29uZmlndXJhdGlvbgoKIC4uLi9iaW5kaW5ncy9w
aHkvcWNvbSxxY3M2MTUtcW1wLXVzYjNkcC1waHkueWFtbCAgIHwgIDExMSArKwogZHJpdmVycy9n
cHUvZHJtL21zbS9kcC9kcF9jdHJsLmMgICAgICAgICAgICAgICAgICAgfCAgIDEwICstCiBkcml2
ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2xpbmsuYyAgICAgICAgICAgICAgICAgICB8ICAgNzEgKysK
IGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfbGluay5oICAgICAgICAgICAgICAgICAgIHwgICAg
NSArCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmMgICAgICAgICAgICAgICAgICB8
ICAgNzggKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaCAgICAgICAgICAgICAg
ICAgIHwgICAgMyAtCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtZHAtcGh5LXYy
LmggICAgICB8ICAgMjEgKwogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMu
YyAgICAgICAgICAgfCAxMDg5ICsrKysrKysrKysrKysrKysrLS0tCiA4IGZpbGVzIGNoYW5nZWQs
IDExOTIgaW5zZXJ0aW9ucygrKSwgMTk2IGRlbGV0aW9ucygtKQotLS0KYmFzZS1jb21taXQ6IDhm
MjFkOWRhNDY3MDJjNGQ2OTUxYmE2MGNhOGEwNWY0Mjg3MGZlOGYKY2hhbmdlLWlkOiAyMDI1MDkx
MS1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLTJmMDcyZTJiYTIz
OQoKQmVzdCByZWdhcmRzLAotLSAKWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29t
bS5jb20+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
