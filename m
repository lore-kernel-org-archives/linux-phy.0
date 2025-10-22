Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 910C7CCD1BE
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 06:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aTDtFm3ijMXJttwSL7wqhajmHV8x/DDKj4OGfdcicOg=; b=PDaJXSaHPyy+C1
	lxCYmKoVRb2dvBYNNkpJ5xoeAJRstWqn3oE3lh2jEgG5xIvhm8DJGVFMXIhGflpiLWBCI3DSUYfuq
	7cSx/WeOOkkD/nyXfQh7tDD1XS+sEqvGUTJz5n86HXTb0zPtZImt+XQ4hBh2PBxUyFFpfTUFq/Rzu
	YakFZTmRRYp3COV8fsEWtowJf2AEwI8ZQOtIGPQTcpJZBmbEa4rBa7qu+MllzAQwWDNFxhw4obKZC
	XXShngX8SIw0LKKwECjyOTwJH8jP4AWBhjAv4WFTiPWTdcW45uB1KK9s/YqERunHOYVOS5KUI+rir
	jQpjid99EMAV6dYPISGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSg9-00000001isj-0pCo;
	Wed, 22 Oct 2025 06:50:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSg5-00000001irQ-2XOe
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 06:50:35 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M3Y6m1027828
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TpWvVvMsWw/TXnHm2inwaH
	jVIdOxicoQL0Vl8v2SQis=; b=D1ELDRyRMGAJ+JBQZ9Dul0hWmoNjtIQDeIfDF2
	re9bY6S5FiISlRsmn06lP8QgEIsehNrtA6rMHac/DZIYF6sm5x2qtXqDNyzCHoEQ
	mBHRwDD+CJsHSFJji/FM0il+1bfxsW3lrI5LeHYuBxQqXetLrgIl5rd/6FxFr5IQ
	IZKR4v+cBm7PSY7Pa8t7bVVfgf5Dh7I0AJKzIQZuKjhbwVeupeuF0t8aq3yStqHz
	pQRacyPjdATe30qkdxweswV85vZOKeJziBFhdfTHzU/8zEX6sCFU+pNUXnniZKRX
	uaj93mkrExt744BA9Yli7QbYHzYXLCfZkQ0U8TOX1fy2n9Yw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27j3jc9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:32 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b631ba3d31eso4128531a12.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 23:50:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115831; x=1761720631;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TpWvVvMsWw/TXnHm2inwaHjVIdOxicoQL0Vl8v2SQis=;
        b=thh3xTWcVkDqv5U6S5QPChaFfIKd+EMurWoMd09oT4axnLDlvA2ULwoC4EL2HZAetL
         b4zJlexSV3sgqfPxIsbHZqIg7S/vKLlIDjZh4Zwl0Km4i2YYgviGPhtjINl8XugwA9uf
         7YBkC88t3yTmoItlStWFprZbSYKfBHbDQ9oYvAYiQ1Cl/bt1gGdukoHL6diPu0oqCYlt
         yDvsmWnFO2d1vpu4nLlCBJ4nrZqar7S3en2OaWbUlf4ovinV+ZB0z7/8TCGzT47RXGyh
         o7g7MWCA0bG5xgCZm0mTWZ9i7nS06VqUVToJKLiaLkXhPDNdAMIRnq6sv4GkVPkO/48L
         LZYw==
X-Forwarded-Encrypted: i=1; AJvYcCWLSERXUHJKHSzt6Dn1XXg4v6NqODsqND5oCSGg/Ns/DPMxCMeVBJ3mredgJSvnQy9DCfJO6fWzXnE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3WdTaBgjYmgKbkR3P/QMHCcwjgqmaoYzVSovcVgxXZ8tkP3K+
	855WZiEtIMQNkk4xqJmfj5yWJX9bni84Qab/5H099MkyD0ZalwqAVZeInrfGJz49g7aaWTVS9vd
	3862mHSq1ODx32b5kD3XS5PM6VT0vPdKKi34RFYe81RB1ph+TIuhm7EpTUO4o0aZT3ZS4
X-Gm-Gg: ASbGncvCZoUsqRqGOSco2eqVtIthEmwqukyTEpaQYAYEjwxqSp/dqqKP3gG+rAkPMDP
	D0o9VLwTVPluVaPxZOIzReOu/X8M++aQKNJuS1HtjQrpiecJsknCB1Hrvgj+c1mwhmNcPuzSYk5
	rLMxhb5KGUg6M6cZ3Zg5DWi4R3WJ6OavcFir6mZ5ogxHP80wOUChzaNRN+B7eRXpZQXLwAj1sVO
	2UB87R7Y1q7NYXstC+sWdDmuIy+y1bd17F0uHRJ5JZ3+nYAGmkBKW+J8aUWVDj9dw9bv9WyNEmg
	qQbZVglL8EGxkwep4nbr3gkvq5xMck37sg/9dx+Z9fXu7P1qOc6zqcwNXnCsH/tVK7GzfAj5duZ
	UWY2BB+wlkAJyiLhHz17mAInp4q9624fxUWnk7p3SK3fwgTPpjg==
