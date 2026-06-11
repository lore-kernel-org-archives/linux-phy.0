Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABAACCD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=salM8ytNl9BhNgSfYNezvDBDEkwXnZmbKOAVpKqKhVE=; b=sWA/9+IOzTaycD
	h1tp2fiwkhSI6CACas7v27co/JXvy/j+ttm78Sql7jPN44qTTKHknNSSz3K/Ju8BIhAoWKGmGiNPH
	YaKcKwC5ErumqA0JIpawm9dh74X4CL/6YrKAo1U73FPlCPBgLcDOa4CF67gf/hrzCYlS9AX0xBNQK
	+9cED7B80U99I61IxyoF5UFhrjT2CbQ1l4EzF7ama0Xhp2scQVLcouLbZJK76g9daw3BlyJ4MHIQE
	HyQM7oi+aW3WiC/WVVmXZA3Co/8EF+qhM/w8fD5NrSaI0PrJfswn7rGohpIr9+IjHtzMADPSV8yHB
	KD4/RRHdiln2mqCeUHag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcMq-00000009C9e-1y2v;
	Thu, 11 Jun 2026 10:10:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcMm-00000009C8Y-1X9Q
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:10:31 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65B9xpcl214481
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:10:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MzoIeP/9RJB+tfcp0der6+uQoAklbzCN/nK9ht7zzAc=; b=VNnGPWqSy2JqD61F
	nL9FmVZiSw8cnXvlt5+f/tGowXcrNXRrXzS8QrqV+kxFvcoWwhZDq2Dy0OREh5Th
	6MasMh3ZE5vU7yunP91NhVwMKfwbDxRYDDlv/KwF93OeUHSLfrJ+VwOco8vEd7DD
	ASeg1yWhEkWv2re48LbtJpd2R5qA9dJBcWioD1fIr41aPx6wnI/+UuBHOErAGCYm
	DE6KwoMv1E5KRfObXatGvrLDkDaXjSau8jhSfIAtQl5JQJ90d7tAlzHirSq8qIFv
	5MKEJO8AOE/1M9v+D4PGP5KXF2g/fOnx7w4FtWaxrG51J2FnvdMaRUnNMfcOen4v
	K4rYrw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe6sjxjv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:10:27 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c85dc345ac8so3970667a12.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 03:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781172626; x=1781777426; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MzoIeP/9RJB+tfcp0der6+uQoAklbzCN/nK9ht7zzAc=;
        b=dEIlini2uHue6LrvlQpALvNlBlj+Ki90h8Nld9j/dc7VJGYaiDfa9uMJ486Xj+Vs3b
         ypI+33yImVK7K139B7VYO+Dptj6mmAuxmp3UHuoY26IqMh7kt+m985G8YI/FfAGKwowk
         aegWhhuVv44lG2j+zBB8xj6vFFm2+uj8Ef5ZNvnnAJWBp6OpXmDDrA8hfJALSZKjSg40
         l3oyvs4eYTDfv2GaBMc5yjxz+1XEXfxCdehNfCvwDPvaMyhvircltZ1hBkd5cN3dgM99
         7TUIF/yXjJRFEeRiqUe7KPmOW0+jYWTHlRg943OGzOy2ReqcUnDULig1ScXji2jR2MQb
         0/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781172626; x=1781777426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MzoIeP/9RJB+tfcp0der6+uQoAklbzCN/nK9ht7zzAc=;
        b=mcuBSIPU9fCsvBGzDmSiVUJ9K9tjN4XyTIqh9y4IU5XjGLB5U0QwomunqawrqQKJP9
         oJ6rSVcJUkOluT/dcE5u2ZEQOYClOvY6rY+uyOd+5aj1aFvsUSAPVrwtsyOOENBJMyvV
         AviZG8jHwlLFspcUekBrlnH41W3ModstGEAEfRr7Zo/CN5dgOjXTTM26R0cP1H8Wt1w/
         HF9dY6VPqW8+kqv04HpJHhBk4fHlsjyELbQlhSi4cLxTGxsYp4BuRRbFEMIKNYBVISl2
         ilxyqaD1QAQh9ek9XGIoCrfnDbpN8kKu2KrVW7WdeIIRAA/BxMYi7rm7TZBEz5GM4hGG
         MUrQ==
X-Forwarded-Encrypted: i=1; AFNElJ+n/Tnvfmrgv0oofxhpG8sgKw1w8c8Bxii43x0iRxR3vmCwYkPw7A0egVMhXjN/5JbqXq6nAWVIQw0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyE9eLKB7s9K1dOgwwSKy0POU8S8y1fu95KKgmk4IIUhqF72vrW
	j9TKNCweruAr1z6QQKF+vvDk8Sa1H7J/tPF00JEuelPHyaGA+28zPJFQTVCOjpt6fMytlm+eipz
	nQbJiYsH7gQPjKRxcDpgep1JZfTd5KVSJZzUL1kjhYv5gWVvHpovVSl46vqghUykh9WW5
