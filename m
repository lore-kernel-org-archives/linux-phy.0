Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 646C5C982DA
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 10:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P97+RC+U1IpnUBVp13F4rw1qz7c6nseU+lym/uE8kxI=; b=UpwnsPf5SZJaiU
	0Iors3pn5WU+UyuhQ0JcAeTBQLzE9pYLGq/4BBTixdJcVwffupfmMb7k9iDWV9B9yjeZCfluS2f2D
	E5QOzLv+OQrT54Q9Ixxj9ATE+2O92PgD1MopU5YOM/0yfsBHyGToglwO3If2N0F4ZK1J23ms5SmLG
	pNygry3RrTFAAtvb5aXUITuBoJtUptS6uSl8RqILzCLr8T8/f1IjEaWrKVckBz0Qw6de0KllKIDJI
	7dqppveZA1I6Ds4mRQ3fZWjWlmtZ1ryYfLb2o2CaEFWtaK2NPMZwXp2K3ZvGCcr9bp4Kh9Rbhlvqw
	oz41ulk3OMgGtLFJ/okQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0O-0000000E71C-0LmH;
	Fri, 18 Sep 2026 10:39:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0M-0000000E70a-0Ohk
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 10:39:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68I9dVCZ3916152
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:39:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=0bky6LxCR8ON3Ijq+kG1vs
	nKbZeqYDBJrMN60J1xEY4=; b=JcAbxmxV25krtkVOSn6jRlug/k5Jbe01f8Tn5G
	e41oQrHnqnaY5Kbl6Uoi8uxBQk0op1qj3lgCawdIDyTRdMvdXpzKW9KCRd/XYhLh
	pqQi2BRCP9LMuuPHlJf+d5tMPwUkto9rzVhTdBxR/SUWVRw6lokjQNizfPymFv1K
	aohn5jhj1Wvgxz8QdyNHMGY47rVCTDzyYmNqPob+McV7zsGFXx63td7Yse+kzYUm
	0G/qVv7X73iwsh8c/7/BfPdVk1dslKuqKTx0fEgbQn6uVjrOUL+Ko+Jw4iq6xZd+
	mC+orU2NIoMybPdK8Z5hYon3DIyDD7jDTR4aAuxrAgLGRSkA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grrjdtqmp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:39:40 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-8633c0d7353so849641b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 03:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789727978; x=1790332778; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=0bky6LxCR8ON3Ijq+kG1vsnKbZeqYDBJrMN60J1xEY4=;
        b=D7n1u50Mk9MlJxZ35AkIToiefU/CRkD01e5A8yWy92ND536a4N+4yBh07BHGC/lf56
         AbWPKU+I9Ztw5Rb40YANLin+2rGR1lFg2mb11I7B/SYSnQb+lFzWEDX5u89XDACYGirK
         WFkHPD+CxMnu+G/Cm6F+ZLDSRnSK3cZBV1Sa8ZYnGRgRRB7MbI80HDVKwKVvcTgaL1P2
         KdNWiA1szePYwLcqvyesP5FHd3nvrBc0w7t9i0LcbDynuzleK1EpWzNqMc36m4sBnH7b
         dGRYCoQyLIV0wFj/zIAC6SOg9Ml7fGosncXfanpYhSbLW8+bG+lWZEvdV0gHimXJxDVD
         MJgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789727978; x=1790332778;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=0bky6LxCR8ON3Ijq+kG1vsnKbZeqYDBJrMN60J1xEY4=;
        b=atSAOWuJid9diF2WqgQapu2zJ11x+A1YjcbMCc4Tt9pSgNzspU1wmVKhM0d2NQ9o7L
         ppXINQOkkPFfEDX8QVFtUCYukszgziZOUHZgwbLopGMhqTgBZ3pElbm6W5zxAMyr32XU
         4Fi2oPhDcTGFvUt4Di/Y57sZ9ZMBpGPQKg7ouZR0EmIqRE8PPVGokYQgUZEvVHWlaRwr
         L/0ATM8aRhQLf81sWFCIhaJIwe3QQ+NGIrnQCEe89CFvTnEdTcJGj2WiNqYc4f+MfCxa
         cyEzez5T/9W/hISqpq5ltUYXTD8z4sp0BrrCxchlGF8YHp6xyckkWoe4yGkk3R90njtm
         /rwg==
