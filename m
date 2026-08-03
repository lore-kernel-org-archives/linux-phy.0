Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6CD2C55179
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 13:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gT1nMfJf6HtjPb2A55WuQCBiTFrj2/zqdoFtF1j235E=; b=3EtvVW7KmlI/tX
	Y1YwsLywsBVAol/lRHvGmiNWHN57fo4RfI8QhmrE9lqxI1Flr7IiNDMn1ClxVqCKj0Q7o72TcNsn/
	ta72a1EpDlGnJb7OwFetOkdSZfmOzCnJ4K5qwb5zzqjeZWkriTxAuQQwJe2NP6KCZ9t5q8Q1ZTzdl
	U3uEHyVOUFAEXk/FqcNJ+K8jBR1EU07peEKMlbWWbM2U+buV0YVPZK1odwW6B5KVqKJ14T94boQmh
	LWMWdfq7MK/gV/gsw6O0wGO6FeaW0jITaIvsmp/2TLgdLDU+pGF0V8II3ntcCjR0a8c7SBckFdAgV
	Y+CV8NP0X6Bc4z3PFczg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsPl-0000000H88H-2O4V;
	Mon, 03 Aug 2026 13:09:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsPj-0000000H87i-1DOE
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 13:09:08 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673C4aor305370
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 13:09:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=tQzBlaOnuUBoY6SiAYBdwdvzjNraSCTbt7z
	+aaqODd0=; b=Efd4kMHNaiThIwP7KIaA0EXedumBam5QlNMvCjgST44C23vc2UY
	Wm4Uc6/HE3bTuMNHBw9O14AxxtjaZlKFnZO+w2V9oE6OQbvy6C0S1gkS45eMwHBU
	H1t97NY5UmhGb6JoQjbQLBRm3tjdS6ndMlOITFPZ7ZnA1GnvawbHdiqp7CdNenuz
	Zn+bls+5WbetFibrbLVJ+T4GJcesUqtA9D2iadglnkcjQSf5sjYwNl3GRlG+3G6y
	KUjUvkeLWf8DrsrEoA2o/Gpl/BZkjlkk/Dmv6ZGO/ho9TGQZsU333cciFZ1m1zmF
	MfAnEEtv5+PF63PclaHhBFmbhm/EQzG3HQg==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftnhb1pxx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 13:09:05 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7e9f565a6e7so4358723a34.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 06:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785762545; x=1786367345; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tQzBlaOnuUBoY6SiAYBdwdvzjNraSCTbt7z+aaqODd0=;
        b=flN2Y9mT729L2HfIEKzESF7Tj45umIEDYQvVm7+rqL1SPrb7L0WAbHlkGKY3a3rIG8
         KwGtUG4Mr9J1hrIIGITDUwt8+7jBPQYx3r3ifyu3KsNpBEA9xYdfhp672Y+VS7Nh1IRI
         vYeSz1sect4q6vmc9y2AuY98F4XW0uxMD0RQxB8G+2aCW9Y34W9j7XDZuClwbd3iYABn
         QY9dB9gfRywahI38UbAL//V8HUnpqnt783z8CVTy4hVkFDUkQuOFi2qTUrUVepP+cJyX
         AGzCJgc00tcqI1zyimoreJON6a8P11WwYYMVJaL64/UdrmSS13sqb+cw2wxG830ZTWhI
         PqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785762545; x=1786367345;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tQzBlaOnuUBoY6SiAYBdwdvzjNraSCTbt7z+aaqODd0=;
        b=UtzLFdq4Qpmw5mGi1BPcs4/2ACPSFuxoGPxDqcyXbaoXwdCL2dEsFlX3SMWl2s36cX
         bHxMpnKAZSdxMtnVwm/ZEz3+uNjvozyGcY7OkM4YRALVJl5ynLf+cf10Btpm3l1zgvWR
         W3L1RJHQNZ2gHezFsiM7ERSuwdbszYt41vY1dezgIp9vFME+G6PxOdRsNBpLGCIVsmGM
         EAX72/1lz0XiJWzU6dfGIgswmUSoqyiWhMZxunpBDwjJLhV1ys/hHw8TjUqcUNUlE4XU
         VVq7V5QM+GhMevWlEqYc4QOXK+Xw4wmAnAmAFPUFsMODvZt281K8gMOlgyqyjI1J89tS
         b5cg==
X-Forwarded-Encrypted: i=1; AHgh+RpSFF5qQ15o5zTy7US2qX2FVkZ4kYsFY6IxusNv8Vvr7azlequ69b2YGyCK6zcGkvBtoWZA+rJXgUM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlfvLQHm/h2z4eiKA2q9FOh6erOZBYGt1NORohXf7SiF5sT8ju
	0C/mGaxbe4q4XMp3lTLHvaB/fYaTKLptx+xonv22zKN0WdLepWkB8Yt38/jqqAO2x3wXOvNp97f
	C+ry+qpQGxuGKnGhFBQuFXx7EaA20PP8PvCWqIN1fG1eBERcVXvjkGPl8jpuTR8czeU1r
