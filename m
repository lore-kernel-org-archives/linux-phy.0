Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B5FFCA0FE7
	for <linux-phy@archiver.kernel.org>; Mon, 25 Aug 2025 12:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y+pF+HcRhDl9o5ZEv21shAzprAnV6xbL5+vhMZfWpvk=; b=bVjsRwiTj7OT7F
	Xb8cvxJVAkyFp3ElCV5OqYGk8HccmBl8OyKLeUprO/98qjyCD8+jMatBIJ/Z5U3UOA9KdREPvqxSi
	3e5IP9Uu+Y8IEfGxLkxpEi7gU4lsl8FIQvUKChB9iVJZvPA8dEot4sKW4OuaswssrJD725ns7NGHI
	m6xBt+uTG3o1IVr9gXsv71JoB0s7g7Q6tyXo3VQAprZ3DbTMNBampwl4NBesAikNfrwxM4IyxNl01
	8968xzifI0jgHhnBPePAiOlryve4CxdyYbIXR6grM5VMSdNiN0YzcEHcy0NFMjQ93mUXuuUG4S/yV
	FpLEOyeiFw2Cco9lJ8/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqWis-00000007zVJ-0oFV;
	Mon, 25 Aug 2025 12:54:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVkE-00000007qCT-1KP8
	for linux-phy@lists.infradead.org;
	Mon, 25 Aug 2025 11:52:15 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8OwsB026509
	for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 11:52:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/Y526DyN1p59PkdBwvGxDS
	FDOnzDRguJWKI/2yK0OeE=; b=NJb0ntd10hSm0hzqU8vfKNexLd+sbEWn2h22Hl
	618M03HMzt3Fe8qgPH+7v9VYUICjrt6bN8+BQQ5iT/E+Qg+VSxEAiIljpE8utIRR
	KFrIhaCeZQX7FSXVYznNdLLYNmi+Qtj1x0zgcJszUGL4qn8Qs2LphxC2pj+UGxm6
	fb4wK1e+wCRfiwoV4X9O1hxuO/ZYev1I/sUVAipnNZhuaoHLFwoV94lFievqxFq/
	Hd/2eCydsywwmXfmay5NCLmD8dXbmqGROFGE2cjBbesPytGPG3B2mBlMOFz8mf4E
	x41oXfFgKm7nqbKMdDH5G8lfySSZky1+a6gUulI9m/qj7xXg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5cutq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 11:52:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244581c62faso54029435ad.2
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 04:52:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756122731; x=1756727531;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Y526DyN1p59PkdBwvGxDSFDOnzDRguJWKI/2yK0OeE=;
        b=ZsVSr0UQwyWJt2Ie9wXeDp5bPzQ9bIffIpnl29LAT6p+KuW5HNBx/qeU+4v8+I6O2+
         Dq8JWkiPHx5f0s0J20yInticCV7/FyQggyTxb24PcElFycWdV56crGvb4EeABSykd37B
         c3weTpis+/kyIflm8tjsYN/TTDkWb579WPbRFjN5lRAV0eZG4TcEw1EaM00AsNvNdJhv
         F/FrX//TCBzJU6lZqMr2Iqb1fnme3gsDHhiCJHYmilnYqevRUfOahh6pdt6ZaQTeaKe1
         brwKcKXDZCmT1uxaes+LA5yDM+Sf/9IBrLWJrqtJdz1SbNPfingcLx/bxSBj4DbsduoX
         Mt/A==
X-Forwarded-Encrypted: i=1; AJvYcCViGbGvxuc8ak/16EM/9DZ/ffCbbHv3aqhDNpFD1c8JctqHqUJKyg5KVqtbk/wJ3DKTvFMPh1WWTfk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4tqxThlpb1/wlDHlrd6LkEPfDUDd7WS1E2RuaEkOz8FRiIUUJ
	+wp5NS7XjRd99G9xnW2YG9k8ksKrE4c65MR2+SRhgSIGyceCguQQrO5BtK0APvSc7IP5F2Trlro
	OptpyvMPFkPkIsjBN17ndZkuGJ6pqwZ/gARk81LY9eXXVqHoBf37bkg1jIWk1ScyGORY6t/e/eB
	eD
X-Gm-Gg: ASbGnctTj40umjn1L6dnRQFTbs+y+/HlEKAiQcjMIWbhnitp8Yu3S+P6hyF/aQc3GJT
	Lp890UE7ik4OfS5uswJxDkx8UVE6FHiHGNDOh7YTC8l8h1k0+MsIFK8Llt3DWTFLr3L6N80BGGF
	8IxIkaHMoe53BVMYIJB9KQRehIl+1A/rJqdRia0ZHDn0jHup50uE9a3RkZkokKvS0iiQ9uX7fLj
	voc8eisBCSThcw2CDrDTbGTkOImuvZkIF1Xge3VC2HrN1/cwUHWvlix2PDTYADzYwGVyz9GdSVd
	KkA4ZSUIt2RGzTZ0nTzJz14FLsoZx6SK5RZcirki6lb/wVtBzBzdHQ4vpu0fWuqPT72BqxxCBLy
	s028m3pzjjXyVxFKF3Z3FDly5nU/JOeQm9S9XjKvGXd5Xv6H/AQWB35+pHj2fgy8b80CdXCficW
	E=
