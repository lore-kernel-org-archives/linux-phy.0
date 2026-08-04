Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DEBC55838
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 12:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R4lhKCZonb5ycJMDMQ5hNUledfHimEi5cZQcVHAZpQE=; b=xcoK7ldMwhHJQP
	a6QXMhJawk/nqL7+4Y7gO7mUhAAqMA9XrwWTviwCbljbKyaxZvh9Fn+OS7bUu0oDZ693qClkzlwUy
	7qj/HWK9TCBDS4ONm776bHU0X/7amTm4tZvMuMej0buA4Y2AQ0n9eZArDkdRl+1zx9fcFl3v0jSXO
	2MtHXjONYwgqM+aGbIzgQFu+Q4RDMYW11URLG2IA0mL0p6sOTreesvPBRV/AKqPidOu14fd1QPoLF
	haiL7JbnTn1Fh9XNCldANcmOdYksgTM14dc174zTJiw4FPgsrKKq3D17nGUYctZqiCFA3ZxYisPDO
	X7vno8uShSWHxIBIjfhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrE8r-00000001nmx-2g5o;
	Tue, 04 Aug 2026 12:21:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrE8p-00000001nmc-09Ey
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 12:21:08 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6748CBls2978758
	for <linux-phy@lists.infradead.org>; Tue, 4 Aug 2026 12:21:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=QW8b2paILWu+Ej0pRDMZ4QBKcqdnuTo0dY2
	YaB6hRZw=; b=jAMXZDtOWtbzFZPi25xMx0U8dZ1MoeN30qOdP+uTPR23IMQqKhR
	QR3P0sikLsk7mtMu1BvzshwKGg8VOnjq+CQYartZTPne2voG/MeO2mez0yKQ37K6
	/NUFbm8gVTwvmGFNOCbJVpxUgkbXkACndtTrvpqBfRWn3QWFqtvvlufoqa12UsoA
	/sYwUQgoNWE7CP/qseIf6cVCa+J30NsvJE9MQEt85zvO1/fr2kQoPs6okVY4Wp9C
	/TgrH5DSHlWVZ+6/AOTHFgunUEaDnN01cISPaAksvkD+hC0UoH9N6K3L2NeEEKK2
	MUs9XRy7jrhHG8oSrWCj7eXjdHl1RsGBVxg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fu2syk5f7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 12:21:05 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38f97b3f853so6220453a91.3
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 05:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785846065; x=1786450865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=QW8b2paILWu+Ej0pRDMZ4QBKcqdnuTo0dY2YaB6hRZw=;
        b=OzYYkJDi1Zn7RceJAZlDSp9jPob9qy0bDwHuqTkOIHApmpnOcIBZe+lNolsFRQKfyA
         /5Z7j1rbUPF1wS+FDNmhcM+DDEpTdJQIPWibV7oQahMZviFmtgwKXaUMaUBHh1WSLrpa
         tIeMVGRSx0Esf35nNkNG9G1SPk+OZGruwKKWDGObUnfY6qN40tmDniPs9I/lygdfwZ4I
         pH6b4nQtwPNy9lB8XYVmT4vhV/IxM9UQEaXestxII1f2/nL/CMf2j+9cLl3RdZfuBXeb
         OLovhD79v5t2NjZA8+UcETGe6lRBp4KzHVHI3k5I3xWjr3rG9/Uu9pkjTWuwkm8o1oNy
         08YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785846065; x=1786450865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QW8b2paILWu+Ej0pRDMZ4QBKcqdnuTo0dY2YaB6hRZw=;
        b=koyWNfmGIqzgcQNqVzw/SI52J/EAWLgJkpyUMZO+dWkWwb2UuJHu/Ft8UZ4nBmJLBt
         bBAmTtTbAnOdHxbIS8/hb3vUEm4nVkOdXQQtsoROLLljyXe4ozwob4ciJ1c1x6NzuJ40
         gfRIlbkVXP4UR/ugjweplEQ5UOcyqSR04kZv8VVl5vs1d5D0rRYqbPrHsvaOP42ecIXt
         USK2IMmOJRm2A67MUaibvcBnaUQW/v2iUKp5jTdVc4KkJfwgtJvkMgV57XY73Lm3zDDL
         D/8JQtb1MfoCuWJWgomqBAJVMkcoo5HL/mZqBCTjBBRuhng9zfT/BKG2fqIIDGfDVaDJ
         FwpQ==
X-Forwarded-Encrypted: i=1; AHgh+RroCjSGjQ9OWJjxOhDBKQirDt87ujFc8nyre4Ac8vCkrz4831JvVfNmTGhpIwTdqCwILrDqAlqmbr4=@lists.infradead.org
X-Gm-Message-State: AOJu0YybSl8U761fY3/t8UfxiU2wc87BRFHA5uXm2UySWiaova22KWuh
	bF1bnVo4x16v7pXx1pGxRrEF7e23EeWgVAdQFJjTq9Y/NeiVbCm7pTR7mWw+Vt734C04hH6aHlV
	9sIO88VddtwUawdrAuqG0ik0IkRCyBRcwdcAwllhMTgFqMhaBFQQvoNcWH1y4Ka4rsV8t
