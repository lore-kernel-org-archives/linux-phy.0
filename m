Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A7D8C5DF67
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 06:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vJCyHM/gupJQ7mIVeYKPTiBTj2lZehKQPCz30rBxkpA=; b=D+tylaVIsb3TPf
	vWJ3x1MctPaiTBY5LW9lf2R/5CF5UX/vD3n5m5CF6a0U/2weRTu+EFnGuzrvOw9dTrQwtgMC33W/2
	ZCyi/0g2vqJbCskC42JdcxA3qe6eKEWMMCR0c6qG0laZRHvakxSh9+ALpTnunbhHXCEtCbdy5XQ8i
	PnMXqg1HpFzcIXP5gj8OioZSupijWupjKwdvopZMdFIwRLBymFxrtXRvarPxGW/61GKBMJBL/RADO
	gLTBOUUDPxRtu3Ge/A6sbnpg97EWbQWVWATJPXuqj+3SKx8ybWmEyPeo0ChOQkUgevd5pXz3MZClb
	NnQtZLFe2iXeNpFomUGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwD7S-00000007ONR-2Ko0;
	Tue, 18 Aug 2026 06:16:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwD7Q-00000007OMQ-0emM
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 06:16:17 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I59IRQ3566316
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 06:16:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=38I388lvL0rpoIh+lBGHzO
	XugNwuZLafMFmaoLyxPv0=; b=UVFRqgObjNkJN4hMcrC0V4PAaCOW6sbn1s8wwm
	1J4CDub55ix2tBOOD+yMPfqJtAvt+ma6c/PPxolSbYEupLVdqIZflcFeWMdafoMX
	PmC17GDEmd7el0TSRAh/wSRtrKaDgAleI7ylEFSK5bDALHUUu/jiLM7oXkhh2ieZ
	jyWuwmeVwSvdMnsBwSfuDrjaqdSYetL+c2s2kORw5oOqRx1edtl5mv6CBZzzovYn
	PrWEn6Y/rRpmFwjNlL//8fvYQZHZsi/+yz9rsFkARVLgjLPeiCyMnsT3PNal5v3x
	AHMAWlzJsdVILC3iJm/1OYT6bir1rEHxbetkdVgh8fqg2KnQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g48q0t774-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 06:16:13 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2caf4173b1cso79248485ad.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 23:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787033773; x=1787638573; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=38I388lvL0rpoIh+lBGHzOXugNwuZLafMFmaoLyxPv0=;
        b=bOfJ6NRk3FrA9HY9rK5+ONdzw/JDh4aTnNqX4jABKrLJC/wNWkmaglooSrb72AFitK
         iGX5jFxnQ4k7Us+YY0lDsdzZ3Gu39fiWJ2pmjinLHwRfbkJr1WHEE7w6z+O6XjGd7GFx
         dhAts9hJDwRWuVycmVoN+1939MBJDIpTw4Sa/R+DCvZ551gWcoeQuI3eYFlQV3AZ0FnL
         e/8CW56WMELySRdEy7dx444TeC+8LdaXoybS5RdFbzp6ZXUx9zdJyVrM50DXZ8I1N3bu
         9ty2LDLIKgJ76z6uJTw2i+hw/P/erL+sZn5eJSzofxuIFLPaog0cvBZ03dqr9nBFynXs
         UukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787033773; x=1787638573;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=38I388lvL0rpoIh+lBGHzOXugNwuZLafMFmaoLyxPv0=;
        b=AgmQogssXOZ0fm1EuzCyinjRvDJhRakM4XVorbqEuWaE74PvTYOwYi67KulDCIkghM
         TYl1XVrtgQ8Ih1pvoNeaROmJKpgAXprjtO3grSQbEDNOXsO+oHDHU+iLPskoMxPVGynQ
         3xEOI4eQDTq8PbphXT9ITJt90vR+E77bkFwNpK0tjmA+2dJG/r8I225J5hxaFKC8QGKE
         ftVoKUydfyJ2VdI56v/oGbVgXUuwolBMYDi44zUKj3SJKH1A2BdZ+i/nR/XllMNP8KvK
         doDMyukbOsslyQVxq7WDB+pvbz9p92RNjTi4kFHdoYXdY816lCTSNbf4uVJq6i09O+Vf
         nSXw==
X-Forwarded-Encrypted: i=1; AHgh+RrfqJAaaJC49yY0UbOQpt/HNbU6vrmYLO+B2H9HIMOvuRZBMxHFxFL+v+OdV2y6SnBGZcOnxtCkN9o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+ALi9DLeWZBaXHSWFHleoMq4E6cATp5kZsJfmcuWOEwg/sZ6l
	QTd4/TvhYuCSYyXcGwEl0G893boCVsNncYxoVAqfrhJGOD6hfBKvmD3Qmrlvw3akXg6PgLEPxsU
	HwLWDnJUWvHxyVj4+gIPoNDETeNtWvHqKmSzyDUb/o9kwnDvq4sHQviOTJUjOCAFYgCyJ
