Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C699FFF8850
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 06:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lggm7OZBNldkAsVmjGTQc7OfaUXmzlQY0Off4WrSAYc=; b=uTMBsoP+67j+i0
	sNzNeQXrfJ6YjieYKXbXgELkYOQysdR94MQl6iynzDGnrbQWfmZpgJtfEx2TxiwB6kR7Y83mI3hfo
	2TkYIgw0yg/Nrkg1HwM6bEXoY7R5KQMmn2PrCly7onrPyeHrK97jpq9jA+BE8Dntb/Hx1kHz4ztYc
	5FNqMSSAOJFlt++5BGJ8ogxBBo/wfPA+NexxuI9yhl+u90mPt0WBZ+7mmJnIk5lEiTz0VNgF7qCGL
	cWADZdiUKfWvZgH+6jcdHysuqDVSTJQkfgi/DsBC2I/jm1ld7HVEZtK1hqhhJvqYQJU2alRLOWHXj
	EDX36K6ad+4sTb6VZOaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZ6-0000000GH0n-2NQr;
	Mon, 27 Apr 2026 06:35:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZ3-0000000GH0P-1Azv
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 06:35:30 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63QGdHjX2878398
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=3Z+8TK87GHCr3otUSfoktY
	j0HVRbiKfDKrZ+2O6XNvM=; b=nSqI36Cv+nmEWB9LFE/ynWA+HIOO3Umu2ghwmW
	oIoz5aYJZdhXgWEP/cVUt2I7v9jBGO5gh5ABVWo+p5MsmRlNFZ5xrwAUQK+ilQI1
	V9E/91ppgT+GDJUjQYK8dRBefGt6H6Pbbpnc7ifhkdb+Yv/AHFy6ofrnMd3/NDGw
	WL41oiRKyRkQjOz7WQt89zfswX4AKv/unMLto8Nw/Xp6SHGagaZUQCwEvl2EF7qg
	BEwgT3zsgop4LY+KhcwBMCuBL4HdBrEHgB/C4jt34qt6qpJfvAIIKQ4m7nGobEBw
	FBrq4K4setR6Wte21VDGw0R1Y10vDpoGhxlu1r56HBjmu8FA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drpcdmp7v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:28 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8a0b5478a12so105647066d6.0
        for <linux-phy@lists.infradead.org>; Sun, 26 Apr 2026 23:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777271727; x=1777876527; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Z+8TK87GHCr3otUSfoktYj0HVRbiKfDKrZ+2O6XNvM=;
        b=ho24xvlvmRLaxZ3c6ZtX4D7rGnMluuqmWLx8Q3HSdjvfsQf7z2lUjENGBPhLbIqkOQ
         lWDG9d7ebctQ5mSVVsrxKJq77zt59q3k/4KTSqcP42MtT/2YSZI4kSDs6sCM/sk4z+oL
         SaxD5IrJ2jfUmt+JR2arQ/fK/GsB2ST9IZdnAWjCU2RCAZyRsCnErV8hZAtJ2tMQJYk7
         7yQG7cjyKai0Os+/0CkUxBxr3K2GeOxA3rnHl5n8RV1edWe73ICsv4j8c4h/Ge+1xrYU
         IX6lnhnu7wN4TPBsKLqSjTmXdXPxwAHeh5E9tllCsPwOMJzJiytyGAgFjKoF3O69QQtd
         oOKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777271727; x=1777876527;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Z+8TK87GHCr3otUSfoktYj0HVRbiKfDKrZ+2O6XNvM=;
        b=mby+7sUGUePafAayOVdzraXcVZhrp/HZv94LbA4oNuZbdlMOt2k4ugWwYbcEpD6wLt
         mb6dVJLeI5iUvbysLo5uxjUa7qfTARh4S9zOH+aEO8N4Z2MFw4dntEjtHyLWtvA/t0ms
         0t1OLmroIhC1FsJQqyj09WTZxKll7DddGHW1Ji7N/RvHNU9gkDa5YIuTcoY6d0Im/h06
         mS5GsGcxm7X3gK/o6cA0/DSvOIED2MUTdmEn/4uXFaWZwFlF8XKqMBfJQ0EZK1/DaZv/
         4jtMelfyu6h/6K4XdfyQflm8YQbaFFFV7X72ud8tuNMfyyNy6Wl/UFxULqWxWTOTh8l+
         b7Pw==
X-Forwarded-Encrypted: i=1; AFNElJ/EeqUvxD0fpU8cA2So1UN9iw+YwLeOUGwuh8LL6UCM8NEE9K5z22BpPMqlT5Me3zJl13SW6G29cwY=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywazq4v3fwFfCCVo6ttGPiL/sqGiYK+SJF2cYpSx5wrLe5a96U8
	5isCLPQia3/LwvAQZ366PLkwzkZFwBOObbfEOgIp8hZgqOpZR3hfV3i4iErmqrz4B22EOdh8/p2
	NhiAwabslT4Rgmof+gfD4v5+0pRbua65aPCZLd79dgDbASU3Lb09Td32yhGR+gcAR4ZJg
X-Gm-Gg: AeBDies7Gx3QwljgsWN2mWP7vNV6fFAWU02v73X39c9N+E5BGFfTih/73ApVYpsAGtY
	FaUTeyOA5qmUVnCNIQCZ9164sEQ8HI6QELBqNPf1QPXP9VerbQ+94y2Ti+ZUlpTtpCUe5GT3u2p
	BEg9q68mJosFsRcqC3GGfvjckEmnTeURnEBaAryutAaSUYcjn2JSkSBXHURt+jaz2FNq5mW6Ja3
	tlWS9lQDRNYufSbMxRK4hYyWFbW6iLQTZ4B+aGgu715hUkWHiPPFg3bd53QKpY9Y2kYw/gruMSL
	fIyxrymSR0EyC14SRCK0+sieLPbtwQudKO1cpOlRE63IIr0EeUC8SXqsXi+w5VPVAgaCUGYtsix
	I1Y3b2kTHwkmKGMc+evqPBTcN6o+YrmfqY930i9HeEnisxoHx4M4Lb5msJ4jqH2W1ZYQAfuESNM
	vDbmXcavpBEj4wWhGfsw==
