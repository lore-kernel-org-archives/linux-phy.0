Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85A31CD5BB3
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 17:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnsHgPNqums2gG2h14dx8b+DiuxDEdoFzpyE7K0MFpw=; b=EO5+MsilriUj6C
	YLTIJtUFKbBndByHy17aFlVYFqtCasIDFCIuepIxFpNEPx8rsVedmNnz5SoYkZqShyTDqg12xUzmf
	8jkI/KJfpGo4mjfBcKIuGr4/eNcl5gRmH7lM8qyiFCnxvehwjZ7iq1z1FjmjNioMB5vLyK2lmadPQ
	ayYjVDyWjPul34nkIx5n3nNQbBVYhtC+QYjdOcDcaOshIL3bpODdZFIDin7kOi6PVtWoPCikud91g
	u7RPzXcg1jKYQ74WvxVmHaxBdLpCI68d3HOJGGk0nef/rlIkyeGl53Y9YV/7+DZhhi41kBbc0qS4o
	OmholzqUgRnxpdHNB4pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTev-0000000BYNv-0goc;
	Fri, 22 May 2026 17:27:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQTes-0000000BYMr-40sW
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 17:27:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64MCJx7Y1297968
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:27:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=OQen+VoAHis
	aKxiinT3/zd7m47X7BB/wcGnNSYFTrVA=; b=UQS1K/L6dH8o/QuU6jPbVbMeBj6
	UkNoCP3Zy4xXoISy40tP3L0TSMUpC6OovZNHNLOXOg1GdQVrCMvIFJuZUaxkmSV4
	quqzokSeB6ur7hwakWp3wiAhG5aTCXV8/Nwk4kbitK2AscbD4vg2SIkqaX7M+wYI
	N6T2hWtvL0beyBDfgaaLl1BJgUgtz9krUZAnhxESEYnb04GG4EVPqpEp2YrkaxBx
	LcUGTH37/HAFednOVYN1xKIQW6ec8ZAgHJ+4/Qa9WofoF5ryZpP4YGSfVCf8S/ds
	jLn5G51wdSypsW9qg9/DV29tSJxTMs781A7yO97quPwBpomXGvquSCNT49w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eaah0c6mw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 17:27:38 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8354503d9acso9403294b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 10:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779470858; x=1780075658; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQen+VoAHisaKxiinT3/zd7m47X7BB/wcGnNSYFTrVA=;
        b=UxYYKREiv0UQAlgb7JYf6epqL2LmF2Q1LS6QvfAVVyOzw+0rHcES9vCX/IH5YljhAp
         ep9w/8mgFZW6ADi4E/VKczh/xD0SOZiKniLYjxUI+kF1OuoBPdqahjFgCPCgzOTgexF1
         WCYpl7NJLLhe6+VqcWWawfFwQPBcvh3GHlA5xMxaDkA+4OcrPQoCXTd9bK1ZFrZQZy70
         k0kqlRA52gaDO4CVrG032g1rZUGY4kKQsJgtU4j7q8MDlGeKFGB6I0uFvcfAiY0UB6oe
         qnUsgvhz9F8ravt9mpqSEqQTt58b3mcL32m2ONZ9Jhr2OpSSh/NCcPsJTFTmV48Mp1LX
         LFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779470858; x=1780075658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OQen+VoAHisaKxiinT3/zd7m47X7BB/wcGnNSYFTrVA=;
        b=pJ2ZbkKA25Jh5f1JM5lbrbH9b3RiChAyLy0BbgqN0TPvw8zSzqYf5et1QOZQwY3ZvK
         3zd9W7wC4IhoELc2Lo9BLoPYKpDWcnFMwM5rs6h4YXH57SqEumD2Rbaf8JNOCX20gaR+
         GAuOYrwQOcMG1CphkP5H1QE0/L+w8X0oq9ly6l/uGhpLFLPgd4LBa/4BSUf3xYNji+lu
         I1HDTWes4qeYFbNF8g2qUt5Foio/V6MZkvJ5VuOLzGr5WPW5IoOU+1dtiusnmXHDUQ0h
         O/QjWMc+IJa0vztuNYkSpdEwvkeoNqpGTDReyHSAPemn3yujNX/l1bWwByTdQRHJyovw
         dG5Q==
