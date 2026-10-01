Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B254BCA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wHe/p1FYIDloSAr8iYLpmJyXiqfcypaEheGbq/bEtVM=; b=FY6e81ROgyOWZ8
	OBICoN3LW5ftHB/rNHK58gPMyRI9WeZw/Q3qybRMLG7B0KiUKOOV365NBt2qnps9hejJ+VNqrrHCq
	V2uTQiOGVIwj+T64l999fnritzrTgRu1gVNmwG1yXyabXILhHGTDsSQiUEWsm1pHre0R39uKuKT+d
	j6MjmaE+/MCYcOb0H0m9mv/f2AfsOAbTnHgTLKWFBTVRQBhi8+Dd+9z/LeaRo8HUY5is3fjeEJXud
	oQ1bEQ+9DGa2UDnT3EZxjT+/sxJgVk/oEEwmakb1UjZoVN0KZdiUx6VNMF10yPqsXM41r6oiZSMqB
	88T7k8BRpdVraMC240eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDBp-00000008Nn8-0zEW;
	Thu, 01 Oct 2026 09:34:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDBm-00000008NmZ-3nx5
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:34:56 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xmhn1661085
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:34:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=g/eq3Qw1CAASRMA4N2bfr+
	Q+aQByYgs0SIcj/S3VKfc=; b=YrB6wkCrq1XsAGLDXb12WcNJCeKn5sXFOxzy8l
	/+Ffq0PgQRv8e/vS/7mcncVMSkAefVNFu9HP8obOoFyn8IzpdXKd55MxMa8SupJX
	09Y5TDv6APRuy4YQKpjHNv189EXNO4V6nZWBI199OmHlLXTQLq2hFIktvaRe21dL
	d+0Fo3OWT2qsMRTFth2aIHiwH3W2uqjtEpO9bQZQJCGJBtWmoNYr1x5k2zZZAI8C
	GJdUfdnso85DpCSBPybzlw19UBISzJuVy9g3kE/y9NwYGp4+KS6KBczXgCu05YEF
	vMReg+HX6NUFB0Vz2Hk61qq0o7MOFaKFz3++KEOzpFET1Xug==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h167pkm5v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:34:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc1b6f65dacso4247227a12.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847293; x=1791452093; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=g/eq3Qw1CAASRMA4N2bfr+Q+aQByYgs0SIcj/S3VKfc=;
        b=HKBscPMWlz1kXmrosGeSnQGoI358rtgJpcMNAxo/wtUxhjQaPfTwdp/LE8guo1365E
         96PZNBkC3wqUnsuttKyynwVz+R9K4Cgn6vxpOtMnH0S+0wcA/Ay1N9QnurBF0rbmBLJC
         gvRGmJBCrUQfofphrAzinWJGuDHlgk3NpRImYMPhfRJzAw91vWn64UCnCK39xW6rBJsh
         tZ7RNlyivlYWfm72h0+QPogYKwINn0RfrJ39gupy7n5+oy4/tC71KwWOdOyoDczs0p9a
         bQsiTDrivwMdqJY5xoZdAWh5EEJFxHo3ktoyzD6WMNP+Dl0mTdOOsCxxgrqgavMrdmoz
         MXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847293; x=1791452093;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=g/eq3Qw1CAASRMA4N2bfr+Q+aQByYgs0SIcj/S3VKfc=;
        b=CvCB57MIumEHLCn7qhwGH39vfiVEoEF2scmRQyKQYYNG7k6u2Fze/hEziV0cy4X+mf
         83YDDgSr5vL6pyPiR7xxBlP44H+pW42K26kTrGNlIMg5m+c5N3x+dA1dKdqOSe6FUM/l
         lUlSne7MrVZvG/V7vIbXRgP9T7mm2Pha6Y4wWcBpqfUNqPdfvI3GoSKt8h84AMiKmOpf
         xiSjTVcEz8wYD28LEwjNvXjuKEZr4xptuMssse2RUKKRWK0wfWz7I/3n6NRQEwM641hp
         o42UBdg1t+miuN8awTm7sw9DJG1/Cq8R0XLvjO2/DPAVWEQ47CdjXs7wPvAMDcEDxXzV
         u0pw==
