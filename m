Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E637A60707AF
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 08:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PbVvRWzF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=N3heHwb0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=orqG9Kdh;
	dkim=neutral header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=FRu/l8Ub
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=b655srw1A4qV06sQf343S8CnT3lB78kGnGH6BHjUU6U=; b=PbVvRWzFbnZGxYMOeL1arY2jqo
	DGdTeCP38C0e0tJlskVwCSv76WqVpF5jk4M/KjE+B5XzBzTAFoKV4w3f2NjCnF3JEGenlShAKT9D9
	6jNPUdhn/7a4vfQCkjm3l/dOLEyFaMZYQt7cMTgePhuAjDuIiUOhDOX3XOSnFczuO4/zDOg9fy23O
	YYXNRzuX9T11zx9MOkOCBxaTDwn1F89w8yfPJ3t0PKlCEkGW4HZ2OWHRTmiv7MHzx0KgdmRcrkw20
	zt2KR84E127R/r3CT7vttB1JaPeL5PF3ytHEjrkbRcRKJansEGtZ36w6hl7BmwJQyo4awSo2816OG
	JxKl6fhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQNk-00000009CXB-2yfI;
	Thu, 12 Nov 2026 08:42:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQJJ-00000009ANb-214O
	for linux-phy@bombadil.infradead.org;
	Thu, 12 Nov 2026 08:37:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:In-Reply-To:References;
	bh=s5cKFc01sUo7AIsK7qLrqSCayN1KrsD+idNIcq4Lk6c=; b=N3heHwb0gwlo01z/Zzv95EqTsc
	l8UX2sipeKzZXryeGF2oxMPqxzZUFVbRxHMoaOjFe8CqqhBk07juwso/x4NtJEFS3NBerheG5puSO
	aKJN31BoPlRJwwP6Tvtu8GZu+xtqzfV+MokjQtHyCYhZ8dEs8SBPqz/R84RVBAjrJ7NrdihAYzJhF
	mJdNQAHGldGRJq8MlQqfQ1GHV5Of81gVOg6hZifTbiu4PHtfErHtOJ7ifUGuib3Cf5cwNbGvqquJ/
	57MtnjdgRQa6UAtces4qa/fInWMhtET1DBf6pShPfBWHgp6PLX/PbIYwv8U3hAfdOjXEOSi2ho1UM
	jVG/EnnA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQJE-0000000A45w-3qC0
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 08:37:32 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AC2aV5L1475380
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 08:37:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=s5cKFc01sUo7AIsK7qLrqS
	CayN1KrsD+idNIcq4Lk6c=; b=orqG9Kdh/tdqL4fz7sOYHAtrn0k/aWng3KKYcW
	yeRLNlj2ZIMXbyHNDxvf+QWdUG5AYsM6UeqXJhPSlzXz1Q0x4hnBYy0DCyGc2nKM
	ZX+jr6E4eMQ+o8TgEFBpEUCIBGU/6WIMIx00y5XWZUuL7SjG+LSQ2l1P3N/6PVv4
	Hmm4VR9798W7RlExyV9yEtGOnxU06EWfFyrrVSeQs8ee2rAQmokhyu2O1sYZ9+xL
	PNFRoHES1PdTHhbBDuhNyEY4f4/9OSYbmHRHM6eeL+tfWWgkXLVxGsffculJUxjw
	o10H6Wm635TurdWgfTVNXlDiE+Mv+nFhJEI/QrfQXuOw4y9A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hvtymugqa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 08:37:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ed2c307e62so60654755ad.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 00:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794472644; x=1795077444; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=s5cKFc01sUo7AIsK7qLrqSCayN1KrsD+idNIcq4Lk6c=;
        b=FRu/l8UbeGrZ76vG+6QjfWMwz4xNFPwjmjg4bMhgptY8adHCaWChU2YUjLulV1UeFy
         /QXa35pz+JvypPglfMefRmTld9zldy1HeWqHFmM7QjzWVhI/CgJBPitEgmeFkJroQaSg
         /D9NLBplwSJ/TtO/+xfq66zhCc/hT8jq1XsfZslGB84JWCIT5T7Mz2nTsPt86LpWx0No
         7+zskd3rUdKHroAWcNG8yIzYTqwbQnax6a9AGMQvYazmj6oTmyZNMXpcPeFutv6THHb/
         N3DH0br7jhBDgc/l/mR/qXQMn5IS2jKFfb+7FgeQ6LxpjSydjAKvxYQnA9CnRDan8bSc
         IArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794472644; x=1795077444;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=s5cKFc01sUo7AIsK7qLrqSCayN1KrsD+idNIcq4Lk6c=;
        b=rrj0RNlbLZKeD9yJhmChUZw5BYs13MqhOxfXhbkNDt+hjinIQzFPIcMP0zUf2l1eCU
         mw1GiH/ACo2T6WDcn0SsbGEpI2iV6B4modLM7Ob5U2SAOzN7L456/3EGJsUu+Xj4Ckbu
         N1YQa9ea3O013zTQB0TgugnilYQkI7Bb+4+Iq/zDOS+/Wew7zIGNCgjP1bpsaJhTKtWx
         ZP1BNxXuxeRw7fa2hP1jmAnfmKTUT4HW/Z8nFFDIeEC7ffwEB4TETeN4USrHM9B0ArDP
         8PgZXMsOV+4WiysfuxPpeatZbow0Wa2Nd3Fjm4eK25NanCUqFU3THIm6lylqf5104SAc
         ZtfA==
