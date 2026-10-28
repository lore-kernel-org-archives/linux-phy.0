Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BCB606A323
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ln0vvjJl;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=T2Z68TzA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Pj1enx+S
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=nvKQTrTPoNdpOYysoopUog9vm7Q/x0adLS6UnTxttxI=; b=Ln0vvjJlixtqA0g1QmDkOUU8wD
	+SuBd3FRd5mfE/0NG7DCk0YS5f5pwpaw1QhoQVCmfiQpC9KyTJAxiBFkUdvAQCxpFwa0OkmORpXId
	QfT4Q/AOaUIZREDbbD4swE6pQYqz5pQBQ7Iby7VHJr9cB79TSFJC2KKO5+47l5gUwLKkyqQl8d4pd
	gyWuJkn3wxQRkFETfPt97UGbxFbDfKqCudxVUQ/eLrqu/bxeBG2/4GfemTnB6+ypQVbrSyHhGdaOT
	5zJNrcnoplEYfgqY9+0CJ7ZrqplEwNNH12GD5sWX+Glh+gst4iFANxne+yoT8JIL2MnzjXQEFbF82
	ruyFyBnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM13A-00000006lss-2IKo;
	Wed, 28 Oct 2026 10:38:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM137-00000006lsD-0WzJ
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:38:30 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8KTVr3265161
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=J2bm/qDTgSxReYWyWffqNN
	ipT6wXNIBYCGlOnXmCCs0=; b=T2Z68TzA72krlfPT0XfUS1avcntHxaGz2peDSr
	1Dw625Kvaf2KY0N4Ya4yBlQaYIH+iRwwUWsXk/7P+IiPLejLV2d4KP4+OFKdEteq
	ifD5mK/OE+/d38vpYi6aHcTyyldqkXYS9OidOe6Jecxsvuv+CKnRtTAwkNBRPGU+
	7E3aDDmN6RCfreeTrJstDMpQa6QtHSL3PHj/bZ0pQQSq3cEgf95Pcouw22zQNJ9q
	SgsNIkPx7g+4AhjHR/aCaQ0D11tEmV7xHIB3r8lmWlOqSH+2jXhp1esD2zZKMX1Q
	C/T0WnMA4DvWBHyVWgBWjMKIn3IB66+hKVaowRt33WLV/+9Q==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjy713rdw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:38:27 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1665200f4c2so1496331c88.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183907; x=1793788707; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=J2bm/qDTgSxReYWyWffqNNipT6wXNIBYCGlOnXmCCs0=;
        b=Pj1enx+SZQ2bXv5VBBRoEw4OJOcPbc9WxgbT7f6DEHEiQi8pdpXuEMjE+ADzRUTwiL
         +F1BI//f7/VEUVFN2y7TgJAqWpRgKige9SnMoneaqpqHnEz5p1gIDOs13LPM2AqTsjxV
         pPqJDq/8aS2kQsGLqsv8jlC6aZgSMMp+zZmXgnL6HGHaQ5dCdpRmJT2inddB/BkMUWu0
         l3u8/ttl7y2NxrRxxzi4FA0mccRODsxe+5Mh4fJxyv62LTbrEOuW4ossD4ql/QBGNly6
         0sgjtegucdHZYAo5vcoE78n//xjRZ1uiA1Xr3JzaWk+byPMX0ijweu6HGwzFH7k+Iewh
         0kbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183907; x=1793788707;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=J2bm/qDTgSxReYWyWffqNNipT6wXNIBYCGlOnXmCCs0=;
        b=daaSBfXO67J6Jr7lC/Y9QaWpq9Za5cvHy8hJ8YrGOMPCoCbLgAU4bEiQtxUk0B0jen
         WcCjslkYLdWmXrJB8CIUHSTsMkGW6uh+FPcrzPPA8dcSWGeFzCwO/pglqNFaoRZCGqY7
         wMcxh28FP0zeOKKJzd8zobDW9YXgFwzpy4OcimJEhXPg52bBVw2M3S+JO+LFPx8XtKrJ
         7/QOFQTK+OA3U2kEaMBTvbDn5hc79sjKxWViIpKJYVc0T19GnFcsMXl4xizKlUwlmJZW
         sQp+OakM83nalKc7kRNHxsfTSYAtNPcV51JUaIdzWbld9eLv7D1vrJtgjAeuGfRKETs2
         UUjg==
