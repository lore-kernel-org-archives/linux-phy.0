Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67143CE9D65
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 15:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/FB64I5+ImnKmDWLeKkvRwC1KX4rlwe9eXVKjnohJQ=; b=BcIzsxfYrDblnk
	inY1PEBEjOBEcjEuDuU31sscAhifnJLjrW4uErt4idqUjx4RKOgKki686khnWfNrEs7TcwEOAA5hh
	ZbKPR6YVbRjNfzaVPHTdetT1T5fpz8W6c1pjerIpSlPhnGfTPShTiNSeR9qhGy65VsXplufyMffUF
	+usN7YJXuPIqDV2uFpajaq1Z0SJgq0h2qJ5FKonjufNMUHBaftsR4WyvltYlcDmTz9/bZEFflNRF/
	PlLLgl8I/Mdzzyk/YvuMpkXoOGtO54UUP3tR+98lYzs+/A8zcLoemkN4iky9GfBih7si6GFrI5t8e
	8TplTOSndiF2UrD0GOhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9Cb-0000000DQAr-3bJA;
	Tue, 06 Jan 2026 15:42:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd9CZ-0000000DQ9u-0Vec
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 15:42:32 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606B0ZQA2254441
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 15:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AIjtUSFiBLS
	/NSPeW1sXaQDeFzH7a7re/A2GcCo2hrQ=; b=AeOdqh2HwWZKS1w9QzVQOHCNYNb
	g/JDq22gd2oa8C9H4OYoQPXd0whK+o3xbIbCJ4APzzyGhhKP+p0fDC7gWGPSrROG
	ZS7tZ9r3Tsl5/fNmc3/eD76skhprn99da8OyTMG7sXnKzGy0nbgVsO+zcF/NFf5b
	BeY4I8B3azcERdNuaG0rssCR/b44I6zJlcyOxpmGTkTusBUsjbTr3ge6kqVqdSBL
	x/fw5LCovCMLs5QzmqMslAfCg0ORA/VbJGxWJgNVNA6buKCe3YEvHDpAA1nk53Qi
	vxjjgJjJxNOc9jBfld8CxwBbPbvMXgGwcsVaKAj9+ENjP1gztWgx81XEZnQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgu421wpv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 15:42:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f26fc6476so19111185ad.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 07:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767714149; x=1768318949; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AIjtUSFiBLS/NSPeW1sXaQDeFzH7a7re/A2GcCo2hrQ=;
        b=e/PIOyRcmI1Bx/pWFDFUDBrkVoel9G/j44t5rteqTdpDhH6rQEJxdAC581NXmAnWr3
         b4IoDYrbxWyVLq6VC2lxm3KC1AxVjw7ID9FXyVckdBted43GS0ggXypr7x7zuF0vqi/6
         /FFpy7Y/RDrm3ovsptbWDE0bWOv0os5JiQ6JQttigi+2TE++DrJE07TaatFNsXoDH66O
         12O7AA59I/H9CEFPv+8O7zXgnE56kUDgZ/eOGpIj48nV1iwkZWqJu0W2SEJa0LeGLEtx
         7SfpCmxOMbgjmFf0ww+u1OmYG1ub7Wo+dfUreRIcNpffq194wSa38TONSjHRhyyQ7pmE
         YU+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714149; x=1768318949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AIjtUSFiBLS/NSPeW1sXaQDeFzH7a7re/A2GcCo2hrQ=;
        b=sR2sIHJUy/n1nrdTo5sK8kGdq+3vrtoEDQhYlFG3qui6KtFa+PxdB8B81Z1UY77CVH
         yAnmyIdAFBSB3ZZtMo7/iChOGdpilR1SB4U3XqoT2GxawqtvXKkxXTXWZVGxAdv1hn6C
         GyM3kx8L5UPnHfTIM9lQZIef15q67nDH1KPSQla1q0VdDyhldsdvF9TbKNgr+2zOSsZB
         TV71l9iNHzLFRZ+Rm2hGMlLkv7+D1qNO3g+ie63s6ss49mHz6l5GX87NoUKp5dSL5Ckb
         x/9++SptcjgStgAgY+pBBicBYZtu53gvkCr7oNhD+r6sixvlJCuNBMJVs6H+/Zrjxb7m
         Nxxg==
X-Forwarded-Encrypted: i=1; AJvYcCVWM0/SPsRHqqzY8oxaxegFjq+Kki/LcxPN2BvoGQ4sJm9fpug2xMDt6VgPip9FUG7PPsW0fur09FU=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz6HG87df68I11sxCM/glgWICZMZqKxpveTx1FsfgXp9nLmJPj
	XpG2SBQGmPH95gKEOsO29R0TWUQOBBCy9INTWVXo+Dm/F5Zgq4vTq7QMCOIWeME90giiHdCsS7c
	HOZDisCHagiuDPixcxqoDzqGaCavqNwy+WCg6/bq7cvyUrif7hYlrbH67zIVqtoU40imL