X-Forwarded-Encrypted: i=1; AKwUvBwDW1akvy3z7KHCD0eU+WOSshqTtZDhhYlL6uFGMSolTN6P1RISZXpdznh4KonF/ydSnEcMwcuTujI=@lists.infradead.org
X-Gm-Message-State: AFuF++kfM2MipCdajtR6qC5Sg6l3vLcrxngTNm1d9/Zdhe3woexiUN0W
	hpqqan1ahsLk9xvSKA+/+tNpRpEaAwJW0l5l4/gZoyqoumSSrBZ5pNuwG3/ZJnpb3oZq+Kl+Rbv
	fvqEla6MvQjOALixmnFbMB0jRbNoPC10kiEpnYieSSuHX4Ryu1ifvEjYPBAPEkqKBpoOt
X-Gm-Gg: AYBFou1/HiCp07nDpgq4rVeWAWTzbek8glRU1ea+Q+j4agB5r3jPkQcGhGmzOO4GTL5
	NdJHqWBEeSTyRCb8pKTTcU91CeUE21CHnfoCoEYLrVOWaIUz8NLboGbC9eXrrE8wsEPD4w1vzCM
	S4BZbokODsJmI0oKyljTQooj1IylDXH+cx5uy4RrcjTxGAY773sPMvtcsHYKjl4J4hKms1rjhyk
	+vBZ8LuJmG+ZvBQqAZp3d6YFaE6E0Kgw8ARu5NHCwNoizLNPReC+DhSeizJCP9sXdID5fCRd7W4
	VB3HbuAmcR8p7TzEzHdoUgt/D/ZxKo06+tb1cQKtYrvmsqEhPaApGULp53idF5ypN/LSpHTg3Sg
	jTmH5C8TuM0hTQ4G75Mq0tdFPUw==
X-Received: by 2002:a05:6300:278b:20b0:3da:bea4:621e with SMTP id adf61e73a8af0-3dd8c54c728mr3370683637.26.1789727978417;
        Fri, 18 Sep 2026 03:39:38 -0700 (PDT)
X-Received: by 2002:a05:6300:278b:20b0:3da:bea4:621e with SMTP id adf61e73a8af0-3dd8c54c728mr3370646637.26.1789727977918;
        Fri, 18 Sep 2026 03:39:37 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c286d98e7sm4020702eec.9.2026.09.18.03.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 03:39:37 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH v2 0/5] Add UFS support for Glymur Qualcomm SoC
Date: Fri, 18 Sep 2026 16:09:06 +0530
Message-Id: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMsUrWoC/42QzW6DMBCEXyXyuRvZiw01p75HFSHbLIlVfooNq
 FHEu9dA1PbYy2rH8sx82geLFDxFVp4eLNDiox/6JPDlxNzN9FcCXyfNkGPOtRBwbe/dHKq5idX
 obEW9sS111E8gFEojdaGQW5b8n4Ea/7Vnv18OHWicU8V0PP42pMI9n8tnPqR8cO0HHF8iKIW5J
 KVzyk25CPaX7+kufuggkYEgrNE6LbKmLpdsc1gTCdzQdX4qTw3axrpMKelMroWWr5JnvEAtUVp
 dE21bjZJt7DcfpyHc9zOl9g3+HxdZBHCwunGKkEhr8zbEeB5n024Q5zTYZV3Xb80asZ2FAQAA
X-Change-ID: 20260911-glymur_ufs_qcb_enablement-1524a497520b
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789727970; l=2512;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=aIrQ2V0TT/6iRA5oVDp90eSuktg1iJaSHozlFmhrY04=;
 b=qVyth6QO2K9vr5ypFvkLN+h9wqExG799fDaZyUntYcFyRd0QWYFJj12krs8iItKMt5nQlykuo
 YHvTMqAUTjrCgaFGr3NCz5psIaUV3Damxncf4lPV882rQ0uXPYxXcLH
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX+d073FyT46eE
 bxrQQwO0EUjat1rkcCKKBpu73KMz6S6NUQJMrNCnSj6x2fcTdcGRl6bTHkQA7Bp8tlnNrLurV0S
 QsLuig/gv2fEohhe/9o/XXbvm4GmZ3yaCNH/PVTTBkk5RvjqRdDBIUe/au5/Y0+rDkS9h6pTCc1
 MbhMvRa1FdhVKV+POwUwaZMb6LhZqXdn7eWsF8CuclfOz1YZKZXUnpaStt0r2sLsOIr3OImzEfs
 +rTOeVGPgP4uYLAkaqnn2jhk+i6kaN4gq+eytqZZ7uI0Axm7yyy3yrvwgOF5ZgkfVjeUlEeJoar
 fz1R92uvtoQAHFBfi3JdBJ0NAoZ5/VZ5tjtMm+GxW7EGr5qJ4Lj6uR55rGFhIGz+AVy/JUPEGdG
 Liy/PsD4HtSq5Nz5F7hz44+Ehm0uCDd1gswxeQ7IXFYb9OQ2RMKwqM4logm/1aHN4WnsMlAD+3o
 p3p7ZMQq9uwvI49gGcA==
