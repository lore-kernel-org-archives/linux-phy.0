Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AD78C88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 09:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zxkfCvUely0BP7D0Yt9z7NowV2Kdfn6qQuktdIg2xhE=; b=yiqrbkG0KLsmJC
	Vz7ud8Fk664EKC8I6McekiqnlcGzINGUebFDYhykMc/wIYfJYPQ5tPOQT9A8u50AWMArjQ/gr0Lsl
	SXVCoWYKzPiapMxfDJdqV64J1eHSOcpWQkhNSqvyhM18GA07WDnl66dE1Op2lGLwCWzAh53mDOl3g
	vAlByE74w8ENwHmgpS6mKJpg2JctRmrivvFNH8aOwWQMK3XPRZpXGpUzZna5TLXD6tJ5v/QdzbM+1
	MvgXKOay5ii6Jj5Q2sFD6j62KA75Smv3YJJfPLzAnTWNegSo3XfFN54qcai7SsP44fE+L1KQfzRjo
	11QzyT5v7cfgNkwKWc4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xjX-0000000GI1j-2HTX;
	Fri, 11 Sep 2026 09:39:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xjV-0000000GI14-1NLu
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 09:39:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68B7kgml4045726
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:39:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=B/U7CAw0STdy1SmtzubC/sAJKFjxf4bCxFS
	FnjNHPCY=; b=n+wF5XTIrZ+1D7pGljJ9uDrnMXx1wkjjkeHp/QEjQTZTV/8TW1S
	tYKfgM39vYVUKBeMbqFGX/hLVImJQShG5zrKiXLKLrdFygpd63Uey3PrpOkPl1re
	Pgy97mEfDGNsj3AOpFP3GL31W/uI4h6hiieeo4Spt8UedN+Tf1+6UIlnigIoyuyc
	cta94oJcSYwqSGp3xg7IaUkMbdlvCIwSLF63eWmmVMAT5eYKq6NGLFwMcE7/jCOO
	tGfb/uv+DROik4uc89p+LnpM4uUZiHYQ0tO3tOXuIKVWO/RkuGILa2+QEcNTg+Ag
	ChVYi1ql7pSRT9oHbML2YOl0d5g7Nfe+pzA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gm2q12u1a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:39:43 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2db050d469fso28593715ad.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 02:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789119583; x=1789724383; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=B/U7CAw0STdy1SmtzubC/sAJKFjxf4bCxFSFnjNHPCY=;
        b=covWmEqkb7Zxf5yq1kY+TZGqaVkF/dTFmxDt2GcxznSPmtn/ifKe0B6CcnM+6mexua
         ukFkucz3yToyqGNJusTbK+5mRPADuzkBLtnrGdLiJ6HRR7NWD1UpNTJHy1vj7rQIkxk5
         rGAMQdD4CuQ0oTulg4efhBREFl2XhTm3Ugn2duewL9eoEm3jfmZeHbh2uFGS+GFMqA+a
         WsFD57vs+A+kUUihCvBGDLOA1zDwxP040RpshIIsqiY5LE7L1OkQfbcgNs3vDuN7/vOx
         0syObHRd3E0+XdjNZqdtU7/zRFBHHFyTko64zQ88Qr9t5V1nPbJSlNp2hBukGi1pF45o
         +Sdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789119583; x=1789724383;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=B/U7CAw0STdy1SmtzubC/sAJKFjxf4bCxFSFnjNHPCY=;
        b=H1hGewWIzXFlYifhT4pMxE4r/Eb23fpU/BCaD8o4LHvKr7lbZVoY8eYSGpJ6rI34Sr
         zU841+prSM6uYvwiEKo54hMDi6s4ck2yzz1Y/BliJULqGk18VB5W3WJZnFPE1LGhNIdo
         WPtIh+zXBENDQ+QO//ih43ED7xxMgaZf6dG5Pl7VyPOHYyAenhOZznv8y4oYU6YQGuHF
         hfLtZo2RFKFnEXx1oapp4CDlfBaKUvVbufxkE7BiaGGari6r0K9pl3XdyVb/ueHh0QDe
         7Do75rbxeX0xvRc/WbtFDDcN+8SnMhpI+v8Y+7R3u0JuM/hLaWByYb/eEioYY0JBbfC5
         5U6g==
X-Forwarded-Encrypted: i=1; AKwUvBwsfkOn3gQuKIJ9JQo+oSxNQMYRwFrQAUbMl/9/ieQSLHuPA0QE/nXmVUPIY2k2OXQTJgvBjqO9ceA=@lists.infradead.org
X-Gm-Message-State: AFuF++lZgetMpRHZLVEMdtKdmzTah6CBWliyq03NzyOPchBQnwkcgXIQ
	dHBmSkBEE7LECGs2x3lMHJ2DLtsg1DhAC5nonmJ0stXdVqcHolX4ykraeLDXodXi4nO/ErKsGAc
	mZmOYFteqountgpU4vC/dQtXSMOma1x0opGcSptwd9G+lCFLHcQgIL7cx0s0kQ9/rZUQt
