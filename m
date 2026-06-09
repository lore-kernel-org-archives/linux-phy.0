Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52721CD8CA4
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 09:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Znxd0eRvqo5VX5sPGXG2e3X3VQK3zWRmpo5X4B3sNbE=; b=vbd1oIkiRn8fus
	ktUGBTpcCJIlmgFLxc6KzAoBPdz3Y3MgvExH44uW2sPgadZzkHqXTqYmi4Zv7K4FGY0imsWp6tBS8
	OaFhHXpfdh5/sffwmTSwvRLRV8uwkPrFi4corxTVzywh8/70LUsuC7SkKn/XMhfrlOnMXDJzcnvJc
	lhzX9Aq6IUWX1JBkQwPZ2qEzvloBhH7mOsXIx4Z40QE7yqulKZhY2LTRWDUT4NwP2Ea9MeV8RO/sH
	GfB2FS6hYsiFFsHusS2lfeJlidmqRxA2/lDOOdi0974QzX+oTLUd8hh/dMrm25iK35400+1xq+njV
	IKDoUzlIZwguZs+1mjTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsfS-00000005CJN-3lud;
	Tue, 09 Jun 2026 09:22:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsfJ-00000005CIX-2NXl
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 09:22:36 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6599JswI1784231
	for <linux-phy@lists.infradead.org>; Tue, 9 Jun 2026 09:22:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=oLk9QPedDkL2uCX+n3ZKHm
	PgbpWGF63huvolXEqxgzA=; b=dGE7nyv6Jm2Y29d2xm4CPI9j07RBzl7fB4bKvh
	hxP5vbQ5E6pBUulCSMaRttaLa2r371y8DOs8XJKndldGkLdkk1g7dAa0ZVNliRDC
	rsxrcaFaY4nu6qOJ5w4MJ9fh5gfnICxBgoCCL2Fu8fbR65DjlMI3OJ1TxZa/8bq0
	8RFc4NTkmRS+3Dq0WondAsfsMDCcmQP5p7npV7oKz26XKK4/XuJoYOglRtDNZ2ZE
	7Ub3ZCIxagz4nm4fKNxSkKv8lUYe4UJSprtRPOBeh1lC2U7jYu47usEfE76/ljH1
	MFqOuBq8mX9esKhr9AQGkoi+ZhqwSbJmHnvGmJ0HCts2dOdA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epg3wg0aw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 09:22:32 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-842b0dd8107so2968935b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 02:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780996952; x=1781601752; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oLk9QPedDkL2uCX+n3ZKHmPgbpWGF63huvolXEqxgzA=;
        b=QJ77gnSIq0ezcQr/mUMMwoG368JnWNwIWSEtSnSrF9P80x+IaGtDuVvrP2YfWKApR6
         f6BdGu+ysjBm3kdx5e+HTKj6B06wbOc+cY0OBLLPnATqz26sx7e+qXOsJuQaKPTmbXAc
         56bct11h3RZzBWRaYQ2uL/BAe7cHdz0zwdAFfnLgWLwi86w2auF1wb9xOjYPVvNRUPga
         aw6KlRwhrPgkLdclXjHgy1jkcYh5r5b3Ym58pgWiyO3laG+UScn1kt/ZE/Sdd8ohePBA
         QFsyEKztjUcWXpS049f2GRzMglNhkiAPb7uGf6GgnTMxfy0iY37HURM7dUup+X3+92NX
         oOsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780996952; x=1781601752;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oLk9QPedDkL2uCX+n3ZKHmPgbpWGF63huvolXEqxgzA=;
        b=ZzUWlDw6CDntF0Nm2L6kkgKO5yOBz8BlnfLK1ohh35mo2Zi9rV4FJDtlqQQrgU/1s/
         nyBef5s77yVLFZYiKDtSi7CDux/NFzabf+ETkPnKnfpewzoCObLHRC4xRQM/fxVLw+Fl
         oxsmOhkqO8MZz4sCrl3vU5jnLrfXQHXRp5f0yd/8epbFZ+tcjbupUDPvCFvxeNLpcgoX
         TXf3BGDk3ix3EPDal12CJQBYJiLfR7+wmNj2/8Z5X68/RWIm42RscH3LMRO9Nuv8NAAa
         Am4K9Ft7Y4j/yiKo3bxK+Tv8mZmFoHpR+hpntt1UUfqNLPrQMnqWnKU9ftCItQz3IHkq
         6qMw==
X-Forwarded-Encrypted: i=1; AFNElJ9YBbRrWArdMgOTFWuV+zwd8YAw8rzP0Ux6twd1xdQ7/BXMA3Vk8eMnTYY65iS7mvXbIukscwEsytM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5DzXJ6TwBKy3XWfmxETnUzugTyGH3pVujOTDSYO2xtj4Vvdyx
	tMb8PbPmKYx0Gkt97pEu92A8fGHK6zpiTYTLnrfs8HnTtDu2a4H0uZAGHyBnxTErzlKY+HdOBOr
	uKA/9PI1lX2QqcEktmXaq8p/QQYODhTgh34PFf/D8Sqtm8mmoMgukVV3DM8k+XFC9gigL
