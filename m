Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A179AC79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ipXrE3de2syQtpVWyIu74Q+FQDU7nBXh/aNHhR6/lDE=; b=2+hDjSxGZEG/3N
	jMfo8gKbsmuCtmUVzjmNCUxGfv9YqHNF0sbh0V55qqZYP/XpV8oPssng4TjYDRl0uSS5IlIGkAPi7
	gXYzvtysQyQcSDMpbdV5SodKY1NS5qY+6E7jilRHerbzPnh6iL0aMICJi2xVWzhGaH6K75zm/NyrP
	faF+6MdynqRv4rzrZjXR54HTT60tz+1mx5wd9B9AOUVmJZUqBGTw4kgeMA8sNSXN+a94dLs/6f2iW
	6+4fh4WNb3rT7bwgcULgR3sBcvUHkAFXiupQsljLfIVOcJT7vVxDSV15oHr5AoJypyJlUH8FlOh1u
	YaBo5eITYeTFRWU30KRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wO9-00000009DWA-3odb;
	Tue, 08 Sep 2026 14:01:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wO4-00000009DV0-3l8Z
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:01:27 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688D1lcN2412011
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:01:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=x8vtwhrNnZjX/q5gHND4bV
	myOFe89HrZHW07ov1HHOM=; b=jakpfQm8gvUBMTyWnHUo6FqWAIjOjgZzTWsQac
	VRHy76fZgzJX+6D/Nvu0dMdch6gXNu4fR66WKTjeCdEPf9eddBN0wTmFj3Fn/i0T
	EYANAeC2mgWEr7LCV+qjTF+Sw1E6dpi68k5iakDElCwxMSFgHh/1ulwSZa5OM5Ln
	mrVgb7R0I7H3VvswBBlXc4rdjyFkrffC+vnuH9sU9hlcjyVcn/DIDAnmSjpbirYS
	7Dh1LEmQMSBbAsuZ2zkZI64bNXHOFQN3J9waBifXeJn9EoO64/jy2W1dPiQmQdaI
	r0ZxttschbwIupY4CNA2fu3UaCucF3dULGWMcOaJdrpgopaQ==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjjvug8s3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:01:20 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-4a49f09233dso3031358b6e.2
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876079; x=1789480879; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=x8vtwhrNnZjX/q5gHND4bVmyOFe89HrZHW07ov1HHOM=;
        b=Ub+ewN+O1K995uBBdREjH9QKrzuzXcdbQrTwzVK/vsYD7rTUN954NvgeGTSDd98Al7
         uIScFdYT9WvwbYO1w7kVGogO8Xn+HvImRCSQ62vz2KRXeiID/YynfimtjLVsp/tolYf+
         hcxT7U2XfGuv4S0pgiJf2kHUlTNCgGSGaO0hl5ZrVmAQf5RAH5RsWrpDaJUxBtn6AMCr
         oaSSIIEblhQiB36k/LXHDB4/LGfTIKc8nrMZnqXmLvc0z9SaGkpJC6Qc3q8Ur906AkJk
         523jHRwkGxr9nCYWMiLDokabcJSHKiPHTT1CBla5SJG3NNi7yBidggg0kxXmUblLhayM
         bBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876079; x=1789480879;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=x8vtwhrNnZjX/q5gHND4bVmyOFe89HrZHW07ov1HHOM=;
        b=QfnkZ6nfPapwW4Xk/nF/bTs3exwGH9QYjExxCj/uqUTIZf9pTfsOu60WgrXfQ/qekB
         6UXowa7Xr0RJ8/T1daZ9Jz8bu9qag7DvWgSjUAwRXJSQ/jxeUOPaw8lknHtcTnHU4tqk
         UOfLDovuXqRsUf8jv1u2VYiaolrsdxhpBpNHhAhxad9SqnDfEavuedJoQ9zDVfnINy60
         rxFEmRnaFbvSAAOuWHv/SxUMDSeYeHazZPEod+o1mc8HIdNIzp9uYK943nVUZMWBUrOy
         if0jorHT+mgJMdrZ2qubxqqV4vgJuo6bGL7gzIb0t08Ay+Q3JchigvAD0wQ8p6clHu+R
         Lq8A==
X-Forwarded-Encrypted: i=1; AKwUvBzR/JTksOU86Xj5jYE/JoU669KwSRPH2nys1ZqdOhstJJ2tWSu+cN1P+e8RoVXjIivJ80FlO5B6D9c=@lists.infradead.org
X-Gm-Message-State: AFuF++k/ikcPuFo0AyZOxl6g5IgnZg7jUSFfUuzrArbHkPppfsLdhjuK
	wogqdef9HJ1DXFMbZ7MAX7ADeAb+GVP8LfNNrH/YrrSFep+Gw9rofAS6zDB8T+1lMyrgp4ldOId
	kaP7YUn7QxieQ+HlYAu/viU3BwfdeA/xMjFY6PkkaNSdkJuvyJ0WXxj6rxFaGXiRciO4J
X-Gm-Gg: AYBFou21HAkKotx2jZrPnIWu3PQnTpm5Rqar0IfIDXhy3jYHjsooupdNBExW4q6RIV8
	2j45lsxLEzDQG9AU2+D5gFA0qOi8PWWCTlvmV/6CBVYPD9Za2Q8zNulNAp8AmckP72j9TFN7Sby
	kDFPEXaKDjLmRCZ+u8jjp15/OBR9DhcA/imXcu/qflIu8sVlTgLZ8hyz/UMM5M47DRIAnWOrWxz
	HkSfYsgBvnf21fqB0mW/4Z1nhxQtxzPwjhSOGUFb1vBIKTPj09TC4w+ITEswr1+KdTjRqC+VQEx
	ev+2Tp1ZP2qeH9hlQFoUK8/0o/Ups9q/gTY2bcrbSI+t7macpMJejQFnzeoo1XEqFZ77tBHkF3L
	ATK1BZR+TyXp7ZRgrfVCh/eFLhdg=
