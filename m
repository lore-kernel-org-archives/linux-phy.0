Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91DFFC83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KLnwiK/8fXaxKCBqv0veHinD3hs6b7RPJwRurTASyGA=; b=K5lsQNpWMuLQfx
	z4YGkqHp8SjoztCycuwBsJJwC2/CHFlTv8k97mYijcHjgZ5112WdCOfNMKkL15DOZxyxuuDiJ0pCJ
	tuAlCZ0kvi+MunqcV43KlPxbkE/hkO+AGQCAKYh/Ad/wrDuMCnLsH5CzJjgwbL4Pb7TdOkHyLgICR
	b0JTRBg/5o9eeIkvZEJD2zd6BHj6Kzo+ZLqIDhpaBxiRkAHHy/EHE8joIR0LhxpX7xa5w54ZHOZAI
	bF77du4ZXOZsWz8pAiwXJVsb0hd3ApVG/7HglvdBINAFsRNkAh77P6yBFoLnyZbcoxE32Pthw5sDW
	QEdHVaVTnSSAVJv0S5Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Le-00000001cZ6-0up9;
	Tue, 22 Jul 2025 07:23:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7KW-00000001c39-0H1q
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:22:30 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7D3Dk014607
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:22:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=gpJoZHcyQpYbDfacgmuG1Z
	OCeDG5rolbgOKq0QUy07I=; b=p2gTVgHJXRjDWGfJx3RwFXI6wF4ThOqD69ykb3
	me0obnJUeqo29BRQ4nWhkcBV4lbPuCq6MXqvsWdc2iWf5a3GYUi2YhS03gsf9sbw
	j0pp4i8tlB+EX2pzfsmPuV40ocy/fIO4dZ8rMktttwZE0nHnDBSqt3cUsyw3KQj4
	nMDr9RTgN0AB7zQYAwiGBWXzlAXQUzH0yjstEzNR3Cd5F+4mhD0lZanfqmZoguIt
	9HQJprslWeu0UNFCNsbB375icZMo4/xNW4ROdBQ5bhHf6C10iSCkw3rO1yRUuW9Y
	cm6QodoQFht2qPcXER2SqS120CYLG/VZpBtIqmVqBkNGc8+g==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w1krt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:22:26 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311d5fe941eso1624263a91.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:22:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168946; x=1753773746;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gpJoZHcyQpYbDfacgmuG1ZOCeDG5rolbgOKq0QUy07I=;
        b=vCyOD2K1Vxwb3n/lwC9qSnEA7cFZv8XSKyMK7tYt0SAd599k6s7/QEEihHweRhAcfo
         0VjalkruwU96zJEvXTTM+75gzLBV65VP3HGWj0wlwFPK1UvavznQ9SSS9RYjUBkaxpCt
         LAvRqPDmbCMX8io/ItxqLrDnox/xqFY4hnO6uc67i4qLAlMwPQtCQSCW6+GHMGw0DvB2
         HiebxuzstfQPjNvd+BORbE0bhIQUf1M8V0CLEpUIHWhiMf8J6dZXYtcU6jCYoPqTp8FI
         16xFHykHNfEqKjMxXBvK7GoktgYCEJ1SWCkY0kW1Stpc2le4B8IFk1CCcc8JQaGew1zH
         JpOA==
X-Forwarded-Encrypted: i=1; AJvYcCUzO1z6ptjNgFlM03/dvm31t4s1XlYCT0/tj6nn2BIyYAZPFO8b5ReynwvSd/6ZECTGg7ZUccoLvEk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwaVU4Ofo8VSrkPymNuOEQqO2vEU8/Ppwj2BvRS//phY0rAnXBZ
	PRogVuqmq7MrUQTrAL0muyov4hhTZCFsy6kMlfRjmpc/TQRqscEW0JqypnllX4Wh0KCZ+IFpfdB
	OAu89RW5hPuj/2A6yKxF+/ir5fqzPo00NX9srX99JwVv/nv7tCFKOTU9PUF7uA8NEsY8e
