Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69763FEFB70
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pcJkuDWyz7v5S7x/3p8feA4q3Wts985qlL8VGW5Q/QI=; b=4QH2kIJhfag7S6
	PMzEcjVYhFCALjJgmHEcCvWphKIMOn2bZJLXZ2TQD/ssbm1FHPDzY7sQeAoDPCsVpe37LD+TZ3UFA
	xS8AVcW4tTClDqWAfEhg5OL/byQEfZibG8ZRSYRgXDuX3bU9eZp+1102Gj2PRdcht1extPKz9awb1
	nfLq8lTIhVZs21dNgP5jOel8bcwUrIYGFR23SLhva3mcWePfUTyUMeV+ZPBEpDi/KMeFLAxkVuv4b
	IR1ovIy+calF8ymHOfAbNEEHWMMmVAR1nE5GhcLhu7LT9yTTSTUvI4M/Mq6MSiM/Juz/vwhm5v7mY
	H+B8vBYEvHgbuuVFF/YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1w5-00000008pSv-0Wb6;
	Fri, 27 Feb 2026 17:47:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw1w2-00000008pSP-1tOW
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 17:47:31 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0PTS1476618
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 17:47:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ZBZj4NdTrytE8Hgm95ldu3
	CSuXdWecXfZnLb7l5lbeE=; b=RMJl7JH9n5wZ8MohaR0ktAdpXuYF+o2Cgqcc62
	s/x5t9kPbcUFs7p1dgil8yvfg94+2M+zAXdIzQmTPu0aar/7VFZ1OKiqVDaa8wr7
	PIg6V27+NnXkEW5wUCchkXALVlz0OdnZiG/rootBbQjFmy+mpnzBNBAxVY+Eyude
	zjNioGlEbvFUpbmNW4EegU1MrhDtDXvytS489OzLXtK7rYTL7QrIFd1HmMIhJyCT
	VwEM7d/Fcf0xGQtWgF4wVTJT+7f3w3VsYA1bGyGk2NbODqf24egKNAEYE16Zt7jd
	Civyy2laBBkaREVLTNyx9sdFMpqxihDxBE5Fa0O6ft2Jpz8w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjt7ycm6p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 17:47:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb403842b6so2139233685a.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 09:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772214447; x=1772819247; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZBZj4NdTrytE8Hgm95ldu3CSuXdWecXfZnLb7l5lbeE=;
        b=aV3ZhEvSHnAinqjljAxUYJ/u7kxONI4d6RWnSFVlYuYmrcXogn5P1w8BleSCsJEWop
         dVpUL2CYkyCBf9Ma8hx+xBgqvuSHjP1EIanUMOFxrZmMQeJeK5K/4wikWFi8LW5c8lNN
         CSzVkKkLATChsuTRgK/G5U/KmZQoxHwfh4I9mDzg0N7dFMhRoB4Df3ubHrFtYahapnpS
         MdrUR4/g1uxhSC27aNmIzp6CmPFaX9Oyi8eWC1sZDz7bywQagPDhadcTUoAeWO3lTi4D
         qxtfUa9KGhFFbr0C9j5J+2aA6fIizvydu3EriFF+gZivHqTl8CfKqi71Awdw3Jxn2P05
         lDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772214447; x=1772819247;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZBZj4NdTrytE8Hgm95ldu3CSuXdWecXfZnLb7l5lbeE=;
        b=vj1gD14eRAkdOKZD+QcgZr0xxR2wsYFU6MopeYAJgNU1lUttWsbX4MWFOvG9JgA3ea
         d6VwHPD/MWZdI9SLXyVOEpGRAjFJ+GIt2PhjFH4mYaMBG4Mq2mj+NtO4cH+LvgoTVaoD
         zNYvmM+7lN4WI0NpxYpc1lgtl45aVIbMwrZWIQs+821ChtGpF9I/3vRzFSka9UkCDjk1
         wOAoE3YpanHpHJS8Wf4raQR0yEo4tcqkrA7cN9/4dqZC4PZlYK5CuTN3WEH3a6svfyh7
         byBwVsVfir5itnN0cjQ4P6o+m4QXB3duApmz16chzbRTdAQIseatEdV+L+DmLoGNuKRQ
         VpMA==