X-Received: by 2002:a05:6820:1c82:b0:6b1:6c44:d3b1 with SMTP id 006d021491bc7-6b6fa8dca94mr15309526eaf.2.1788876077732;
        Tue, 08 Sep 2026 07:01:17 -0700 (PDT)
X-Received: by 2002:a05:6820:1c82:b0:6b1:6c44:d3b1 with SMTP id 006d021491bc7-6b6fa8dca94mr15309272eaf.2.1788876075616;
        Tue, 08 Sep 2026 07:01:15 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:15 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Subject: [PATCH v4 0/9] phy: qualcomm: qmp-combo: update DP PHY PLL
 programming on Glymur
Date: Tue, 08 Sep 2026 19:30:53 +0530
Message-Id: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABUVoGoC/2WOQQqDMBBFryJZdyRGTbSr3qO40DhqihqbqFTEu
 zdaSksLw8CHP2/eSiwahZacvZUYnJVVunchOnlENnlfI6jSZcIo4zRhEdTt0k0GhmaBOYSCCxk
 JysqqYMTdDAYr9Th41+yV7VTcUI47ZG9URncwNgbzD1ew4JsrdV/BHEAAQiYpTeOYyRgv2lr/P
 uWt1F3nu7XTGmVHbZZDfw73r2/T5MfUDYUERSjRKfOQ//Oybdue6sTIsREBAAA=
X-Change-ID: 20260824-glymur-phy-v3-b67c4702dfb2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=4385;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=t3l/DgW4/G5AtaUOpSAHHl86YPniiPlOjnFnvI5yvcc=;
 b=AKG+qcl/AgM2knFNW7t7LKcyJ+jb18/yaCmY3lSWeIW8Juw/aBKGrjqLpGq/7a5mBlUr/QcaQ
 nIueWXkCp6yCMiL89LI8OOFqUq+VLPotN9/athzaNfJmFlWV0KgtQpN
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: kv0kM_xMYefJBHqyTswOZq0dOQoHH5cV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MCBTYWx0ZWRfX9BK84seovh51
 Km7FIUUqlxMl7VeFTkzRZRNuBNyvSpDahHPuV94WUjJPOARRG+qXHmqSrLfrKhvdyn5jKEAZnz7
 h4T8O4pKyGGjUwxN1WjXwztG0bkPbxHDuRPlQnJCAXwk+s/T5TdmznlTAKfGW/l7xQiFUWC8CIm
 CLjY4+TZewmMkPR4/2d8idjpSH2FIRz0Psb48rZ1YU2Gsl2kiTuDiIqQkobtUdxnLSwtPV8hkqu
 B9IoWs5/OE4ib53y9sfwDcBu9GdA6JMVEt1UdfgTAyWLfZsOrt516z7cyrnoCfsJ2HzjBT+N+5T
 bANkzQikkR8V+XZaNzrt/wPiFkcJ/6W0vaSVPuHOWJCeIcDCvXqCn8sYIJWWJNQBPtE6Al6gMM4
 dXPq0DeA1mP9JRtmfNF05qrFER+ZmuUGiEVFY5LfIxECr/44HsVGwwAHOSzL3o4XFlfIzBZYBmE
 yoNFROw99+wFccqcQ6Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MCBTYWx0ZWRfX2qXqp+NuwskB
 xLsm/vzfjp3ze8jCRpnIcrxR6ACICOfo1/bwgPctoMSA2A+QE+oVdI6iPuCcwnnaYy0Q+eHVwd6
 0wMF4kEGQ4DmQnFAfQ7Jy7dalGyh2CA=
X-Proofpoint-ORIG-GUID: kv0kM_xMYefJBHqyTswOZq0dOQoHH5cV
X-Authority-Analysis: v=2.4 cv=X8hi7mTe c=1 sm=1 tr=0 ts=6aa01530 cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=t9hbx3YKugSYWUFxl6sA:9
 a=QEXdDO2ut3YA:10 a=TPnrazJqx2CeVZ-ItzZ-:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 impostorscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_070125_058430_B6D38AC9 
X-CRM114-Status: GOOD (  14.20  )
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
  on Glymur via a new dp_mode_ignore_reverse flag in qmp_phy_cfg
(Konrad)
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

Ritesh Kumar (8):
      phy: qualcomm: qmp-combo: Add DP COM v8 header and fix register layout
      phy: qualcomm: qmp-combo: Update DP PHY common init tables
      phy: qualcomm: qmp-combo: Update link rate specific DP PHY tables
      phy: qualcomm: qmp-combo: Add hardware-specific DP PHY config fields
      phy: qualcomm: qmp-combo: Add v8 PCS-level drive level tables for Glymur
      phy: qualcomm: qmp-combo: Extract common DP PHY init sequence
      phy: qualcomm: qmp-combo: Update qmp_v8_configure_dp_clocks() for Glymur
      phy: qualcomm: qmp-combo: Fix Glymur v8 DP PHY init and configure sequences

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 356 +++++++++++++++++++++---------
 1 file changed, 250 insertions(+), 106 deletions(-)
---
base-commit: e30626823a406725ce29bc75cb8ec467d3e1e326
change-id: 20260824-glymur-phy-v3-b67c4702dfb2

Best regards,
--  
Nabige Aala <nabige.aala@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
