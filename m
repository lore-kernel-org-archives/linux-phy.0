Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0603BCD37AC
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 04:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0HQ3Bsvf+cA03CAD+icMWySOeDS41krfpC3ovEHB74=; b=ultXfvZjLbXrE1
	g8Le7cd9kU/+NZ47kaVjmeMJ/J6mm9nobQwudSrc6lGBRBA34gYJn6p2EpL/Lv5YYIokha0a46QhG
	eUuRk4TImD8zyYJXn5aRBaECwGmbRqNjpz6jnYSjecaDQ0gYShRoIladbdmF5RU5a5tM+aaQNMOw0
	HEgUUre5hbTFYqPAukbsJtyuNqXmnlY6ZPs68LCWPB9ENTLdR2OSZg1ngTiO1S6wxe5xX4NE2iR9e
	/NSPSitHf3wQi6TEsXtjyxQLciWkwK5ArdyNEnZpLGb6aVaojOU14zB76LuwdVNgrX/XfXQBv4muj
	iQbR9jY0j1q4KeXXouMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeQE-0000000FRDA-3dRs;
	Tue, 12 May 2026 04:08:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeQC-0000000FRBy-16nd
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 04:08:41 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64BK6hHj2186310
	for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 04:08:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X6gGgEnllp4zvZoYkPCyMOmUb+keOCb7VayvIxiJ+aM=; b=HloNPhUTK7PWr1y/
	WH7OOakh2tbuJkbI4BWePgq2axLROMe+W25sJLDUNBT1zYC7oCuoFHFLZ508hJbt
	niFJMCAdwZ10iANUBUzVyxbESEZ4lkvhdushTUaTXEo//MOx/bBRJqoapVE1wsyV
	2JszTufhgmHXatEVvJjpR/PmHdptOcRIPhXtXuDh1/noZCoiNYxObWD3QZuroHHx
	9tA4un2uufdDQdI9/2CzwY6IlHRwvXZ83xoocdS9UhIqV3BbmBAiALKlfWvqhN0q
	NmfuaSNpWY0Gwve7DkV04lQpQMzNcrmmWui/MhrFVB3jHRmIb/M9xwmMKzzaFgI/
	M1GQ7A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e3nv29d4g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 04:08:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2baf7378ad0so36286285ad.0
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 21:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778558918; x=1779163718; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X6gGgEnllp4zvZoYkPCyMOmUb+keOCb7VayvIxiJ+aM=;
        b=Qt5tj13bhpRrhxaArX1J/XqssLm9TyQ65Njv7A+KEv6fVmNA1lTkVJU9BV+Xtd1M8h
         EW38FctSwFgmgFCOYUpgurqK+Pjqzqn/aJ7ZGhTMSV4Cc9oc3cCCn+HTc8rwOCvf64MG
         fjrrzT1Y82kPU15OZe8i4kEGJ3vukKuPWp7Jsl2GwLR8wYMgCJSPFMlVCxS4oawn+Blm
         WPZDvlVWEk5gnlJc7+B32Zg2sOhcto3RMcuveNjhv5eF31KSbL+E5z3yCzClpVvZe5VF
         C124/sngvMCIoRjbg3uvbTxEObR260iut2U1ANg9vcBgOcaXMl8pEELQiQ7SaanyB3ja
         CORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778558918; x=1779163718;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X6gGgEnllp4zvZoYkPCyMOmUb+keOCb7VayvIxiJ+aM=;
        b=kEiyS4osQcKTP++luv49YJ5yLLp7xtSy8FJhfZq7Xo+qZfdWpuuXG83Ehp2foPJCAV
         J14MZokqaCU93nprnOHBMDYC8TCcrM37cCxdJuegvM2Pv1MBzhGQhyCdzy7G/fqvPx6z
         jOnq1DpeDJChRohCtD/diyfcK4Ilj0WxDyRp/veQ7F73b7JoY7JtBbOqgptbdwLHbZ2h
         ncGZEQOlyAQUMFKud5AqUGue2Ae3tRJCGjLZ1uTRpuuI9ht3JvNUwaFeR1AoQ086yE0D
         /tYduoLfBkdHsdpFXkc+7qqH8hMc7dGOVjk9oUMEPFlwdWEI+odu2RTWsSLAeUhIwjwF
         eWYA==
X-Forwarded-Encrypted: i=1; AFNElJ9GrFoFw3KH/GW4DAHO8LsZLpnCBD3qycjzNimuiFfnyjxynWE1v5kPNELdbHMum/4nr22EgxyeV40=@lists.infradead.org
X-Gm-Message-State: AOJu0YykKVgIrscBYctMUxmWKrUgBd/c+A7AwOArMSS7wrMpHaEx4hQr
	iRaUPgZFbLjaTftci/QufmH1QthdcdY5dFj3Tbbp2V1gTMy44kE5rCZrlVJtlieO/AvREgtun4o
	QOmWSwiCDwcu1pVU5dpHuG4+9kfVSOMu44Rvf1O/40PkNl6A5dMa+tgdWcnQgkYMi6FVp