X-Forwarded-Encrypted: i=1; AJvYcCVVtRZZe2U44QlIfAXmMNY4jdrQLrqCJWe9Yw9MgHCcDG4WD+raNWcadEz+N9YF+do2N1BWlb8dcpY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwaYpaNv4KToHDw8VigLNeEYk+pTG6qHNny5En8f3qAbZV/FEzo
	MFnm45+sgeUi9kL/gM7JTZX89/VsmDMWVdSFzzCGbcfDV+Oigd/bXRJatwnSNkZ8qIshNA7m1Ef
	tJJ744tgbTkq8StNFC+Gz5jtx3de9uDt0UVdNEHiUNZyk71f1P8mj+DOHRcAn3aPKxTpQ030yBk
	zA
X-Gm-Gg: ATEYQzz6y6sWuIl/xunj/Z/oEDD7UkZ9nYvSfXaw5aaAofX2mrXAgtt09iLAsWKanO3
	G64TqLEnfFf/CUOKLlr8yejl3+6+p3TVUZykYcEjg/oBK9NJGq/Vw2d+t2KGTVUVn6xwts8n4uo
	8LhzSJB/y4zEolMTuWuD7KPkD3PaagEfjaoY/0Wqq+ps/iDGK/gKAewllbiOvhss6VjCOnoezI9
	I34Tyfw9jnMg8UG4AmIT1jUGfHw36J7PFJm2yMqOMbTSHj+wdAFYHf/JnUpFk20XK/HteHMSQlh
	1Ge/qbIRsDnfbS0v7ISHmD8UriCY9qMj1+/X3RwdVMJ8iOPDoK3uqp1kZXBJRkfiLfDEQBBsbrr
	u/qwLKpt8UMVWOJILQJjLJa9vSXKAdg==
X-Received: by 2002:a05:620a:1aa1:b0:8c7:995:b961 with SMTP id af79cd13be357-8cbc8f2b066mr450030185a.58.1772214446829;
        Fri, 27 Feb 2026 09:47:26 -0800 (PST)
X-Received: by 2002:a05:620a:1aa1:b0:8c7:995:b961 with SMTP id af79cd13be357-8cbc8f2b066mr450025885a.58.1772214446223;
        Fri, 27 Feb 2026 09:47:26 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm238078895e9.7.2026.02.27.09.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 09:47:25 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 19:47:14 +0200
Subject: [PATCH] phy: qualcomm: m31-eusb2: Make USB repeater optional
MIME-Version: 1.0
Message-Id: <20260227-phy-qcom-m31-eusb2-make-repeater-optional-v1-1-07a086bbaba4@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAKHYoWkC/yXNMQ7CMAxA0atUnrGUuFAQV0EMqTE0QJrgpAhU9
 e4EGN/y/wxZ1EuGfTODytNnH8cKu2qABzdeBP2pGshQZ4i2mIY3PjgGDK1FmXJPGNxNUCWJK6I
 YU6kNd8eOLO/Ysmk3a6i9pHL2r9/rcPw7T/1VuHwHsCwfSvIdEo0AAAA=