X-Received: by 2002:a17:90b:2e46:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-33bcf953e72mr26873459a91.9.1761115830927;
        Tue, 21 Oct 2025 23:50:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCqxMzgEngcnVzPVoHm05YTCFCOmPRtrDaj8ggmV4o9Pc8i12sCZU1TJJyWgcLhxekgKAJrQ==
X-Received: by 2002:a17:90b:2e46:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-33bcf953e72mr26873421a91.9.1761115830493;
        Tue, 21 Oct 2025 23:50:30 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223e334fsm1560285a91.8.2025.10.21.23.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:50:30 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v2 0/4] phy: qcom: Introduce USB support for Kaanapali
Date: Tue, 21 Oct 2025 23:50:26 -0700
Message-Id: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALJ++GgC/z2NQQ6CMBBFr0Jm7ZC2AQRX3sOwaMsgjdJiR4iGc
 HcLCzeTvOT9NyswRUcMl2yFSItjF3wCdcrADtrfCV2XGJRQpRRK4sNPOLPBWpKuO9NVZ1lBsqd
 IvfscpVub2GgmNFF7O+z7tFW7Njh+h/g9/i1yl4+0aFTxTy8SBRa16ZveWFsW1TUw569ZP20Yx
 zwdaLdt+wFOEruVvAAAAA==
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761115829; l=1391;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=dHwbnnIKcEmXux6j+twsIaUTpCe2SsqCuU8ezT71GME=;
 b=vgQFFSJm7L85vv9QLTjpskzDXbpxwOizvvDKDTXMdfoGpMol/v2rFFBR5Syqv6LNYy6aDq/Il
 N/8Z6XJJM35B8fghBeh8iC7CqzkQhwKOPPD8seG72VPfwW3GQ+d5We/
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX3b59TZdr3OSz
 7jlqHFvkVTKx1Yd4HHFqxwLixniP4nnkHjwmPDBXfejJ7yqk9/s6QYLaly6GPTlxHb+27XRWk5i
 7grLA3cKZ8g0vDacu49REYD05zyjn3XpoHuft6+1dUpcA0vg+51bTBKE9H+OV5KZd1YBi8GuSS3
 Q74qZZtfqVD7y1u34tNGuKGNfw+hqhZKA2Sue3ELRaTrkigP619YHW4cYLSFLRascz579EISYQ9
 LGYizol/ZIRJqZZ4TUcSBYtLSg1Ivv8ohOK85zVgXRwW364bK+Ts1Ymnj1ZvSn+oe76zIalQBe3
 Jeoei+Hh7t+ZESDwi3sECNiYvvxJyjC4b+4HISab5Wf+6sT187l1aXGLqQwI8Tktp+i4vomwh31
 73n6yvpmwg5R+8me91hImXyT1KHqpA==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68f87eb8 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=751tZ-0Qz6C-U5i-0qsA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: 5btYyN2fSfmdVqdRXxzvDcfrl5DOlyrN
X-Proofpoint-ORIG-GUID: 5btYyN2fSfmdVqdRXxzvDcfrl5DOlyrN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_235033_781185_39771BF8 
X-CRM114-Status: GOOD (  11.65  )
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

Add support for the PHYs and controllers used for USB on Kaanapali SoCs.

The usb function depends on:
https://lore.kernel.org/all/20250920032158.242725-1-wesley.cheng@oss.qualcomm.com/T/#mb2e1260cf266638a56c04bc793f5fe9ed1b3b79d - reviewed
patch 4 was picked from:
https://lore.kernel.org/linux-usb/20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com/ - reviewed

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- fix author name typo
- Link to v1: https://lore.kernel.org/r/20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com

---
Melody Olvera (1):
      arm64: defconfig: Add M31 eUSB2 PHY config

Ronak Raheja (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
      dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Kaanapali
      dt-bindings: usb: qcom,snps-dwc3: Add Kaanapali compatible

 .../bindings/phy/qcom,m31-eusb2-phy.yaml           |  6 ++-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 54 ++++++++++++----------
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    |  3 ++
 arch/arm64/configs/defconfig                       |  1 +
 4 files changed, 39 insertions(+), 25 deletions(-)
---
base-commit: aaa9c3550b60d6259d6ea8b1175ade8d1242444e
change-id: 20251021-knp-usb-81ea8dbd6716

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
