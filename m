Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47A06C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNFXLNpNM3AdT2wVZJsUG9C/F7hQbWWAlO20xAWvjrM=; b=mKYXGZvGhJFGP3
	8T5UfMUAYP0FdVMHeYDWHqsawV8HDhKlfV9jYeprEyEmHyIhcr5msT1o16UxJPlMhxwVM42r6aNNV
	3SMr1HNz4HPBqkjDP6deVt53WnTmlA7ASPBKi89Va8Y16iqHhXjNF0NyK0OprvyjjHYS68Mb0JVt+
	yMpMCO3lZUCCZ0U4+MZyFcjO67dy4e5AFikvve8mfLWPDVuJD9j53DcniNPKsF7SN5mKuZ+zVIvkJ
	h3p3cei9s55KfQdzuKEojNtY6LKIM0OyfZwFE4HkH44TTUMh31gUD2VRjh9Xsih2ld1MP+pkx3U4q
	0MJx/DpjBDda3QnL2QiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUl-00000006Ess-4226;
	Mon, 07 Sep 2026 08:14:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUj-00000006EsC-2rDw
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 08:14:26 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68777LNB3363503
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 08:14:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nP3wcx2p80nx+Tohacyx3IYJwpEKwRThxmKFCg9vGIo=; b=px5URFKSWcpFG6By
	FmckY/GfcrBuDS1zDFI651u8zA7Tnoz/3uSRNgMyhqvk0GBsmxXbHVR7XcGGQQLK
	MQIr53YuDCbGaki8olRqLIb+M4fJ6H5ZEKqSApoDAgL1VkT97lB54z+wyuTrCk7V
	U7n/qeH9SNgEGlwz1M3VG8MAygO/eZ7cB56QZ99KZ3fWSv10G9T/WiYsUAOdhIxI
	LT90wKqspZ8kpcVhJEsUtsC8UXNFBC4/wISyffFH80Pqy9EYLc1eJt2TotH9CUV8
	Ty9rz6Po6hYLQYj0O2xWFStAWuzkfz9RuRbXQlv3EgaqDY7OB707oOhA4XYmZoYZ
	jkdAxg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghnmj0yhs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:14:25 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cb835525b10so4091074a12.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 01:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788768864; x=1789373664; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nP3wcx2p80nx+Tohacyx3IYJwpEKwRThxmKFCg9vGIo=;
        b=ITjCp3F8MRdoZzyY8MXbZLMPpEMvLqC+AdkA6NYZNIooK9WAUe50xJPM6TIz4E1/wj
         2ngs/b09paCM9uT5b+Jl177SzpayIdVf6XaDYU7dllsccmBFNuSA4p5DhzF8YDPkISWi
         LY+o7IGOOBFADt+pme9WitReL2vSChABaKsCJTBfGI3H8NkrSiOpQZAA63KqPyoA+lQl
         bFaYwRNalr9bj1CkCaz9tCjOMFzv17vvYLcFaJXxmAqq1n5b3/9HQ09UQRdINsmtNKIL
         P8mMT1JntzyLYMckgH8bWiTbE7FUdFumu4+l/JAdNPXVr1unr53s9p0FP/pgoKje7CJ2
         ZL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788768864; x=1789373664;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nP3wcx2p80nx+Tohacyx3IYJwpEKwRThxmKFCg9vGIo=;
        b=C9dp4iiAeYQkBw05E6Gu7HPYDVJR3IGO23ZMsGOO56pe8swscpFYfgwML/1BzOfBNm
         2aiIXsHuIyCOrW5X4SOtRKk2Jr0a9BVce37sbyyJC4y4BYTYlgOg7YY8c4CyWHG3eld7
         5hSZOAEKLVPFR7ewqqpqmkLIF/fQcccYHq7gnoa1qZYrL4w0wtM/D6CPo4EL8kXxcDev
         tNpR7tPyt3ogY7BAj66Jfr0ajwwZpon6XgWfmqFs6mnz2SY+Oh/mmhyJW3vveuOBy1BP
         2XTIVrzZDZDycqGv/5393pImwNbCE/h7EG+MPT4B7xzsw9hz1/IOCkUrE+mFqtZC/Lft
         pmLw==
X-Forwarded-Encrypted: i=1; AKwUvByGXAItgehMX+dOPJEYFaEVzJoP6O6RfHs0cPLuOH6q6LX6wnmYMUu28BpK7Tk8KBHtwa5x8HcwLIo=@lists.infradead.org
X-Gm-Message-State: AFuF++lgSJUZLjzj7IiP2NLbeeVAj4Sk+WMg9H0mNXhYXUFpoOSirGFA
	KuTgHk591Q59OU9CpQ5/rkzs/B8MGjsO39ziQAXRAckt0NEsiOwaYydoe7i5tCrY77uOt75Yczx
	HosJH3FsXfGHiGJtWv+X9KxiiTUwFly72fAit9szhW7EMMVN5s6NkDY6wdA/fNPMqwy0d
