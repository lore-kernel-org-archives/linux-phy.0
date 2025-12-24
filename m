Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 250F7E7544E
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92HgWETuQRAUCKU6c0h9ZO409NR4GnwzzgeizvHIwzo=; b=nT58oYoMyZNpuc
	J0NOwaFKGZfUmFUKhlkwlrC781tSXez94/VW1a6Hn1lJl1xP3JWZ67/coRmjBwIDGiCZ1GkrK/KRA
	DrQ1T//7S0Y/2twTCi+E3yqIjl482gxq80vS8/kXlagSZfIQMi4s9mW54Oj0IktFhKoEhqa0Mk1QE
	DKVJFcZAGpMkVAu7O1pitCnqExJR+jXER+Ux8z4EMrftTRJcQZUtMcYyFhGfGrohxFBhLB50tUgrU
	uIyTzzNZdPt2EjE28f6LeXk7x/HWVbRCydnIeoHWT1T79bR1TxAU4/p0AfxssSOuW54vj/j1mhDfL
	NmGBhsppL5a+HajAzmzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMDM-0000000GhSg-3iWy;
	Wed, 24 Dec 2025 10:35:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMD6-0000000GhQN-2z9K
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 10:35:31 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO904TR700895
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:35:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5B7X/4st3uS1XExmmy54qb9S9vy/pEl6TnjtQgHIRt4=; b=PpKcc4aTJ96i0eKb
	u6qsFD2dJXxwt1NqKLarQOmbr/4HHs9UBOlq9qQVQ1mn9096lGM/jwdr1PeEEr8o
	P7oNCnPgF5J7ifoI7BWZrlxXWSjBYkbzj6e+pTKAc2ASTFoka5pXbVFQMGTHJS2E
	R/HeXTcczKuK9/+shmPTNNxSvXnCr+mf3FWpZieeLL542AqRzIrmIGji4hwe9tS8
	zqapWzzs9VDhF0LNpgP2CRU7QbY+qVliSmch7JWCZ9dI6LNX9zxZFRk20JL43pr5
	HPiHl3b5/QZ2ILV+mj/0hfDwQEMIXd4b8iUMN+pnqTh+W72OwvquM5q40OMz0f82
	ugSX6w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7jueqc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 10:35:15 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1d26abbd8so157679651cf.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 02:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766572515; x=1767177315; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5B7X/4st3uS1XExmmy54qb9S9vy/pEl6TnjtQgHIRt4=;
        b=K0vyMwOZdwv9gHx65a2WeROFtntvLpsms6aGFCidq+D2U0MdFy7Zs/DOx9bxWm807T
         WoHw4ORMtCMm+4mG3Q+I3rL3elraeTYeRgAvOFkKCg8dKiZWspaW4i5QqraluJ6K0TUI
         Z6hChh4fgK/e3Vx0n1MboKOKZONuFBAQepxz/G8999Ek1/qkCs88vFJRk5Dzcqc3cPbr
         HgDTEBmZNTeUv5/TS5uc3yuQJXfzeMY6Mrfg0gZrBU3oYF0kO4RrRxc8Hxi+T3MwChE2
         VdxeEDY/pRa56TsWWxQn6Q/sCIECjVzM5fUp/HRWGzx/XwclnPxALhT2xQ0F85MtKxga
         cenQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766572515; x=1767177315;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5B7X/4st3uS1XExmmy54qb9S9vy/pEl6TnjtQgHIRt4=;
        b=L35y41XdeAp1qabEyE1AEd8Gj8yXEP1aNNETeAZI7rJRfpbe97pyypCy8bUs0ll6l2
         kUc8C4Pi82+OuD9aWCc9HGzPuKkMXwBju9Zm2IhnUpCdos/mFgUGp5jdmhM1PLgI75fU
         WlKIH1ZurbiIzaF/j7HbVmaa349ksqv0QmJ7ZCSSOUBSK0wJCZbBtvaHKlQh0gVLcYIp
         9NmnT8SJ4OoCXpQrbEFPbilAVmaQ/MHgt5MJBDUBZjVcRjkjcTlm508bUISezltBE/Bk
         Xg5lg4Hh1l6HYE2RB+fArnxVk8QCGyUgfQ9xcjkYWBmGBwjfLXftbCyAr/SAe9oz8L/M
         M2fA==
X-Forwarded-Encrypted: i=1; AJvYcCWaF800ZYfg58UXyhftzxkNxEADHgMVA4j+Mjfc/hsf9LXyItuRjIQC6AKtROwuPdj7PEJ9b07wBnc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwF+YQ1I4a6ZPx2b8WyBhScyaXtBFeF7wG0xp68SCZRNmldwkTX
	e/oEOlethH9fMuTmjaktUmy4X6ApwfOvO1bYuRgQkFzsxw/eW9nDZY07ee+gHdpSFn3sEJ5m6+U
	33LwsZERDhcXV8xYJQhQllC8dbNq/PZGWhumRkA3YaPO/2jHG4bCVMq+2GA4rIVqNrjMi
