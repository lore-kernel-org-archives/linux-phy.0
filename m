Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18F0BD58E7B
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 08:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sSG/L6AuVED17NmYtvXEe1jXHQjKlYl/kqAsHTZqq6A=; b=ir/GnCLYxlJtfM
	V+T08yamDTibCIIyFuv6Moj/PJKhPpwzdu8EWb2cjM7inTCJqlkFN8xRA7nZAc5Is33CX530gPC2j
	flYa2/HM5yMBQuARYlHnxyz0lUTCOI2eFnYnO8KieO+DLnkKSjVQjaJeo+4xB3fSsNWuTKJp27Jnw
	SmRYnSgfuxvWaA3OIel1ynYxYmjmxcaawjXfIDMTZJyQHz/5p5sft/bYnEfKF5IbXxgA0/BciEcrh
	mXL4fRwSKvvwIHxGcBe87gDasoSTbwQffQp7c+eHxWEG4AIKDe4dyEmcTb5arkebzouW8Rk41lI0W
	2ncAYNUllzgqWd3MaNqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwydv-0000000CW9Z-2adO;
	Mon, 02 Mar 2026 08:28:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwydt-0000000CW8z-0IYe
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 08:28:42 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62282Q4D3860483
	for <linux-phy@lists.infradead.org>; Mon, 2 Mar 2026 08:28:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=V/IVakVW78BdWNeieKZ4TK
	ptAL76VoMJvEg376hXkcI=; b=HE8oc1t0BdZpj13HBTKph0+bsbEHTwVso93VoM
	Fdj91+dDjiunQaY8xrcm/30y1q2yMiibRCYs5+iNmEyeuN8lWxLehNnhiE4ySmhU
	5g3Aqkni897b4V/csiD4fPhOgHtzYCElpKizwIPifQ8404JEy4LFEGk78652Ypm9
	RpuSNaaQ34LplldiwkCyCFJdlbGIT8vxz4naQUevsQs8y1plmGN3CR2l4o9zi8O8
	Hyddg3LjV9C4q3eLT64ER8aTPN/869/iv2mErfbtaENUAQqXBCkjVnnT1Rsx+R4M
	h8W9cDkM9MZ8uA7aAhIV+FZdztmCtM/nRv3Pf+gHf4s3GU/A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf6mncm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 08:28:39 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-899c4a7c6c4so557867946d6.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 00:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772440119; x=1773044919; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V/IVakVW78BdWNeieKZ4TKptAL76VoMJvEg376hXkcI=;
        b=EN+Kq7Kh8q6loeJOmN4DPr2v/EvQIBA53TfcFHC28OosWojgSnnSvWMgZRchzzQph9
         OYRIef2MFc3AasvmDzV8jZEnhLkjeePUMWVGb3dR0PX1KspKUxUMsBlfM2blvDKPZdUk
         bfP/t9cofRgdFJmfXfrSF+WXgayE1B1Bfn408mchgTdjyhBM3JTkwW1Vb2Cnld8EAzNQ
         p5KoPPjfsOE4WtVKaTqgEX3tNqAaufDdLq+8p70GQM8RPwhKVcDQGH92vJ/30abq1DYM
         BtIVLz+csJFVitV2cTCiiI1/dUhxVCAV1KHmpf0YtarwzIJghUaECbocPHusCdclLX8R
         h/eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440119; x=1773044919;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V/IVakVW78BdWNeieKZ4TKptAL76VoMJvEg376hXkcI=;
        b=WRLEyc9HQYarOZGRWMb9HuRjLDUQYVWV5ZlFM4RNkrDAzeGoY/T3vGuhJfZkJwnM+w
         /NqBs6qVkk1ZnkrGK9HHOEn+FDqRCODAANwoKp5vcFocVN7yPIbWPzdmWbkDgTjfZzNr
         S9MVJQSwFe4qXoxx6AcSdF5LZGDfE2o2noVPtS9LbCC5R5kiLLIcetKPvZI/B2sC67zE
         bo2Huc0IysLEFgDlmC+8pxmA7TjuqPsm9aERXbbm42r+4N+aMtX6xlH971kL1HsLZC3O
         ZUwBw2scu+3TAXxAuV4oE8uDUFzWthDHZbxMNKPK5NMsGqRKK70j6k/rzFyc02/Mfyhw
         2MCg==
X-Forwarded-Encrypted: i=1; AJvYcCXtvwHmU2647UTzQFiXEJiTkS7q3a1mDfvWASqwDtRYdzPH0BN/h8WAiRBO5PSz6uw1WfrmvF+ZdIw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxkkkBnp2yQG01akb/ULLlIAZv8IcF5iF4uhm5AS/XgcNsqeenT
	BEDmZ+4h+09NkbHQ5WcSeGcJEM4hsB8W/DCCuMnJWz5x9hNlwkvKUJPqC+beswCFXnooFYrl1Eq
	JSUyQDWnHoakiYCXL3bYXr1N8mu0ebZu0ryF8ajd8jiWqmFW9+/Nw5SZEabzFoP9QlKPB
X-Gm-Gg: ATEYQzy8cHJPRbC76C3pvpMRVb7ABRvlyTOfnm4KSGjLvQuJtFnZhXZpndKfdZwegZZ
	rAu0fIK8LLw3wUDD8M3OtJ7RVutxlKbdN4PPnVFoNnV5033vgt4gCK5L4wzqLFO06mOeFwH2O5u
	NCMBdhOGw2HL3/1tr0yiSztdrl+Jo1CVp37xK8hxpAhCza78UsDDqUHMmI6gPd/BeH1eq4FxTNW
	iCxzUJ8vf2d4feiaaIU/760irlbV54ZHMsQpK3MaebS+Rbe+btXr1g0eM71EwKqSSGisbdbr/+8
	SFBrq5d3wH+9bSPuR/D8Lm25bScHckb2Ku0ppG6OZyDaIrjzssVC/F74vRKW26HyR5SmtBGiaLh
	+UJKzaOwufK7vwE0vT6w//WoX9VV3aCk2144tDv5og/43KKTx6dS/h6Mt5JWuKCEPrKODSCbmf5
	ec4CapSNg=
