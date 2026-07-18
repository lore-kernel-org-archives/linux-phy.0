Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E5EC4451B
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 09:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eRSmD0azcYn4Bm2xIeruTw0RBfg1i/D+MXvydk5kjkU=; b=rF4n35SqIQe/Pc
	8XuPvACylToe501OdvfxEeYMW+XeUg1fkI3HepaJUvxwa6Vznc3Qn6mNMETE00oQs63siwu3m+gPU
	kqI8PUpHgqg8FOox3WyuvngUaMmwedLT4RwANxhHJCLEIWXA4MeTaL2/SXezAGxneKg6vTzkoFH0g
	rIpu4XQi73SipK+akIHh9it9ZiOFEFeyIrXQ8gYiCHnZHa7R2yUmpy3TKb2y4T5b+fsACbjWvekGN
	3guFx52Q+g3EAHMZ9bB7uacbHt/7nWDYm49j3gtyKSIP7ZdUpmPPq1sX0M2t4lvuTJ0O6EfYSG9av
	WTRRLTNPkhoyanw3RlmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl1OZ-00000003xkB-3QW0;
	Sat, 18 Jul 2026 09:31:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl1OX-00000003xjV-1clT
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 09:31:42 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66I6Qoxo1015448
	for <linux-phy@lists.infradead.org>; Sat, 18 Jul 2026 09:31:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=irDEqwNAa7xuitX6XJnBw4
	IVGcq9DbcuVTAX1DMOuxw=; b=DheT2es1ue/MVx5lE9keJaeDBhNZ1a3H3hQhlc
	pxJdZ/HCn3FXSIGWHintX9IrAa8DD41u0wLUYUePx+wmiDwmBitiohKayQVzGEAG
	taWyjjqdeJbNffbOoPk3ehj8581rCtukNwfkZdTEyTstkCy5usMWoTn3M/ruYwxY
	bQ6wJUvQ3Dj2j9mWrf03nKUXbewXlMKCuhzJAHFKfGmOZ5TtuDzLT5jf6eQSyxJA
	YnvAaIXMqrRVjgs7j4ux2l+Qj1T/gj3h5gjnlrDTYgvrK+G2dmJP3J8M2/UkSsT7
	twXCNv4IEBZYzSzr0y201St5ytp6/gwukmIcq4qjUrx4601Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fg2aarfnb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Jul 2026 09:31:40 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38127ae6b99so2989466a91.1
        for <linux-phy@lists.infradead.org>; Sat, 18 Jul 2026 02:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784367099; x=1784971899; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=irDEqwNAa7xuitX6XJnBw4IVGcq9DbcuVTAX1DMOuxw=;
        b=bSRNZtsF6ge9dfMxGcyx+PHwHtCFbeSMMjtv993d271XOv2QamHM6yDPeYNnlKZBEx
         c5BKWC6m7bTgqZDYRkM+rXAhtA0CW0eWIq6XdIlmUAW23lvTNOw10+gBIxM0Jp2st6ro
         G30YH796Nm9E6IOgZ4E5Ae0eXjNc80WdkhROWDeY8feIKB/sLasDHJNVBZHljxmE6icE
         JUVNxQo8BVcGiOElk3diEsszNmtms1klrOebrujK4XV6t9MLb4xs98cVfpW8zQpEuuLv
         36r/jMrYB6mNHfoy4vBgIpY2uIQulPJgYV0JF2KaoVuwUNhSuDJft4icGacysemELR9z
         e/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784367099; x=1784971899;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=irDEqwNAa7xuitX6XJnBw4IVGcq9DbcuVTAX1DMOuxw=;
        b=RPyyFT+/f/Ub0l1WB9WwuZtI/IE5IqweMA26j6NTS0J0q5sbQ6CW8sf0OkSmGXjYzl
         i3v0CGTHWxYB3TeBM3SewKX9cgbaTRlU9hl3jZ2mhj+R2QERvkdWUM+PLJ6c4owwHySd
         8Erenl2wGKsTilVC909cgF8suxyTq7JMJcxBNRxPm2gVBSl7rb8pcjsK3/yZOasSeLG+
         ZjhkxvA4ARqelLQpVVqjaSalvckp+v3OLuy+woyj50AKxIHKgctQajXb553U3ApccF5l
         Y2EczGuPbsE8DU/SM7dUe8kZnfxrDOw67ondxa02+CQ6WPOq1ROnV4B4va9Xbp1AdVLc
         SYnw==
X-Forwarded-Encrypted: i=1; AHgh+Rpn0O15J8tUlBryrUsm6H20LR8ukUn1rBuZwMIdV13y02jc/G7iibgZPRy99CkkR1hiSkUXWzxgbNU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxphIIdMlewntT1UQW9nRDKw/FiTYgCPKABK3OjbuxHUMebFSj/
	ZgwStXWXBAhDsGK7U4SZ4AKdVIh+YXw6BrH247FcFOpCz+vJl81/T3/miNFbU2fAwn9WPPp+LvJ
	eKVkt1o+vNzrfCFlMKvFaLGIqZDV2rD47J+h6VQAsd+mBWqKkKXEwBNWrraRw7ASZ5VPP