X-Forwarded-Encrypted: i=1; AKwUvBzIGMscWvdnR4Zi7hrWPN268dOD5jjQxqnz3OK/7cKKS1z0rRDKp441Cm+CT8JNjUNPQw7yU8aZzt0=@lists.infradead.org
X-Gm-Message-State: AFuF++k66v/w36Iyvw0Hp5SBh0KuLTQ8Cyedj9GLoGAt/+ABnjh9GbZV
	bjnKV+NwbSlcJA+8E86X3exJeqxPaAK8bUYeQ1UBIcbDCjvQ7Z559eHG1fCThODX9ickeij8WMo
	7RV6/4HIYeGnuJH4YjcWeKGFA+yD+o5IuU2jzng6Ttxyh1rPhJJtkhTFjo5hjLwwx3CZY60dTET
	Oa
X-Gm-Gg: AYBFou216EvCAYlUwjYWNyJoz7y1k5JnZYF4K4n7Qtkuwuwp0MH3FBBX4rFym1pt7bY
	hRZHYNY0ZUYJwAzlHsC6wXpgeSJD3/mG32Y+j0xzh3iyCaWerwapepZ6tEiCgVoqXKKKSa3VfyI
	AYfuhV1Ts9fu9WS6lRtXoNUqk7jNZfZr7jGd7VEmHaVVUE5Do8qTROuIqMFsO2OohVyM7RnZThE
	uWnvMsSfBKFH/E08vlVdBvZyeHHxt74tFOEEennl8fnNaHE7fL/5Y+SWEbx7mxB5Fwm76FDNaJS
	dorBoA5ytk5bXdfRowcwkR3GVaENROzf8ohCBH4Q/VPxIb1YwyRTXBxMkLh/77INn8UVMzAjgt+
	sVuzKXlEcFO6E6SLrn7yQCLDn+84=
X-Received: by 2002:a05:6a20:c70e:b0:3dd:a195:dd55 with SMTP id adf61e73a8af0-3de9e9074ebmr4761279637.55.1790847292768;
        Thu, 01 Oct 2026 02:34:52 -0700 (PDT)
X-Received: by 2002:a05:6a20:c70e:b0:3dd:a195:dd55 with SMTP id adf61e73a8af0-3de9e9074ebmr4761256637.55.1790847292287;
        Thu, 01 Oct 2026 02:34:52 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.34.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:34:51 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Subject: [PATCH v5 00/11] phy: qualcomm: qmp-combo: update DP PHY PLL
 programming on Glymur
Date: Thu, 01 Oct 2026 15:04:17 +0530
Message-Id: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABspvmoC/23O0WrDIBQG4FcpXu8Uc4zR7GrvMXqR2GPjaGKni
 TSUvPu0Y3Ssg4Pww/E7/41FCo4ie93dWKDkovNTDvJlx8zQTScCd8yZIceGa6zhdF7HJcBlWCE
 J6BtlasXxaHtk+c8lkHXXu/d++M5x6T/IzAUpGzb4EeYhUPdwFVa/XeMnC6mCCpTRLW+lRCPpz
 ce4/1y6s/HjuM9P0QYXZx/We/0kytWfpvpP0zwcNClhKFduRPPslcKpfiAtf0LqjFiLSLKSXAr
 9D7Jt2xfLXsgqVgEAAA==
