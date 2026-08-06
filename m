Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F103FC56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q0KVp9I1b3M2dmLE59nAaXsFLnqQycpDEr48p9Ph28I=; b=mBYrJp7Jk+uRPu
	cZ4ukevrBu6A6LyL2QnL4LGPRIWUOL25a6v/4SCmrDjEuTO6XSh4AcpGMmoXhLZciGvTzl6TLWrlJ
	SP7aGQFloq3gNcscyMIVr1iZq2LLP0gGvuKUHiPASWq2lNcbonCx3yaHmiY/lGw9QnUhQgAuuqgKa
	l7WN3dx//7VzoYz2ndkJcpm7sTnAn+AczjgOKAIva7BIcRhxjydSv9GObXinCPCUtrtTzO4PjhyQm
	L9YRVfAqM37SPMNss7Z1/Xe655l2dCgItlyTmV7DMVx5s1yM6ubTMwr55BrsLojfvt/FrajJIZKkl
	R5WqawB+PrycOo0n6t/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0ia-00000006BBi-2HyW;
	Thu, 06 Aug 2026 16:13:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0iY-00000006BB8-2DWv
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:13:15 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 676Enee42276925
	for <linux-phy@lists.infradead.org>; Thu, 6 Aug 2026 16:13:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=s6nt1Vjx1KtpZs9U6I3iMDg0ZKhLxL+ifZQ
	JTIvRzMs=; b=NgSgspHZQ1n3OZ4TnRkI/CfSyKY9VbPTpf+0K3LB0SlbZkYsii4
	8dZQR4MeeVG1FSE70O3puUuWnfmE4GIZlANk9gOFR56RdaafCJ65mYZ8G8SgaLsf
	B4XI6xIgBn7n2iAtbT1LV2tuzm+vjKrmSxmiaNFwVhglvgOsttcC/wZtjIEpHHVI
	2wLDXflrewmToPcgx28jGmTwVub5+d2qVlJdmLdt3R4ILSnNNzpewDZG1YHTvbwO
	0KO+LzvAUHDQK65Z8gq6WpyjR0OXn/VLgdxqJTy+JzMxDOB+iwTS/UwaAHqsR7cf
	A0Xrdzf7wywdPrPOEgMhBZOpn52YzZGNswQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fvmrjjt9m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 16:13:12 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2cee894b3d8so36149005ad.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 09:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786032791; x=1786637591; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=s6nt1Vjx1KtpZs9U6I3iMDg0ZKhLxL+ifZQJTIvRzMs=;
        b=Uczx3MPu2G00/DDR4ZXdyZegwaqRyeWVC+hDpbFdtiLrBBDxorvcoQ4ZhKkaaiJlbG
         C2r4Ndy8oJWZt5MLTeka0txF0aXSu/UZj+3B50QAt8eyQEYLWW3fpmNOTbU6O/pycVMi
         4zgLcHfiNapxufgqHq67GlaRyppBR9LDB+E1t1LKAGfcu9l8tWyd9HqHGQaEsUy2DCl1
         XyORv3vBuxLCL1NtZrLOvXppScbhtxNFvIU3LhlZZ7hdJsYkV7hm5gaDOBP81LX6Ndt0
         oaYNrbfESmhSxl61usVxQhAyO/6EeZrxqNvzCVBXN09CnOT6hArCIE2dzRRKiomOdyoj
         naxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786032791; x=1786637591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s6nt1Vjx1KtpZs9U6I3iMDg0ZKhLxL+ifZQJTIvRzMs=;
        b=V3k7+tfoIY/0n0EjoqQ0BMV5T6rzAeDjCUA3bHgqVra7ABzcYCk34V+jncUZ1IdyT7
         NHcroLpOa+nqKGCFYV0u/gglb1OHqZ9+MMh4anCnMVt4GkLY36+Sn0j3wxKUh9dvZzuV
         5Mpw5YIRdPJm0M7AcA0a8gcwR7uzhf8JBHPV29bK0vDZGuRqGVfSGyNdMN1ceCEh60BK
         wBNPznT4tB3S1rJLJ5gFxs3H89Z87twcWaXOpTHVjdo2QVli9EaLZwy+joTmAjZ2DJTO
         vsG+FQ4Vg9cBBUxiqfK9bVt0Z+U8kn2clA1Ci6LqjhJGTS8QvDbSb9kGB6oG+SUd7K8E
         mqHA==