X-Forwarded-Encrypted: i=1; AL+hErEu5URCfNU5j2B8/2jHDuFojWRVBaNAai/qozaphoHvFxLc/wy8MYeNXNdXH4kBQPBWVkGvz2HzdXY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+1YJnQ3ZgPqjvGKnOrMh/Uk9pbWoCA6d6xQa/3XDh/RRmN4mki
	Iu2jNiLN984VnWP2NbGFx6l6t1uJb08zsXzW6T6uClT0oIFbgJRbPezao7MswTIoQ5kWdhx4i4U
	lZGEr2zEvcgzI+j2ev/Re94K7w7pEdOxOjq3iWyl3aC3nknln+U8GwqTaJCAXdPvtHZPe
X-Gm-Gg: AYBFou0P+BbEDyhTBn/vkUBeOIKKLGtjKMboUsUow8n+cCi6ZUwxRCIe4xGorcbp2j8
	SjsEsLS8EGSPwEnetYzlGeesfaN1zsE+DXtaB9gbtz6QxzF64WWYHEPeg1JA/hdUhjSZVh8N3lm
	W3eXD4baeRf7Dw1dHPqH6nEIfAA/QN52PHUKDg+veQzKDRAPgHqQyTkyqXMtIuDDUq8EmGc2Wuj
	dMeQiGzmgxCBAKKvSfotL7RYkSaYHBuzLmhg/8jnaepewRQNup+Vpailr9V0IRdVxEusp6C3AlW
	T7CLP151tnym1D7UAC8ncNEMVAuhy/uUuTLDdXhT1XCnu1pA7CwgNMemEWg1qEhzwFKEkUdDp37
	Gs0h2zGzjMeNsiwR2iZZfbGXUFBsfESAzla9TDLmt1ILECfiZFyIGN4vnJZNbkIJYtokeeAffDM
	mDTMUVBhe5mtWruHeLl8R9ht2z1LriPHw83+IY9ZzSZA==
X-Received: by 2002:a17:902:ebc2:b0:2ed:3f47:9699 with SMTP id d9443c01a7336-2edd78bda33mr53951445ad.38.1794472644288;
        Thu, 12 Nov 2026 00:37:24 -0800 (PST)
X-Received: by 2002:a17:902:ebc2:b0:2ed:3f47:9699 with SMTP id d9443c01a7336-2edd78bda33mr53951225ad.38.1794472643787;
        Thu, 12 Nov 2026 00:37:23 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2edb6db8d85sm29639215ad.52.2026.11.12.00.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 00:37:23 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 14:07:15 +0530
