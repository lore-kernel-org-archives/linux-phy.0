Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C850E9129A
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 09:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=taXqVVADGbl3h44kQv7n9NLC0N5q1T5o5bL23klHSXk=; b=h/nf+XPJ5FhtI1
	dFjHFOdK0SaAcb2LhlXvwb2uMbu0GDEP9nTZYcISxHcEYPiJPdp1uEI0/rkotKlqhIJlwAMTS4ul5
	i7FFZsN/zf3A3+GqUWVn/+Gf6KlV9+nUWhEitSrKbpngrwcxcml9s45bpDYJywC2SCoGDYpn3SFv4
	8Ih4nnDBgRG9qhcOrjkLWHV/aEevLNqPOD9Kwju29lD2DhduvfGDhOAZP8yKmCXOzRwCfnKlL7gh9
	QOjRvHzSMuAWII6Lc1PtnVJU3LrNmLpHH9X1T2YKa7Vv4wF0rRth4f0yLsDd85z+2rkYnxP5iiwK5
	ZQuTw6ugzWyicXwM4WXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnvXy-00000009gsi-3UEK;
	Thu, 05 Feb 2026 09:21:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnvXw-00000009grn-29Fu
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 09:21:10 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153djBj3237394
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 09:21:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=1tM1o1A2UK19+9JpxFn7xu
	q4+YgsH22MM9B77HjwXX0=; b=mH7Cnn7crDAE1O6nnOLI57Gt/7sk5blYH8hmln
	yKmfjbSHxfwtMshlYLYR0sSjsOs2scKMbXuonC/X+nnvkR2v45/ar2+PhctNgeLZ
	egkB+g1MC1AypSLN8Hif1ZL1KyV4HYMAh7qGKoF6tQXhOtZDuRKiz+bm61eP7zZ/
	q+4NJCSi1ZMS93rPfJ2QLO0Ui8xc0Ji5Tln9QxgMn5fSixcBX0g/23gSBwNiSXTH
	yDspBOTCv92EyX3yTSzsjkJlcuUlB0kTPRsPKzcMSlGZER3P2DRkcleI59M9rJR6
	d6pEJehbCxQ0rVvHoOsPlbJ8AY5O3rVZMDJGCm9cI6TLoQFA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4cp5212e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 09:21:06 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6cfd52556so250383185a.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 01:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770283265; x=1770888065; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1tM1o1A2UK19+9JpxFn7xuq4+YgsH22MM9B77HjwXX0=;
        b=XqWMea+ZroN1i/LsfFVbKAM0zC++YI+GbxD1jx6vH08iKeyEJamaLpxzDtrN8aypt7
         Ka5uDnd/PxsXUpUp6psPD9QvjONMOz4QKn2xIA+SXVKyTyFfhlJDkk5g0AGslzPSS9h9
         kwMczMUsJLQafNT8rezk79bl3wHH4Vpndu8k9s0a9soclX27i3cgpw9wupCkhmR4p4OK
         7nteBjnUpfGMUDQMaRJm4xYvVztgs6UsPWv9UazTiHYJ+gbmD84kxbEAxyzk4moyCaN8
         V/xJ2zaW+rNZYUHlqrotRWzRJx2wJ1Y4ND/TChi2zf2PSsyPLBA9f0N6X8yRjGO5gj8n
         eypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770283265; x=1770888065;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1tM1o1A2UK19+9JpxFn7xuq4+YgsH22MM9B77HjwXX0=;
        b=JJp4riLzoaztXTxVGHKwHcDGVAfor9JHfcIcs6e4ovTKk6FHJf6wQfmhXl4rqPkHD+
         +5iF6ds+2H/6/jPB9mXfnA8p3wHnjCzINx8gNsVuIQtfhWgJjqvAGrJuabuFeMWHNi7D
         qs/mx0xH9udOgvl5jXhIPDQOXsCbKYRFjEzDtiXMyQuCFA1/69YohuWQIwwPjSnZHjF5
         yEHGvphQ7n3w6aPO5r48l0NQ8dHh6XPOf3x4FCXidSiYfxPax54AadEAi9kfrzM0BKg8
         CVdYII8eQqCr0tSXlwkoAI+Bgkv/fjy+2vGN15z3K19FLMXxG5boivgPflKKzxApFNtF
         Hpow==
X-Forwarded-Encrypted: i=1; AJvYcCV5Rcy3AZYA3O8MSmoNS+DfGzOunwDOoNf8gn/gkFKfLM42qo0Uy7CqCaGz2w8/0myXjybuAl4XVjg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3beQnHfZRxwBpmSTnb9ouAPp7IXRJXHX2NDdD3xcs8B1i6+SV
	/OtqzmulI7/HYF8Loj+A6rbwepaJMR/bELQv7FO2XdAVUam5gqtS1hT+t0nNLfkPRoOt/bGY3a+
	23i5Hnrzq4Oy+sNWqwYkFt+xYuSdLHjWM3gpHs6L0xiFU+Vh6jmfMni3pVAQDIO4NcmZ8ReXfv+
	GN