X-Gm-Gg: ASbGncvhjOyJGxWLbYdErdC6vRe4wP//33EzEsSZDta2vAjTM4pIiJoC8Gw0gYmtalT
	MXkv4XDj8YrysI+LeSvcsMMwZnQ6AxEk7depa9g1o5VVoqQcOr8DG/WXJeY/WZ9TlIKXM4t20HA
	7AONnMVZQ0jQZJiZmQIkq01yfrXkv6VpgXuX8G0kcDS6k1fHhzmHL4NtJSvxqsOjkMqsooAgOUQ
	bHuxzx91lOvh9aJ0QYGH+P0s4xd7Yg0piG2nMMrOcSG0aHG9kJrqz8uTCqWdh5n6K6a6BjUUYQH
	S5JgOLuGxRJ8Svr03u5BUJWv2odSKh8JbMUmGQUAO+De0oRbH76F8P6LhJgOmQ2tbgvYHQaxytL
	b8sMmbIirBVurtA3p206L4wbEiW/snofyCuuS/stvCUYfwQlZ01KgJJOY
X-Received: by 2002:a17:90b:3f8d:b0:311:c939:c842 with SMTP id 98e67ed59e1d1-31c9e7a4012mr13684960a91.7.1753168945516;
        Tue, 22 Jul 2025 00:22:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNu5XNjC9N7LggT70nJqL7zjLR3AcsqyEnguxqP02Q/pBp2syZy3iYCoyam6QqSrFIAmJ8aA==
X-Received: by 2002:a17:90b:3f8d:b0:311:c939:c842 with SMTP id 98e67ed59e1d1-31c9e7a4012mr13684928a91.7.1753168944987;
        Tue, 22 Jul 2025 00:22:24 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:22:24 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v2 00/13] Add DisplayPort support for QCS615 platform
Date: Tue, 22 Jul 2025 15:22:01 +0800
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABo8f2gC/5WNQQ6CMBBFr0K6dkynUBFX3sOwIO0gkwgtLRAJ4
 e4WbuDq5/2f/LeJSIEpike2iUALR3ZDAnXJhOma4U3ANrFQUmlZKoTGWrAc/adZvQsTxNmf2bo
 Ao4k31JC2KWEP1mhDpJXCEkV69IFa/p62V5244zi5sJ7yBY/28BSIqvrLsyBIkFVT5PndVjm1z
 3Fmw4O5GteLet/3H8DNPcjoAAAA
X-Change-ID: 20250721-add-displayport-support-for-qcs615-platform-dc5cee522171
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
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168936; l=2923;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=j6byM6mQFWNoIMiAy5TxrSVRDC8viNz/BdGaO3ECzk0=;
 b=vnJictkXtk+9QtUeMBGykCyh1QwvmsfqkvGVQTYRgXCIilV2YYr+1MsDMAbpFqSfdeEXR6COw
 bhTEEt+S5EqBB/giQEMmWBmzrA0irPIoMjvRo+qICQxEQedfAsV+Squ
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=687f3c32 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=KbB9N7STWnmORTLZSFQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfXwFa4au9ev+/j
 5zgRoZ+ehGwmMHdowhWoC/DOGX2ciiGlArB8r1GF2tu01qsrsTgtXIgjeurXtxYL6w3yJTNhpct
 6mFrZZi0+0x/Mu7dI7giVz57P7+3pFhXR+fx3TyJmBgJTmH5+DjzA6weyfVGAFqDWkYEIGEiTsc
 Z8bvPB+K0JvDtyKltgMV5qaiQIEQkJW2EG2lmgHhvh0Qs/UP61hRzIh7QEFH7DYcVrAM22d+run
 Iczy0/YCs3e03UUaE04Ij1wL3UZO3oKd/0NF2fOfEN8pIKvmlyDeZnJqzq5CMmgrVVpckz1TzlB
 1juEEfuM+FI465MqPwugvTEGwzt8JDrpQ7Pdt+6G5GmjobeVkOpNjpyYAh0spjYLDOzR5WbMY43
 Q4d/Dc+DGq5DpyvPdbL7GBDaOT+e0naj63y3e6tPQHTuZ+UgB/IyoLwhvgjQwwddpnO50BDt