X-Forwarded-Encrypted: i=1; AKwUvBxuL5+hMyWMIIwQ8Ikx50DAPa6J1wCuHlWdCtlLKo/nHBi+sEeiUtk8gSE2FSJyLp80YqiTcbHdfRg=@lists.infradead.org
X-Gm-Message-State: AFq9FYIyasUK0MINrd6XPs2WDaTv5I3HjMfK9+mQMSp1x4h7TRGQAz2Q
	hMgDevQjOlMW7QKjdOKLe9iEsv96VbVAILvF1f09Y9nql0Nyi1VeYwFvGV+/NYmokeHKyaN/zUN
	F0ZIaSdoMdupvfNPq6JtCpoQkn54TY0+5eBpB/2YZfyxJMWbN3A6cuG5N44AihMqF7eVS
X-Gm-Gg: AYBFou1vci8cIsG6i7TX8a4Eqdmh7V2Zrkl7On6b6az7qHJPLaFMF/51Dt0ONs7IHUt
	vhRBJM1bzUSb3Ejrr1uegA64/+Xsc11NzazMOkVT17o6n2qCAM3w+sraJsf/ytDMUdBcRsACmsg
	tlMQa6uz0VQJF/haD7hP6WhknZ5NPTZhceu7Mr/rwrqJ2NYXENHalD+2lQT1UPb6+Si7hnbeP0I
	xLR3Zwt6ZsSoVh/SeFaV660RBWjdkkU1G7kBzKpVMID/6+Q8jNg44KEgpcV/+EVaGD/tFXAj/+A
	DzONJA7ZfoVR9Fqt5pikcvT2XCBejWuJ+ZptebHZkSoU3idmgjqrACc13v74JP3gPL/yEW24pnb
	ImVA2H/oUWeU+s/AOOyxCZz+7l/3E2XacVS1BROPF4k5aRZe7gr4aTSfYUi2EVY+2kAPazNZXcx
	A=
X-Received: by 2002:a05:7022:2204:b0:144:ddf7:2570 with SMTP id a92af1059eb24-1a6d00cf3e4mr3833767c88.39.1793183906781;
        Wed, 28 Oct 2026 03:38:26 -0700 (PDT)
X-Received: by 2002:a05:7022:2204:b0:144:ddf7:2570 with SMTP id a92af1059eb24-1a6d00cf3e4mr3833697c88.39.1793183906147;
        Wed, 28 Oct 2026 03:38:26 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:38:25 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Subject: [PATCH v6 00/11] phy: qualcomm: qmp-combo: update DP PHY PLL
 programming on Glymur
Date: Wed, 28 Oct 2026 16:07:56 +0530
Message-Id: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAITQ4WoC/23O3YrCMBAF4FeRXDuSJs1P92rfY/GijRMbsY2bt
 MEiffdNXBYXFYbAgck350YiBoeRfGxuJGBy0fkxB7ndENO34xHBHXImjDJJNavheF6GOcClXyB
 x6KQytaLsYDtG8p9LQOuud+9r/5vj3J3QTAUpGzb4AaY+YPtwFav+u8aPFlIFFSijG9oIwYzAT
 x/j7ntuz8YPwy4/RetdnHxY7vUTL1f/muqnpnkoaFTcYK4suXz1SuFUP5CGviB1RqxlDEUlqOD
 6DbKu6w+066Z2VgEAAA==