X-Gm-Gg: AR+sD11KcQie1UfjjWRs2ffacf8CAM071nM5fnLjsFSoo1Dn3vRJCAIhu6/pajTed6Q
	+owJLE+wQZxm1iUMoEWLktaXw7YJBsUFBFysCyrROhLg6Ja7I9jM7sriYy4zZAup+JfXdtylHQD
	yg7H7klxIp1y0ZawWxOzJg83gcPIKdxXAGIPwYVIychLuwGXlJVcwT3JssfWLs8rPXEAszxkuSk
	8yOw/xSjcmpQLn11HKLwt/8ovHulx5DxlvNWNf1yFg42GhwVcYBehA0xKP0lWtIe9XBkBydxh/l
	OG5/P8E+hmOg5SRCKlzX+QrHvUHZu7iJ14+Pudw/qYWYzXM9J3yXDHxNU6mBUjmaLQTjDyTcDar
	0S15PiSZHRuZJOwxlEAxEc0RkNOBDiMxQrnI=
X-Received: by 2002:a17:90b:3985:b0:38e:9045:babe with SMTP id 98e67ed59e1d1-38fbc4053d7mr12011102a91.7.1785846064686;
        Tue, 04 Aug 2026 05:21:04 -0700 (PDT)
X-Received: by 2002:a17:90b:3985:b0:38e:9045:babe with SMTP id 98e67ed59e1d1-38fbc4053d7mr12011071a91.7.1785846064182;
        Tue, 04 Aug 2026 05:21:04 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38fedc650a0sm1237832a91.14.2026.08.04.05.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 05:21:03 -0700 (PDT)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: [PATCH V4 0/2] arm64: dts: qcom: Shikra SD Card support
Date: Tue,  4 Aug 2026 17:50:52 +0530
Message-Id: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=TIh1jVla c=1 sm=1 tr=0 ts=6a71d931 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=1w3StAHzAm3vCDDRDnYA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA0MDA5OCBTYWx0ZWRfX5UlljgXG+ENQ
 gQ1q+Wd23gvVGi5uxqSNvu4BYpbdEPxKWPR2acWNuFCWUy06v2Uszxi9d7J/MdhqiQNnanngei8
 nC5vB8f7HaZXfp+yUa+Dn55Y6sUCZwg=
X-Proofpoint-ORIG-GUID: 2FiiEKJ4b53HluZ8haosOnXjIy3TDKkO
X-Proofpoint-GUID: 2FiiEKJ4b53HluZ8haosOnXjIy3TDKkO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA0MDA5OCBTYWx0ZWRfX59wGraLW8HCD
 RsxLiq7Tdijcf4gKJrfHf54DoWZdbnjJSacT7Ur1futWkLjNvOpkH8DeOoEAufcflvHJ8r+ye67
 2PLrpeBOvRzHYTAOVx0CgOE+PSEVKZGQvw76tqcb8WqAKCYtjquCZDaovnfuo86bKe9MDVJiQhr
 4XxB1iR3QtK8KvFhnPKlq0ABJfhelQ3wd96JYiB13uy0b7ZEbflN+oVyZMhZ4c51oIKq2OEOkBM
 Sb0YKI0qB5g0Pg+lVHVgsoX/yg7TMVs/rgYlnFjMKZXzxCqryP5hdNQ5D92mCX0Ghz227jIgFfl
 9txWOtm0JRthMgdlBe4zqKIOULtGNCl2xV9+yIOIA/dJBR5K2mmd8HkFo4cULUiw7th/990bHYn
 CI9xsT3NUS/Au9HvDKKNaipUw+g2APcoASoYyBqQ9wxak6p3nsbhuW3zBwBGMVP20GXLvU/O5HL
 SF6eZVD2elJ42TOtE5Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-04_02,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608040098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_052107_075178_0E1FF23E 
X-CRM114-Status: GOOD (  13.75  )
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

This is v4 of the Shikra SD Card support series.

This series adds SD card support for the Shikra platform.

The first patch adds the SDHC2 controller node and the necessary pinctrl
configurations to the base Shikra SoC dtsi. The second patch enables 
this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
the regulator supplies and the card detection GPIO.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Changes in v4:
- Rebase on latest code base
- Collect Reviewed-by tags (Konrad)
- Drop the dependency link - since all base changes are merged

Changes in v3:
- Padded the address part of the reg property in the sdhc_2 node to
  8 hex digits with leading zeroes for consistency with other nodes
  in the file
- Moved the common sdhc_2 properties to shikra-evk DT file
- Link to v2: https://lore.kernel.org/all/20260630165700.1886608-1-monish.chunara@oss.qualcomm.com

Changes in v2:
- Rectify the alignment for clocks and interconnect properties for SD
  card
- Link to v1: https://lore.kernel.org/all/20260604122045.494712-1-monish.chunara@oss.qualcomm.com

Testing:
- Validated on Shikra EVK variants.  

Monish Chunara (2):
  arm64: dts: qcom: Add SD Card support for Shikra SoC
  arm64: dts: qcom: Enable SD card for Shikra EVK

 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts |  9 ++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts |  9 ++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi    | 11 +++
 arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts |  9 ++
 arch/arm64/boot/dts/qcom/shikra.dtsi        | 97 +++++++++++++++++++++
 5 files changed, 135 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
