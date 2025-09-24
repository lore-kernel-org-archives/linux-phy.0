Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 612A9CAC5AE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8kTJLi+JtuwJOo1JZ0FwI4yK86kxervbZhTOPrUiCug=; b=3E5HDukdvrhdEk
	0p2vLhRijiMzOWuJ+OtqiukZrHIq5FFc01cib5MAk1I8260rAcOFYEiOysvlEm/Z0+/1vbdef8/1L
	lDWL+wc3iXEPuOsnnH+Z/LPEn1woHwyJQ5GlCT2eWkp/fA184zA5C9dnQ7WlXOj5kL3JqR3H/Vy2v
	7qM2L/yRgpawsdIe5travyxH1oNcbjrX7vWp181mT7THAT6db3X+g8u+oikEcsUK0rGEyzSh4u6xC
	EfzUNXhLAhSf8kENj7nf6W23t9MIAMmLK1ERewpDK0LoZKSjWDHDX077WjRROiZAEz2n0K3Jgxgb1
	RLPB5UzIfPdZbm2F6j8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Yv7-00000004goj-0OdT;
	Wed, 24 Sep 2025 23:29:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Yv5-00000004gnH-0LqU
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:29:08 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODxWUF002255
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:29:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9+l0csdA98QdCq8IK8vG8I
	Wfe5KMbV7vWJnvNBVhQ9w=; b=pXOkAyPSBZXFtG2rliNUD5sQmFFf9FZim01R5Z
	r99r2wPHw2nyj0Q2mPfoVqUBdPD1RFJarrW46tgkpRmnj8GvPqsb4OfGI+eYiRQA
	z5ob4Zv3J1zmNRj0CAFQpY4AUnXigx1GTaqBKsaVMlXYki6dzGNE/pdCpOf9zo1O
	Oi3nCArt74qgdLBZVTWOXPQ9NJujBjhOgxg97sVWBkHbVi+sxm5dyfhar7/69TPD
	3tb40dsM+BpX33k03BquvfgtMfe/LsopH6+vX+JFefBDQviV1nQ/1nJ8Q/1ODgh5
	jIoIsX6QStNrDGP/HH6ZYJpTqxFA5C1Zoth+yQp+yY32pVxg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p1rq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:29:06 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24458274406so6845595ad.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:29:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756545; x=1759361345;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+l0csdA98QdCq8IK8vG8IWfe5KMbV7vWJnvNBVhQ9w=;
        b=QwLmJR/ljYQDL7INuuJJixU6xH+v7nl2h8o2R5MHjZnKij91W1L/fmMW0ndOWl6DwS
         9TkieGWpIV/wdYCw5rHtKUHhDT34x9Q3H3lCeLVHbDgpGKPjZbL9yn/OCmwGhFpMpY/m
         6SEvU1689rkzz5imCyKqgnc/eXJAx2/DxZ5ARrv+JBXs8Iet8stA7TgO4AJujQHZ8tzu
         hD/7aHyZy8VQdSl3uk9B2293PgP2eSTFK0m2eq2jr1S6qSsLbcgV0KLc9aSNbs9B8h9E
         6D8WpSgDre/oEi1Abk5+LL1DD+mxh5FBNY5mN4Y+uOkn+WwNKVWdDgJXgyNrkDFcARzg
         yLXw==
X-Forwarded-Encrypted: i=1; AJvYcCWqx+w+vCyXAldWRolUCFqXHITVBGw5c5AckciaJQOgALVfAvE9JPwjbSMRdv4zJ/EaU9i4jKWQxdw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJOXlt6cb68rqHitnyLv9s1xfLs4tkl10Co5bCmyuuA07InzNV
	IkQp66yftBLyi+sM4lA9ED9gv686lqbuk/tM6Cl8Eh/6Hymhp64VINVOaTRwOcawbUD7oIXatIR
	R5B/qvmXnNR2J/ZsQDiuKseeyaOWwh+IaDiru5l0Q/1JqMlOoZl1ia22XBco8GxYj9CxO