X-Proofpoint-ORIG-GUID: cesj1Y8Ze9KNRW86Kh5wS96DOL8i04VG
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX33eHDI/mNhoC
 3WPhhn21J/p2ByRQDBdmbniJ4gW8mfN0eJ+JIVYLhaSbBF80fKMbOyV54slGoeLcbX+aDNdwsiB
 Y/aEN8SMJXWiM1FmbQFHBhHbpIJ5J0g=
X-Authority-Analysis: v=2.4 cv=J9Q/fwnS c=1 sm=1 tr=0 ts=6aad14ec cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=MjkSdyLvD0LHWdEy_1oA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: cesj1Y8Ze9KNRW86Kh5wS96DOL8i04VG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609180149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_033942_160197_28C5DEC0 
X-CRM114-Status: GOOD (  12.10  )
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

This series adds the DT bindings, device tree support for the UFS PHY
and UFS Host Controller, along with the required PHY driver updates to
enable UFS support on the Glymur Qualcomm platform.

This series depends on Glymur LNBB clocks[1] and Glymur QCB platform[2]
series.

[1]: https://lore.kernel.org/all/20260905-glymur-ufs-clk-changes-v1-0-cdff2c67a8c2@oss.qualcomm.com/
[2]: https://lore.kernel.org/all/20260908-glymur-qcb-v3-0-c194c0219218@oss.qualcomm.com/

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
Changes in v2:
- Added 201.5MHz OPP svs l1 entry [Konrad]
- Addressed minor cosmetic edits [Konrad]
- Sorted references label alphabetically [Konrad]
- Add RB-by for SoC dtsi & board dts [Abel]
- Add RB-by for phy driver changes [Abel]
- Add AB-by for phy driver changes [Konrad]
- Link to v1: https://lore.kernel.org/r/20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com

---
Pradeep P V K (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Glymur QMP UFS PHY
      scsi: ufs: qcom: dt-bindings: Document Glymur UFS controller
      arm64: dts: qcom: glymur: Add UFS nodes
      arm64: dts: qcom: glymur-qcb: Enable UFS
      phy: qcom-qmp-ufs: Add Glymur support

 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   2 +
 .../devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml |   3 +
 arch/arm64/boot/dts/qcom/glymur-qcb.dts            |  18 +++
 arch/arm64/boot/dts/qcom/glymur.dtsi               | 125 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            |  99 ++++++++++++++++
 5 files changed, 244 insertions(+), 3 deletions(-)
---
base-commit: f2bfbc3554ca6919484030729424b9dee2942d24
change-id: 20260911-glymur_ufs_qcb_enablement-1524a497520b
prerequisite-change-id: 20260904-glymur-ufs-clk-changes-55264e596e6a:v1
prerequisite-patch-id: 934a81749f6e977edb9214104fe2bbf4c7758663
prerequisite-patch-id: d4215d48878aac66f72ef5b6c74d81d1163a596e
prerequisite-patch-id: 28be2089f7836210401b8a68c7cc0ca90d63c375
prerequisite-patch-id: cdf227f5515ad8faec49bde5e0475755a961100f
prerequisite-change-id: 20260711-glymur-qcb-1e2d2bc913fd:v3
prerequisite-patch-id: 53dfb255c51efb63dd26fae3cb30307f0d175ac2
prerequisite-patch-id: 7fa1b965056eaf3b90ce81a537d28c5a2adc73fa
prerequisite-patch-id: 96b042ef08bba0e028c86ea2a473d996880ab38e
prerequisite-patch-id: d2f390b67a2ec320db1e725f4b84b500f1f0400c

Best regards,
-- 
Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
