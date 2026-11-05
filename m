Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0187606D82F
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 23:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jWnJaYsN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=F+UjozBm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=DXnItyJf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=vzEQu9/ZGKsThksuPPo2qRBtHm4+ecyOS/J9i3f4p5M=; b=jWnJaYsN9KjBdFUB+m7jCGfQ94
	eg09OvqnqG11NcQPDBVtdKwgDHEgKyhRGbcsohaNZww6CizQrm/+fEG8HeEMAmd8V8x1Fjd8cXMLf
	8EikU8an731MuZvn1ej1l5/1gBX17M0NuuR9kQQVw0XNR5xcGwr+jgDmReworHrsLgmHGlzbFo2p9
	nQvd8YhiUGI3/qP/SaSJShHP3k6905b44yfN+E1NKG9DEZwdNOKGT43Zno/lkxonXoDTxinAvTys9
	w8NtL+0UU6R9U+3MoZ6jqmaBDMqIQVI1xn75td3Np12u3W/u5SGpYm1OK/NJ2XdPMuypObLj3n6hl
	AiY1Kd6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7FA-0000000AtQX-0NEm;
	Thu, 05 Nov 2026 23:51:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7F8-0000000AtPv-0Ldc
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 23:51:43 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A5Ngnex664822
	for <linux-phy@lists.infradead.org>; Thu, 5 Nov 2026 23:51:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=N8Ql98e94Qr0HslTjwnS4H5aOtXcYb6/J/f
	G/eqd55s=; b=F+UjozBmVBcvwneBwTSXima+BbRVI6h+ffQRqAhkLPx0ZQl09T/
	+ZLiI8aZAdRm5chsoekTmRXL0p4A71vUvXP9jbcEeiLICqNEBwlTv2KnjFl0AIuL
	f2Oxm3hA2LBTgu3IsodErcUB/5STKF0cvsEkcWkh0hGU6s8AsYb+nSdJmCyrOiJ6
	0LitlJ2NPdsEpx5TaeXZvI83XjRjya0Ixh1c0XkcNxgLMRyYdSIPcsY80AxQACtZ
	tJCbgXITWx7evwfhOrTDD8omGbTKEGw68YxiJMY+maGKNRTPovFasS5z00qNV5uZ
	GVWAN3iEFrBVsrRfe0bc2ymz9U10qA0ASFw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3pc8180-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 23:51:40 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30c0d568830so113183eec.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 15:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793922700; x=1794527500; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=N8Ql98e94Qr0HslTjwnS4H5aOtXcYb6/J/fG/eqd55s=;
        b=DXnItyJfINeU1Bd59jVgJOc6e9P+nEqEIgpv7hC30tMGAN8KgVSPOsOh86sC1txrPp
         fHSeuBv7QAKoAapZ51DOfkgldDXvetPSypDHCiXOhajbegYBMo+SljVUK6D5RSJi9NC6
         QjKa4gtXR5wx1fN7CtxvZkH+9ABhldoFyOhJEjqhi2icsxIsd2FZfu5jyyU430U1oDWq
         +tP0DvtFxoA2ypsJGSSqdtTWo/o8VMLcWFMrqWaXQ4T3LpDU3yZeIx8YNWQ6Rq3Sot79
         EfjXAC0ilEnIQAwYImw9SUBGaDwR2PrvCUQX4lN6x/rz+kkVNjqgf5CXVB+T8j5Xtcke
         4Dog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793922700; x=1794527500;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N8Ql98e94Qr0HslTjwnS4H5aOtXcYb6/J/fG/eqd55s=;
        b=B1+OmyyLICO7delsnay47YUavI04MMf+vfdd2Xd6JEMyELrJfnPkVGBMGCuihlLsLt
         yy1jBrOyb0Lb9tr61/F9fleSm52s3Cd3QYIJLYbz6ZTo0q9YnBm5/VV+CIqiqIAzYgYI
         WCf1FdYFalYCZh3Be0ncwI5oJiK1JpLB9ywUZbTy02mknkk6raFkPSIqdDw331JYO5qt
         fRqoW7UJ0dFDk3PKcSgxdYQvdqvSk5Pl545c5TnL3/CuvBMeRBT2IodFr9brrDmL/mLt
         7yoJBM7gIe1sLjrn4J9Fo//z6MKhtOIH1DmfAxrbiDdJwZZtrdi4QMEcMM4YMuLk+YcO
         F92g==