X-Gm-Gg: AZuq6aK8w7e8pV/MUG6bBY+EIN/TCNTJlHU2b+rJ4aKqjD8O3j6cnxjTVMdKtDpu66I
	SbrIiJAPXpHB4fHwSu4qLgb3MjXzPq+62o2U5fX0IDlsZASOuJvogLF6PAKZ9andA4s2MqfsJoO
	4QqnzrR7uy+EQYTTyZAgWLUVzF0OpTJM/tiTtmt5JDo8e+1HQRUnGXGbMO0jckVDb2gi4lGd9v6
	I+Vsrgr/JlOcVuZ79aWZMYBK3cGfjR88z5cChMwRG/i808SamLnfyZzYOtcWBeZ22z5QjhA94bJ
	kEdyLTRH7fbzzB5NWoeiu7WSJR2A3bZtb5CXe8mPXL0d4ENlqGviS0EToFPVP9g/WfKtKxRIngn
	hg2X1CUtAOZC5LmeSeFOYagoFK1GmTIgb0+2LQG1oaZEj+KP89naz2lEdzOrft4QalmD50EM=
X-Received: by 2002:a05:620a:4448:b0:8c7:1181:779f with SMTP id af79cd13be357-8ca40c4b43bmr273265385a.35.1770283265146;
        Thu, 05 Feb 2026 01:21:05 -0800 (PST)
X-Received: by 2002:a05:620a:4448:b0:8c7:1181:779f with SMTP id af79cd13be357-8ca40c4b43bmr273263585a.35.1770283264731;
        Thu, 05 Feb 2026 01:21:04 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ca2fd2c3easm353674885a.32.2026.02.05.01.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 01:21:04 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: [PATCH 0/3] phy: qcom: edp: Add DP/eDP switch for phys
Date: Thu, 05 Feb 2026 17:20:52 +0800
Message-Id: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPRghGkC/yXMywqDMBCF4VeRWTcwMYmir1KkxJmxZuGliZYW8
 d0b6vI7HP4DksQgCdrigCjvkMIyZ+hbATT6+SkqcDaUWFZYolPC62Mdv0oLeSOMtSWE/F6jDOH
 zL927y1Feew5u1wi9T6JomaawtcVAVhpNlWkI/dAYrgwZdj2hiHVOO+baofXQnecPciTKv6UAA
 AA=
X-Change-ID: 20260205-edp_phy-1eca3ed074c0
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770283262; l=1226;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=BAGNHV5HIzxi7nY+JZgjxfOW0BYdFJuFGDt/iD7FpYo=;
 b=3kjemvmqUlE9LbxjoBd4T7O75tGCggnRDPRO6csNoYeMbeoqbYj6bhpUDQFnWxpGI25/UcdGy
 9KHvurf5/MaAxPZXUqIEb/MY0QX10U4CiuNsIdWmTqobpQo7+rA+a9S
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=Oc2VzxTY c=1 sm=1 tr=0 ts=69846102 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=M-2OMZX0rM6BGFiE4MwA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 32b3Fv8h5_TtbxiIbklLv0cgH2OkDHIT
X-Proofpoint-GUID: 32b3Fv8h5_TtbxiIbklLv0cgH2OkDHIT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2NyBTYWx0ZWRfX7y4n6FMDYr2v
 rIVp6PLJJhd622Bqtxs5Le+qgHzYm9Qs4CnqAcpWfUR/shNTjL7iqvkU73SqPb8NlZvXDRto/n+
 WrpzDlV9vEbOuohCoHopjJ5NHgmJxrYFhJBr6SLyCRpB3Lw8GUVjQ4oKs0QN4iMCcD21CvECk8T
 i3tPt/WUKbjiByl9HbUQ7SZcfgS7qBZ/fPRckH1krNwBAPa8SdRE4jmtVbbb2RQ89ADJINu59ri
 5nZfy5clsLrKLpuvjglxBn78DFmfbeTOIxN8gZa4MW4zlM7qwjbAb7uP0cH257GgimJowAmrAkZ
 c7Pb81LD03QH70m51fRsmAgWxWWceRsZb2wtsy1JIc5L2d6gceoqKCc0Tpxk6/ppbxwml+0QSw6
 NKrjm4zorUznyG7guOsvS92ZpCYs1blHOQxgTTRaZfL53fhiqEEDESBkeASL4/2bOOpdcIMSvJL
 6Q2390FbtcpKvxPd3bg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_012108_590480_88F0FB2B 
X-CRM114-Status: UNSURE (   9.00  )
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
Yongxing Mou (3):
      phy: qcom: edp: Correct and clean up eDP/DP combo PHY configuration values
      phy: qcom: edp: Add per-version LDO configuration callback
      phy: qcom: edp: Add eDP phy mode switch support

 drivers/phy/qualcomm/phy-qcom-edp.c | 191 ++++++++++++++++++++++++++----------
 1 file changed, 138 insertions(+), 53 deletions(-)
---
base-commit: fc4e91c639c0af93d63c3d5bc0ee45515dd7504a
change-id: 20260205-edp_phy-1eca3ed074c0

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