X-Gm-Gg: AR+sD12O8xsu6ofpq3wLgMY5b0ML/vq8QRirQYJ93XEA6rQdZgazeqzHbv390gOMiS2
	CF+eINd+d2/VXZ5oQkhVrjVAVumanS2u6LBZnsTYRWDx5JCfPn12brHvuvMP9/yrfwImeJYMBTd
	DzmbufQXAq1FjKyeA2zcRpW+fU2E0HemFaODlTOIqNI/EJrOQylJjdU/8SeDzKwtcIuV+Uaog4W
	0KqFRPJwc5zBi6jBDIgdK9v1ilvLc2kK1UECrVnTuzGhjNeIBPJJn7tsyqsU9pOc2Lhtaj57Mzw
	uXyR6Dnvm82zg39IWoNEbY3VFeE2Jsp9TjPzXnzlNIK3fNGxa/VQ9XJN401WklfcgExNCTi3lfj
	IzuqWhyyIOV1FdYwnePuaEP7UD2fcnMjodBbK/g3sftnzOMkgL1I=
X-Received: by 2002:a17:902:d4cf:b0:2d0:cc92:f7ae with SMTP id d9443c01a7336-2d3b080bb30mr318045785ad.3.1787033772867;
        Mon, 17 Aug 2026 23:16:12 -0700 (PDT)
X-Received: by 2002:a17:902:d4cf:b0:2d0:cc92:f7ae with SMTP id d9443c01a7336-2d3b080bb30mr318045115ad.3.1787033772332;
        Mon, 17 Aug 2026 23:16:12 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d5bb499d7bsm13719685ad.3.2026.08.17.23.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 23:16:11 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v2 0/2] phy: qcom: Introduce USB support for Maili
Date: Mon, 17 Aug 2026 23:16:04 -0700
Message-Id: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKT4g2oC/02NQQqDMBBFryJZN+LEWKWr3qO4SOLYBNTYTJWKe
 PcmdtPNwIP33+yMMDgkdst2FnB15PwUQVwyZqyanshdF5mJQlyLBmo+Kjc4vpDmtZFYaQVKomT
 RnwP27nO2Hm1krQi5DmoyNhXSOmnW0duH7fy4QpJ/8RrKv/hsN74CL3gpmqpTAD3I5u6J8teiB
 uPHMY+HtcdxfAF/E7pXxAAAAA==
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787033771; l=967;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=9PHDqN8u2OYdc0o78FTOWtIYPVyg3JoKJ40Dyw5pnvc=;
 b=1N07JMvOyS3tl2rq13jUtsxI4iryR+lWKIT7Qtw4nFphBoacHUJkvFgMF2v9EBEb72Mm1WKfY
 4+Wi7YIKlWBAKUiM4eRSOohPg4EYsDPzXY/rdH1G9BSZf7lkdS09CDR
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA0NSBTYWx0ZWRfX27ATMfVb/IGo
 q2Yoop8flueGbVSCCO40AWReIy+OnOp+6leRkleu7AygMsxssFJLXPmHA25Cc0sE31vFtQhDHEJ
 iPePSA4NTyAeSL+9xzOgQrhX1QLW668=
X-Authority-Analysis: v=2.4 cv=VuITxe2n c=1 sm=1 tr=0 ts=6a83f8ad cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=tkoM0K3omCSXhoJk5dcA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: bChP3OMOb1HAj848LwwmW_ZyTkMik1WA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA0NSBTYWx0ZWRfX/ubr2wT31Pc3
 xhpNnvnLqluQfEBVA0q9b0umjiPSTi22iZgqfq4hn7fFpORXY39h0wXtJaReh6ZWaMWY5YRF567
 O5HX91HI/DDxsjfzyz0ttPqpx1HjuJ34ormps/b6Ilb0ilFfICq8XXDhOPhNF5MSnNGDQT4/bwH
 94ytjRls9FqhFufrsl2j6y51o9pE5ggI1A/1alVHnL3Gct/Lj3rz0GDmNX5xMOx+BBKsAhv8TK/
 6RkhDFp1uD+Ppha4PFRglMLWw4MD3o0s89YlSDkXqSkBkojg2twqqfWAnlAotj2Jb0j0kexIN8n
 FZ5uP1n99DUrv7v2E5fkNnyYP7Arfs8d55wwvYW76OQIxHTKM5n/ud4Uvlb7Uka3kE4pL2qvIDj
 6+ulzFwYIQSpNKH9jdTntl9JO7t7+hdMw63JW3V9vgeSRQYsaBfQJFH2WLPmEriAORwVbBRvYM9
 vblzS5RGM6kZuiGhwwg==
X-Proofpoint-ORIG-GUID: bChP3OMOb1HAj848LwwmW_ZyTkMik1WA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_231616_319867_71707B76 
X-CRM114-Status: GOOD (  10.18  )
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

Add USB PHY support for the Maili SoC. It documents the QMP USB3-DP combo
PHY and M31 eUSB2 PHY bindings and uses Hawi and SM8750 as respective
fallbacks.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v2:
- fix binding order
- rebase on latest linux-next tag to remove b4 dependency
- Link to v1: https://lore.kernel.org/r/20260713-maili-usb-phy-v1-0-3285da11f148@oss.qualcomm.com

---
Krishna Kurapati (2):
      dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Maili
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Maili QMP Phy

 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml         | 1 +
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
 2 files changed, 5 insertions(+)
---
base-commit: e6664f2b33db9b6811eb4cec109f06cb2b4f458d
change-id: 20260817-maili-usb-7c4e5ba1a4e4

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