X-Gm-Gg: ASbGnctlH7Py01fBzUIPdWdaIcMEz5JA5yG50EFjSHTv3xGU5f4AEtc/Oa9QBOaurYL
	QKtTocWM5ngjrnUpA03IUYzucMHwX2NRuwyCxoiqT3MRm/tUvAK76RpuT3JCcWNBrxtem+2qbSl
	tM4avy5Spw9u2IcRnNepQCdeVq5SuzpFAfqJWrIs/SWzu299VDqTUoR4YQWJzKtHKHNXfx9APlD
	od6aAiVvLPd0YYrVL1H2OW/a3ie6yYoZcbRMYpxmZC+oNSQA1fCa82qQprHFVVL9yHSNZKjG4M4
	0HgtGdapNnlW2Nx01Ci9oK5qt12wPMqh3Iqu5tWA1Aj2h4sfANXUHpCvsf6r7M9Hd1fv1PxGP41
	T9r+37m927B2s0Y4=
X-Received: by 2002:a17:902:db01:b0:272:dee1:c133 with SMTP id d9443c01a7336-27ed49ded13mr14244325ad.22.1758756544874;
        Wed, 24 Sep 2025 16:29:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUEPADcwlddCviiL0reaYKNZCOT/tRIgVAPefqNdpaaX6oQdCmVpOJj5ORnG7Clz7s+SorlA==
X-Received: by 2002:a17:902:db01:b0:272:dee1:c133 with SMTP id d9443c01a7336-27ed49ded13mr14243955ad.22.1758756544429;
        Wed, 24 Sep 2025 16:29:04 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm4292825ad.30.2025.09.24.16.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:29:04 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/2] Add UFS support for Kaanapali
Date: Wed, 24 Sep 2025 16:28:59 -0700
Message-Id: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALt+1GgC/x3MUQqDMBCE4avIPndBpVXTq5Q+xDjRpTSVXVsE8
 e6mPn7wz2xkUIHRvdhI8ROTT8qoLgWFyacRLEM21WV9K13V8ivN/I3G17YJLqJzDSLlelZEWc+
 nxzO79wbu1acw/fdvbwuU9v0AMNSaCHIAAAA=
To: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756543; l=658;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=iNvBhLDG9ygoIMGrSAjur0ixwelDiqAhu5UHp/R+O/o=;
 b=259J+ycLevBFX4HiFzgSeQV3oznulyjnT7EPeTQadK+TvFBBkL0cJtcubNHatuDgWE2EAWeFO
 wSvsT6yl5qzDNQJe7HxhU/TDFOjakz3gnGHdI2MRwPveN68RqnE3bS/
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: xWowxnBSBcdz2_ecjJsyk4lrhxTrnAvo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX6iFL+sx0LgtT
 vEtyltUActgPgqgwMpewOJZJDdYITiHJTt+wiJkbZLx8ezCIP4PinZ14F4v736UA10h8KPJbHAf
 RLuOg6il79TZcToc1ST1ZMhupcVUdveJR5Uuy0jBv9EAh4P1RVEwu9jvziEU2/kXvSrbJSZabo6
 IrGfNXoXUjLoCDKRmUn/gplHcH1h8A6uL0KbepdSxbWmlftWXWqL7ilPFypEX4KzI3eIRzzse2y
 z6K+a3rbavrnnVYTNImBkeOx4aOfVF3zli8nQcHtgw5+arv/GiPy74ayMMsenZ1WszBBNn7fPai
 IQQWg8suMpTZmegZyB88PZ74mR3/bCT8lP381y8WGlWuNG/9waNX+TgE12bZmIq8/cGRvLa/GdZ
 pzM8quz2
X-Proofpoint-ORIG-GUID: xWowxnBSBcdz2_ecjJsyk4lrhxTrnAvo
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d47ec2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=YZPfJuuz2T7GfvdrPZMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_162907_247414_C1E6F2C3 
X-CRM114-Status: GOOD (  10.08  )
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

Document the Kaanapali UFS controller and QMP UFS PHY.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Jingyi Wang (1):
      dt-bindings: phy: Add QMP UFS PHY compatible for Kaanapali

Nitin Rawat (1):
      dt-bindings: ufs: qcom: Document the Kaanapali UFS controller

 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml         | 2 ++
 2 files changed, 6 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-ufs-476c9fe896ef

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