X-Proofpoint-ORIG-GUID: wnZSdxyS8dmTB8BHjsi3x6vYaUCAffEZ
X-Proofpoint-GUID: wnZSdxyS8dmTB8BHjsi3x6vYaUCAffEZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002228_109349_CA442AA8 
X-CRM114-Status: GOOD (  12.99  )
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
eHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgotLS0KQ2hhbmdlcyBpbiB2MjoK
Ci0gQWRkIG5ldyBiaW5kaW5nIHFjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCBmb3IgUUNTNjE1
IHN0YW5kYWxvbmUgRFAgW0tyenlzenRvZl0KLSBTcGxpdCBEUCBQSFkgZHJpdmVyIGludG8gcGF0
Y2hlcyA0LTExIGJ5IGxvZ2ljYWwgY2h1bmtzIFtEbWl0cnldW0tyenlzenRvZl0KLSBVcGRhdGUg
RFAgUEhZIGNvbmZpZ3VyYXRpb24gZmxvdyB0byBhbGlnbiB3aXRoIFFNUCBDb21ibyBQSFkgaW1w
bGVtZW50YXRpb24gW0RtaXRyeV0KLSBVcGRhdGUgYWxsIGhleCB2YWx1ZXMgdG8gbG93ZXJjYXNl
IFtEbWl0cnldCi0gUmVtb3ZlIHJlZHVuZGFudCBjb21tZW50cyBpbiBEUCBQSFkgZHJpdmVyIFtL
cnp5c3p0b2ZdCi0gUmVtb3ZlIGludmFsaWQgVVNCQyB0eXBlIGRlZmluZSBbRG1pdHJ5XQotIE1v
dmUgbGFuZV9tYXDvvIwgbWF4X2RwX2xhbmVz77yMIG1heF9kcF9saW5rX3JhdGUgcGFyc2luZyBs
b2dpYyB0byBkcF9saW5rIFtEbWl0cnldCi0gQWRkIFRDU1ItYmFzZWQgbXV0ZXggbG9naWMgZm9y
IERQIGFuZCBVU0IgUEhZIGNvZXhpc3RlbmNlIFtEbWl0cnldCi0gRHJvcCBwYXRjaGVzIDbigJM4
IGFuZCByZW1vdmUgcmVsYXRlZCBiaW5kaW5nIHByb3BlcnRpZXMgYXMgcmVqZWN0ZWQgdXBzdHJl
YW0KLSBMaW5rIHRvIHYxOgogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTEyOS1h
ZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLXYxLTAtMDlhNDMzOGQ5
M2VmQHF1aWNpbmMuY29tLwotLS0KCi0tLQpYaWFuZ3h1IFlpbiAoMTMpOgogICAgICBkdC1iaW5k
aW5nczogZGlzcGxheS9tc206IERvY3VtZW50IERQIG9uIFFDUzYxNQogICAgICBkdC1iaW5kaW5n
czogcGh5OiBBZGQgYmluZGluZyBmb3IgUUNTNjE1IHN0YW5kYWxvbmUgUU1QIERQIFBIWQogICAg
ICBkdC1iaW5kaW5nczogcGh5OiBxY29tLG1zbTg5OTgtcW1wLXVzYjMtcGh5OiBzdXBwb3J0IGR1
YWwgVENTUiByZWdpc3RlcnMKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogUmVuYW1lIFVTQiBz
dHJ1Y3RzIGFuZCByZW9yZ2FuaXplIGxheW91dAogICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBJ
bnRyb2R1Y2UgUEhZIHR5cGUgZW51bSBmb3IgVVNCL0RQIHN1cHBvcnQKICAgICAgcGh5OiBxY29t
OiBxbXAtdXNiYzogQWRkIERQIFBIWSBzdHJ1Y3QgZGVmaW5pdGlvbnMKICAgICAgcGh5OiBxY29t
OiBxbXAtdXNiYzogQWRkIFFDUzYxNSBEUCBQSFkgY29uZmlndXJhdGlvbiBhbmQgaW5pdCBkYXRh
CiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEltcGxlbWVudCBEUCBQSFkgYnJpbmctdXAgZmxv
dyBmb3IgUUNTNjE1CiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IFdpcmUgdXAgRFAgUEhZIG9w
cyBhbmQgZmxvdyBmb3IgUUNTNjE1CiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IFRyYWNrIFBI
WXMgZm9yIHN0YW5kYWxvbmUgRFAvVVNCMy4wIGhhbmRsaW5nCiAgICAgIHBoeTogcWNvbTogcW1w
LXVzYmM6IEFkZCBRQ1M2MTUgRFAgUEhZIGNvbXBhdGlibGUKICAgICAgZHJtL21zbS9kcDogQWRk
IERpc3BsYXlQb3J0IHN1cHBvcnQgZm9yIFFDUzYxNQogICAgICBkcm0vbXNtL2RwOiBBZGQgc3Vw
cG9ydCBmb3IgbGFuZSBtYXBwaW5nIGNvbmZpZ3VyYXRpb24KCiAuLi4vYmluZGluZ3MvZGlzcGxh
eS9tc20vZHAtY29udHJvbGxlci55YW1sICAgICAgICB8ICAgIDEgKwogLi4uL2JpbmRpbmdzL3Bo
eS9xY29tLG1zbTg5OTgtcW1wLXVzYjMtcGh5LnlhbWwgICAgfCAgIDI4ICstCiAuLi4vYmluZGlu
Z3MvcGh5L3Fjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCAgICAgICB8ICAxMTEgKysKIGRyaXZl
cnMvZ3B1L2RybS9tc20vZHAvZHBfY3RybC5jICAgICAgICAgICAgICAgICAgIHwgICAxMCArLQog
ZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMgICAgICAgICAgICAgICAgfCAgICAx
ICsKIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfbGluay5jICAgICAgICAgICAgICAgICAgIHwg
ICA3MSArCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2xpbmsuaCAgICAgICAgICAgICAgICAg
ICB8ICAgIDUgKwogZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5jICAgICAgICAgICAg
ICAgICAgfCAgIDc4ICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmggICAgICAg
ICAgICAgICAgICB8ICAgIDMgLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWRw
LXBoeS5oICAgICAgICAgfCAgICAxICsKIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11c2JjLmMgICAgICAgICAgIHwgMTQ2NiArKysrKysrKysrKysrKysrKy0tLQogMTEgZmlsZXMg
Y2hhbmdlZCwgMTUwMyBpbnNlcnRpb25zKCspLCAyNzIgZGVsZXRpb25zKC0pCi0tLQpiYXNlLWNv
bW1pdDogZDA4NmM4ODZjZWI5ZjU5ZGVhNmMzYTlkYWU3ZWI4OWU3ODBhMjBjOQpjaGFuZ2UtaWQ6
IDIwMjUwNzIxLWFkZC1kaXNwbGF5cG9ydC1zdXBwb3J0LWZvci1xY3M2MTUtcGxhdGZvcm0tZGM1
Y2VlNTIyMTcxCgpCZXN0IHJlZ2FyZHMsCi0tIApYaWFuZ3h1IFlpbiA8eGlhbmd4dS55aW5Ab3Nz
LnF1YWxjb21tLmNvbT4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