X-Received: by 2002:a05:6214:29e1:b0:8ac:adca:231f with SMTP id 6a1803df08f44-8b0286918e2mr566947726d6.14.1777271727496;
        Sun, 26 Apr 2026 23:35:27 -0700 (PDT)
X-Received: by 2002:a05:6214:29e1:b0:8ac:adca:231f with SMTP id 6a1803df08f44-8b0286918e2mr566947356d6.14.1777271727012;
        Sun, 26 Apr 2026 23:35:27 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ac7d4e6sm251899256d6.20.2026.04.26.23.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 23:35:26 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH v5 0/5] phy: qcom: edp: Add DP/eDP switch for phys
Date: Mon, 27 Apr 2026 14:35:18 +0800
Message-Id: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKYD72kC/3WO3WrDMAxGXyX4ei6y5dZOr/oeYwz/yIthbVI7D
 Ssl7z4nvchgmy4En9A50oMVyokKOzYPlmlKJfWXGvYvDfOdvXwQT6FmJkEeQMKeUxjeh+7OBXm
 LFEArD6xuD5li+lpNr2/PnOl6q8LxOWTOFuK+P5/TeGwc0YEsgldGG0PCoDIIbTStoGBsdFFrk
 NazxdWlMvb5vj45iVX2659JcOAShTHSuYhRnPpSdteb/VxO7mpbVRNuOILccKy4t6ZW0C06+Ad
 XG67kD1wtOBpHUQaQ2v2Bz/P8DSCO5WxvAQAA
X-Change-ID: 20260205-edp_phy-1eca3ed074c0
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777271722; l=2308;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=QStrsG5uTXq5Jp0o7MBHvU1XARjX1OyY/C+EwXYD4pg=;
 b=zgyGuvhWR6ZgTstYfnwyE1cd3qzyUu5zdRlWplmRkg6SigHJ2NpKoicLmjzdU1ur1ukphJE8+
 c6BMM9MixvmDdX1BAlXoUw3QiVNZQAkb2y5v11kENH1YOXd7Z9hpGQl
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDA2OCBTYWx0ZWRfX72t8HHEe43pQ
 s73Mr/rngOYBbkD/aKjuSg53nnC60M316IuJO3cDRiPuZ09QYphc03cmG33vVd+xgCll2SGHITT
 J87KWHBN1+0x8loMS+DctuIzzgUs7KUQVEoHaj0qAEG1BvdSC7C8DPwdBQfJYOMr8v7cejIJRvu
 WUrs6Mde0dJrDQmYfQvZ1g/dGcF8XMGqSDNEerFCmTdYiz1IT8+2gTPXkhGm1H/e1M2+P0BDlZ5
 FKZlujx5DjJqNpjjCGVt30+OAlObVZbsyvyAJ3FOmZOqK6sLxX2DrHbGo2ERzyhXAYWhtQ8J7OL
 m6HuAdZHtU/ULRz0eLIVUAfB/2IM2bA3UXJ+4yZAaP5hl7h/lueUSaui2iGJmZUNdHLlYV3rWVS
 +SnQTod9FmgB08AQrGkNP5aZ6jdZlMf6QHcb8dJrD4QijE0SFrgyxtxt/oiYpm7YQt2Y7RG/4iZ
 SnW3JYK0S0vxJ2AHk0Q==
X-Authority-Analysis: v=2.4 cv=N5IZ0W9B c=1 sm=1 tr=0 ts=69ef03b0 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=VlNtBrZHsXuFd6lxwUsA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: zxw6zCRoI3NSsnw_6RaMTcyjCd1q9rEv
X-Proofpoint-GUID: zxw6zCRoI3NSsnw_6RaMTcyjCd1q9rEv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_233529_364580_58844E67 
X-CRM114-Status: GOOD (  12.55  )
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

Note: x1e80100/sa8775p/sc7280/SC8280XP have been tested, while
glymur/sc8180x have not been tested.

[1] https://lore.kernel.org/all/20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com/

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
Changes in v5:
- Correct the incorrect swing/pre-emphasis table used on SC8180x.[Konard][Dmitry]
- Fix the commit message and add the missing Fixes tag.[Dmitry]
- Reuse the HBR3 table for the RBR case on SC8180x.[Konard]
- Link to v4: https://lore.kernel.org/r/20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com

Changes in v4:
- Splite changes.[Dmitry]
- Add sc8180x tables in a single chagne.[Dmitry][Konrad]
- Link to v3: https://lore.kernel.org/r/20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com

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
Yongxing Mou (5):
      phy: qcom: edp: Unify generic DP/eDP swing and pre-emphasis tables
      phy: qcom: edp: Add eDP/DP mode switch support
      phy: qcom: edp: Add SC7280/SC8180X swing/pre-emphasis tables
      phy: qcom: edp: Fix AUX_CFG8 programming for DP mode
      phy: qcom: edp: Add PHY-specific LDO config for eDP low vdiff

 drivers/phy/qualcomm/phy-qcom-edp.c | 224 +++++++++++++++++++++++++++++-------
 1 file changed, 181 insertions(+), 43 deletions(-)
---
base-commit: bee6ea30c48788e18348309f891ed8afbf7702ac
change-id: 20260205-edp_phy-1eca3ed074c0

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