X-Change-ID: 20260824-glymur-phy-v3-b67c4702dfb2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=5226;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=qkuhUfxgkzuI3vosSdLIbvizi+Q5Uq+aaYUlA/NmNYw=;
 b=y2PMOiJXCncjY4JjSigYdjsR5hQ3x9j1DXlZq7CSx9EOk30ik7+TMVmz78WWx3uz9JK/DUEAH
 qHBMl+F7AT6A4zatmocTlUVi+tdrRgHYdExHPd+T4rvv8lw7OAj95Ep
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-ORIG-GUID: mCYSEqY_HUQN1N_d_DocDVHxeVaAam1y
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX0sgC5C4fuZFR
 dUM+ZfAXWFYQCS1Jv4Fzoz8txArGsaTLfJYMrVVruJVp/5X1N5SnojA+KL9f0XpNc9vy+sLF89o
 y4hAOVFMWU/TdX60MdKoGUAmgsPJkQ0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX/AojzXp/Pipc
 w/QexIh5kPxdMtP/66u7mQr9ceu4UY0YdXwBOv00vZO/k4ZAJ3Ut3jnI2MNgUhRE6me1iQ/r/r4
 yBCbilQ2Rywt+SNZwbxNauD+TbByocSgwD39wzif/1BJtU9UX4V7RbnC2H8RmJTyWuedD/jPLfi
 d50M2slfFhliL11e15Iwz0HAt1TYeZQxVeznfYOuLB7VXOmB3Qd7tDGj7xyt2TCADI0J+l4nqSL
 saOxVpsKf7Ive9sb1XlEPU1GAyTYyrQd239hVWFGUvN+/yf+QYFNm9N8HBTHzJVK7R0ZYh5/eyO
 KFwQvpstouL1S7RdjtAY+DP5DdMnV+n87zD7/LEI0FBfpd9TEK8qPEiiMfbgRbLkoP/GlTpqbnw
 UqzQEiG78XcFmWlumNHFdW2xvElO9pG9UY6TiRJYLHvKS8BjqdPnPhXlu6Gxq/nN/aw/xrGcBa1
 JmEXgWmSh5WLLUvjUHw==
X-Proofpoint-GUID: mCYSEqY_HUQN1N_d_DocDVHxeVaAam1y
X-Authority-Analysis: v=2.4 cv=WpC+otfv c=1 sm=1 tr=0 ts=6abe293d cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=xD6p01Tg4BUkAB7hO_sA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023455_068910_62C8A365 
X-CRM114-Status: GOOD (  14.58  )
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

The existing DP PHY PLL and AUX configuration for the Glymur platform
does not fully follow the Hardware Programming Guide requirements for
DP over Type-C, which results in DP link bring-up failures.

[   38.158644] [drm:msm_dp_ctrl_link_train_1_2 [msm]] *ERROR* link
training #2 on phy 1 failed. ret=-110
[   38.160656] [drm:msm_dp_ctrl_setup_main_link [msm]] *ERROR* link
training of LTTPR(s) failed. ret=-110
[   38.167330] [drm:msm_dp_aux_isr [msm]] *ERROR* Unexpected DP AUX IRQ
0x01000000 when not busy

Update the DP PHY programming sequence and PLL-related register
settings to align with the latest HPG recommendations. With this
change, DP link training completes successfully on Glymur-based
platforms.

Fixes: d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and
settings for Glymur platforms")
Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and
settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Changes in v5:
- split two patches into more logical chunks.(Mani)
- Add proper Fixes and improve the commit message with rational for
  the change.(Mani)
- Fix the 2-lane DP that was broken in v4.(Oleg)
- Link to v4:
  https://lore.kernel.org/all/20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com/

Changes in v2:
- Use the DP-specific v8 COM status register definitions
  (DP_QSERDES_V8_COM_C_READY_STATUS and DP_QSERDES_V8_COM_CMN_STATUS)
  instead of adding new N3 USB/DP variants.(Konrad)
- Drop the qmp_v8_combo_configure_dp_mode() implementation and
  reuse the common qmp_combo_configure_dp_mode() helper, restoring
  orientation-specific DP_PHY_MODE programming (0x4c/0x5c) and addressing
  review comments regarding DP_PHY_MODE handling.