X-Gm-Gg: Acq92OHMWd5705Ad6Ft58kLLSTPzs4DNz422Tbvq9lid7adlhSm8ypkKEoH4IDxKMly
	f34Jie6x95avSBLxpoUNjNgfoqQDPa8zKgyPz8XOWwyqU6muYRptcBCMqzGggAZNqGlD2TyXTHp
	llluuH5m3lQ2HTZTzJ8i3qXcWXIL3VU8gMG3/hZlx9Wb1XVnHbxkhZ6uOzSlzgnUKYwJJCtvYUu
	nfuTBOyPGx/oqy1fc52CIJi7iK9ePPsPir+PmSotFjkFGhDH3LUxImDz2Opsp4aX/KestRrFMHE
	35lQ07uuliSKFOF5VGHMUtPKkwiOCXUZ+1BD7YJ1WSENG699ylVTjrwabgqUkam0+30Ki/OMbzI
	hl7DmnoHrq3CsU8lg58H2z1PA8xUUHTdNGeMO
X-Received: by 2002:a17:903:1c8:b0:2b4:65d8:6a20 with SMTP id d9443c01a7336-2ba78f50177mr287506405ad.2.1778558918385;
        Mon, 11 May 2026 21:08:38 -0700 (PDT)
X-Received: by 2002:a17:903:1c8:b0:2b4:65d8:6a20 with SMTP id d9443c01a7336-2ba78f50177mr287506055ad.2.1778558917826;
        Mon, 11 May 2026 21:08:37 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d405adsm122646725ad.28.2026.05.11.21.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 21:08:37 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Tue, 12 May 2026 09:38:04 +0530
Subject: [PATCH 1/4] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
MIME-Version: 1.0
Message-Id: <20260512-shikra-dt-v1-1-716438330dd0@oss.qualcomm.com>
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
In-Reply-To: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778558905; l=1405;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=15Injmg8rK8ASVqp1eiycQ+rgVM/qUCUjHV9ZKRmK1w=;
 b=qsd+1ESlEP8UXvDEem+D9Z3wOKU5SlGZVippPIxIqbom5EjN/hps0owmuD6qyom/WZlyQsIrd
 rFDT+XPk5CtCmIIk3GlfKNMXLOIf4AwITOLAjL+jl3JRr8Ro0Q6zjxn
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: EENhkK8MlrHOF_kSYhgI6MCeU0Tvqmc2
X-Authority-Analysis: v=2.4 cv=CeM4Irrl c=1 sm=1 tr=0 ts=6a02a7c7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=s3D7Wza4eiaRwqfIe7sA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEyMDAzNSBTYWx0ZWRfX7zJAsjDfOpfn
 Bq0tUkAWS8zZXke/VuT4DFdynr3DA8rRvZldg5MrIaO3JzVKGscPe26NDJZBscXdlMZAu7w3eIA
 71xuMf0OMR49uOu1bupXE8afp0HKMUx4w2SQQ4Pdd1g9bnyj7SuAL+/mIcqUaG6KDZap8L4P9Uu
 CNc8SNtSQ2qTHbn5RZaBDs3E6Ov6ZjKmsdYWEwUnDX472AtV+xhr0PyV1N0oxRtZRukRSlS2SH/
 stMUAu027xdPeNIQX45yE3UnTQFzRl4hIV0vvObZBNxLUv+nbKCJepXI2gYpB3/6K4s2P7J+QCG
 TfeHpDjcq9QuH5jyVRDIQQm+58praQa//ogaJ3zbfo1sgJj4tqz3/E6pVyWdg+Dmnm2pah/FGYC
 bhEE4jbXBvaFxhUENq5W6JBlJ7mveYox9cso11btW9VhZAvX6JuYCHomFq54rnr+7VgxS2IXdLe
 lhXYjFUZvzxbtZ4tJow==
X-Proofpoint-GUID: EENhkK8MlrHOF_kSYhgI6MCeU0Tvqmc2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605120035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_210840_429826_80CD3D06 
X-CRM114-Status: GOOD (  11.07  )
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

Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
form factor. The SoM integrates the Shikra SoC, PMICs, and essential
passives, and is designed to be mounted on carrier boards.

One SoM variant is introduced:
  - CQM: retail variant with integrated modem (PM4125 PMIC)

Two EVK boards are supported:
  - shikra-cqm-evk: pairs with the CQM SoM
  - shikra-cqs-evk: pairs with the CQM SoM, with no modem support

Each EVK provides debug UART, USB, and other peripheral interfaces.

Add compatible strings for the CQM SoM variant and its two
corresponding EVK boards.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 2741c07e9f41..f041d71d7957 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -963,6 +963,13 @@ properties:
           - const: qcom,qcs9100
           - const: qcom,sa8775p
 
+      - items:
+          - enum:
+              - qcom,shikra-cqm-evk
+              - qcom,shikra-cqs-evk
+          - const: qcom,shikra-cqm-som
+          - const: qcom,shikra
+
       - items:
           - enum:
               - google,blueline

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