X-Gm-Gg: AY/fxX49Hhsl9srFPHyoYW/avptHrYR0yVew3Jp6sHq2y1dU+stDyPzq/Cfmk5no7B9
	YmURSBenZbeUUSHf0whSwJLfAgijAgp9SkIPc4dakwNSCDlzIUO9biixm5daGWgbKkDqeYRdCJ0
	aOzrEFBBgHqk/kJZ7HWQnsdAwZNiA/1R36yLij/5lqnx0579ZN9EGx5ba2JaxLVmk536TGCAgtG
	b1sqV8+Cv0R6OdrwNyESIBYoOtnn3TduUirlvCD7+P7rAhi8OpM9dlpcefl17kKNctUY4QpAU8b
	H7wh8NHOuSwsmwiweJ9rfxMgdTxIyOwcJ/XVs4+M/b+Hgl7QWNP5BnF0iPRl/w8dPJ9l5oRQvEN
	ch8TeZTD5rb+f2c5bmb0lVx1VT7Ur8Q3I/QVcFvGtnUU32ygvbd6s
X-Received: by 2002:a17:902:ef52:b0:2a1:3ee3:d00b with SMTP id d9443c01a7336-2a3e2d88c2emr39917395ad.13.1767714148923;
        Tue, 06 Jan 2026 07:42:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHNU89AUHGyd5fl6xpGJ5YfiGTUlHmSXmkc8WqDRmjagennnun2O6SPUn43mKoyCxqZ312+Yw==
X-Received: by 2002:a17:902:ef52:b0:2a1:3ee3:d00b with SMTP id d9443c01a7336-2a3e2d88c2emr39917065ad.13.1767714148405;
        Tue, 06 Jan 2026 07:42:28 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd492esm26606395ad.98.2026.01.06.07.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:42:28 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V4 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
Date: Tue,  6 Jan 2026 21:12:05 +0530
Message-Id: <20260106154207.1871487-3-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=dYuNHHXe c=1 sm=1 tr=0 ts=695d2d66 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hvc5qC8Ar4ZKm-a3tUAA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: rN8S2TpdGg50jZHAGmWgqXkFTbHM3HYt
X-Proofpoint-ORIG-GUID: rN8S2TpdGg50jZHAGmWgqXkFTbHM3HYt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNiBTYWx0ZWRfX3rcBxa1POb42
 nhCXFGVBeuoWaYaKqT90GGWfkjbYLqpWuxrfqOHrGev6jEVzoqlPt7Hfx7d/rguUd4U4P42WkZH
 MURk2Cj5SPso2K134r8N6XDl8ouXVzLU4diHDBUCzfrMESCA4PhK6v58FOiMdAg5PHFPGuoyvo0
 ufLznf853hG8IDTX7HYRZBRx6+i0/UE59jVIP81EJGLTidZU3BEcTIBkLZEhGrkDZRygsVKaFEw
 vTa8SlzaDUdEiKBNyKR7IiFxoIjtL0erq0lrxp+INTrhNyyZH1WRRQqXMLO/WEKxHChbKPoYgTn
 e2BP7YMT9HUJzMsv+pX/EMAQ64tVM1JrGMhT+sTgTdD8mp7LW3ubelTnKz70Y2RP7rq6i1K+d4c
 oRR02CnYj96Q5szX8xvERbmuUFPzjAySkkL7sgkbuPQHrZrhr7W/hMXMZQl2ryp0qTmWTzBAy/h
 sf2es413D0HYoF/Gylg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_074231_546522_4ACE1D9A 
X-CRM114-Status: GOOD (  11.24  )
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

Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
SM8550 as a fallback since x1e80100 is fully compatible with it.

Qualcomm UFSHC is no longer compatible with JEDEC UFS-2.0 binding.
Avoid using the "jedec,ufs-2.0" string in the compatible property.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 36 +++++++++++--------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..fe18e41ebac7 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -31,21 +31,27 @@ select:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,msm8998-ufshc
-          - qcom,qcs8300-ufshc
-          - qcom,sa8775p-ufshc
-          - qcom,sc7180-ufshc
-          - qcom,sc7280-ufshc
-          - qcom,sc8180x-ufshc
-          - qcom,sc8280xp-ufshc
-          - qcom,sm8250-ufshc
-          - qcom,sm8350-ufshc
-          - qcom,sm8450-ufshc
-          - qcom,sm8550-ufshc
-      - const: qcom,ufshc
-      - const: jedec,ufs-2.0
+    oneOf:
+      - items:
+          - enum:
+              - qcom,x1e80100-ufshc
+          - const: qcom,sm8550-ufshc
+          - const: qcom,ufshc
+      - items:
+          - enum:
+              - qcom,msm8998-ufshc
+              - qcom,qcs8300-ufshc
+              - qcom,sa8775p-ufshc
+              - qcom,sc7180-ufshc
+              - qcom,sc7280-ufshc
+              - qcom,sc8180x-ufshc
+              - qcom,sc8280xp-ufshc
+              - qcom,sm8250-ufshc
+              - qcom,sm8350-ufshc
+              - qcom,sm8450-ufshc
+              - qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
