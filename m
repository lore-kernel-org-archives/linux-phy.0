Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627D3606A326
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hnDP7VAz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=frZqjEp4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=foOULRtf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=43f61KNHnllsbjhxfzjhUVmJWTwk7ByfN8Q7/it8IX8=; b=hnDP7VAzugsgqdfsaGuYMZcoY0
	JkZB8zRayYeOVNIKHCAieHvcHtAbB60hXe6S9rKaz3C0NykAyMsM43QFBTb4o98RVB/RQfw5LjIqD
	oVNhpiUEXwwIf8V3J+l47NZv3cW7jVMT2n562bk1+8rFj0Z9krpwe6aY+Sj3xHc8gdY/0id7y2aqc
	BjPxviDIU3fVkivfuZqRRCprGpWXA29JPw7Q5ngbFz2pUqkk/egam3lTq4r6tyzTEt8BVuZHQtc0C
	e63dyZ8XNg7INdeCoyTnUpgEfLZ5tNZjUOzXCFBG7rgvIMCw2kkWrAVbnr98Wgzzll99mAx+o6L1r
	XfPAoA4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5SZ-00000007Kp7-0UZt;
	Wed, 28 Oct 2026 15:21:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5SV-00000007Knc-29T5
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:01 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFAFC52001768
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:20:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=; b=frZqjEp4NEENUooy
	1g+pjXLqfB2QN3+cDH8jhNNM/JBBpwf9HILIwtLEOrbJxLT0DLqQDTAhMeh3tc9X
	CdPPeMRqsDDGzNXip6jfyxO/g7EcjpVO5VxbKjz+63VRh2llthuBoTuwdHQbOq6A
	DlJbKBdBXZXM68xAmB7vEgJ1A12Kg5FUWIgLek1vVzmh7wdBw2C/6VDI6oWesDpX
	KdqLsyKoKe3E8ZNvJx9GF0jLZUNJ3RwlBUcIGB55p/XsX12orokR5lpzuty3vsmt
	OAJvt+ST/tkZuYjxvbHV6bylXAt0SVYY1K2B3mIpQhh9fvBQwLVUrMBweAZ4+3x6
	T0SLkQ==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdf7sm2h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:20:58 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-679a3664e1fso1807406d50.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200858; x=1793805658; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=;
        b=foOULRtftKtlMCxWN9hAhp7Y5eq8tAa2aegmUDdLDM+JRqokvzWn2ufopJQwkWm+Y7
         yQtI5i1P1q+M4ENiPu0gk364dJh7FDRaMeGDBUQTDX3WVpmSUgZvlMTzjdxRtfgVCkuo
         CwLK7qHJDNuKRP/a6gdihiix4U2XvRdU+LUMGlZa1pF9graF1wFuEo0p0gsbeM/KFFXg
         Xk50hFGOGbsjFkeaw5oh9qzb4ueHp3LSWWcpNY2NGdeY69A4aQvzNbLcoFiRARPPTdV0
         AgsJwC7aOqFXqlyDsz11iLtF3l2GvzZmPW3n5BuksxX4lAhQQSnhgVeTmHAc6ICmHgph
         sTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200858; x=1793805658;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ef+Na+GsihrxdoSAJed3PDwEa1uv3hQJy1tnM3Tzqs4=;
        b=G4CAeRRKQx9mED2aQN/FeGhdyiYoSh5gvKlRiyyOtXgMVxO709bi/44UDLalIWtT3z
         RPmnWF4VOBWd5ciCgS0CMa3CEROXYhR2fvK1b7ztGxNSpBy2VqO8dA9ZPY8/XvE87MtM
         kaT/tCs5IxsjXtfw1QWBfDgk/TH80JcRjZWKJs5tS2oCQjNrjtBajsacjLxZm4iJnsD4
         2cOQtjumuRgEIPo1ufdp7FE5ziqnXNgsxy9je3mcmTLCmmOGU7hpB+Dt0cDHEdNYt5PW
         gjaDMgeyVRb4XfA7ZgC0kPjFsDyEtZFXwcQImcCSH6dUkDwRfgwG50hAM/UQdMahZqa9
         MwDg==
X-Gm-Message-State: AFq9FYJ9MUB579/m/RKoOcunkYS7Z9SfIT3UBYceXPg42Mz32LGj7QLj
	47chyyfJ7OQZcxq1nXOoPFjvkY0ddyDi45i2Qo6331fjB+SO0tFvHOjWFifvNnuWdSzsusia6Dj
	pK9wA5FXmWMCnDIpTZY2Fkvi9lpU+MovYBN3PiP02tWBmAiwrHrqQFUlDCxw2KcbE0FLv