X-Received: by 2002:a05:6214:5013:b0:899:f39f:b884 with SMTP id 6a1803df08f44-899f39fbb42mr44298046d6.9.1772440119007;
        Mon, 02 Mar 2026 00:28:39 -0800 (PST)
X-Received: by 2002:a05:6214:5013:b0:899:f39f:b884 with SMTP id 6a1803df08f44-899f39fbb42mr44297846d6.9.1772440118576;
        Mon, 02 Mar 2026 00:28:38 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899c7193227sm101354696d6.21.2026.03.02.00.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 00:28:38 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH v3 0/2] phy: qcom: edp: Add DP/eDP switch for phys
Date: Mon, 02 Mar 2026 16:28:28 +0800
Message-Id: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACxKpWkC/2WOywqDMBBFf6XMupHJS6Wr/kcpJcZJDdRXYqUi/
 nujXXYzcIbLuXeFSMFThMtphUCzj77vEsjzCWxjuicxXycGgSJHgZpRPTyGZmGcrJFUY6EsQko
 PgZz/HKbb/ceBxncSTr8nVCYSs33b+ikVkMOyrNDqohAmd4XOpSKtjJHKaWfRCIuKW9hdjY9TH
 5Zj5MwP2d+emTNkQvKyFFXlpOPXPsZsfJvXXpmlA/dt277nI38L8QAAAA==
X-Change-ID: 20260205-edp_phy-1eca3ed074c0
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772440115; l=1579;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=Y5aDWPMKW2ZYmyIHMW0epLhTCjFZ5jh2nTzoMStbjRQ=;
 b=OZ8EKpW3QxKtd+ZR7RvubWubP4PytrhWZXyB5nSga4Da+OIr5xCShiLPwc0PjJIW8Q0QYTcG8
 TSW8oFDVxSMAPVcnFIYvGAIvu7j317wZS+BfL+zpqRrStJjMta9PGPA
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: Sq_gilBGWeZRJX-5B1T90ish5vJaWKB_
X-Authority-Analysis: v=2.4 cv=JoL8bc4C c=1 sm=1 tr=0 ts=69a54a37 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=M-2OMZX0rM6BGFiE4MwA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3MyBTYWx0ZWRfX41sgaoAQC6eM
 D49KWInauPlOz+WXZjwrGYu9Z33frXzwQMqzVKG8rpWgXZQntdH0j9gD9u8MlZtuvx0t7qzoaV2
 qLbANTTxucZFrNLHuiCojV87Z/40apjN0oRIgBFxwhXIkcnwp4CoBvR0lDoCnL5gY8g+kVQVHk7
 lcU7yEFYtL4ZcZkt2b0Y3X2+ksK83nHBtaXVSkcMuZmIoM6Wk/arOSN+RizcuZRNZk6A1rKad9E
 owi5C1t0LcG8KGyNaNSktsN90uKppCejkY4jLxref04QACy4AOPHanUPnPMF6T4aq5HN22xNB0R
 YjWtQeLT7X03qhcq5LPmqp8IO5ItEr/KuhxRl6cJ7RyuC0O27sVEH76xDzeoj9Rpfw0uoypk+TJ
 TX4yY6DhViQXLCJmn8P/1/e3ZpiJuv5VT4AonX9K5W7Pjx31VCxh9U81cQnh/Fv48muiTv9ohjY
 oPmyiSMEk7A2wVFz/gQ==
X-Proofpoint-GUID: Sq_gilBGWeZRJX-5B1T90ish5vJaWKB_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_002841_259746_061B009B 
X-CRM114-Status: GOOD (  11.44  )
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

Currently the PHY selects the DP/eDP configuration tables in a fixed way,
choosing the table when enable. This driver has known issues:
1. The selected table does not match the actual platform mode.
2. It cannot support both modes at the same time.

As discussed here[1], this series:
1. Cleans up duplicated and incorrect tables based on the HPG.
2. Fixes the LDO programming error in eDP mode.
3. Adds DP/eDP mode switching support.

Note: x1e80100/sa8775p/sc7280 have been tested, while glymur/sc8280xp
have not been tested.

[1] https://lore.kernel.org/all/20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com/

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
Changes in v3:
- Rebase to next-20260224.[Dmitry]
- Only enable TX1 LDO when lane counts > 2.[Konrad]
- Link to v2: https://lore.kernel.org/all/20260213-edp_phy-v2-0-43c40976435e@oss.qualcomm.com/

Changes in v2:
- Combine the third patch with the first one.[Dmitry]
- Fix code formatting issues.[Konrad][Dmitry]
- Update the commit message description.[Dmitry][Konrad]
- Fix kodiak swing/pre_emp table values.[Konrad]

---
Yongxing Mou (2):
      phy: qcom: edp: Add eDP/DP mode switch support
      phy: qcom: edp: Add per-version LDO configuration callback

 drivers/phy/qualcomm/phy-qcom-edp.c | 176 ++++++++++++++++++++++++++----------
 1 file changed, 129 insertions(+), 47 deletions(-)
---
base-commit: 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
change-id: 20260205-edp_phy-1eca3ed074c0

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