X-Received: by 2002:a17:903:4b03:b0:246:cfc4:9a27 with SMTP id d9443c01a7336-246cfc49fefmr37821425ad.13.1756122731137;
        Mon, 25 Aug 2025 04:52:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0nXT2JRvirqDOleS8kFaVnHFiCoQc5HWIvFsBFs6zeOhIu5PAQX22b01eAoG3tmxg7dDKAg==
X-Received: by 2002:a17:903:4b03:b0:246:cfc4:9a27 with SMTP id d9443c01a7336-246cfc49fefmr37821145ad.13.1756122730680;
        Mon, 25 Aug 2025 04:52:10 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246687b521bsm67081015ad.60.2025.08.25.04.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 04:52:10 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH 0/3] Fix the NULL pointer deference issue in QMP USB
 drivers
Date: Mon, 25 Aug 2025 17:22:01 +0530
Message-Id: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGFOrGgC/x2MQQqAIBAAvyJ7biEFsfpKdChda6HMlCKI/p50H
 IaZBzIlpgydeCDRxZn3UEBWAuwyhpmQXWFQtdJ1ozQeW8Rwris6SuRxDxg39K5txlZaY/QEJY1
 F8f1v++F9PxDlQo5mAAAA
X-Change-ID: 20250825-qmp-null-deref-on-pm-fd98a91c775b
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Poovendhan Selvaraj <quic_poovendh@quicinc.com>,
        stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756122727; l=1268;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=dHzgTV5EgsoXBfE9yCqjfg3o/8E0k/K/0/cMTieZHrY=;
 b=bq8Y3fUJzfMQT1ir+8ZpNme7SH/5rFoC8X+nVHsTL4XrSAbtetJEoIRxutdNqbYkdSBxVKOo6
 cQ+0ejVApFeDS7bz+rcwSTU4RUbttRQyGQAJthKmpRVm91keB91ALka
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX7nFUhnhocLcL
 7BZVl9c8OPYh8hb1PUSFbh61u7EybTCKQxQGicUaWrL2SvcRMxbX+cpemGow7fmKLHCJaRYxXoC
 q1xvh/x86C+kbSD16RWdQyHkVULvNyATnrn3nEiGhlY71VdzrSHcHdfhAq0tr257kFSbDCRNUQt
 OF+WOprzB68PZFUUHKedILuYBUJOdpDDmvJ4+9lUqR4IT77uyPqz+TjkVbJKxBncXBvFDhvhJAK
 LANyYrg2yIaDy70QOXRYCjZwWhQEAj8O3JIcDSL1feErmV3h6ahtdYTuMLrne7x1aqXDdlGH2Dy
 RzJAwwjF1pGASnXCsXGXn8B1Hu6IA30QdDs1T37tvjWzarq+jhvkactPwhc14aJHKxqSX37rY4r
 M8++iBKv
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68ac4e6c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=7tgEStx-2YtQAc9oN5kA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 4DgJEc-3l_ySADQ6fuc0UdQhpP1abnZ4
X-Proofpoint-ORIG-GUID: 4DgJEc-3l_ySADQ6fuc0UdQhpP1abnZ4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_05,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1011 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_045214_476908_8B5D0DE5 
X-CRM114-Status: GOOD (  12.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

In the suspend / resume callbacks, qmp->phy could be NULL because PHY is
created after the PM ops are enabled, which lead to the NULL pointer
deference.

Internally issue is reported on qcom-qmp-usb driver. Since the fix is
applicable to legacy and usbc drivers, incoporated the fixes for those
driver as well.

qcom-qmp-usb-legacy and qcom-qmp-usbc drivers are splitted out from
qcom-qmp-usb driver in v6.6 and v6.9 respectively. So splitted the
changes into 3, for ease of backporting.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Poovendhan Selvaraj (3):
      phy: qcom-qmp-usb: fix NULL pointer dereference in PM callbacks
      phy: qcom-qmp-usb-legacy: fix NULL pointer dereference in PM callbacks
      phy: qcom-qmp-usbc: fix NULL pointer dereference in PM callbacks

 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 4 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c        | 4 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c       | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)
---
base-commit: 0f4c93f7eb861acab537dbe94441817a270537bf
change-id: 20250825-qmp-null-deref-on-pm-fd98a91c775b

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