X-Forwarded-Encrypted: i=1; AFNElJ8q8cQS9r6VHASQSZUkU06v5NON25z86zGJJei2vlt85HsZcg2EtwLbsdINOX39+2KiiTQ/JQp4YvI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz87bQ81+0byx1aeesJWCWqjwm2VMmvOHfa4cSf7m+IusPSm28x
	xODyyxqak9l9eKW/8BoJmt74oybHjCtDiSV72Ib3shlgJEq89f4Z9/fo+YNywwd/+fQGmqLPhp+
	estvCCDKPx58qDUMCWpbZlpKf54izZ0Dx9/8/nmqypkZnBJCYJHo+yRuOzAA1sv4G4UnB
X-Gm-Gg: Acq92OGLujwG7BFzkEft/1kLZ7eLHzpEiatkjxcThJwHO7KA61St+LCY5J1lmNq7WHf
	mHCFyC8y+WvMKSDEP1RlmGeRw0L+7E0eFewLzC/I4lKFoObEsvwHjDDpEV7AHvwliEZMdN+4t5o
	Y3PRuvyBnH82+ewOuN/HnQ6SKIhv0vDzXsnl4M1iVP9A2YD1ijU/VQMVCyoXf+7C87+yiehxq6f
	ojNYuY4nxTAOC1W1mrleIadLAEf+/CCA8EF1ps8risKqj0XvTnW/P/Ca6SODLVjjhGq9kWgmDm9
	GdW5b1eLe5RuomfUafYH+ZvjuX42zcJoi8dz6Le48CNwgRRGSVPdei7MGW5fZeEV/Pp6m5WNoFS
	31TCGjeDdw6lZBU+Pn3L1FQiUeRqBAShKRIYY8Qz8NWaPZax2EfHS5A==
X-Received: by 2002:a05:6a00:8c04:b0:838:af72:fb2f with SMTP id d2e1a72fcca58-8415f3af2d2mr5234119b3a.6.1779470857792;
        Fri, 22 May 2026 10:27:37 -0700 (PDT)
X-Received: by 2002:a05:6a00:8c04:b0:838:af72:fb2f with SMTP id d2e1a72fcca58-8415f3af2d2mr5234097b3a.6.1779470857341;
        Fri, 22 May 2026 10:27:37 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84164ea09a9sm3045693b3a.31.2026.05.22.10.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 10:27:37 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH V2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
Date: Fri, 22 May 2026 22:57:14 +0530
Message-Id: <20260522172716.820490-2-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
References: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDE3NCBTYWx0ZWRfX91juZlaKJMRo
 /umY+r4ZUC4Sc09nJiSXPn8ChWjwAbbtMcUtn1viyCj62YvWHuTUG9zxhZ7albWXOk0z4Bl/6Du
 5LISX6n557xJW7asag+MkPXAfUHiw7G63CWCbKE9w/N2lpkk0wyKe/0uUS0fTRJiWGiYJ2ECkWA
 tCDeUCwoHO7OOT05BkCWb9RjdnTms+cpKbZrspKn6rndsK34G6pwQaN6aLhyi/tlESurZVaYcsO
 2SzchgCnKkrH+WJ9F6bg+GSQHbSPbmV5uoBw3m4lzYyUNYoMCeWF+dqcNJ7l3r/C4Pk1QnvL/+b
 YUMpZX6cNYZF8VUEzHHa3opzrRIbuxhHD8E7vBQqCUKv95MP2KGgN5uRVwoxl1LF5LxQSgGrp1x
 ZmpUXab9aV/uSPtlNwE6rU59vlqxN9bnJ/wGT0g67ziMsylf4xUcUmFKsCLVR5hM9YMiMj2p+SQ
 DGEgSR+Zcxfo0cXxU+w==
X-Proofpoint-GUID: EU4dxE68WbDGGL7l82u3Jd8fLbXVzBEf
X-Authority-Analysis: v=2.4 cv=LNdWhpW9 c=1 sm=1 tr=0 ts=6a10920a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=MMZtLZuhhDi3SW52_uAA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: EU4dxE68WbDGGL7l82u3Jd8fLbXVzBEf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605220174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_102739_002737_7AE8C70C 
X-CRM114-Status: UNSURE (   9.44  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

Document QMP UFS PHY compatible for Hawi SoC.

Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 9616c736b6d4..b75015f3ea70 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -37,6 +37,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,hawi-qmp-ufs-phy
           - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
@@ -107,6 +108,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,hawi-qmp-ufs-phy
               - qcom,milos-qmp-ufs-phy
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