X-Forwarded-Encrypted: i=1; AKwUvBxL5ySjOEITDfa55B9F4LdXWgPGi6mEG09jYy96XaVFIUl0XjOohKatT9YlKKoBi4XTup55E3sJVUw=@lists.infradead.org
X-Gm-Message-State: APuU4Z+9aguE/ZdNsmnIQFEfPYmw72/RSmx2fLDzJTUPBUx4AwBxJ0IG
	HCm2gliy1deJ73U73u41aZUvD//apV12k2mu6Cq55jOtQEhGrCK1B01KbeLIAZ8s40ZiRhrhnvm
	E3cjTdczndpKV1clJuAJvL+Hd7+Og8w7ySnM4nEIX5ZhepBLTCVEdRdAzBQHsBi7iClii
X-Gm-Gg: AYBFou2kqWRRGmlcP1OrKKA4cDpLAG8jesoynRwE5+Bwn3bq4n2m4VvjeGKD13l5+T8
	5Bm0uAIPX5fLJ/UlZVwTl60JsBlkz+xTKnfBhS6Ir00b895hT147HWdNVir1BJYwmgtieNxqicq
	Gv8Wf/4KeJnlmX+lp9ksMeZ4QLGdlN/TKT3LdLulVrqhSDJA236+yEkJFklwv/2hBgIb/Z7/ar3
	TMI4VpMTwbw08369bITmClArFQFxKN+GCAi53Ye5jmCTvtB5H2yP3a39WT+3MkMBfsBdASoHdHF
	jgTIJJG6VHgKdWTwgfooqAB4bOWV7yAgcP4TBk9sw0SAXPrxXSXd0xW1Z3AP6v74gQ7WFktmLO+
	ahgBUKRP/sE2UUrnU/bubtuQJSnFkW1WxbmEAk80kicfd/2EAQKL3OJ+IHQGl/402hDt1m2JuMx
	DrwcdQPIJYmGx9AfxqrRWdXh+H20M=
X-Received: by 2002:a05:7022:b90c:b0:15e:3a65:5b97 with SMTP id a92af1059eb24-1b25d31e64bmr690554c88.16.1793922699497;
        Thu, 05 Nov 2026 15:51:39 -0800 (PST)
X-Received: by 2002:a05:7022:b90c:b0:15e:3a65:5b97 with SMTP id a92af1059eb24-1b25d31e64bmr690523c88.16.1793922698781;
        Thu, 05 Nov 2026 15:51:38 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b25e4a63f6sm389041c88.9.2026.11.05.15.51.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 15:51:38 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 0/4] phy: qcom-mipi-csi2: Add D-PHY support for sa8775p, qcs8300 and sc7280
Date: Thu,  5 Nov 2026 15:51:33 -0800
Message-Id: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: VnS-fQcvTuUds3oKhqpMKVtqKNO_l2YB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfX9QCMHnj2+DCH
 83HTmFgZ7+hFTsvfWX+TrZtsUcqiLVfBr6K60g6QrA5jPXNl2674Sl4/gcSSAbXdAYGN4dNMwIO
 9lolQrv6lgvf/slWAImciAyq1ZOvPgIjtJwhZnTeQk9Fc0TCsfk/PL4WC0hgyIn0F7iOL+a0jFb
 ZGN0Duzr6xFqu7jMku/VocH0JE71za4riyOEigCLRFRQIBaiaUmHCsqyy5zAVPPw9IjEw+0ehC2
 /yv0LzBSOWmTMFABCwFMp4lIGBFls+5rPHNDi3jxxdrUT+1SrJ8PhSIvlZg4tlL3F0jlpsOzPpd
 65jMGwvc5p5AdG0F0TUaQkg2YsXf6WJxsyutiXBJmS/UoZdC2N0i4/V+LYCBV4OlrCIQXJZYRK5
 ZbFXkcrxrFtmypffPzAIbt1l9tz+ohg4r4CWa30zv5jeuRT3R0LuPhdLEJK36CdQXH+T9ccKHVz
 IzLm0a9twI/iaiJZb7g==