Subject: [PATCH v2] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIALp69WoC/yXMSwrCQBCE4auEXjuQNKLEq4iLnkxF20cy9CQqh
 NzdVjcFHxT/QgWmKHSoFjI8teg4OHhTUXeR4YygyU1c865um30ojxgMGTLBQh5fvnfITfyJRnp
 OaRuFW/JANvT6/sWPp7/LHK/opm+R1vUD+mJT334AAAA=
X-Change-ID: 20260917-smb-repeater-power-leakage-e1af2dd4ba29
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794472640; l=1815;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=4R+eF9bAIL6YSMUPTI+knUnLAkaWbtl4NCeVfR71log=;
 b=ZzNZ+VdQvHot5SMcCNqgJgKYaaddWL+guQ4LprSNJ84wkPMgXfnCsEJU/+VVitfVEvcIk9tA7
 liQBUwOBojMBKkLkVq9Ir2jrjnjrzXmlrtY/SfN+frKUoPDOgZu1k+L
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-GUID: bZaW0ZieWjguFj8Xwgb_p94gBL-l7tyD
X-Proofpoint-ORIG-GUID: bZaW0ZieWjguFj8Xwgb_p94gBL-l7tyD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDAzNCBTYWx0ZWRfX9H6mrzGmY/Mg
 EO9Ttp2X83//oFySuFOLPNTLyPPgwHQSwwAkRvftlnt3P9+XzZDz21jxbnThOwhpsOM9JmXML1+
 8KFAIWWYQApu7mOLiI9Hx5FJx/PYd/XIRWUNi+z8kWzVcJxFwB+l91/Mk11SyeqYapfkrlkHXzi
 vtCQO1q9qBAEwJk5ioQzblGep0plvLZS0OQ1ZwXh4rPdKUsGhnvr5I6iZ78P+wEGzH2xVUbpdN9
 cvT16KwtDOKEdCQZtw35WyCbOQ28OF4EUWaaWegDScZPXYexM0pEkhDj+r7ArbEIyWRzpub/1MU
 dEp1n6ArbVhoJAj85ehNXV6xGPl2aFwEwOtN1Ie+pdzt3mJ1ZYBziDSDu43ll1AgJKVAe/4NmYo
 8G2fXSJzF6MMX+gkQotu6RiMwnGVTuNIV+Q55mwz7Hu38UdOdmhkWbooQNfVivfXtfriBjSTcX8
 5R/tabY2aqDfusljZoA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDAzNCBTYWx0ZWRfXywEMhBxAuQ/5
 oE+u8RnomsCYyLSC7BMUfTjNK7S94ai63wOMDrWlj5GUbpgmD6ThTnZ1ppZAm47UIb4OZxdi0HE
 RLM0BGFCcuhAO5H2OG/AS98ycPZ/+Xs=
X-Authority-Analysis: v=2.4 cv=Q4BHcI2a c=1 sm=1 tr=0 ts=6af57ac5 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8 a=Hjf45h_rMJPOqh1JJtUA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 adultscore=0 suspectscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611120034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_083729_079201_0FE94B65 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.9 (/)
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

On Glymur, it is observed that although the exit call is done, there is a
power leakage seen on SMB2370 charger (which embeds the eUSB2 module as
well). As per recommendation of HW team, disable the repeater during the
exit call to prevent this power leakage.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Changes in v2:
- Rebased on top of phy-next since [1] removes the base variable in rptr struct 
- Kept the RB Tags intact since its a rebase

Link to v1:
https://lore.kernel.org/all/20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com/

Compile tested v2.

[1]: https://lore.kernel.org/all/20260721093626.96264-10-angelogioacchino.delregno@collabora.com/
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 89bc1c89fc85..607b5a5a1713 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -227,7 +227,9 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 static int eusb2_repeater_exit(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
+	struct regmap *regmap = rptr->regmap;
 
+	regmap_write(regmap, EUSB2_EN_CTL1, 0);
 	return regulator_bulk_disable(rptr->cfg->num_vregs, rptr->vregs);
 }
 

---
base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
change-id: 20260917-smb-repeater-power-leakage-e1af2dd4ba29

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