X-Gm-Gg: AYBFou0Eb0QEPOHeK9LOCjnP5h3wYGMbHkLFsLJ26xmFLVgNx/OS5El3tHkVMyBi7ag
	vZptvrYAHQcNZ6VYwBAYTMQdjpo0EtAwpoXjWgaMCRlLyrT04qzNU8ZN1l3CkFcVlgucnCoTgk7
	dY1psIe4wydT+HPDZHJgN68TRChsz2V7VN/qB1ABjI/gl1h90sln7Nt6+Vi110Z46n/XFbll/2k
	mlla8f/XQnmn/x3B33x60L/djt7MmIhIQ6wkCTpk32ZcWUX3VZic9kvM9gxAsi6DAmL9S/2QTss
	e7QV8qV+n81cnLeHxpvZKVnSNtK9Kjg9QSSXWywcWCpbATtryg2XdPMnTkY5TvjnmB24jmNAvkA
	xbJjXglGtt0Lr5AJ6tlDWH+9yqwFWcpIsmyM=
X-Received: by 2002:a17:90b:3fcc:b0:38e:a52e:a3c9 with SMTP id 98e67ed59e1d1-39d7795b9aemr11523614a91.8.1789119582944;
        Fri, 11 Sep 2026 02:39:42 -0700 (PDT)
X-Received: by 2002:a17:90b:3fcc:b0:38e:a52e:a3c9 with SMTP id 98e67ed59e1d1-39d7795b9aemr11523568a91.8.1789119582489;
        Fri, 11 Sep 2026 02:39:42 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33ba4f55735sm5549984eec.24.2026.09.11.02.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 02:39:42 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: qcom: Shikra SD Card support
Date: Fri, 11 Sep 2026 15:09:30 +0530
Message-Id: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=d6lgWhjE c=1 sm=1 tr=0 ts=6aa3cc60 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=LG_lQ-h6YDT1eqFI4YwA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDEzNCBTYWx0ZWRfX/t7GRi0aYMhz
 kxBLuhqxmAkOmX3gQPHotgRF9S/9fF8FbEA3ZGPFdAsQJy2CUpVtv2DW3bi2xr93hEjCvxVZAGR
 +5fYkXyh8x8S+uV27QKVJNgCdvkV745Z8VcfdfQnLjZ8wFTb0Bq9/VhR5idkkCYoQu2ByKh3oYa
 GJV6YFf/BZjyGyviIhZ5vRt0nyXDs4ZBNWGC6+v0TRbTYGmbmwH1p5kLZRkIU0Nu8MTadPchieZ
 U572DygBIW3rYyzP7YyYMCL8KQ7u8RgWxe/LBP3oqHMaftWoARIj6RoynmBFPEmXn5mhzUjl6LS
 XKk0fhLsuRbE5/4ZXSoQUagHIaSxJyIv2cLJlVLY2EcM35j2SzcHMVMnFUEieTh5mRXmosktKQb
 16yiINfGrQCjxXoiJpR31EZgHKmLsP7GSixwT9rIvPcX31rRQFSJP3IpS6byThX4wWICW7TJ8+Y
 Zz4MloIIY7rKoHxj+Jw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDEzNCBTYWx0ZWRfX38F/YeiWwVIM
 oHpyDO2X0QqxqxjhU5mTNbbuqCQapwWfg8SOSti62dXTf60y/kBPtlmF9PduhzYIHODc83Opi6j
 6zM/AETRW6+ZBV3JgrHxaIu01l5PQdw=
X-Proofpoint-GUID: 78mlVkSgyRB3nn_JMGra1Q_omuLVvGEK
X-Proofpoint-ORIG-GUID: 78mlVkSgyRB3nn_JMGra1Q_omuLVvGEK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_03,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_023945_484473_B654ABF7 
X-CRM114-Status: GOOD (  13.88  )
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

This is v5 of the Shikra SD Card support series.

This series adds SD card support for the Shikra platform.

The first patch adds the SDHC2 controller node and the necessary pinctrl
configurations to the base Shikra SoC dtsi. The second patch enables
this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
the regulator supplies and the card detection GPIO.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Changes in v5:
- Rebased on top of latest linux-next
- Fix interrupts-cells to 4 for sdhc_2 (sashiko-bot)
- Moved gpio include directive into shikra-evk.dtsi (sashiko-bot)
- Link to v4: https://lore.kernel.org/all/20260804122054.3462145-1-monish.chunara@oss.qualcomm.com/

Changes in v4:
- Rebase on latest code base
- Collect Reviewed-by tags (Konrad)
- Drop the dependency link - since all base changes are merged
- Link to v3: https://lore.kernel.org/all/20260702073354.3641966-1-monish.chunara@oss.qualcomm.com/

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

--- b4-submit-tracking ---
{
  "series": {
    "revision": 5,
    "change-id": "20260911-shikra-sd-card-61d428639de0",
    "prefixes": [],
    "from-thread": "20260804122054.3462145-1-monish.chunara@oss.qualcomm.com"
  }
}
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