X-Change-ID: 20260824-glymur-phy-v3-b67c4702dfb2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=6120;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=HmDH/BkWANBmegqO8kQ9LRJWbpkyKSCUhTt+cMKlvF4=;
 b=IMbJj7kB+cQoRMNzuDUqSaD85srLMsW7ginF6ueevCn2+B7wfDW4ZaOjLiZqo7PwfdbD66AYC
 tGtwKYtO2A7DafmpwxRRruKzayb9OWmMMmvF6TeAbDn6qysgIxr19Au
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfXwC1WyqlYtNHm
 e5jhVILtSYIP/IpepiXNpPsS0WqHq5zSdc9laGeJ23mhLk8RzwZ9s9ESTzLHrTFDCF6NLx38ifT
 eKKFnGm2cqeCEuwfevai9DUqJ/qaQQSVE9eT3AyS8WgKSIgcXFymMpgpvrvzbeUnBoaBfCT+x16
 AOMwnauu8vHPUyFcbd/wYj5ZP4szuvJDXT1EPlKKDfKVDfuYfPrK4WGm/O26et2Sq+/vYUnDMfo
 7ic1r+H9XmPJlK+NcXFgitTuoRJ07uhsswI2Tx8lKraK6zXCIFS1romHtx2dP+U87CydkxSUgd2
 7opjdh1zHbcXSHxgG7wnEQD7ouJo9RWMv1l5sGFGEHiQCyuq5LqdYi8ZT4yxXTV6MNNz1yxyRl/
 dI/h43uM2DNz3/1771+06QaSLQdYcLNHWj+OQiSNS4va/ZlMNTzY5A7X/c8OhLVdi8FJQ1/52H/
 3qILuXbtuQvs/Aq+E2g==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX9puoenFdzsR8
 WewVZ6CdZDDP5xmmrFo0IRFqb5hyiNRaZCwSVK8e1xaV/fTRr65Ese1RCJ3/1ovX+kwbOmCTS/L
 vCBff1TdQnDPWPwPpe7d84OHE1oR9ZM=
X-Authority-Analysis: v=2.4 cv=JspkP84C c=1 sm=1 tr=0 ts=6ae1d0a3 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=xD6p01Tg4BUkAB7hO_sA:9
 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: LU6MA5-phqOQ5NkbobpdZtkVWcTwgEHo
X-Proofpoint-ORIG-GUID: LU6MA5-phqOQ5NkbobpdZtkVWcTwgEHo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033829_183741_39BABA4C 
X-CRM114-Status: GOOD (  15.39  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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

Changes in v5:
- split two patches into more logical chunks.(Mani)
- Add proper Fixes and improve the commit message with rational for
  the change.(Mani)
- Fix the 2-lane DP that was broken in v4.(Oleg)
- Link to v4:
  https://lore.kernel.org/all/20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com/

Changes in v6:
- Drop inline unncessary comments (konrad)
- Fix QSERDES_V8_LALB_CLKBUF_ENABLE value for dp_tx lane from 0x87 to
  0x8f in qmp_v8_configure_dp_phy(). (Konrad)
- Simplify qmp_v8_configure_dp_phy() poll sequence: drop the redundant
  intermediate error check and the second readl_poll_timeout() on
  QPHY_COM_CMN_STATUS; return the single poll result directly. (konrad)
- Replace mutex_lock/unlock pair in qmp_combo_dp_power_on() with
  guard(mutex) and drop the goto out_unlock label; use early return on
  configure_dp_phy() failure instead. (Konrad)
- Link to v5: https://lore.kernel.org/all/20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com/

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

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 352 ++++++++++++++++++++----------
 1 file changed, 241 insertions(+), 111 deletions(-)
---
base-commit: 20a33c6b6cbe7e4805dfb6cd68816937443aa148
change-id: 20260824-glymur-phy-v3-b67c4702dfb2

Best regards,
--  
Nabige Aala <nabige.aala@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