X-Gm-Gg: AR+sD11PfJZK4jXPwGid211cwyPfnaWIQSl5V+DbXx2lgjtk7WD82Na8Rmnu/J9q6Ld
	Nxi8c7awU2ql3mSrP37JRQsh+gGtQ6SyNROp3nSkbIWP9Lc51rRAaSU/s1TYLgysg4lqiCz1/ua
	M6fi4pIKidB9C2LH48SMGHa3Y76WSNt8Kq5qmN+jH2T0D/oqrbIAPbeatWw94VtZRsbvK3pm1wx
	nMaJKmumYTmJH3pLWRcXkGRYanxhwNixWYgol2zgL2XKlzd5TxNAKx5HBIlYN3B/fo0xHNu/ECZ
	mOSEKNkBveDGoCmJgAqlw/1LFuNcHAkDJlai47gH9t4XmdHdNFejabMTbGRKnwHvar4kmPcC5xX
	+32jAkaSdANak3987cVBT93O9aX6s6zMB
X-Received: by 2002:a05:6830:44a1:b0:7e9:e0f3:b914 with SMTP id 46e09a7af769-7f196ea7991mr17856191a34.13.1785762545049;
        Mon, 03 Aug 2026 06:09:05 -0700 (PDT)
X-Received: by 2002:a05:6830:44a1:b0:7e9:e0f3:b914 with SMTP id 46e09a7af769-7f196ea7991mr17856105a34.13.1785762544580;
        Mon, 03 Aug 2026 06:09:04 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f0d6ef6sm7366929a34.21.2026.08.03.06.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 06:09:04 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH v5 0/2] Add Hawi UFS PHY and Controller support
Date: Mon,  3 Aug 2026 18:38:50 +0530
Message-Id: <20260803130852.1432714-1-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 3osNKzBDX5aJEaJBPQFHLNO_JDlPeoKz
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDExOCBTYWx0ZWRfX9m5MEvrOghES
 OYOvM+U86QUgGf+MYlS3fcyrrYdDks+H7givbIU7tbxKyhpAQJBVh2psuQKFSpg62grxGMojI2f
 kxo4ynDuRCe1kTlODX96oy9gv+uLpMk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDExOCBTYWx0ZWRfX2Cd3Lk7RGM2U
 cByRnVmrRNyZ/ELUfXGPbRb7ZxwOQNTfoX2Hwa/1lW0xmP9E+Z2Pt3QKXYl47NbTkCSN1DOeKaO
 c/pYijWFnOLHezYg6n6dx0Bucs8gLCpDOYcEXL+Myu2Ookr85LNYjzr2WsokepYgFiojXvXqy45
 TUHZMa+4Po6+HLtqF2ZLaKMVi04zqQVG7LhKVTU66q11ewGLRateHhpVZT6nqa5ns1dLiG3QItx
 ouZxgseYAq4sh/BCop1t0h4XHHIf8hf81F2wkFQeMzSg9DNtaoqIqA/4cialFH+U/IoqxFgEAW5
 sdpRsH7MeTEZlpVyv8vpxDRNko1lImg9lDtgkLu8RsFx81sz8Bhs93GHlZuVEJU/mAmYRwtMoCY
 ojoMjX8o1FAIWRqwfwDCxgFp00zxiTcdLh/YJS8LLQJi727v8YjNiHDmdNSDLdN+1eeilN8soao
 YR91vTTVE+pMRr4/EwQ==
X-Proofpoint-GUID: 3osNKzBDX5aJEaJBPQFHLNO_JDlPeoKz
X-Authority-Analysis: v=2.4 cv=bKEm5v+Z c=1 sm=1 tr=0 ts=6a7092f1 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=wRtOOnJjwWicnHpPwtUA:9 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_03,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_060907_336751_56EC1934 
X-CRM114-Status: GOOD (  12.64  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

This series introduces devicetree binding documentation and PHY
initialization support required to enable UFS on this platform.

  1. Devicetree binding documentation for the QMP UFS PHY
     used on Qualcomm Hawi.
  2. Initialization sequence tables and configuration required
     for the QMP UFS PHY on Hawi SoC.

---
changes from V1
1) Addressed Dmitry's comments to fix versioning for PCS and qserdes.
2) Addressed Mani's comments and fixed missed compatible string and
   binding name correction.

changes from V2
1) Addressed Dmitry's comments to remove whitespace and stray line.

changes from V3:
1) Addressed Vinod's comment on missing macros.
2) Binding patch for UFS controller has been merged, so removed here.

changes from V4:
1) Rebased code to tip.

Palash Kambar (2):
  phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY
    compatible

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   2 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  24 +++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v8.h    |  13 +-
 .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 139 ++++++++++++++++++
 5 files changed, 214 insertions(+), 1 deletion(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