X-Gm-Gg: AYBFou1ymzKQOVRl+1qP5M2YXbT3Vd4FE7BOJxCXB1/IKMpCut+sycOILsLscMFQ0wY
	7gz7x4B812not6hqyQK731qrmG7bNMyyc64I3JmLGVLL4tPVypQPP7RqwaXPuvSXjiXaDaFGzu0
	wHKlJmiWBYKczIv343ec9rlEviPFopAcIPHOiNxJCIn9aqOiIVg1tq+5NKskdAzlnhpj58vX7T+
	W3/HsqaL22T8wFRDsXGsDvd1O7yGg6AJ1MZP8rGBfYn4CjPS404CQfmPQUc+xANQxB2zRipjpCk
	/2cNpn3k1DDCrGrEOrn50y1hI2HYT0RKk6NXaSLTWPdwN4FsIQpJz6vhFkSavaSSXmcPDb9fpaW
	Udtb/wYRycjUPkQTVMX91yc4ye5OR7to=
X-Received: by 2002:a05:6a21:6e8d:b0:3d1:2f88:913f with SMTP id adf61e73a8af0-3da39fd290fmr33155500637.14.1788768864529;
        Mon, 07 Sep 2026 01:14:24 -0700 (PDT)
X-Received: by 2002:a05:6a21:6e8d:b0:3d1:2f88:913f with SMTP id adf61e73a8af0-3da39fd290fmr33155432637.14.1788768864089;
        Mon, 07 Sep 2026 01:14:24 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-143243767e1sm21724220c88.6.2026.09.07.01.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 01:14:23 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Mon, 07 Sep 2026 13:43:40 +0530
Subject: [PATCH v2 4/6] media: qcom: camss: Add Glymur compatible
MIME-Version: 1.0
Message-Id: <20260907-glymur_camss-v2-4-75f7982dc983@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
In-Reply-To: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788768826; l=1214;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=dRIORkLtErUy8tQv0r5xQE2yHwcn16W9lhrS1ITHzeE=;
 b=YMrJpmRfjIqlMxMZFYjxewBlzaJz0yE8Svh+SnXsf50kXLlDnEh1boHaeMbt208cyIv0G7d47
 ca7rrOzp2d0DLI2LGy81N+OA4QSnH5JSZ7yqaSwj0NSx8tSH60m0tuC
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX61LZ3YBTTfux
 B+PIIehYAlRAE4FGWJS3c0bouBBo7d2ofPL6plo23xBOY86nlT1d39UleJMJvScc3dSfin7u8bf
 rz3w4T12znKVmU+ZzWEKCYimrMhZIHE34/VQFkdYMJiz9P05p+9d6X77HsmsqJvxI+dZ5Woj9WD
 RTng3wbcWzoqdrRE1etL1y4CXb2/6JISErDLfXO3Dy/I1QhzQVXTWx23KYLsFQ+RYiINKED9HPu
 Ca6Cnu2eyj55RH6iTEOPyLaGVFaMuIbNRGfWOy+oGsFrt63dOSStJuNnUKo7bkMUu/YnrdoS7hN
 zvK93PBbT8nrgn4gw64wF7Og1DqBajcTh7BvTl3oOUDKhycRovJK1/fWYJ5Yi9IOeyAeW5h7WYY
 yaqWwjBx9Lj4qRg3ni6Kb7L9WQtxg3GD3+4yGNsVl0/M/3jvFmvglNxCZMEoluMFqtFn9HRQw1l
 KTj9I4C/OWle/MkPp1w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX+JcFQULUxmAh
 QLtySv5RtVIJoU9kVEmbLVpfo/JBu09ul9vKP0XH4klkp/J1zQjy6O3v9qkY7yp7JuPLKoBL1Fz
 aLySRM7OXeHRamu4PYD3MrORgklPAQ8=
X-Proofpoint-ORIG-GUID: 8BVPWt-YvhntSYmLSx8xVI_F_WxZND8O
X-Proofpoint-GUID: 8BVPWt-YvhntSYmLSx8xVI_F_WxZND8O
X-Authority-Analysis: v=2.4 cv=LZYMLDfi c=1 sm=1 tr=0 ts=6a9e7261 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=xYyVevvQUQiUFKtwU9sA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_011425_728585_6C8D45C3 
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

Glymur's camera subsystem hardware is a functional subset of X1E80100.
TPG, CSID, VFE, CSID wrapper and ICC resources are shared; Glymur has
three CSIPHY instances versus X1E80100's four.

qcom,x1e80100-camss is not used as a fallback compatible since it is
already claimed by its own binding schema, causing a duplicate
compatible warning in the DT schema checker.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 2123f6388e3d7eafe669efd6b033e22d8eb5cf79..3585c63c45848793696fbdc3004ddc867a5f115c 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5758,6 +5758,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,sm8550-camss", .data = &sm8550_resources },
 	{ .compatible = "qcom,sm8650-camss", .data = &sm8650_resources },
 	{ .compatible = "qcom,x1e80100-camss", .data = &x1e80100_resources },
+	{ .compatible = "qcom,glymur-camss", .data = &x1e80100_resources },
 	{ }
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