X-Gm-Gg: Acq92OGZ2S6hLh/6ioE97S0/58LcgYgCyjnxz0GiDBkAHZlmN5vGIzTiyu3c13m7UMy
	fTa8qL/LUrkqK714G+6R8ldYPpTXbbG2DB7GtpD5nKKEG4rElJoCsTxQl2EwKY4E63drEQyJFvp
	UKED/nB2MCBq6GAO+zXscVeZhSajdRNyu0pgzKxzNebeOQ5NTrdnpoQuLq6zRSzl18a4WOlIlHR
	O6QlXKLoqTdhjtxugf+8hp8cHRD7zdth7SghFWoMVk9Ixw6GMdBB4KXeFdn0frlnwY3zyGSG+CC
	0Xw93DaTFzOzYmzR983G9mCsvnbcal2bUS8oHE00oOFg/z2dVXEL/ijH12PjoS4yKzqBlOxU1rd
	zf8EQB9W1W89IrqRxY2aBnT/pwUiNFusmZ/V934T0q1czEwwO5WHsPaBJjrcyXGGfJ8OqF6ThF7
	HBhy01/q0uvHtxSX3+NFM4LfzEtwugHlDzgr0504Sz3Ee43nIQGUZFktatCS0Nfg==
X-Received: by 2002:a05:6a00:3d0d:b0:836:5c3c:2054 with SMTP id d2e1a72fcca58-842b0fbb621mr17711741b3a.37.1780996952106;
        Tue, 09 Jun 2026 02:22:32 -0700 (PDT)
X-Received: by 2002:a05:6a00:3d0d:b0:836:5c3c:2054 with SMTP id d2e1a72fcca58-842b0fbb621mr17711707b3a.37.1780996951659;
        Tue, 09 Jun 2026 02:22:31 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282882170sm22861582b3a.30.2026.06.09.02.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 02:22:31 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Enable the QMP PCIe PHY present in Qualcomm ipq5210
 SoC
Date: Tue, 09 Jun 2026 14:52:11 +0530
Message-Id: <20260609-pcie-phy-v2-0-83bc80e79fa6@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEPbJ2oC/02OQQ7CIBBFr9LMWpIBCpRexbig00Fn0VppNRrj3
 UXduHw/Py/vCSsX4RX65gmFb7LKea5gdg3QKc1HVjJWBoPGo8eoFhJWy+mhYsyUo05o8gj1vhT
 Ocv+q9ocfF75cq3H7jTCklRWdp0m2vkldCDa01lFO2rY50kjkox+SxQ6DiyO2lIOB/5Ia9ulwu
 lVCpGS5OKNRYRrQZpssd7a/aTi8Xm/Smwyh2QAAAA==
X-Change-ID: 20260609-pcie-phy-99fcf91a02fd
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA5MDA4NiBTYWx0ZWRfXwXYCsrVi0Lt/
 gsuSrDunXotco9DqZraiDDFE2s9OK4mpcK/Ofal6t+C/TsEE+43HihJgudNqnKttRNjKST++HIO
 5qzflvTH4wBSWTVK2M3g88DewwIDIGlW58ybNoZeePV/tzynYzvjXHmuKXbyfalj/PAJHsE3NbS
 P/edXaXDdcKd+RlkxFsLayJZQ4TJJoYiS5kum6fF6ylobB28MqNRcyP9xDRlcxm26EetqhnirAk
 Mj5yDRBLV+bG50d4YeECWZ/1Kzqr1vQoL2rwVRR5TkUg/vhaO30yCYYHeRovy/rl2ZKLoKWj4CT
 bPimIVoWUuUajY+BbDiVw+QWVyxggWocrB9D0JQ93GyXJ7QV1Nk3hkn5NTul3J+G9j8JaJHiFx2
 UEw4TnrvMm+0ZRnp5Q9bmaCOnbv6z4wlVNJaN+OhCNXFFDnLTVExW/MofHRirE8HzB4hhLnkHv0
 E1pch1V6PV8qc/MHw4g==
X-Authority-Analysis: v=2.4 cv=csWrVV4i c=1 sm=1 tr=0 ts=6a27db58 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Xdo0bYGMzzAWwOA9nckA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: nXg79tzB1vqg-v3pXs4g1UhuPoWpNEkr
X-Proofpoint-ORIG-GUID: nXg79tzB1vqg-v3pXs4g1UhuPoWpNEkr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-09_02,2026-06-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606090086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_022235_400109_CA782AFC 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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

Document the bindings and update the driver to support
the PCIe phy present in Qualcomm ipq5210 SoC.

v2: Had incorrectly made both the phys as fallback. The single
    lane phy is standalone and double lane uses ipq9574 as
    fallback.

v1: https://lore.kernel.org/linux-arm-msm/20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com/

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Varadarajan Narayanan (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the ipq5210 QMP PCIe PHY
      phy: qcom-qmp-pcie: Add support for ipq5210 PCIe phys

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 145 +++++++++++++++++++++
 2 files changed, 147 insertions(+)
---
base-commit: a87737435cfa134f9cdcc696ba3080759d04cf72
change-id: 20260609-pcie-phy-99fcf91a02fd
prerequisite-change-id: 20260514-icc-ipq5210-0ab03f3a3e83:v1
prerequisite-patch-id: 0b6145b6635b18fe79fbbff5815041b43778c5ed
prerequisite-patch-id: 924c6ff7baf4283ac7991ee94c803a00fc5cece4
prerequisite-patch-id: c2fe1800fe769dccd37f94c19860a07f979e3c4c

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