X-Forwarded-Encrypted: i=1; AHgh+RofHPs+sUf9Ntxh7/m+XfRKIq0TVGEnSTK2t0Cniio9RHB8+UU9ZCNDQOZwiQH6fwEu7zZOAUUWW9Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwR0VnEpkU9s/hEkSchdxsSdRKXlk329tLlqg4QsOJEhDFidrly
	gSBSzuzYt2jsrtPFwW51N54QiFIHMfjNLN84+HJooLOt5KLygSU+6XK51pkjiLm8TgwqAxhTmmm
	4IMbQVLKHPaAlOh9gweJ8FFZuI8ddNz49CYCQzSNajEHqUXsxFPaLOfx6Di+0gM7WkscD
X-Gm-Gg: AR+sD118VCD1Qz0PkmxiVP8RkQwEtlm36Am2R/0XKbyk0pBdlQ6JfHh+oaIvICFtkZN
	Zb1O/bJz9KtN54M1zy71fuSOHId8oUE+iqqN2AGyGalWsPI3tbyuLyxvmCsMynrYtVJD03Up2yH
	77bFs03bmPEk4lKhSjRW3/fL52ZIuFeU5ZfA+V1uhIUAT5NHLKXth10O5r0AqG9KnHDEFoTGMP7
	wINuNev2tz2UkQ4EB3cdbXKDUNBGS/1nlGQbHNf1IMn50/EqRN1UGMXB5DsNXbzWxyanjc9whME
	tWX9mvjADTyL/pWx7oQhjLCG+mDbE3AdYHwHNsJqVo7Bp66BlO/wzWX1MZi2niScF3bLY/kU6pf
	CwbLFC5i1q0sF9Xt+hzTz+ttdwMMsr6/S
X-Received: by 2002:a17:903:1986:b0:2c2:be43:39bc with SMTP id d9443c01a7336-2d0ca9feeb1mr208862385ad.22.1786032791484;
        Thu, 06 Aug 2026 09:13:11 -0700 (PDT)
X-Received: by 2002:a17:903:1986:b0:2c2:be43:39bc with SMTP id d9443c01a7336-2d0ca9feeb1mr208861555ad.22.1786032791000;
        Thu, 06 Aug 2026 09:13:11 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-315863b761asm43074546eec.1.2026.08.06.09.13.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 09:13:10 -0700 (PDT)
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
Subject: [PATCH v6 0/2] Add Hawi UFS PHY and Controller support
Date: Thu,  6 Aug 2026 21:42:59 +0530
Message-Id: <20260806161301.1010876-1-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=VNPtWdPX c=1 sm=1 tr=0 ts=6a74b298 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=wRtOOnJjwWicnHpPwtUA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 91QT9zILy23sjOZE6EpKpAkMKm6Aaw_p
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA2MDEyNiBTYWx0ZWRfX1vO+2KRCGzPi
 yfitNqQtWHszMYzqric3CfE6EyRI6mjBRbKNeGlAio2ov6Z2vmQBB54hhDdDkqoNc3jI0T4peeH
 Fa8ytUepBMKTBPRncu4RZPd4KT45c8w=
X-Proofpoint-GUID: 91QT9zILy23sjOZE6EpKpAkMKm6Aaw_p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA2MDEyNiBTYWx0ZWRfX155QW/OoBqFN
 cMSWTq3Xy6JoMEZVUd8XsWijfWSi8tTSsyILZ5EqX84UdKIKUeOLVedXBXj2k07QGRvcihUXkRb
 q2WCTSpsJPuow+gGJaNF1Ng663w274hwtEJokTDSwIqh/ouzGJYyKys+x8l9kJUm7Xx/nNhAaoe
 fYkGcnKgSiN+O//39pgbmg0dEXhPlGOKxZAyNq/HrAJ9l4EiZF29dJToSfB41Gg81uw/ReEul0q
 AhnvindT0s9IsKL1mjFMAGZwQC+Cggsy2/uzM1LfTl3hPj8dMf4LiRKvN0HKITB8minHSQBOtpc
 LBR86UvZDigc7QKekQQAVIMgAIWT+nRO8ih1p3WoVm5CIfRFIZM39tUjGzvmJWr4F2BbLYNo2ou
 UbK7em4Rk5q+V8opcJfE8yZdyQwU0IjjtRnsSW0d7DkW7xvPg8tnaXw5jQYNWNrT1nPnUjyWFtB
 J+koW+45A3KCaNTqIJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-06_01,2026-08-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608060126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_091314_726098_592C646B 
X-CRM114-Status: GOOD (  12.57  )
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

change from V5:
1) Addressed Vinod's comment to fix register offset formatting to 
   use lowercase hexadecimal values.

Palash Kambar (2):
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY
    compatible
  phy: qcom-qmp-ufs: Add UFS PHY support on Hawi

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