- Include phy-qcom-qmp-dp-qserdes-com-v8.h for the DP COM register
  definitions.
- Update patch author to Ritesh Kumar.(Konrad)
- Link to v1:
  https://lore.kernel.org/all/20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com/

Changes in v3:
- Split the monolithic patch into a logical 4-patch series (Dmitry):
  - Patch 1: Add DP COM v8 header and fix register layout
  - Patch 2: Update DP PHY common init tables
  - Patch 3: Update link rate specific DP PHY tables
  - Patch 4: Rework DP PHY runtime configuration
- Improved commit messages with detailed explanations for each change
- Better separation of concerns: header additions, table updates, and
  runtime logic changes are now in separate patches for easier review
- Link to v2:
  https://lore.kernel.org/all/20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com/

Changes in v4:
- Split patch 4 ("Rework DP PHY runtime configuration") into 4 separate
  patches to address review feedback (Mani)
- Add named constants QSERDES_DP_PHY_CFG1_V456 (0x0f) and
  QSERDES_DP_PHY_CFG1_V8 (0x2f) for the DP_PHY_CFG_1 magic values;
  use them via a new dp_phy_cfg1 field in qmp_phy_cfg (Mani)
- Set QSERDES_DP_PHY_CFG_1 to 0x2f on Glymur instead of 0x0f (Konrad)
- Update qmp_combo_configure_dp_mode() to ignore TypeC reverse state
  on Glymur via a new dp_mode_ignore_reverse flag in qmp_phy_cfg (Konrad)
- Fix ignored return value of cfg->configure_dp_phy() in
  qmp_combo_dp_power_on() (Konrad)
- Make AUXLESS_SETUP_CYC, AUXLESS_SILENCE_CYC and LFPS_PERIOD writes
  in qmp_v8_configure_dp_clocks() rate-dependent (Konrad)
- Remove duplicated LFPS_PERIOD write in qmp_v8_configure_dp_clocks()
  (Konrad)
- Make LN0/LN1_DRV_LVL writes swing/pre-emphasis level dependent via
  new qmp_dp_v8_ln_drv_lvl_hbr_rbr and qmp_dp_v8_ln_drv_lvl_hbr3_hbr2
  tables
- Make 2-lane drvr0_en/drvr1_en values in qmp_v8_configure_dp_phy()
  depend on the reverse state (Konrad)
- Patches 1-3 are unchanged from v3
- Link to v3:
  https://patch.msgid.link/20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com

---
Nabige Aala (1):
      phy: qualcomm: qmp-combo: Fix error propagation in qmp_combo_dp_power_on()

Ritesh Kumar (10):
      phy: qualcomm: qmp-combo: Add DP COM v8 header and fix register layout
      phy: qualcomm: qmp-combo: Update DP PHY common init tables
      phy: qualcomm: qmp-combo: Update link rate specific DP PHY tables
      phy: qualcomm: qmp-combo: Ignore Type-C orientation for Glymur DP mode
      phy: qualcomm: qmp-combo: Add hardware-specific dp_aux_cfg2 and dp_phy_cfg1 fields
      phy: qualcomm: qmp-combo: Add v8 PCS-level drive level tables for Glymur
      phy: qualcomm: qmp-combo: Extract common DP PHY init sequence
      phy: qualcomm: qmp-combo: Remove VCO_DIV programming from qmp_v8_configure_dp_clocks()
      phy: qualcomm: qmp-combo: Add per-link-rate auxless/LFPS and drive level for Glymur
      phy: qualcomm: qmp-combo: Fix Glymur v8 DP PHY init and configure sequences

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 364 +++++++++++++++++++++---------
 1 file changed, 254 insertions(+), 110 deletions(-)
---
base-commit: 6474fa070f2b8013b4b87350b775b8c3be6e8aac
change-id: 20260824-glymur-phy-v3-b67c4702dfb2

Best regards,
--  
Nabige Aala <nabige.aala@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
