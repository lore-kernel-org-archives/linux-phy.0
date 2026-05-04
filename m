Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 393EDFF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 17:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uG/AE7HNxUuSqlfW9vn9HcAiAm1wV3KpltTGclbfP/o=; b=JbgY39qN5rGALd
	LMkI4MshwOtwlgyQ1KdCKhPpsQRWWOu5+h/xOyFau2F9l1Ra2X2HfGfiUzLpjYjRkFpbx/Nq264Wy
	PYIsdoLvLisEPTme8UbA2fyJv85nUDsB/Fbf0iAqmtXBYnuKYEsdHUjrTuVxCMRWbwk9NT2Q6YcyU
	Y3giilnZaifRWo8E36TaLDlh6d7+0ntYsqIo0TPqYL1l2ZLd/DqdKJuSh39qM7uLbfIW+Shvy+65w
	MgRBe5svmSFk69VnmZhxWZE8RlnhVlZhVp6dSlw8R5HiwRuB30uNsIILvW/hvLwVcTtJciqG5N/Aj
	Y7+Mc5zEylqRddxMSGvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwle-0000000DnR0-4BZZ;
	Mon, 04 May 2026 17:07:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwld-0000000DnQL-0dbY
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 17:07:38 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644B4ACK4128691
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 17:07:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=p7kKiQDi7BN
	iaDBqw45od1LCjR64md1hECtCsCF+nm8=; b=D1CT7o9aglKqFyuFwXuMjIEz7K7
	VOuq4iuN80hIiJ01mHV8rSdOvjAzqfYTj1Y/3fMOpdHDlkQfcCVjcfS9Zv/TJED2
	OpJd7SSuUxy9BWMNJVg91z6sxOSKNQ60SlTZOROO1cIf1gGHnIkNaO5YPCQNBLjM
	XaWguC3Bbh34xu5/BERjgS4P6IFbQPyPozkuxxzlOFUkTQt+evZphtslXdBdE+CI
	xwjkQRacO0dKTokEBGPIADC8oh9O8A8DImUjZiw+ye2an8Yf31o/wA2iwhFLOj0N
	/B+JmXnDMEj+5o8Csgy1YUgbJYP48jdQvX9URJ9nKjRhOsY5FJpfzFmSmSA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxsdw1dx5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 17:07:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-364edd430e6so4262228a91.2
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 10:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777914455; x=1778519255; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7kKiQDi7BNiaDBqw45od1LCjR64md1hECtCsCF+nm8=;
        b=JLjhi6FIiXks4aaG1UQVqpBZRQxpHt3tF6DltyUu3OHWJOAx38BednyGvsOYKPSONS
         jlvk156c86D+TER9ffBU1E0EokYg7JvhFbe1vS58gNVl4ga100lSMEjtydMXqJDd0p9N
         8HiUdlZElaEe0dnunN/JXCQOY4UJIS8MDjSDFbBAv0xH3Q1h9F87twOipLQTYMBRCjQT
         vTPHx6ZW96KtBLjfRaI+05i3XlosFNW7Zw76FiRPNnQ67VDuPQIpDygPfi6bu+ck6+2P
         VQ7CXfsyDM5DqN5AGM7iF+pEXtEOsLvHrWGY+pazXqw+sQIn5bAKanI6JGL/9Hwl8QzN
         A0QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777914455; x=1778519255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p7kKiQDi7BNiaDBqw45od1LCjR64md1hECtCsCF+nm8=;
        b=FPvAQo3ElHkJz4u9K7XL/6EAC9QGZp/yuAPT+vzIelnovfNn5I1x0BJKtRvO/L98WO
         WgcS+ENntdukLry2iGqXMfrxMSkr3ISW4f+A+Hhq+zrtKlinSKz6m1Sm9sUIl5gPKWWU
         D4ZjtXA8UuB3oiZ1vRoGiMRLl9ThYdcfc9d84kP7yw1cEUJfZiNnOO8b7CFmqKJTBJ8M
         9139IVZxgI3eodxntmFJ+Ux1z085UArjGM43uPlqhytWrLa9cYi+hBJg0Gn99WM0kCok
         uZhYdhaT0UKrmhL6Zc06hIHaC81m0CNeP6t/vB/sHdO+mGkcJxvxenjgzl7ARWzkL77e
         ez4g==