X-Gm-Gg: AfdE7cl19c64zI3JsYnROSiJkioSXk1TO2QO3QUlVaxwg3b/f3MVTrbHudxX4dJG9G6
	W4IbqzzDelox+MhrP7I6qxg3svpOQy2jz+6twncZTH03xMZeAqBdEhCS9+6an0kUnHCk26oDO+L
	I3QRI52hR1t58onwMeKkVuGbGxcJY53drt3G9RK1AaMzHqTvS6O7bnJnClfcac9CMoaZ2VAOzBV
	wDiBSIxjARbG5vChMMeaJnEJKxGvDEWeV/YxS9JHpOu9gob8b3r/Anb8C/DFcg3+IC/WoIdt+l8
	FKFJRvDYp+gqJDlZIbioeY7JmzxJqzztXB78pk+VbxYdtKjGunNxCJyYYr3a/kwI+s2DgPEp8Ct
	fgpMfjSd3E41gzB79fD7qTUXM08v9emzsEHdFd8Ad3+G+anaG7+AItMgD1tpgHE8cTq7C8Q==
X-Received: by 2002:a17:90b:3907:b0:369:7491:7b24 with SMTP id 98e67ed59e1d1-38e3d175d1emr12033346a91.6.1784367099522;
        Sat, 18 Jul 2026 02:31:39 -0700 (PDT)
X-Received: by 2002:a17:90b:3907:b0:369:7491:7b24 with SMTP id 98e67ed59e1d1-38e3d175d1emr12033322a91.6.1784367099066;
        Sat, 18 Jul 2026 02:31:39 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13ce2cbb6e8sm11993322c88.9.2026.07.18.02.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 02:31:38 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 18 Jul 2026 15:01:31 +0530
Subject: [PATCH] phy: qcom: m31-eusb2: Fix return value of init call
MIME-Version: 1.0
Message-Id: <20260718-m31-eusb2-fix-v1-1-8588a1b94d76@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPJHW2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDc0ML3VxjQ93U0uIkI920zApdMzOz5DSLZNNEc6NkJaCegqJUoDDYvOh
 YCL+4NCkrNbkEZIhSbS0ANHg0MXEAAAA=
X-Change-ID: 20260718-m31-eusb2-fix-666cf8c5a72c
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784367095; l=1076;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=wRFmdP5HalCmUuDS2g0fTkGfPOcFATvyJ5CXT1YJN2Y=;
 b=zJ4R9oFO72vll4/JFYxNYrqMSQqgqc6xSVXQTgykjcY4nJsZCrMhFPlhs/530wDGOpZCadVr6
 r3QJkh5Tj8NAvULS4cHrpCQxBvmYoFQQ0bGh+PXmvICGCskiS4mcRI2
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-GUID: 5c2mJuwdi1_ndRyvKy12r4E8n9jan9do
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE4MDA5NSBTYWx0ZWRfX5thaTXpCokCl
 4NyjrOsBMRSeTxaB1/hgE8MIfW8tmhNqNtbE0BIbJJ8OGG6Gio8tFAokX0YkYlMaeHan9YYCfgl
 4dcdV4D94I5dWasct55PVMqWWH8i3uY=
X-Authority-Analysis: v=2.4 cv=b9aCJNGx c=1 sm=1 tr=0 ts=6a5b47fc cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=mb0alOR1HfvJBB87paAA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: 5c2mJuwdi1_ndRyvKy12r4E8n9jan9do
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE4MDA5NSBTYWx0ZWRfXxW4qH26zEGcx
 5ukiJ6/mHIwaO93l3c1XUH1mRPmkXQLRp1Ca5zpt7tEIzx+5L5UyeexruWOTAmbRP/omGkTrP8+
 xf5hOH0O41id8C9ur2/8qeBmacnA7QpaTzhEWszwNvcEXMmAZjqkdf0SZsEpiFfG2DDyzcIhF6t
 Kr7kixK67HO8CmwSLBv+vcjwbi6CiysLYoB8XeamJbmSVqiHrf/7UnG/nuYthVECp56OaKHJdqK
 VaUzozj7jy0ySxGVYrLNmTaHECrdCYT3AWeftzO1xruYfERePfOloB9uRojigv/ePVTONxUS6rD
 LoeX3ndgmsapMV/I1C3nalG5zA3ONFm0rtxsdVgFc9qb0C41Qf7i1i9lrgTo9/GvYN8skGYu0ty
 xjpC/bYss9jup4Q17tHqhHTjqHJEFU7E4m/E6e3H2Nw0nvKbXDygAF2xMEmHFF86QySiYdnXQjg
 oXktgjGXW0fLfwgxkEQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-18_02,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607180095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_023141_479817_725C614B 
X-CRM114-Status: GOOD (  12.25  )
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

The init call currently returns success irrespective of any failures
during repeater init or clock enablement. Return appropriate error value
in the init call failure path.

Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 0bec8657149c..275df38256de 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -221,7 +221,7 @@ static int m31eusb2_phy_init(struct phy *uphy)
 disable_vreg:
 	regulator_bulk_disable(M31_EUSB_NUM_VREGS, phy->vregs);
 
-	return 0;
+	return ret;
 }
 
 static int m31eusb2_phy_exit(struct phy *uphy)

---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260718-m31-eusb2-fix-666cf8c5a72c

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