X-Proofpoint-GUID: VnS-fQcvTuUds3oKhqpMKVtqKNO_l2YB
X-Authority-Analysis: v=2.4 cv=TI3Q2Fla c=1 sm=1 tr=0 ts=6aed168c cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=iQrEevU3y8pT7K306hwA:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfX9lQlZV0dzqOX
 mWeStJBiYQ7vVvh1h2HfbW2w80PpOBYNLfkf6GyEcPgfPCSQFfRChmB/e873EMfUr4EfvjXnYAD
 jiNedHYsROHwVzcYF/A0llesWeb4EAM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-05_06,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611050095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_155142_170065_E270AF0F 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series extends the generic Qualcomm MIPI CSI2 PHY driver
(drivers/phy/qualcomm/phy-qcom-mipi-csi2-*) with three additional
CSIPHY variants: SA8775P, QCS8300 and SC7280. The driver currently
only supports x1e80100; these SoCs let CAMSS consume the CSIPHY through
the common PHY framework instead of the CSIPHY logic embedded in the
legacy in-tree CAMSS driver.

QCS8300 shares the same CSIPHY D-PHY hardware as SA8775P, so it does
not need its own of_device_id entry: the qcom,csi2-phy.yaml binding
declares "qcom,sa8775p-csi2-phy" as QCS8300's fallback compatible, and
QCS8300 CSIPHY nodes bind through patch 3's existing
"qcom,sa8775p-csi2-phy" match entry.

Tested on sa8775p, qcs8300 and sc7280.

Changes in v3:
- Patch 1 (binding): renamed vdda-phy-supply/vdda-pll-supply to
  vdda-hs-supply/vdda-lp-supply, and restored the DPHY split-mode
  port@0 definition (two endpoints, lane-count constraint) that was
  dropped from the combined schema, cloning it from
  qcom,x1e80100-csi2-phy.yaml instead.
- Dropped "phy: qcom-mipi-csi2: Make timer and OPP clock names
  configurable": no SoC this driver supports actually needs different
  clock names, so the patch had no real effect.
- Patch 2 ("Make OPP table optional") no longer depends on the
  dropped patch's configurable opp_clk_name field; it now adds a
  plain no_opp bool instead, with "timer"/"core" kept as hardcoded
  literals.
- Patches 3 and 4 (sa8775p, sc7280) dropped their now-unnecessary
  timer_clk_name/opp_clk_name overrides, and renamed their
  vdda-phy/vdda-pll supplies to vdda-hs/vdda-lp to match patch 1.

Link to v2: https://lore.kernel.org/all/20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com/

Changes in v2:
- Dropped "phy: qcom-mipi-csi2: fix -EEXIST probe failure on single
  power-domain SoCs" from this series; posted standalone instead,
  renamed to "Add support for single power-domain SoCs" since it adds
  a case rather than fixing a bug.
- Squashed the standalone qcom,sa8775p-csi2-phy.yaml/qcom,qcs8300 enum
  addition/qcom,sc7280-csi2-phy.yaml schemas into one shared
  qcom,csi2-phy.yaml, modelled as a oneOf compatible list instead of
  one file per SoC.
- Dropped the standalone "qcom,qcs8300-csi2-phy" of_device_id entry;
  QCS8300 now binds through the sa8775p match entry via the binding's
  fallback compatible instead, since the two SoCs are fully hardware
  compatible.
- Squashed the separate "Add qcs8300 CSI2 PHY support" patch into
  "Add sa8775p D-PHY support" to match.

Link to v1: https://lore.kernel.org/all/20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com/

Anusha Arun Nandi (4):
  dt-bindings: phy: qcom: Add common qcom,csi2-phy
  phy: qcom-mipi-csi2: Make OPP table optional
  phy: qcom-mipi-csi2: Add sa8775p D-PHY support
  phy: qcom-mipi-csi2: Add sc7280 D-PHY provider

 .../bindings/phy/qcom,csi2-phy.yaml           | 201 +++++++++++++++
 .../qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 228 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    |  74 +++---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |   5 +
 4 files changed, 474 insertions(+), 34 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml
 
Best regards,
-- 
Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
-- 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