X-Forwarded-Encrypted: i=1; AFNElJ+Bh9GeQww/EjP29++jX0RCbr2jvOHOcgVEqpKeah0ktE3aQ/yJvH2XTmCAJXnsZxPrC/30k0NunNo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzoh6mBFDmqpTPjIpZnrXEnMmXAh76Ifl+0fRNEqUZbL0FnWgqu
	R+0uuC/Pw8fp8Oyx9+psRF8kqq0XlnuLhtPNU3Dn57TiDREzOc4Y1YoxccElyPaLtNFHjaFmkJR
	aWLugaJMNX+wgJTWfToRf0DdSesDqKo4XUuSkLhkj6H6Yjt+jl0OZ4BjcEGmPotUOGpL1
X-Gm-Gg: AeBDietu6jaImk/d3jho7OlwOeQI+bdNcW/vmr/q/dSP4pxqqY9uPe87c0tj4s3TSDV
	lNc6cfeweS8QN0PDIuajSca9kqmXRTULyn0OzHAhwcnLQygXesEOcljEry7If9VBWiYRyCIqHzo
	YxjvLL3msqfArNjCHRCznYXI60vmwqh8yWGQtJNsVw0mHehkMzJJ2vntM5Om0HrMA24fgsYCSuO
	iSRomNX7Kd1K3SBOOx0gq2uq3hoeUH+kcfP9hICl/OKBjVAYwGCjsj+OLHfSa5kNlFP7IK6imjM
	OVcMwqCFifWZpas6omrVS8pXFDAgm5dgrzzJOakAEmRnGlMvu5WfNKboG5bAalMnxvpcavBAYth
	k/9yLDMSI2kUskozDjvp4VVXnvvxl2XcMoH+m5J136tlWrhiwn64OSes0JbQC8kVK1LDyh/fitq
	6UWApOuY/YuT5VrbhLIwHjeGF8cA==
X-Received: by 2002:a17:90b:510b:b0:35f:b46e:e329 with SMTP id 98e67ed59e1d1-3650cd08149mr11462704a91.6.1777914454998;
        Mon, 04 May 2026 10:07:34 -0700 (PDT)
X-Received: by 2002:a17:90b:510b:b0:35f:b46e:e329 with SMTP id 98e67ed59e1d1-3650cd08149mr11462665a91.6.1777914454469;
        Mon, 04 May 2026 10:07:34 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36528ad3154sm6256847a91.2.2026.05.04.10.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 10:07:33 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 4/4] phy: qcom: qmp-usbc: Add qmp configuration for Shikra
Date: Mon,  4 May 2026 22:36:59 +0530
Message-Id: <20260504170659.282532-5-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=a7AAM0SF c=1 sm=1 tr=0 ts=69f8d258 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=K8LLhCEcKGHaonpVBxsA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: Y1jrZuEKgeEDfUc9RAJ0ZxLpNjtRa5RA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE1NiBTYWx0ZWRfX53KWWaLep0vv
 JucNNkJbNz+tjoB6Rq7lIJABx4/mAw9rxuESgaLcEWXuqTfQdSra2DA5qmVr+xJHx/YzgN02WaQ
 1RrxVep3shcbE7y3evn6YsRn9wDWWgpoIXv1I0Yl/oZD6Pjda/+QQct1zPSRpkZORGL3VA4HZlB
 LepFuhGRqj/yCYKnat8PkOVHE5u3MjtI+NhoF254UWQmy/U1kGT6c1w9pO1pnDYh+q+N+fHK+xP
 +np9HVP5yWsUWdkERMsq5AZKdIfuDdIueTUSvLTURLoHdQwWttXVJosZv6ch9Gh6MsGbEnu+drQ
 iTzJvgip5c1axTsVbF5np+AtFPLWWvocz8y7f9uJaRJhmQ2+sLzcS+Aeql5iPRcH+VJGWdiGqo9
 8VJbk+c488jBCMgLvqdyBhU30NBBNzmoFviZ3S/FHv6Pd1u5L2XQEKFw1cqA74ZgabNtlLYjqlh
 6hPUN9tJcokBx6/G+zA==
X-Proofpoint-ORIG-GUID: Y1jrZuEKgeEDfUc9RAJ0ZxLpNjtRa5RA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605040156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_100737_308374_542ECD1A 
X-CRM114-Status: GOOD (  12.33  )
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

Add init sequence and phy configuration for the Super Speed port
on Shikra SoC.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index c342479a3798..400dcebf8222 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -2019,6 +2019,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,shikra-qmp-usb3-phy",
+		.data = &qcs615_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sm6115-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