X-Change-ID: 20260227-phy-qcom-m31-eusb2-make-repeater-optional-621c8c1c0354
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1638;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=Fct6BCJIWqovNkFale/9w8GPVmsqmYXW9/uA9H2fiIA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpodijICIqiWs0ntgO4PHv47ox3IwrtvU7BDEeb
 9hEPt8MaeSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaHYowAKCRAbX0TJAJUV
 VmNcD/493kLQl6k+518jvBRhwQsAh4LMUKjo7RzfgtNyjQgS/QVQW0jLzGWVj+eICsdfdSlCDpo
 /FCJFZ3OqkL+BNUuApPVi8sMHEYL5cFwOhv9PcNF0C5qUGHK2oMHctKl+bkvNhmn8TjfnmpmQT/
 LkZM8X4qIhjyITv68HXh8oh+RAG4jeVWHkpsncwHkKUKzLA6ikiJNFXXr3Ez5hAK2YmLM17DHKj
 8vpxwIrPqHsEUFpY9k0q8gDnkaoWxduZiiHMmtQ5NHCB4C/fZDkuBjVE5eheyuzSmVHjDPdbneV
 5aVgmbU0aP4O41kJNMADf6sXl+wBp7WOLS22PEOJmem1iAS3VEBoYkvb0PKOwH0a9lDPycEqNth
 YDKGyFcvvky4HZ8PoLCor1vroThpUakPL8TDluK0KSH8zbGA+I210ImsliBqmbFCN2lriAcHB0M
 6temG2pWKgS+xj/h/H5sfnjSQHpu1IjuxSVRLSE/cP8EEG2QkU8VssTJtz9SBut1cW6epoE5mnO
 hEmQR5Xj+KMzmMK9rbPj2/PV7oZkrrWvtmLCXDbKfTHUmAdFiN1ErqXVem9XRqfwFwenujTja4r
 9YOoIKvQBDYPf/qHUM2rLPcFmXsXGDThjBM4VYqoCvSJpt52CBYPcqm71qN0/HFFhLLGqsMOHUW
 ecK4iDQ+QiXIDCQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: p0DXtcUoaexUjNku3lOcxkeShKDHM1hH
X-Authority-Analysis: v=2.4 cv=N7Mk1m9B c=1 sm=1 tr=0 ts=69a1d8b0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-yzJJKm8KVfH7sqCjyEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: p0DXtcUoaexUjNku3lOcxkeShKDHM1hH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE1NyBTYWx0ZWRfX+FPR5ikJR2zn
 Rgq7x0G06qo4DTrPWZnL9uzVvPpv2J+NlrG1rOnWBbjBFLj6KM3Rm/sc1tU1F8WH4gOLmut9ohT
 yty0i1NLbvs0kHshsm7/XL5EIOZr/7zN1cfhpKVdhkbt/Sco0p/1kRRNMdaqJOl8EwxEeOppXot
 Z16ENCOzlXYNO3zIcYqm18E8dXwE7xd7WNm53e7MlRDkQdKoDeHg1MMwbGCTeejB57hQTbDvETW
 0pi7XbgIaxY0NcJTveA+ztwf8sRLj84h+vfjHk2hBuw0Xx0Atq0srXvuRYPEg/mK2fW65JXKW/H
 k/0UGEh1KzFpXr6K1Iyv+pZhlQfGBGIZTAhCNz3Ss7zoFA8Rfb6lSqE/N9k7mIbYN7XhmvqreE/
 K0zr56ng4e/CYvFamRELb79e2w9Ci4C6uUQyy7c6sL1OaIvgnhd4ozsYfpUKN2I3PqBctA6/pLG
 MHEHAKCcfZmcXR6WNqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 suspectscore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_094730_523517_234CEA29 
X-CRM114-Status: GOOD (  13.42  )
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

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

A repeater is not required for the PHY to function. On systems with
multiple PHY instances connected to a multi-port controller, some PHYs
may be unconnected. All PHYs must still probe successfully even without
attached repeaters, otherwise the controller probe fails.

So make it optional.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
[abel.vesa@oss.qualcomm.com: commit re-worded to reflect actual reason]
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
This has been sent initially by Wesley here:
https://lore.kernel.org/all/20250920032108.242643-10-wesley.cheng@oss.qualcomm.com/

This is still needed, but for a different reason, so re-worded the
commit message to reflect why.
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 95cd3175926d..70a81ab2482f 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(phy->phy, phy);
 
-	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
+	phy->repeater = devm_phy_optional_get(dev, NULL);
 	if (IS_ERR(phy->repeater))
 		return dev_err_probe(dev, PTR_ERR(phy->repeater),
 				     "failed to get repeater\n");

---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260227-phy-qcom-m31-eusb2-make-repeater-optional-621c8c1c0354

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