X-Gm-Gg: AY/fxX6+N0TFEVuh9vMhGPnX98EwDjllaoKnRWUXyJ7E9vZeztVsKGT3I1BrZBhoJfg
	y73wUV3B7MM2ORnjXXy38aKcg0Dxeek5w9Iwlbq2SueXkUxnOQ4GIlRUWMQY79wOCyor2moo7rj
	YAkVrPPl8e2zWt2WDcixK+C6xQtIBeTpVEumo3cCuBaBUODprD0DtDSHub40fp7+3gc6pCMN1BU
	BMYw+Poq8tx0+eBgPZ/7T0dFEIw9gOn8W8IqA6qznbNZkxappCwMUhSGOGYRjyKEbJUy0NRnW2T
	mxlHK9q1XxxDlb3nuruFMFV62ku/xNl4S+O+wPd4tgU6CpiImoQn+ffDCc+P7Nb2Dd/5SyePTQh
	VArypVMyk7ruQLP0=
X-Received: by 2002:a05:622a:1650:b0:4ee:2721:9ebe with SMTP id d75a77b69052e-4f4abda5267mr291904371cf.53.1766572515206;
        Wed, 24 Dec 2025 02:35:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8Zu0ulcRYN1mx7hv3wKsdC1QwBuowQN2q1dNCqxkOuNwf6JUdL4c53uVjCsLnu8DLDgy/Fg==
X-Received: by 2002:a05:622a:1650:b0:4ee:2721:9ebe with SMTP id d75a77b69052e-4f4abda5267mr291904161cf.53.1766572514760;
        Wed, 24 Dec 2025 02:35:14 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad806asm1729496266b.23.2025.12.24.02.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:35:14 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 12:35:02 +0200
Subject: [PATCH v3 2/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-pcie-add-glymur-v3-2-57396145bc22@oss.qualcomm.com>
References: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1660;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=VXpt8f6zXH/+hLrZTiSoj23lBGeVwFAS/12qWWbXTmc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8HcpS1ltDOf3TRp2VbPbueLoGAZ8D99I+0nR
 fwfWfkhJ66JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvB3AAKCRAbX0TJAJUV
 VsK0D/9V32xv6ZHYBs6PDxuE3jfxagz1nOknzloU21941ZLrbqb3burbE4CjOuD/Zt7uXY7z3tt
 25mk+SVIx3eJqfa32xsmlVAZ2aU0kj/jS24Uwqwa/74/FSAGB+iu3WHgd8CujwIEHfuOAj2Hvia
 uBIn/NT0IgTmVCjJsb62gIQm+mnkh96h2e+q5d6bRhLzkJ3J+y9+eHescGIAB8ff8WI2RSW8rDT
 NqoCQg2Wvd9VNQimPqupylbuBTYv6JIjQ15F7eKJqD+pVJKHQXbJYkWM55VpacbK8/PKEFXyPCC
 lIntQl9ZuUTLCbtLDqB3fUZJ+8xAXbr+goIpAYrnpveWiJpu/xrYItqr4wxPAiPXu92Nq8dgzFW
 l9Vv4oPqhIjgWFuKPsKC33ATyOddHzFwhBGZsWb1pSLgJ76ic61PnrIfaDTtuSVGCdtaZzt6Vay
 bBkAlTymiUeemK7fNTOpC4frV4aIJZ11/a2SYAfETEQEdVwWKIOu7BNvOQD4e5QQ4jClwF3JsYT
 xOOfRWtM+Ls1xl1uPAo3KYOLIzPzVEe+lkenPKXAEmkZe/1Z5NUrGxM4Q7Ac1Hax+/vW8Vu9I7Z
 rrwFfVs2ZOnwqULfNdpa3qcyW9kMvgBIPD1wpFZs4GQwlGR7++fSMsFi466VugAbYKHGdlc+nWC
 1k+zVAMG4tiePTQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5MCBTYWx0ZWRfX0s2wD90U8+lh
 z2fQmrIo3N2VzjD4N6/Wi+DZIrtYDNiSkO1zDo+l5vfv9nmx7iebyaSUwlrBR4qQxSMKozIzfEc
 yn/mW56CH9RkRQ24bobkMJa5uUFRM/3IE5IzxCg2s25No5luSqb/Bh/VI45q5EJFOFoob+rGm5R
 6u9mOGdX8RTB4E97QhB7rWShWi0fng/ZjFJfB58FXH5eXxL2/j6kqZAhNYgxBuQgBSB0/zZLTTl
 nCmX2Q6bhXSGJRlq0AY1DiT4S150eqaEThbFKGHDmXg1LW3cdCvjuj2ZwvzosQ3on+vW988ZbCh
 bsoCrdO6/Pu3WfEfs0e9wm/dfeQp5Qkrh90EENHw4NWyXRKhK4ltBgQlB/Q4/We3wXmt57Z0fs/
 rkv/KCtdwn0LMnY+iHeVT1QExrTnImdZfxDkVCU7uO/zDdnBsK1v8Aug7d+0Yjrvm0okd+UBSVZ
 9SkE7YSpGXjIfHGDIhA==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694bc1e3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=jLwOHZFV_4hwhF8wx3UA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: cCCxO7aduYG8VyHQpeCR9GcTHGKnAOIf
X-Proofpoint-ORIG-GUID: cCCxO7aduYG8VyHQpeCR9GcTHGKnAOIf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_023516_874193_D72D42A5 
X-CRM114-Status: GOOD (  12.69  )
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

From: Abel Vesa <abel.vesa@linaro.org>

Glymur platform has two Gen4 2-lanes controllers, the fourth and
sixth instances. Add support for their PHYs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7671aed5635f..fed2fc9bb311 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4632,6 +4632,22 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v8_0,
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5383,6 +5399,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-gen4x2-pcie-phy",
+		.data = &glymur_qmp_gen4x2_pciephy_cfg,
+	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
 	}, {

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