X-Gm-Gg: Acq92OEl9xQi9M6UtOyucZVy+d7xY/teqNb05f8Ox6kXIJCngHMXoujcYCF82YLwONn
	rD6To3PtYVzlwmI9S2biOwXrRjrzvEteWRVNrb1NegLLCbzYIatZEKOt+Cz70AaEp9fBxyVV+GI
	ZIlH/jk6UobM2a09ZLOTTXkBfmz+Gwuj4jypNZ9NxGINdQ+D+L3mnePigoOjV9SnMZZBFGTihAW
	Cov8xSJ+C+PoF0cJ6Bxk+dwjVzWBmSS5XoeZGXs/MPMM7AkH/PhvcREGR4IPfXdBN++aPgSpiEM
	fm83yxbmyyJQ7pz9gQTVPBDq7gtbKJF0sJFmWGm9YLX//e/c7I2EDjUJJg1LthlHWais2hQHGuX
	1ZlUNiUZ1GZBHrn0S5GWc30IVaUi4A+Wpc3zHyQpe0T3RApg=
X-Received: by 2002:a05:6a20:7488:b0:3b4:85db:1bd0 with SMTP id adf61e73a8af0-3b5e31ec58fmr2473838637.12.1781172626235;
        Thu, 11 Jun 2026 03:10:26 -0700 (PDT)
X-Received: by 2002:a05:6a20:7488:b0:3b4:85db:1bd0 with SMTP id adf61e73a8af0-3b5e31ec58fmr2473810637.12.1781172625795;
        Thu, 11 Jun 2026 03:10:25 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c865860f3d4sm1279646a12.19.2026.06.11.03.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 03:10:25 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 15:40:08 +0530
Subject: [PATCH v5 1/5] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
MIME-Version: 1.0
Message-Id: <20260611-shikra-dt-v5-1-103ed26a8529@oss.qualcomm.com>
References: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
In-Reply-To: <20260611-shikra-dt-v5-0-103ed26a8529@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781172612; l=1745;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=O4cVCaQ46n8Ms5D3Bco+aQwbzl8/UIR3ClZEnBlY0Qg=;
 b=wMdHmwjR+KCtwb/q9yjz1Y+EYFPfFw5vp82h6JtumrrfVeOIJGfb/Ulu9woGwL7HiLYyLVMjR
 7WnMQ1xz5mnAXq7G4Y9gpRi2oJa9p4rPEMrfIw4IWuzabkk7ublBhUc
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=GbMnWwXL c=1 sm=1 tr=0 ts=6a2a8993 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=nhUW8Zqzme2qF2hNOrkA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: nAoagZQXJJ7mphLPhxZXNx8GaYU9NlEm
X-Proofpoint-GUID: nAoagZQXJJ7mphLPhxZXNx8GaYU9NlEm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDEwMSBTYWx0ZWRfX9DH69H3ce1mf
 /4UUm4crlN3tJ4gWyuGalqMVHkBbIRoKlcXHhX5k+JyguAG1mZeYV1tMYhq84WmO9yOf8GosxAz
 rZXszdUtZ7f2phOijzbv357tVOxixKlUHb/PxlgtaOeL9ODI2lftD1xhEbuRKAeu/FrSyJzRXuD
 njxjzb85fQkPl/0F3VkUrTZxoib81rEuvJltTlo1RG5FlKjVHZvBuO8AZ6j/F7ZpjJBRRKTFFKo
 4cSNUcNDcc2jjbt7OkpvyEUU0ukia6H5acfd7IdplkIxwvAopV5V773aHaKrt+mjR0iMVEyrN6d
 kTuA82bYtl8NQBj4pUCvYJG0KQiuDR9ixOO2EwxvMR0/u0arf7i55Fnf+iIcPkjRHK3HMqjNypV
 Bs7RQ1s4HE8m2BVRY8Bv3tW+CDgW2+Eb+ZynCembgehDrHcW8pm0HOmFNh9dAlp/jHmY5+x0eN0
 1QkZ+XjEi30gs4yHDzA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDEwMSBTYWx0ZWRfX1lShejw1sM+I
 21mb/aBUkZUV8MzH+3NPY+d0VvMMCGiQo5Wr1D9lsJN6AbG8TJcGneav1s8BLLIVb9NEJtT/W8F
 2xRJR7Gbt0oTbhQ17kjlxgvZV8JJ3eM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606110101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_031028_541978_1418A6D9 
X-CRM114-Status: UNSURE (   9.94  )
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

Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
form factor. The SoM integrates the Shikra SoC, PMICs, and essential
passives, and is designed to be mounted on carrier boards.

Three eSoM variant are introduced:
  - CQM: retail variant with integrated modem (PM4125 and PM8005 PMIC)
  - CQS: retail variant without modem (PM4125 and PM8005 PMIC)
  - IQS: industrial-grade variant without modem (PM8150 PMIC)

Each SoM variant pairs with a common EVK carrier board provides debug
UART, USB, and other peripheral interfaces.

Add compatible strings for the CQ2390M, CQ2390S, IQ2390S SoM variant and
its corresponding EVK boards.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 50cc18a6ec5e..cf7d241f8107 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -989,6 +989,24 @@ properties:
               - xiaomi,polaris
           - const: qcom,sdm845
 
+      - items:
+          - enum:
+              - qcom,shikra-cqm-evk
+          - const: qcom,shikra-cqm-som
+          - const: qcom,shikra
+
+      - items:
+          - enum:
+              - qcom,shikra-cqs-evk
+          - const: qcom,shikra-cqs-som
+          - const: qcom,shikra
+
+      - items:
+          - enum:
+              - qcom,shikra-iqs-evk
+          - const: qcom,shikra-iqs-som
+          - const: qcom,shikra
+
       - items:
           - enum:
               - oneplus,billie2

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