X-Gm-Gg: AYBFou196rxHB5roSIlM434Nb7+5q++RoYYJGIxID9EbfBGlCyvjpLx+HZkLi6AuyYv
	gTqV4UvbCGEWKype+CrFDQlSGTWl6qz2PtK4XKdWgs5juG64/Cs0Di/KCfQCNkCK5kLaOKvZ3Hr
	a+Y8XmqVTQ/Ycr5Yt+33a5XbJb/4ICzTsTwS+qm25LcoXDkSrXCU4vaeh3eFmDbyGw7NxfFdQxM
	RmCUFPs2Kbmf73Zs2BA45IFk6g6XNCXPzX7D2hBebb/bp7pX49+ClchBaCK8Ax8sHfSdq85krh7
	1TjxAisqH9S1ylQLcipClGnrI5pIAyPOvfl1mlrKqPktusLJpte1kmltZHXJ+IUXtOO8WzkT/+v
	x4iS8MhpXaB5OVM4AQ4piVi6wBOh7YupDqdE9DemfCmF4WgIngq9SZyINNNbkcnzbIprvXKWVDp
	9LYadYNWtP5+ZQ6eHGeWYXaU3A1zv9b/l8qU7sI8ip07FGDoTZA3Pvq8HjJsZe
X-Received: by 2002:a05:690e:454d:10b0:679:b87d:6f7b with SMTP id 956f58d0204a3-67a7bc6349fmr1631288d50.42.1793200857437;
        Wed, 28 Oct 2026 08:20:57 -0700 (PDT)
X-Received: by 2002:a05:690e:454d:10b0:679:b87d:6f7b with SMTP id 956f58d0204a3-67a7bc6349fmr1631268d50.42.1793200856951;
        Wed, 28 Oct 2026 08:20:56 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:20:56 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:36 -0700
Subject: [PATCH v23 02/15] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-2-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Authority-Analysis: v=2.4 cv=M4bYuCws c=1 sm=1 tr=0 ts=6ae212da cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=P6Xs4Y00w1yHQXPR5eoA:9 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-GUID: 3OPiqqWOpVzDjr-jMxhcNbLQ-UlgPEtl
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXy2W9YPui/zSH
 bvoqiDo1hKCiAjsOVeE+I7VByBt87EW8HNXXQBCyTLy3ptafAi+DaldCimy7sBqaU8iDZVlxz2l
 fnvq4kbCQAyW2cdqfBx09SV+L+VhNI4=
X-Proofpoint-ORIG-GUID: 3OPiqqWOpVzDjr-jMxhcNbLQ-UlgPEtl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX0SF0K2JIGCJr
 UlzqO9x5DfsaJzW1b9mTGVcblixpHqh+aIRg/DwrQmVJKZCeKRfp7I1tslGoH17aZerc9yDtV+O
 ZN0+y8YT/B2nnjkeHuVxjCPR92fqCGAbTEVETUISRuQKJTA7opXKyfCjI3IsoKs5LF42R1J1h5S
 cIstEpE8vY96PbUOhmzMJxMRMKOKU3RoefY7HR89RqIBGtXqHSr2Olcf6KI9EbojaOz5hLkpVJ/
 hv8yUMeJHuYMGCDLQf18nOjhUFhsEIjNrZADDCCavIkSUHeNGCPnRyZ6zU6POW+1NoTUk9YRZJI
 0yIsVyU8VjR6MoPMq22VpgNAiV8cZgiXPiSEC/40sWlAOMxkZuZQujkH4cDJ6bzOShj6ZtDX6DR
 NLPZtwR/11Xd9HTdxGTNISEz9cfYWr24pK71zqS9+PyXquAbgxCnFrh+1r1SUbTV2WTAAMJejZc
 3s8XJDlZjhDjj0m6f9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082100_122636_65F40015 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -1.5 (-)
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

The CSI2 PHY common status registers are not at a fixed offset from the
common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
v2.4.0 parts differ.

Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
no-functional-change preparation for describing other SoC offsets.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 +++++++++++-----
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98f9b..8cd331cfb4b3 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -19,7 +19,8 @@
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL10_IRQ_CLEAR_CMD	BIT(0)
-#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, common_status_offset, n) \
+	((offset) + (common_status_offset) + 0x4 * (n))
 
 #define CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(n)		((0x200 * (n)) + 0x24)
 
@@ -176,19 +177,23 @@ static void phy_qcom_mipi_csi2_hw_version_read(struct mipi_csi2phy_device *csi2p
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 6));
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 12));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 12));
 	csi2phy->hw_version = tmp;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 13));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 13));
 	csi2phy->hw_version |= (tmp << 8) & 0xFF00;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 14));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 14));
 	csi2phy->hw_version |= (tmp << 16) & 0xFF0000;
 
 	tmp = readl_relaxed(csi2phy->base +
-			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset, 15));
+			    CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->common_regs_offset,
+							      regs->common_status_offset, 15));
 	csi2phy->hw_version |= (tmp << 24) & 0xFF000000;
 
 	dev_dbg_once(csi2phy->dev, "CSIPHY 3PH HW Version = 0x%08x\n", csi2phy->hw_version);
@@ -375,6 +380,7 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 		.init_seq = lane_regs_x1e80100,
 		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
 		.common_regs_offset = 0x1000,
+		.common_status_offset = 0xb0,
 	},
 	.supply_names = (const char **)x1e_supplies,
 	.num_supplies = ARRAY_SIZE(x1e_supplies),
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007370..d6366f809e51 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -51,6 +51,7 @@ struct mipi_csi2phy_device_regs {
 	const struct mipi_csi2phy_lane_regs *init_seq;
 	const int lane_array_size;
 	const u32 common_regs_offset;
+	const u32 common_status_offset;
 };
 
 struct mipi_csi2_genpd {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
